package §9v§
{
   import §'N§.§0d§;
   import §-!>§.§4!T§;
   import §8!?§.CompositeSpriteParser;
   import §8!?§.TextureManager;
   import §>!"§.§3>§;
   import §>!"§.Popup;
   import §>!"§.TutorialPopupManager;
   import §>!"§.TutorialPowerUpPopup;
   import §?A§.LevelSlingshotObject;
   import §@!H§.§-!H§;
   
   public class FacebookTutorialPopupManager extends TutorialPopupManager
   {
      
      private static var toBeShown:Array = [];
      
      private static var currentTutorial:Popup = null;
      
      public static var isOpen:Boolean = false;
      
      private static var mPowerUps:Array;
       
      
      public function FacebookTutorialPopupManager()
      {
         super();
      }
      
      private static function §37§(birdName:String, currentUIView:§-!H§) : void
      {
         var tutorialPopup:§3>§ = null;
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
               trace("Tutorial not found! " + birdName);
               return;
         }
         try
         {
            tutorialPopup = new §3>§(§0d§.§@A§(mTutorialPopupBin),currentUIView,CompositeSpriteParser.§1A§(tutorialName,TextureManager.§&!'§));
         }
         catch(e:Error)
         {
         }
         if(tutorialPopup)
         {
            toBeShown.push(tutorialPopup);
         }
      }
      
      private static function § !Q§(powerUpName:String, currentUIView:§-!H§) : void
      {
         var tutorialPopup:TutorialPowerUpPopup = null;
         var tutorialName:String = powerUpName;
         try
         {
            tutorialPopup = new TutorialPowerUpPopup(§0d§.§@A§(mTutorialPowerUpPopupBin),currentUIView,CompositeSpriteParser.§1A§(tutorialName,TextureManager.§&!'§),tutorialName);
         }
         catch(e:Error)
         {
         }
         if(tutorialPopup)
         {
            toBeShown.push(tutorialPopup);
         }
      }
      
      private static function §@3§() : Array
      {
         var bird:LevelSlingshotObject = null;
         var birdsToShow:Array = [];
         for each(bird in §4!T§.§1t§.slingshot.§+I§)
         {
            if(birdsToShow.indexOf(bird.name) < 0)
            {
               birdsToShow.push(bird.name);
            }
         }
         return birdsToShow;
      }
      
      public static function §>!f§(param1:§-!H§, param2:String, param3:Boolean = false) : void
      {
         var _loc6_:int = 0;
         var _loc7_:Boolean = false;
         if(isOpen)
         {
            return;
         }
         var _loc4_:String = param2;
         mPowerUps = [];
         switch(param2)
         {
            case "POWERUP4":
               _loc4_ = "POWERUP_TUTORIAL_BIRDQUAKE";
               mPowerUps.push(_loc4_);
               break;
            case "POWERUP1":
               _loc4_ = "POWERUP_TUTORIAL_SUPERSEED";
               mPowerUps.push(_loc4_);
               break;
            case "POWERUP2":
               _loc4_ = "POWERUP_TUTORIAL_KINGSLING";
               mPowerUps.push(_loc4_);
               break;
            case "POWERUP3":
               _loc4_ = "POWERUP_TUTORIAL_SLINGSCOPE";
               mPowerUps.push(_loc4_);
               break;
            case "ALL":
               mPowerUps.push("POWERUP_TUTORIAL_BIRDQUAKE");
               mPowerUps.push("POWERUP_TUTORIAL_SUPERSEED");
               mPowerUps.push("POWERUP_TUTORIAL_KINGSLING");
               mPowerUps.push("POWERUP_TUTORIAL_SLINGSCOPE");
         }
         var _loc5_:Array = mPowerUps;
         if(!param3)
         {
            for(_loc6_ = _loc5_.length - 1; _loc6_ >= 0; )
            {
               _loc7_ = AngryBirdsFP11.sUserProgress.hasTutorialBeenSeen(_loc5_[_loc6_]);
               if(_loc7_)
               {
                  _loc5_.splice(_loc6_,1);
               }
               _loc6_--;
            }
            if(_loc5_.length > 0)
            {
               AngryBirdsFP11.sUserProgress.saveTutorialSeen(_loc5_.toString());
            }
         }
         for each(param2 in _loc5_)
         {
            § !Q§(param2,param1);
         }
      }
      
      public static function §9!X§(currentUIView:§-!H§, skipChecks:Boolean = false) : void
      {
         var birdName:String = null;
         var i:int = 0;
         var birdSeen:Boolean = false;
         if(isOpen)
         {
            return;
         }
         var birdsToShow:Array = §@3§();
         if(!skipChecks)
         {
            for(i = birdsToShow.length - 1; i >= 0; )
            {
               birdSeen = AngryBirdsFP11.sUserProgress.hasTutorialBeenSeen(birdsToShow[i]);
               if(birdSeen)
               {
                  birdsToShow.splice(i,1);
               }
               i--;
            }
            if(birdsToShow.length > 0)
            {
               AngryBirdsFP11.sUserProgress.saveTutorialSeen(birdsToShow.toString());
            }
         }
         for each(birdName in birdsToShow)
         {
            §37§(birdName,currentUIView);
         }
         §5O§();
      }
      
      private static function §5O§(useFadeEffect:Boolean = true) : void
      {
         if(!isOpen && toBeShown.length > 0)
         {
            isOpen = true;
            currentTutorial = toBeShown.pop();
            currentTutorial.open(useFadeEffect);
         }
      }
      
      public static function §^6§() : void
      {
         if(isOpen == true)
         {
            if(toBeShown.length > 0)
            {
               currentTutorial.preClose(false);
               isOpen = false;
               §5O§(false);
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
