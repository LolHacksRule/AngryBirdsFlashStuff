package §4q§
{
   import §!6§.§3!5§;
   import §!6§.§>D§;
   import §"^§.§9=§;
   import §+f§.§4!8§;
   import §+f§.§8!=§;
   import §,!F§.§]!6§;
   import §5!<§.§@]§;
   import flash.net.SharedObject;
   
   public class §;w§
   {
      
      protected static var §[6§:Class = §%a§;
      
      protected static var § X§:Class = §^`§;
      
      protected static var § !-§:Class = §@7§;
      
      private static var §4!$§:Array = [];
      
      private static var §@!J§:Popup = null;
      
      private static var §-!?§:SharedObject;
      
      public static var isOpen:Boolean = false;
      
      private static var §-!H§:Array;
       
      
      public function §;w§()
      {
         super();
      }
      
      private static function §;!?§(param1:String, param2:§@]§) : void
      {
         var tutorialPopup:§9!,§ = null;
         var birdName:String = param1;
         var currentUIView:§@]§ = param2;
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
            tutorialPopup = new §9!,§(§>D§.§0M§(§[6§),currentUIView,§8!=§.§%!#§(tutorialName,§4!8§.§ set§));
         }
         catch(e:Error)
         {
         }
         if(tutorialPopup)
         {
            §4!$§.push(tutorialPopup);
         }
      }
      
      private static function §8K§(param1:String, param2:§@]§) : void
      {
         var tutorialPopup:§5s§ = null;
         var powerUpName:String = param1;
         var currentUIView:§@]§ = param2;
         var tutorialName:String = powerUpName;
         try
         {
            tutorialPopup = new §5s§(§>D§.§0M§(§ X§),currentUIView,§8!=§.§%!#§(tutorialName,§4!8§.§ set§),tutorialName);
         }
         catch(e:Error)
         {
         }
         if(tutorialPopup)
         {
            §4!$§.push(tutorialPopup);
         }
      }
      
      public static function §6!E§(param1:String) : void
      {
         var birdName:String = null;
         var storageName:String = param1;
         try
         {
            if(storageName)
            {
               if(!§-!?§)
               {
                  §-!?§ = SharedObject.getLocal(storageName);
               }
               for each(birdName in §%<§())
               {
                  §-!?§.data[birdName] = false;
               }
               §-!?§.data["POWERUP_TUTORIAL_BIRDQUAKE"] = false;
               §-!?§.data["POWERUP_TUTORIAL_SUPERSEED"] = false;
               §-!?§.data["POWERUP_TUTORIAL_KINGSLING"] = false;
               §-!?§.data["POWERUP_TUTORIAL_SLINGSCOPE"] = false;
            }
         }
         catch(e:Error)
         {
         }
      }
      
      private static function §%<§() : Array
      {
         var _loc2_:§]!6§ = null;
         var _loc1_:Array = [];
         for each(_loc2_ in §9=§.§<!@§.slingshot.§6!$§)
         {
            if(_loc1_.indexOf(_loc2_.name) < 0)
            {
               _loc1_.push(_loc2_.name);
            }
         }
         return _loc1_;
      }
      
      public static function §>!D§(param1:§@]§, param2:String, param3:String) : void
      {
         var i:int = 0;
         var currentUIView:§@]§ = param1;
         var storageName:String = param2;
         var powerUpName:String = param3;
         if(isOpen)
         {
            return;
         }
         var powerUpPopupName:String = powerUpName;
         §-!H§ = [];
         switch(powerUpName)
         {
            case "POWERUP4":
               powerUpPopupName = "POWERUP_TUTORIAL_BIRDQUAKE";
               §-!H§.push(powerUpPopupName);
               break;
            case "POWERUP1":
               powerUpPopupName = "POWERUP_TUTORIAL_SUPERSEED";
               §-!H§.push(powerUpPopupName);
               break;
            case "POWERUP2":
               powerUpPopupName = "POWERUP_TUTORIAL_KINGSLING";
               §-!H§.push(powerUpPopupName);
               break;
            case "POWERUP3":
               powerUpPopupName = "POWERUP_TUTORIAL_SLINGSCOPE";
               §-!H§.push(powerUpPopupName);
               break;
            case "ALL":
               §-!H§.push("POWERUP_TUTORIAL_BIRDQUAKE");
               §-!H§.push("POWERUP_TUTORIAL_SUPERSEED");
               §-!H§.push("POWERUP_TUTORIAL_KINGSLING");
               §-!H§.push("POWERUP_TUTORIAL_SLINGSCOPE");
         }
         var powerUpsToShow:Array = §-!H§;
         try
         {
            if(storageName)
            {
               if(!§-!?§)
               {
                  §-!?§ = SharedObject.getLocal(storageName);
               }
               i = powerUpsToShow.length - 1;
               while(i >= 0)
               {
                  powerUpPopupName = powerUpsToShow[i];
                  if(§-!?§.data[powerUpPopupName] == undefined || §-!?§.data[powerUpPopupName] == false)
                  {
                     §-!?§.data[powerUpPopupName] = true;
                  }
                  else
                  {
                     powerUpsToShow.splice(i,1);
                  }
                  i--;
               }
               §-!?§.flush();
            }
         }
         catch(e:Error)
         {
            §3!5§.log("Unable to get local storage");
         }
         for each(powerUpName in powerUpsToShow)
         {
            §8K§(powerUpName,currentUIView);
         }
      }
      
      public static function § !B§(param1:§@]§, param2:String = null) : void
      {
         var birdName:String = null;
         var i:int = 0;
         var currentUIView:§@]§ = param1;
         var storageName:String = param2;
         if(isOpen)
         {
            return;
         }
         var birdsToShow:Array = §%<§();
         try
         {
            if(storageName)
            {
               if(!§-!?§)
               {
                  §-!?§ = SharedObject.getLocal(storageName);
               }
               i = birdsToShow.length - 1;
               while(i >= 0)
               {
                  birdName = birdsToShow[i];
                  if(§-!?§.data[birdName] == undefined || §-!?§.data[birdName] == false)
                  {
                     §-!?§.data[birdName] = true;
                  }
                  else
                  {
                     birdsToShow.splice(i,1);
                  }
                  i--;
               }
               §-!?§.flush();
            }
         }
         catch(e:Error)
         {
            §3!5§.log("Unable to get local storage");
         }
         for each(birdName in birdsToShow)
         {
            §;!?§(birdName,currentUIView);
         }
         §7;§();
      }
      
      private static function §7;§(param1:Boolean = true) : void
      {
         if(!isOpen && §4!$§.length > 0)
         {
            isOpen = true;
            §@!J§ = §4!$§.pop();
            §@!J§.open(param1);
         }
      }
      
      public static function §^1§() : void
      {
         if(isOpen == true)
         {
            if(§4!$§.length > 0)
            {
               §@!J§.preClose(false);
               isOpen = false;
               §7;§(false);
            }
            else
            {
               isOpen = false;
               §@!J§.preClose(true);
            }
         }
      }
      
      public static function deActivate() : void
      {
         if(§@!J§)
         {
            §@!J§.preClose(false);
         }
      }
   }
}
