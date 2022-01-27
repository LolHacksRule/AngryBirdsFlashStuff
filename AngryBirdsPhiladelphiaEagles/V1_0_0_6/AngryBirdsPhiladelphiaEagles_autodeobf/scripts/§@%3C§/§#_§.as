package §@<§
{
   import §&b§.§[F§;
   import §3!O§.§!Z§;
   import §3!O§.§5q§;
   import §4!-§.§;d§;
   import §4!0§.§3§;
   import §4!0§.§5!P§;
   import §4M§.§^'§;
   import flash.net.SharedObject;
   
   public class §#_§
   {
      
      protected static var §-e§:Class = §-!<§;
      
      protected static var §?y§:Class = §2!D§;
      
      protected static var §5!H§:Class = §4!>§;
      
      private static var §7!K§:Array = [];
      
      private static var §"+§:Popup = null;
      
      private static var §+!0§:SharedObject;
      
      public static var isOpen:Boolean = false;
      
      private static var § e§:Array;
       
      
      public function §#_§()
      {
         super();
      }
      
      private static function §+!M§(param1:String, param2:§^'§) : void
      {
         var tutorialPopup:§`m§ = null;
         var birdName:String = param1;
         var currentUIView:§^'§ = param2;
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
            tutorialPopup = new §`m§(§!Z§.§5C§(§-e§),currentUIView,§5!P§.§?a§(tutorialName,§3§.§<"§));
         }
         catch(e:Error)
         {
         }
         if(tutorialPopup)
         {
            §7!K§.push(tutorialPopup);
         }
      }
      
      private static function §;o§(param1:String, param2:§^'§) : void
      {
         var tutorialPopup:§+h§ = null;
         var powerUpName:String = param1;
         var currentUIView:§^'§ = param2;
         var tutorialName:String = powerUpName;
         try
         {
            tutorialPopup = new §+h§(§!Z§.§5C§(§?y§),currentUIView,§5!P§.§?a§(tutorialName,§3§.§<"§),tutorialName);
         }
         catch(e:Error)
         {
         }
         if(tutorialPopup)
         {
            §7!K§.push(tutorialPopup);
         }
      }
      
      public static function §6a§(param1:String) : void
      {
         var birdName:String = null;
         var storageName:String = param1;
         try
         {
            if(storageName)
            {
               if(!§+!0§)
               {
                  §+!0§ = SharedObject.getLocal(storageName);
               }
               for each(birdName in §9!=§())
               {
                  §+!0§.data[birdName] = false;
               }
               §+!0§.data["POWERUP_TUTORIAL_BIRDQUAKE"] = false;
               §+!0§.data["POWERUP_TUTORIAL_SUPERSEED"] = false;
               §+!0§.data["POWERUP_TUTORIAL_KINGSLING"] = false;
               §+!0§.data["POWERUP_TUTORIAL_SLINGSCOPE"] = false;
            }
         }
         catch(e:Error)
         {
         }
      }
      
      private static function §9!=§() : Array
      {
         var _loc2_:§;d§ = null;
         var _loc1_:Array = [];
         for each(_loc2_ in §[F§.§9u§.slingshot.§?q§)
         {
            if(_loc1_.indexOf(_loc2_.name) < 0)
            {
               _loc1_.push(_loc2_.name);
            }
         }
         return _loc1_;
      }
      
      public static function §?!;§(param1:§^'§, param2:String, param3:String) : void
      {
         var i:int = 0;
         var currentUIView:§^'§ = param1;
         var storageName:String = param2;
         var powerUpName:String = param3;
         if(isOpen)
         {
            return;
         }
         var powerUpPopupName:String = powerUpName;
         § e§ = [];
         switch(powerUpName)
         {
            case "POWERUP4":
               powerUpPopupName = "POWERUP_TUTORIAL_BIRDQUAKE";
               § e§.push(powerUpPopupName);
               break;
            case "POWERUP1":
               powerUpPopupName = "POWERUP_TUTORIAL_SUPERSEED";
               § e§.push(powerUpPopupName);
               break;
            case "POWERUP2":
               powerUpPopupName = "POWERUP_TUTORIAL_KINGSLING";
               § e§.push(powerUpPopupName);
               break;
            case "POWERUP3":
               powerUpPopupName = "POWERUP_TUTORIAL_SLINGSCOPE";
               § e§.push(powerUpPopupName);
               break;
            case "ALL":
               § e§.push("POWERUP_TUTORIAL_BIRDQUAKE");
               § e§.push("POWERUP_TUTORIAL_SUPERSEED");
               § e§.push("POWERUP_TUTORIAL_KINGSLING");
               § e§.push("POWERUP_TUTORIAL_SLINGSCOPE");
         }
         var powerUpsToShow:Array = § e§;
         try
         {
            if(storageName)
            {
               if(!§+!0§)
               {
                  §+!0§ = SharedObject.getLocal(storageName);
               }
               i = powerUpsToShow.length - 1;
               while(i >= 0)
               {
                  powerUpPopupName = powerUpsToShow[i];
                  if(§+!0§.data[powerUpPopupName] == undefined || §+!0§.data[powerUpPopupName] == false)
                  {
                     §+!0§.data[powerUpPopupName] = true;
                  }
                  else
                  {
                     powerUpsToShow.splice(i,1);
                  }
                  i--;
               }
               §+!0§.flush();
            }
         }
         catch(e:Error)
         {
            §5q§.log("Unable to get local storage");
         }
         for each(powerUpName in powerUpsToShow)
         {
            §;o§(powerUpName,currentUIView);
         }
      }
      
      public static function §;!<§(param1:§^'§, param2:String = null) : void
      {
         var birdName:String = null;
         var i:int = 0;
         var currentUIView:§^'§ = param1;
         var storageName:String = param2;
         if(isOpen)
         {
            return;
         }
         var birdsToShow:Array = §9!=§();
         try
         {
            if(storageName)
            {
               if(!§+!0§)
               {
                  §+!0§ = SharedObject.getLocal(storageName);
               }
               i = birdsToShow.length - 1;
               while(i >= 0)
               {
                  birdName = birdsToShow[i];
                  if(§+!0§.data[birdName] == undefined || §+!0§.data[birdName] == false)
                  {
                     §+!0§.data[birdName] = true;
                  }
                  else
                  {
                     birdsToShow.splice(i,1);
                  }
                  i--;
               }
               §+!0§.flush();
            }
         }
         catch(e:Error)
         {
            §5q§.log("Unable to get local storage");
         }
         for each(birdName in birdsToShow)
         {
            §+!M§(birdName,currentUIView);
         }
         §@O§();
      }
      
      private static function §@O§(param1:Boolean = true) : void
      {
         if(!isOpen && §7!K§.length > 0)
         {
            isOpen = true;
            §"+§ = §7!K§.pop();
            §"+§.open(param1);
         }
      }
      
      public static function §,!N§() : void
      {
         if(isOpen == true)
         {
            if(§7!K§.length > 0)
            {
               §"+§.preClose(false);
               isOpen = false;
               §@O§(false);
            }
            else
            {
               isOpen = false;
               §"+§.preClose(true);
            }
         }
      }
      
      public static function deActivate() : void
      {
         if(§"+§)
         {
            §"+§.preClose(false);
         }
      }
   }
}
