package §##§
{
   import § D§.§]!B§;
   import §,!_§.CompositeSpriteParser;
   import §,!_§.TextureManager;
   import §2!H§.LevelSlingshotObject;
   import §4!9§.§6"§;
   import §6b§.Log;
   import §6b§.§^9§;
   import flash.net.SharedObject;
   
   public class TutorialPopupManager
   {
      
      protected static var mTutorialPopupBin:Class = §4y§;
      
      protected static var mTutorialPowerUpPopupBin:Class = §-_§;
      
      protected static var mMightyEaglePopupBin:Class = §<!?§;
      
      private static var toBeShown:Array = [];
      
      private static var currentTutorial:Popup = null;
      
      private static var mSharedObject:SharedObject;
      
      public static var isOpen:Boolean = false;
      
      private static var mPowerUps:Array;
       
      
      public function TutorialPopupManager()
      {
         super();
      }
      
      private static function §?!A§(birdName:String, currentUIView:§6"§) : void
      {
         var tutorialName:String = null;
         var tutorialPopup:§%M§ = null;
         tutorialName = "";
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
               trace("Tutorial not found! " + birdName);
               return;
         }
         try
         {
            tutorialPopup = new §%M§(§^9§.§1<§(mTutorialPopupBin),currentUIView,CompositeSpriteParser.§[o§(tutorialName,TextureManager.§8!X§));
         }
         catch(e:Error)
         {
            trace("Tutorial named: " + tutorialName + " Not found");
         }
         if(tutorialPopup)
         {
            toBeShown.push(tutorialPopup);
         }
      }
      
      private static function §^C§(powerUpName:String, currentUIView:§6"§) : void
      {
         var tutorialName:String = null;
         var tutorialPopup:TutorialPowerUpPopup = null;
         tutorialName = powerUpName;
         try
         {
            tutorialPopup = new TutorialPowerUpPopup(§^9§.§1<§(mTutorialPowerUpPopupBin),currentUIView,CompositeSpriteParser.§[o§(tutorialName,TextureManager.§8!X§),tutorialName);
         }
         catch(e:Error)
         {
            trace("Tutorial named: " + tutorialName + " Not found");
         }
         if(tutorialPopup)
         {
            toBeShown.push(tutorialPopup);
         }
      }
      
      public static function §%§(storageName:String) : void
      {
         var birdName:String = null;
         try
         {
            if(storageName)
            {
               if(!mSharedObject)
               {
                  mSharedObject = SharedObject.getLocal(storageName);
               }
               for each(birdName in §0?§())
               {
                  mSharedObject.data[birdName] = false;
               }
               mSharedObject.data["POWERUP_TUTORIAL_BIRDQUAKE"] = false;
               mSharedObject.data["POWERUP_TUTORIAL_SUPERSEED"] = false;
               mSharedObject.data["POWERUP_TUTORIAL_KINGSLING"] = false;
               mSharedObject.data["POWERUP_TUTORIAL_SLINGSCOPE"] = false;
            }
         }
         catch(e:Error)
         {
            trace("Unable to clear local storage data.");
         }
      }
      
      private static function §0?§() : Array
      {
         var bird:LevelSlingshotObject = null;
         var birdsToShow:Array = [];
         for each(bird in §]!B§.§>F§.slingshot.§#P§)
         {
            if(birdsToShow.indexOf(bird.name) < 0)
            {
               birdsToShow.push(bird.name);
            }
         }
         return birdsToShow;
      }
      
      public static function §,!B§(currentUIView:§6"§, storageName:String, powerUpName:String) : void
      {
         var i:int = 0;
         if(isOpen)
         {
            return;
         }
         var powerUpPopupName:String = powerUpName;
         mPowerUps = [];
         switch(powerUpName)
         {
            case "POWERUP4":
               powerUpPopupName = "POWERUP_TUTORIAL_BIRDQUAKE";
               mPowerUps.push(powerUpPopupName);
               break;
            case "POWERUP1":
               powerUpPopupName = "POWERUP_TUTORIAL_SUPERSEED";
               mPowerUps.push(powerUpPopupName);
               break;
            case "POWERUP2":
               powerUpPopupName = "POWERUP_TUTORIAL_KINGSLING";
               mPowerUps.push(powerUpPopupName);
               break;
            case "POWERUP3":
               powerUpPopupName = "POWERUP_TUTORIAL_SLINGSCOPE";
               mPowerUps.push(powerUpPopupName);
               break;
            case "ALL":
               mPowerUps.push("POWERUP_TUTORIAL_BIRDQUAKE");
               mPowerUps.push("POWERUP_TUTORIAL_SUPERSEED");
               mPowerUps.push("POWERUP_TUTORIAL_KINGSLING");
               mPowerUps.push("POWERUP_TUTORIAL_SLINGSCOPE");
         }
         var powerUpsToShow:Array = mPowerUps;
         try
         {
            if(storageName)
            {
               if(!mSharedObject)
               {
                  mSharedObject = SharedObject.getLocal(storageName);
               }
               for(i = powerUpsToShow.length - 1; i >= 0; )
               {
                  powerUpPopupName = powerUpsToShow[i];
                  if(mSharedObject.data[powerUpPopupName] == undefined || mSharedObject.data[powerUpPopupName] == false)
                  {
                     mSharedObject.data[powerUpPopupName] = true;
                  }
                  else
                  {
                     powerUpsToShow.splice(i,1);
                  }
                  i--;
               }
               mSharedObject.flush();
            }
         }
         catch(e:Error)
         {
            Log.log("Unable to get local storage");
         }
         for each(powerUpName in powerUpsToShow)
         {
            §^C§(powerUpName,currentUIView);
         }
      }
      
      public static function §"!]§(currentUIView:§6"§, storageName:String = null) : void
      {
         var birdName:String = null;
         var i:int = 0;
         if(isOpen)
         {
            return;
         }
         var birdsToShow:Array = §0?§();
         try
         {
            if(storageName)
            {
               if(!mSharedObject)
               {
                  mSharedObject = SharedObject.getLocal(storageName);
               }
               for(i = birdsToShow.length - 1; i >= 0; )
               {
                  birdName = birdsToShow[i];
                  if(mSharedObject.data[birdName] == undefined || mSharedObject.data[birdName] == false)
                  {
                     mSharedObject.data[birdName] = true;
                  }
                  else
                  {
                     birdsToShow.splice(i,1);
                  }
                  i--;
               }
               mSharedObject.flush();
            }
         }
         catch(e:Error)
         {
            Log.log("Unable to get local storage");
         }
         for each(birdName in birdsToShow)
         {
            §?!A§(birdName,currentUIView);
         }
         §3!A§();
      }
      
      private static function §3!A§(useFadeEffect:Boolean = true) : void
      {
         if(!isOpen && toBeShown.length > 0)
         {
            isOpen = true;
            currentTutorial = toBeShown.pop();
            currentTutorial.open(useFadeEffect);
         }
      }
      
      public static function §<Z§() : void
      {
         if(isOpen == true)
         {
            if(toBeShown.length > 0)
            {
               currentTutorial.preClose(false);
               isOpen = false;
               §3!A§(false);
            }
            else
            {
               isOpen = false;
               currentTutorial.preClose(true);
            }
         }
      }
   }
}
