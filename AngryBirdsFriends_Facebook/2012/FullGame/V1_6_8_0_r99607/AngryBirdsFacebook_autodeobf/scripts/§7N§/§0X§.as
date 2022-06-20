package §7N§
{
   import §+I§.§9!%§;
   import §0!?§.§'!$§;
   import §0!?§.§1!%§;
   import §3,§.§-!K§;
   import §?"<§.§#!6§;
   import §?"<§.§<"!§;
   import §]!F§.§"!j§;
   import flash.net.SharedObject;
   
   public class §0X§
   {
      
      protected static var §<"3§:Class = §6!9§;
      
      protected static var §'"%§:Class = §9!-§;
      
      protected static var §-!Z§:Class = §8!s§;
      
      private static var §?!P§:Array = [];
      
      private static var §=C§:Popup = null;
      
      private static var §5!W§:SharedObject;
      
      public static var isOpen:Boolean = false;
      
      private static var §[8§:Array;
       
      
      public function §0X§()
      {
         super();
      }
      
      private static function §<"?§(param1:String, param2:§"!j§) : void
      {
         var tutorialPopup:§3!4§ = null;
         var birdName:String = param1;
         var currentUIView:§"!j§ = param2;
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
            tutorialPopup = new §3!4§(§1!%§.§8!?§(§<"3§),currentUIView,§#!6§.§#o§(tutorialName,§<"!§.§8c§));
         }
         catch(e:Error)
         {
         }
         if(tutorialPopup)
         {
            §?!P§.push(tutorialPopup);
         }
      }
      
      private static function §`!k§(param1:String, param2:§"!j§) : void
      {
         var tutorialPopup:§?L§ = null;
         var powerUpName:String = param1;
         var currentUIView:§"!j§ = param2;
         var tutorialName:String = powerUpName;
         try
         {
            tutorialPopup = new §?L§(§1!%§.§8!?§(§'"%§),currentUIView,§#!6§.§#o§(tutorialName,§<"!§.§8c§),tutorialName);
         }
         catch(e:Error)
         {
         }
         if(tutorialPopup)
         {
            §?!P§.push(tutorialPopup);
         }
      }
      
      public static function §;f§(param1:String) : void
      {
         var birdName:String = null;
         var storageName:String = param1;
         try
         {
            if(storageName)
            {
               if(!§5!W§)
               {
                  §5!W§ = SharedObject.getLocal(storageName);
               }
               for each(birdName in §;"6§())
               {
                  §5!W§.data[birdName] = false;
               }
               §5!W§.data["POWERUP_TUTORIAL_BIRDQUAKE"] = false;
               §5!W§.data["POWERUP_TUTORIAL_SUPERSEED"] = false;
               §5!W§.data["POWERUP_TUTORIAL_KINGSLING"] = false;
               §5!W§.data["POWERUP_TUTORIAL_SLINGSCOPE"] = false;
            }
         }
         catch(e:Error)
         {
         }
      }
      
      private static function §;"6§() : Array
      {
         var _loc2_:§-!K§ = null;
         var _loc1_:Array = [];
         for each(_loc2_ in §9!%§.§!!M§.slingshot.§&!L§)
         {
            if(_loc1_.indexOf(_loc2_.name) < 0)
            {
               _loc1_.push(_loc2_.name);
            }
         }
         return _loc1_;
      }
      
      public static function §[z§(param1:§"!j§, param2:String, param3:String) : void
      {
         var i:int = 0;
         var currentUIView:§"!j§ = param1;
         var storageName:String = param2;
         var powerUpName:String = param3;
         if(isOpen)
         {
            return;
         }
         var powerUpPopupName:String = powerUpName;
         §[8§ = [];
         switch(powerUpName)
         {
            case "POWERUP4":
               powerUpPopupName = "POWERUP_TUTORIAL_BIRDQUAKE";
               §[8§.push(powerUpPopupName);
               break;
            case "POWERUP1":
               powerUpPopupName = "POWERUP_TUTORIAL_SUPERSEED";
               §[8§.push(powerUpPopupName);
               break;
            case "POWERUP2":
               powerUpPopupName = "POWERUP_TUTORIAL_KINGSLING";
               §[8§.push(powerUpPopupName);
               break;
            case "POWERUP3":
               powerUpPopupName = "POWERUP_TUTORIAL_SLINGSCOPE";
               §[8§.push(powerUpPopupName);
               break;
            case "ALL":
               §[8§.push("POWERUP_TUTORIAL_BIRDQUAKE");
               §[8§.push("POWERUP_TUTORIAL_SUPERSEED");
               §[8§.push("POWERUP_TUTORIAL_KINGSLING");
               §[8§.push("POWERUP_TUTORIAL_SLINGSCOPE");
         }
         var powerUpsToShow:Array = §[8§;
         try
         {
            if(storageName)
            {
               if(!§5!W§)
               {
                  §5!W§ = SharedObject.getLocal(storageName);
               }
               i = powerUpsToShow.length - 1;
               while(i >= 0)
               {
                  powerUpPopupName = powerUpsToShow[i];
                  if(§5!W§.data[powerUpPopupName] == undefined || §5!W§.data[powerUpPopupName] == false)
                  {
                     §5!W§.data[powerUpPopupName] = true;
                  }
                  else
                  {
                     powerUpsToShow.splice(i,1);
                  }
                  i--;
               }
               §5!W§.flush();
            }
         }
         catch(e:Error)
         {
            §'!$§.log("Unable to get local storage");
         }
         for each(powerUpName in powerUpsToShow)
         {
            §`!k§(powerUpName,currentUIView);
         }
      }
      
      public static function §+L§(param1:§"!j§, param2:String = null) : void
      {
         var birdName:String = null;
         var i:int = 0;
         var currentUIView:§"!j§ = param1;
         var storageName:String = param2;
         if(isOpen)
         {
            return;
         }
         var birdsToShow:Array = §;"6§();
         try
         {
            if(storageName)
            {
               if(!§5!W§)
               {
                  §5!W§ = SharedObject.getLocal(storageName);
               }
               i = birdsToShow.length - 1;
               while(i >= 0)
               {
                  birdName = birdsToShow[i];
                  if(§5!W§.data[birdName] == undefined || §5!W§.data[birdName] == false)
                  {
                     §5!W§.data[birdName] = true;
                  }
                  else
                  {
                     birdsToShow.splice(i,1);
                  }
                  i--;
               }
               §5!W§.flush();
            }
         }
         catch(e:Error)
         {
            §'!$§.log("Unable to get local storage");
         }
         for each(birdName in birdsToShow)
         {
            §<"?§(birdName,currentUIView);
         }
         §!S§();
      }
      
      private static function §!S§(param1:Boolean = true) : void
      {
         if(!isOpen && §?!P§.length > 0)
         {
            isOpen = true;
            §=C§ = §?!P§.pop();
            §=C§.open(param1);
         }
      }
      
      public static function §^!%§() : void
      {
         if(isOpen == true)
         {
            if(§?!P§.length > 0)
            {
               §=C§.preClose(false);
               isOpen = false;
               §!S§(false);
            }
            else
            {
               isOpen = false;
               §=C§.preClose(true);
            }
         }
      }
      
      public static function deActivate() : void
      {
         if(§=C§)
         {
            §=C§.preClose(false);
         }
      }
   }
}
