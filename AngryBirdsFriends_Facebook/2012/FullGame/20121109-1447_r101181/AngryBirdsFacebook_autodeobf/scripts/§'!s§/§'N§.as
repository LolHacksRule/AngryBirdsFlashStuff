package §'!s§
{
   import §#^§.§7!A§;
   import §6!D§.§0Y§;
   import §6!D§.§9R§;
   import §6o§.§+!k§;
   import §6o§.§5!C§;
   import §9"!§.§;!M§;
   import §]!A§.;
   import flash.net.SharedObject;
   
   public class §'N§
   {
      
      protected static var §8!c§:Class = §?=§;
      
      protected static var §=!c§:Class = §2"'§;
      
      protected static var §,!1§:Class = §`"1§;
      
      private static var §!%§:Array = [];
      
      private static var §4<§:Popup = null;
      
      private static var § !6§:SharedObject;
      
      public static var isOpen:Boolean = false;
      
      private static var §+!-§:Array;
       
      
      public function §'N§()
      {
         super();
      }
      
      private static function §?!W§(param1:String, param2:§7!A§) : void
      {
         var tutorialPopup:§'!Q§ = null;
         var birdName:String = param1;
         var currentUIView:§7!A§ = param2;
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
            tutorialPopup = new §'!Q§(§5!C§.§9G§(§8!c§),currentUIView,§9R§.§!=§(tutorialName,§0Y§.§;"§));
         }
         catch(e:Error)
         {
         }
         if(tutorialPopup)
         {
            §!%§.push(tutorialPopup);
         }
      }
      
      private static function §5"8§(param1:String, param2:§7!A§) : void
      {
         var tutorialPopup:§-!5§ = null;
         var powerUpName:String = param1;
         var currentUIView:§7!A§ = param2;
         var tutorialName:String = powerUpName;
         try
         {
            tutorialPopup = new §-!5§(§5!C§.§9G§(§=!c§),currentUIView,§9R§.§!=§(tutorialName,§0Y§.§;"§),tutorialName);
         }
         catch(e:Error)
         {
         }
         if(tutorialPopup)
         {
            §!%§.push(tutorialPopup);
         }
      }
      
      public static function §5"3§(param1:String) : void
      {
         var birdName:String = null;
         var storageName:String = param1;
         try
         {
            if(storageName)
            {
               if(!§ !6§)
               {
                  § !6§ = SharedObject.getLocal(storageName);
               }
               for each(birdName in §0!"§())
               {
                  § !6§.data[birdName] = false;
               }
               § !6§.data["POWERUP_TUTORIAL_BIRDQUAKE"] = false;
               § !6§.data["POWERUP_TUTORIAL_SUPERSEED"] = false;
               § !6§.data["POWERUP_TUTORIAL_KINGSLING"] = false;
               § !6§.data["POWERUP_TUTORIAL_SLINGSCOPE"] = false;
            }
         }
         catch(e:Error)
         {
         }
      }
      
      private static function §0!"§() : Array
      {
         var _loc2_:§;!M§ = null;
         var _loc1_:Array = [];
         for each(_loc2_ in §#6§.§6!z§.slingshot.§ L§)
         {
            if(_loc1_.indexOf(_loc2_.name) < 0)
            {
               _loc1_.push(_loc2_.name);
            }
         }
         return _loc1_;
      }
      
      public static function §0!J§(param1:§7!A§, param2:String, param3:String) : void
      {
         var i:int = 0;
         var currentUIView:§7!A§ = param1;
         var storageName:String = param2;
         var powerUpName:String = param3;
         if(isOpen)
         {
            return;
         }
         var powerUpPopupName:String = powerUpName;
         §+!-§ = [];
         switch(powerUpName)
         {
            case "POWERUP4":
               powerUpPopupName = "POWERUP_TUTORIAL_BIRDQUAKE";
               §+!-§.push(powerUpPopupName);
               break;
            case "POWERUP1":
               powerUpPopupName = "POWERUP_TUTORIAL_SUPERSEED";
               §+!-§.push(powerUpPopupName);
               break;
            case "POWERUP2":
               powerUpPopupName = "POWERUP_TUTORIAL_KINGSLING";
               §+!-§.push(powerUpPopupName);
               break;
            case "POWERUP3":
               powerUpPopupName = "POWERUP_TUTORIAL_SLINGSCOPE";
               §+!-§.push(powerUpPopupName);
               break;
            case "ALL":
               §+!-§.push("POWERUP_TUTORIAL_BIRDQUAKE");
               §+!-§.push("POWERUP_TUTORIAL_SUPERSEED");
               §+!-§.push("POWERUP_TUTORIAL_KINGSLING");
               §+!-§.push("POWERUP_TUTORIAL_SLINGSCOPE");
         }
         var powerUpsToShow:Array = §+!-§;
         try
         {
            if(storageName)
            {
               if(!§ !6§)
               {
                  § !6§ = SharedObject.getLocal(storageName);
               }
               i = powerUpsToShow.length - 1;
               while(i >= 0)
               {
                  powerUpPopupName = powerUpsToShow[i];
                  if(§ !6§.data[powerUpPopupName] == undefined || § !6§.data[powerUpPopupName] == false)
                  {
                     § !6§.data[powerUpPopupName] = true;
                  }
                  else
                  {
                     powerUpsToShow.splice(i,1);
                  }
                  i--;
               }
               § !6§.flush();
            }
         }
         catch(e:Error)
         {
            §+!k§.log("Unable to get local storage");
         }
         for each(powerUpName in powerUpsToShow)
         {
            §5"8§(powerUpName,currentUIView);
         }
      }
      
      public static function showTutorials(param1:§7!A§, param2:String = null) : void
      {
         var birdName:String = null;
         var i:int = 0;
         var currentUIView:§7!A§ = param1;
         var storageName:String = param2;
         if(isOpen)
         {
            return;
         }
         var birdsToShow:Array = §0!"§();
         try
         {
            if(storageName)
            {
               if(!§ !6§)
               {
                  § !6§ = SharedObject.getLocal(storageName);
               }
               i = birdsToShow.length - 1;
               while(i >= 0)
               {
                  birdName = birdsToShow[i];
                  if(§ !6§.data[birdName] == undefined || § !6§.data[birdName] == false)
                  {
                     § !6§.data[birdName] = true;
                  }
                  else
                  {
                     birdsToShow.splice(i,1);
                  }
                  i--;
               }
               § !6§.flush();
            }
         }
         catch(e:Error)
         {
            §+!k§.log("Unable to get local storage");
         }
         for each(birdName in birdsToShow)
         {
            §?!W§(birdName,currentUIView);
         }
         §>!]§();
      }
      
      private static function §>!]§(param1:Boolean = true) : void
      {
         if(!isOpen && §!%§.length > 0)
         {
            isOpen = true;
            §4<§ = §!%§.pop();
            §4<§.open(param1);
         }
      }
      
      public static function §]>§() : void
      {
         if(isOpen == true)
         {
            if(§!%§.length > 0)
            {
               §4<§.preClose(false);
               isOpen = false;
               §>!]§(false);
            }
            else
            {
               isOpen = false;
               §4<§.preClose(true);
            }
         }
      }
      
      public static function deActivate() : void
      {
         if(§4<§)
         {
            §4<§.preClose(false);
         }
      }
   }
}
