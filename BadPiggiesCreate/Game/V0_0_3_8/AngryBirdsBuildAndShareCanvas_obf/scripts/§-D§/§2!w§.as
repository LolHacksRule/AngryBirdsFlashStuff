package §-D§
{
   import § !V§.§!5§;
   import § !V§.§7!P§;
   import §%h§.§5!K§;
   import §4u§.§<!>§;
   import §4u§.§<!L§;
   import §?!V§.§ T§;
   import §`%§.§8!0§;
   import flash.net.SharedObject;
   
   public class §2!w§
   {
      
      protected static var §2$§:Class = §9x§;
      
      protected static var §?t§:Class = §1!h§;
      
      protected static var §;"1§:Class = §%!2§;
      
      private static var §5z§:Array = [];
      
      private static var §9!?§:Popup = null;
      
      private static var §[!Z§:SharedObject;
      
      public static var isOpen:Boolean = false;
      
      private static var §'r§:Array;
       
      
      public function §2!w§()
      {
         super();
      }
      
      private static function §3"$§(param1:String, param2:§ T§) : void
      {
         var tutorialPopup:§2X§ = null;
         var birdName:String = param1;
         var currentUIView:§ T§ = param2;
         var tutorialName:String = "";
         switch(birdName)
         {
            case "BIRD_BLACK":
               tutorialName = "TUTORIAL_BLACK";
               break;
            case "BIRD_BLUE":
               tutorialName = "TUTORIAL_BLUE";
               break;
            case "BIRD_RED":
               tutorialName = "TUTORIAL_RED";
               break;
            case "BIRD_WHITE":
               tutorialName = "TUTORIAL_WHITE";
               break;
            case "BIRD_YELLOW":
               tutorialName = "TUTORIAL_YELLOW";
               break;
            case "BIRD_GREEN":
               tutorialName = "TUTORIAL_BOOMERANG";
               break;
            case "BIRD_REDBIG":
               tutorialName = "TUTORIAL_BIG_BROTHER";
               break;
            case "BIRD_SARDINE":
               tutorialName = "TUTORIAL_MIGHTYEAGLE";
               break;
            default:
               return;
         }
         try
         {
            tutorialPopup = new §2X§(§<!>§.§%!$§(§2$§),currentUIView,§!5§.§0!m§(tutorialName,§7!P§.§9j§));
         }
         catch(e:Error)
         {
         }
         if(tutorialPopup)
         {
            §5z§.push(tutorialPopup);
         }
      }
      
      private static function §`d§(param1:String, param2:§ T§) : void
      {
         var tutorialPopup:§[H§ = null;
         var powerUpName:String = param1;
         var currentUIView:§ T§ = param2;
         var tutorialName:String = powerUpName;
         try
         {
            tutorialPopup = new §[H§(§<!>§.§%!$§(§?t§),currentUIView,§!5§.§0!m§(tutorialName,§7!P§.§9j§),tutorialName);
         }
         catch(e:Error)
         {
         }
         if(tutorialPopup)
         {
            §5z§.push(tutorialPopup);
         }
      }
      
      public static function §;!m§(param1:String) : void
      {
         var birdName:String = null;
         var storageName:String = param1;
         try
         {
            if(storageName)
            {
               if(!§[!Z§)
               {
                  §[!Z§ = SharedObject.getLocal(storageName);
               }
               for each(birdName in §17§())
               {
                  §[!Z§.data[birdName] = false;
               }
               §[!Z§.data["POWERUP_TUTORIAL_BIRDQUAKE"] = false;
               §[!Z§.data["POWERUP_TUTORIAL_SUPERSEED"] = false;
               §[!Z§.data["POWERUP_TUTORIAL_KINGSLING"] = false;
               §[!Z§.data["POWERUP_TUTORIAL_SLINGSCOPE"] = false;
            }
         }
         catch(e:Error)
         {
         }
      }
      
      private static function §17§() : Array
      {
         var _loc2_:§5!K§ = null;
         var _loc1_:Array = [];
         for each(_loc2_ in §8!0§.§?2§.slingshot.mBirds)
         {
            if(_loc1_.indexOf(_loc2_.name) < 0)
            {
               _loc1_.push(_loc2_.name);
            }
         }
         return _loc1_;
      }
      
      public static function §'!1§(param1:§ T§, param2:String, param3:String) : void
      {
         var i:int = 0;
         var currentUIView:§ T§ = param1;
         var storageName:String = param2;
         var powerUpName:String = param3;
         if(isOpen)
         {
            return;
         }
         var powerUpPopupName:String = powerUpName;
         §'r§ = [];
         switch(powerUpName)
         {
            case "POWERUP4":
               powerUpPopupName = "POWERUP_TUTORIAL_BIRDQUAKE";
               §'r§.push(powerUpPopupName);
               break;
            case "POWERUP1":
               powerUpPopupName = "POWERUP_TUTORIAL_SUPERSEED";
               §'r§.push(powerUpPopupName);
               break;
            case "POWERUP2":
               powerUpPopupName = "POWERUP_TUTORIAL_KINGSLING";
               §'r§.push(powerUpPopupName);
               break;
            case "POWERUP3":
               powerUpPopupName = "POWERUP_TUTORIAL_SLINGSCOPE";
               §'r§.push(powerUpPopupName);
               break;
            case "ALL":
               §'r§.push("POWERUP_TUTORIAL_BIRDQUAKE");
               §'r§.push("POWERUP_TUTORIAL_SUPERSEED");
               §'r§.push("POWERUP_TUTORIAL_KINGSLING");
               §'r§.push("POWERUP_TUTORIAL_SLINGSCOPE");
         }
         var powerUpsToShow:Array = §'r§;
         try
         {
            if(storageName)
            {
               if(!§[!Z§)
               {
                  §[!Z§ = SharedObject.getLocal(storageName);
               }
               i = powerUpsToShow.length - 1;
               while(i >= 0)
               {
                  powerUpPopupName = powerUpsToShow[i];
                  if(§[!Z§.data[powerUpPopupName] == undefined || §[!Z§.data[powerUpPopupName] == false)
                  {
                     §[!Z§.data[powerUpPopupName] = true;
                  }
                  else
                  {
                     powerUpsToShow.splice(i,1);
                  }
                  i--;
               }
               §[!Z§.flush();
            }
         }
         catch(e:Error)
         {
            §<!L§.log("Unable to get local storage");
         }
         for each(powerUpName in powerUpsToShow)
         {
            §`d§(powerUpName,currentUIView);
         }
      }
      
      public static function §7X§(param1:§ T§, param2:String = null) : void
      {
         var birdName:String = null;
         var i:int = 0;
         var currentUIView:§ T§ = param1;
         var storageName:String = param2;
         if(isOpen)
         {
            return;
         }
         var birdsToShow:Array = §17§();
         try
         {
            if(storageName)
            {
               if(!§[!Z§)
               {
                  §[!Z§ = SharedObject.getLocal(storageName);
               }
               i = birdsToShow.length - 1;
               while(i >= 0)
               {
                  birdName = birdsToShow[i];
                  if(§[!Z§.data[birdName] == undefined || §[!Z§.data[birdName] == false)
                  {
                     §[!Z§.data[birdName] = true;
                  }
                  else
                  {
                     birdsToShow.splice(i,1);
                  }
                  i--;
               }
               §[!Z§.flush();
            }
         }
         catch(e:Error)
         {
            §<!L§.log("Unable to get local storage");
         }
         for each(birdName in birdsToShow)
         {
            §3"$§(birdName,currentUIView);
         }
         §4!V§();
      }
      
      private static function §4!V§(param1:Boolean = true) : void
      {
         if(!isOpen && §5z§.length > 0)
         {
            isOpen = true;
            §9!?§ = §5z§.pop();
            §9!?§.open(param1);
         }
      }
      
      public static function §-x§() : void
      {
         if(isOpen == true)
         {
            if(§5z§.length > 0)
            {
               §9!?§.preClose(false);
               isOpen = false;
               §4!V§(false);
            }
            else
            {
               isOpen = false;
               §9!?§.preClose(true);
            }
         }
      }
      
      public static function deActivate() : void
      {
         if(§9!?§)
         {
            §9!?§.preClose(false);
         }
      }
   }
}
