package §2?§
{
   import §+!?§.§"h§;
   import §0w§.§0#§;
   import §3G§.§6A§;
   import §5`§.§49§;
   import §5`§.§?y§;
   import §>K§.§9X§;
   import §>K§.§=!I§;
   import flash.net.SharedObject;
   
   public class §&h§
   {
      
      protected static var §]!F§:Class = §-!;§;
      
      protected static var §<+§:Class = §?!3§;
      
      protected static var §%D§:Class = §=!>§;
      
      private static var §^M§:Array = [];
      
      private static var §-?§:Popup = null;
      
      private static var §+0§:SharedObject;
      
      public static var isOpen:Boolean = false;
      
      private static var §3T§:Array;
       
      
      public function §&h§()
      {
         super();
      }
      
      private static function §0Z§(param1:String, param2:§0#§) : void
      {
         var tutorialPopup:§;d§ = null;
         var birdName:String = param1;
         var currentUIView:§0#§ = param2;
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
            tutorialPopup = new §;d§(§=!I§.§]g§(§]!F§),currentUIView,§49§.§ ^§(tutorialName,§?y§.§@j§));
         }
         catch(e:Error)
         {
         }
         if(tutorialPopup)
         {
            §^M§.push(tutorialPopup);
         }
      }
      
      private static function §"k§(param1:String, param2:§0#§) : void
      {
         var tutorialPopup:§9!+§ = null;
         var powerUpName:String = param1;
         var currentUIView:§0#§ = param2;
         var tutorialName:String = powerUpName;
         try
         {
            tutorialPopup = new §9!+§(§=!I§.§]g§(§<+§),currentUIView,§49§.§ ^§(tutorialName,§?y§.§@j§),tutorialName);
         }
         catch(e:Error)
         {
         }
         if(tutorialPopup)
         {
            §^M§.push(tutorialPopup);
         }
      }
      
      public static function §0;§(param1:String) : void
      {
         var birdName:String = null;
         var storageName:String = param1;
         try
         {
            if(storageName)
            {
               if(!§+0§)
               {
                  §+0§ = SharedObject.getLocal(storageName);
               }
               for each(birdName in §0t§())
               {
                  §+0§.data[birdName] = false;
               }
               §+0§.data["POWERUP_TUTORIAL_BIRDQUAKE"] = false;
               §+0§.data["POWERUP_TUTORIAL_SUPERSEED"] = false;
               §+0§.data["POWERUP_TUTORIAL_KINGSLING"] = false;
               §+0§.data["POWERUP_TUTORIAL_SLINGSCOPE"] = false;
            }
         }
         catch(e:Error)
         {
         }
      }
      
      private static function §0t§() : Array
      {
         var _loc2_:§6A§ = null;
         var _loc1_:Array = [];
         for each(_loc2_ in §"h§.§1C§.slingshot.§'@§)
         {
            if(_loc1_.indexOf(_loc2_.name) < 0)
            {
               _loc1_.push(_loc2_.name);
            }
         }
         return _loc1_;
      }
      
      public static function §[-§(param1:§0#§, param2:String, param3:String) : void
      {
         var i:int = 0;
         var currentUIView:§0#§ = param1;
         var storageName:String = param2;
         var powerUpName:String = param3;
         if(isOpen)
         {
            return;
         }
         var powerUpPopupName:String = powerUpName;
         §3T§ = [];
         switch(powerUpName)
         {
            case "POWERUP4":
               powerUpPopupName = "POWERUP_TUTORIAL_BIRDQUAKE";
               §3T§.push(powerUpPopupName);
               break;
            case "POWERUP1":
               powerUpPopupName = "POWERUP_TUTORIAL_SUPERSEED";
               §3T§.push(powerUpPopupName);
               break;
            case "POWERUP2":
               powerUpPopupName = "POWERUP_TUTORIAL_KINGSLING";
               §3T§.push(powerUpPopupName);
               break;
            case "POWERUP3":
               powerUpPopupName = "POWERUP_TUTORIAL_SLINGSCOPE";
               §3T§.push(powerUpPopupName);
               break;
            case "ALL":
               §3T§.push("POWERUP_TUTORIAL_BIRDQUAKE");
               §3T§.push("POWERUP_TUTORIAL_SUPERSEED");
               §3T§.push("POWERUP_TUTORIAL_KINGSLING");
               §3T§.push("POWERUP_TUTORIAL_SLINGSCOPE");
         }
         var powerUpsToShow:Array = §3T§;
         try
         {
            if(storageName)
            {
               if(!§+0§)
               {
                  §+0§ = SharedObject.getLocal(storageName);
               }
               i = powerUpsToShow.length - 1;
               while(i >= 0)
               {
                  powerUpPopupName = powerUpsToShow[i];
                  if(§+0§.data[powerUpPopupName] == undefined || §+0§.data[powerUpPopupName] == false)
                  {
                     §+0§.data[powerUpPopupName] = true;
                  }
                  else
                  {
                     powerUpsToShow.splice(i,1);
                  }
                  i--;
               }
               §+0§.flush();
            }
         }
         catch(e:Error)
         {
            §9X§.log("Unable to get local storage");
         }
         for each(powerUpName in powerUpsToShow)
         {
            §"k§(powerUpName,currentUIView);
         }
      }
      
      public static function § !&§(param1:§0#§, param2:String = null) : void
      {
         var birdName:String = null;
         var i:int = 0;
         var currentUIView:§0#§ = param1;
         var storageName:String = param2;
         if(isOpen)
         {
            return;
         }
         var birdsToShow:Array = §0t§();
         try
         {
            if(storageName)
            {
               if(!§+0§)
               {
                  §+0§ = SharedObject.getLocal(storageName);
               }
               i = birdsToShow.length - 1;
               while(i >= 0)
               {
                  birdName = birdsToShow[i];
                  if(§+0§.data[birdName] == undefined || §+0§.data[birdName] == false)
                  {
                     §+0§.data[birdName] = true;
                  }
                  else
                  {
                     birdsToShow.splice(i,1);
                  }
                  i--;
               }
               §+0§.flush();
            }
         }
         catch(e:Error)
         {
            §9X§.log("Unable to get local storage");
         }
         for each(birdName in birdsToShow)
         {
            §0Z§(birdName,currentUIView);
         }
         §;O§();
      }
      
      private static function §;O§(param1:Boolean = true) : void
      {
         if(!isOpen && §^M§.length > 0)
         {
            isOpen = true;
            §-?§ = §^M§.pop();
            §-?§.open(param1);
         }
      }
      
      public static function §`a§() : void
      {
         if(isOpen == true)
         {
            if(§^M§.length > 0)
            {
               §-?§.preClose(false);
               isOpen = false;
               §;O§(false);
            }
            else
            {
               isOpen = false;
               §-?§.preClose(true);
            }
         }
      }
   }
}
