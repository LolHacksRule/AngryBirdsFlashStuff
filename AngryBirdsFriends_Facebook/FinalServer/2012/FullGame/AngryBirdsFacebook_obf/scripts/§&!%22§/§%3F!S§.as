package §&!"§
{
   import §#M§.§^0§;
   import §#S§.§!K§;
   import §#S§.§?!?§;
   import §0!2§.§;M§;
   import §5!G§.§&2§;
   import §[x§.§%3§;
   import §[x§.§?-§;
   import flash.net.SharedObject;
   
   public class §?!S§
   {
      
      protected static var §0T§:Class = §`!p§;
      
      protected static var §[!G§:Class = §'!5§;
      
      protected static var §;"D§:Class = §"!B§;
      
      private static var §^";§:Array = [];
      
      private static var §[U§:Popup = null;
      
      private static var §-G§:SharedObject;
      
      public static var isOpen:Boolean = false;
      
      private static var §%T§:Array;
       
      
      public function §?!S§()
      {
         super();
      }
      
      private static function § !X§(param1:String, param2:§^0§) : void
      {
         var tutorialPopup:§?u§ = null;
         var birdName:String = param1;
         var currentUIView:§^0§ = param2;
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
            tutorialPopup = new §?u§(§?-§.§9E§(§0T§),currentUIView,§!K§.§<0§(tutorialName,§?!?§.§1[§));
         }
         catch(e:Error)
         {
         }
         if(tutorialPopup)
         {
            §^";§.push(tutorialPopup);
         }
      }
      
      private static function §`[§(param1:String, param2:§^0§) : void
      {
         var tutorialPopup:§%c§ = null;
         var powerUpName:String = param1;
         var currentUIView:§^0§ = param2;
         var tutorialName:String = powerUpName;
         try
         {
            tutorialPopup = new §%c§(§?-§.§9E§(§[!G§),currentUIView,§!K§.§<0§(tutorialName,§?!?§.§1[§),tutorialName);
         }
         catch(e:Error)
         {
         }
         if(tutorialPopup)
         {
            §^";§.push(tutorialPopup);
         }
      }
      
      public static function §+D§(param1:String) : void
      {
         var birdName:String = null;
         var storageName:String = param1;
         try
         {
            if(storageName)
            {
               if(!§-G§)
               {
                  §-G§ = SharedObject.getLocal(storageName);
               }
               for each(birdName in §>j§())
               {
                  §-G§.data[birdName] = false;
               }
               §-G§.data["POWERUP_TUTORIAL_BIRDQUAKE"] = false;
               §-G§.data["POWERUP_TUTORIAL_SUPERSEED"] = false;
               §-G§.data["POWERUP_TUTORIAL_KINGSLING"] = false;
               §-G§.data["POWERUP_TUTORIAL_SLINGSCOPE"] = false;
            }
         }
         catch(e:Error)
         {
         }
      }
      
      private static function §>j§() : Array
      {
         var _loc2_:§;M§ = null;
         var _loc1_:Array = [];
         for each(_loc2_ in §&2§.§],§.slingshot.§1"&§)
         {
            if(_loc1_.indexOf(_loc2_.name) < 0)
            {
               _loc1_.push(_loc2_.name);
            }
         }
         return _loc1_;
      }
      
      public static function §@!I§(param1:§^0§, param2:String, param3:String) : void
      {
         var i:int = 0;
         var currentUIView:§^0§ = param1;
         var storageName:String = param2;
         var powerUpName:String = param3;
         if(isOpen)
         {
            return;
         }
         var powerUpPopupName:String = powerUpName;
         §%T§ = [];
         switch(powerUpName)
         {
            case "POWERUP4":
               powerUpPopupName = "POWERUP_TUTORIAL_BIRDQUAKE";
               §%T§.push(powerUpPopupName);
               break;
            case "POWERUP1":
               powerUpPopupName = "POWERUP_TUTORIAL_SUPERSEED";
               §%T§.push(powerUpPopupName);
               break;
            case "POWERUP2":
               powerUpPopupName = "POWERUP_TUTORIAL_KINGSLING";
               §%T§.push(powerUpPopupName);
               break;
            case "POWERUP3":
               powerUpPopupName = "POWERUP_TUTORIAL_SLINGSCOPE";
               §%T§.push(powerUpPopupName);
               break;
            case "ALL":
               §%T§.push("POWERUP_TUTORIAL_BIRDQUAKE");
               §%T§.push("POWERUP_TUTORIAL_SUPERSEED");
               §%T§.push("POWERUP_TUTORIAL_KINGSLING");
               §%T§.push("POWERUP_TUTORIAL_SLINGSCOPE");
         }
         var powerUpsToShow:Array = §%T§;
         try
         {
            if(storageName)
            {
               if(!§-G§)
               {
                  §-G§ = SharedObject.getLocal(storageName);
               }
               i = powerUpsToShow.length - 1;
               while(i >= 0)
               {
                  powerUpPopupName = powerUpsToShow[i];
                  if(§-G§.data[powerUpPopupName] == undefined || §-G§.data[powerUpPopupName] == false)
                  {
                     §-G§.data[powerUpPopupName] = true;
                  }
                  else
                  {
                     powerUpsToShow.splice(i,1);
                  }
                  i--;
               }
               §-G§.flush();
            }
         }
         catch(e:Error)
         {
            §%3§.log("Unable to get local storage");
         }
         for each(powerUpName in powerUpsToShow)
         {
            §`[§(powerUpName,currentUIView);
         }
      }
      
      public static function §1p§(param1:§^0§, param2:String = null) : void
      {
         var birdName:String = null;
         var i:int = 0;
         var currentUIView:§^0§ = param1;
         var storageName:String = param2;
         if(isOpen)
         {
            return;
         }
         var birdsToShow:Array = §>j§();
         try
         {
            if(storageName)
            {
               if(!§-G§)
               {
                  §-G§ = SharedObject.getLocal(storageName);
               }
               i = birdsToShow.length - 1;
               while(i >= 0)
               {
                  birdName = birdsToShow[i];
                  if(§-G§.data[birdName] == undefined || §-G§.data[birdName] == false)
                  {
                     §-G§.data[birdName] = true;
                  }
                  else
                  {
                     birdsToShow.splice(i,1);
                  }
                  i--;
               }
               §-G§.flush();
            }
         }
         catch(e:Error)
         {
            §%3§.log("Unable to get local storage");
         }
         for each(birdName in birdsToShow)
         {
            § !X§(birdName,currentUIView);
         }
         §3a§();
      }
      
      private static function §3a§(param1:Boolean = true) : void
      {
         if(!isOpen && §^";§.length > 0)
         {
            isOpen = true;
            §[U§ = §^";§.pop();
            §[U§.open(param1);
         }
      }
      
      public static function §-f§() : void
      {
         if(isOpen == true)
         {
            if(§^";§.length > 0)
            {
               §[U§.preClose(false);
               isOpen = false;
               §3a§(false);
            }
            else
            {
               isOpen = false;
               §[U§.preClose(true);
            }
         }
      }
      
      public static function deActivate() : void
      {
         if(§[U§)
         {
            §[U§.preClose(false);
         }
      }
   }
}
