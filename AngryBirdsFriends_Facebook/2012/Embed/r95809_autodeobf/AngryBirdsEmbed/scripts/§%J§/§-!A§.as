package §%J§
{
   import §+!%§.§4;§;
   import §-l§.§?'§;
   import §2x§.§'!@§;
   import §2x§.§'m§;
   import §5Y§.§"!4§;
   import §[!$§.§"!%§;
   import §[!$§.§>"§;
   import flash.net.SharedObject;
   
   public class §-!A§
   {
      
      private static var § !8§:Class = §3!"§;
      
      private static var §]S§:Class = §-4§;
      
      private static var §1z§:Class = §do§;
      
      private static var § !?§:Array = [];
      
      private static var §,Z§:Popup = null;
      
      private static var §-t§:SharedObject;
      
      public static var isOpen:Boolean = false;
      
      private static var §4v§:Array;
       
      
      public function §-!A§()
      {
         super();
      }
      
      private static function §!#§(param1:String, param2:§"!4§) : void
      {
         var tutorialPopup:§60§ = null;
         var birdName:String = param1;
         var currentUIView:§"!4§ = param2;
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
            tutorialPopup = new §60§(§'m§.§-!;§(§ !8§),currentUIView,§>"§.§%j§(tutorialName,§"!%§.§^7§));
         }
         catch(e:Error)
         {
         }
         if(tutorialPopup)
         {
            § !?§.push(tutorialPopup);
         }
      }
      
      private static function §`_§(param1:String, param2:§"!4§) : void
      {
         var tutorialPopup:§ m§ = null;
         var powerUpName:String = param1;
         var currentUIView:§"!4§ = param2;
         var tutorialName:String = powerUpName;
         try
         {
            tutorialPopup = new § m§(§'m§.§-!;§(§]S§),currentUIView,§>"§.§%j§(tutorialName,§"!%§.§^7§),tutorialName);
         }
         catch(e:Error)
         {
         }
         if(tutorialPopup)
         {
            § !?§.push(tutorialPopup);
         }
      }
      
      public static function §!D§(param1:String) : void
      {
         var birdName:String = null;
         var storageName:String = param1;
         try
         {
            if(storageName)
            {
               if(!§-t§)
               {
                  §-t§ = SharedObject.getLocal(storageName);
               }
               for each(birdName in §=!F§())
               {
                  §-t§.data[birdName] = false;
               }
               §-t§.data["POWERUP_TUTORIAL_BIRDQUAKE"] = false;
               §-t§.data["POWERUP_TUTORIAL_SUPERSEED"] = false;
               §-t§.data["POWERUP_TUTORIAL_KINGSLING"] = false;
               §-t§.data["POWERUP_TUTORIAL_SLINGSCOPE"] = false;
            }
         }
         catch(e:Error)
         {
         }
      }
      
      private static function §=!F§() : Array
      {
         var _loc2_:§4;§ = null;
         var _loc1_:Array = [];
         for each(_loc2_ in §?'§.§5!§.slingshot.§8§)
         {
            if(_loc1_.indexOf(_loc2_.name) < 0)
            {
               _loc1_.push(_loc2_.name);
            }
         }
         return _loc1_;
      }
      
      public static function §^!"§(param1:§"!4§, param2:String, param3:String) : void
      {
         var i:int = 0;
         var currentUIView:§"!4§ = param1;
         var storageName:String = param2;
         var powerUpName:String = param3;
         if(isOpen)
         {
            return;
         }
         var powerUpPopupName:String = powerUpName;
         §4v§ = [];
         switch(powerUpName)
         {
            case "POWERUP4":
               powerUpPopupName = "POWERUP_TUTORIAL_BIRDQUAKE";
               §4v§.push(powerUpPopupName);
               break;
            case "POWERUP1":
               powerUpPopupName = "POWERUP_TUTORIAL_SUPERSEED";
               §4v§.push(powerUpPopupName);
               break;
            case "POWERUP2":
               powerUpPopupName = "POWERUP_TUTORIAL_KINGSLING";
               §4v§.push(powerUpPopupName);
               break;
            case "POWERUP3":
               powerUpPopupName = "POWERUP_TUTORIAL_SLINGSCOPE";
               §4v§.push(powerUpPopupName);
               break;
            case "ALL":
               §4v§.push("POWERUP_TUTORIAL_BIRDQUAKE");
               §4v§.push("POWERUP_TUTORIAL_SUPERSEED");
               §4v§.push("POWERUP_TUTORIAL_KINGSLING");
               §4v§.push("POWERUP_TUTORIAL_SLINGSCOPE");
         }
         var powerUpsToShow:Array = §4v§;
         try
         {
            if(storageName)
            {
               if(!§-t§)
               {
                  §-t§ = SharedObject.getLocal(storageName);
               }
               i = powerUpsToShow.length - 1;
               while(i >= 0)
               {
                  powerUpPopupName = powerUpsToShow[i];
                  if(§-t§.data[powerUpPopupName] == undefined || §-t§.data[powerUpPopupName] == false)
                  {
                     §-t§.data[powerUpPopupName] = true;
                  }
                  else
                  {
                     powerUpsToShow.splice(i,1);
                  }
                  i--;
               }
               §-t§.flush();
            }
         }
         catch(e:Error)
         {
            §'!@§.log("Unable to get local storage");
         }
         for each(powerUpName in powerUpsToShow)
         {
            §`_§(powerUpName,currentUIView);
         }
      }
      
      public static function §98§(param1:§"!4§, param2:String = null) : void
      {
         var birdName:String = null;
         var i:int = 0;
         var currentUIView:§"!4§ = param1;
         var storageName:String = param2;
         if(isOpen)
         {
            return;
         }
         var birdsToShow:Array = §=!F§();
         try
         {
            if(storageName)
            {
               if(!§-t§)
               {
                  §-t§ = SharedObject.getLocal(storageName);
               }
               i = birdsToShow.length - 1;
               while(i >= 0)
               {
                  birdName = birdsToShow[i];
                  if(§-t§.data[birdName] == undefined || §-t§.data[birdName] == false)
                  {
                     §-t§.data[birdName] = true;
                  }
                  else
                  {
                     birdsToShow.splice(i,1);
                  }
                  i--;
               }
               §-t§.flush();
            }
         }
         catch(e:Error)
         {
            §'!@§.log("Unable to get local storage");
         }
         for each(birdName in birdsToShow)
         {
            §!#§(birdName,currentUIView);
         }
         §3^§();
      }
      
      private static function §3^§(param1:Boolean = true) : void
      {
         if(!isOpen && § !?§.length > 0)
         {
            isOpen = true;
            §,Z§ = § !?§.pop();
            §,Z§.open(param1);
         }
      }
      
      public static function § 4§() : void
      {
         if(isOpen == true)
         {
            if(§ !?§.length > 0)
            {
               §,Z§.preClose(false);
               isOpen = false;
               §3^§(false);
            }
            else
            {
               isOpen = false;
               §,Z§.preClose(true);
            }
         }
      }
   }
}
