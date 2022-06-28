package §@z§
{
   import § D§.§]!B§;
   import §![§.FacebookLeveLMain;
   import §"L§.LevelManager;
   import §%!4§.FacebookTutorialPopupManager;
   import §%!4§.SyncingPopup;
   import §%!4§.§]!e§;
   import §0P§.Starling;
   import §2!?§.§case§;
   import §2!H§.LevelMain;
   import §2=§.§!T§;
   import §4!9§.§6"§;
   import §4!9§.§>!^§;
   import §4H§.StateBase;
   import §5!+§.§87§;
   import §7p§.§+!N§;
   import §7p§.GoogleAnalyticsTracker;
   import §9R§.CachedFacebookFriends;
   import §<!S§.StateLevelEndEagle;
   import §<!S§.StateLevelEndRio;
   import §<!S§.StateLevelLoadClassic;
   import §<!S§.StatePlay;
   import §>!-§.UIEventListenerRovio;
   import §?t§.VersusComponent;
   import §]!6§.§6#§;
   import com.angrybirds.friendsbar.FriendsBar;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.ui.Keyboard;
   
   public class StateFacebookPlay extends StatePlay
   {
      
      private static const FPS_MEASURE_TIME_START:Number = -5 * 1000;
      
      private static const FPS_MEASURE_TIME_MIN:Number = 10 * 1000;
      
      public static const SCORE_SPEED:int = 50;
      
      public static var sPlaySessionToken:String;
       
      
      private var §3!i§:Number = -5000.0;
      
      private var §!!;§:int = 0;
      
      private var §&1§:Number = 0;
      
      private var §5!F§:Number = 0;
      
      private var §'!S§:Number;
      
      protected var §%q§:CachedFacebookFriends;
      
      private var §8!Q§:VersusComponent;
      
      private var §]$§:Boolean = false;
      
      private var §-w§:Boolean = false;
      
      private var §&j§:SyncingPopup;
      
      public function StateFacebookPlay(initState:Boolean = true, name:String = "StatePlay")
      {
         super(initState,name);
      }
      
      override protected function getGameLogicController(levelMain:LevelMain) : §case§
      {
         return new §87§(levelMain);
      }
      
      protected function §9!9§() : void
      {
         this.§%q§ = AngryBirdsUltraBook.sHighScoreListManager.§>3§(LevelManager.§;<§(LevelManager.§var§).name,LevelManager.§var§);
      }
      
      protected function §;!H§() : void
      {
         (§]!B§.§%h§ as AngryBirdsUltraBook).§81§(LevelManager.§var§,this.§%q§);
      }
      
      override protected function levelStarted() : void
      {
         super.levelStarted();
         §+!N§.§1`§(GoogleAnalyticsTracker.§=!?§,LevelManager.§var§);
         this.§9!9§();
         this.§;!H§();
         this.§8!Q§.levelStarted(this.§%q§,LevelManager.§var§);
         this.§]$§ = false;
         this.§-w§ = false;
         §-;§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§1!H§);
         trace("Level started");
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§8!Q§.activate();
         if(this.§]$§)
         {
            §-;§.addEventListener(MouseEvent.MOUSE_DOWN,this.§1!H§);
         }
         §5!M§.getItemByName("Button_Magnify").mClip.useHandCursor = false;
         this.§'!S§ = 2500;
         (§]!B§.§%h§ as AngryBirdsUltraBook).§8$§(FriendsBar.SIDEBAR_BUTTON_STATE_PLAY);
         this.§6!Z§();
         FacebookTutorialPopupManager.§"!]§(§5!M§);
      }
      
      override public function init() : void
      {
         §'n§ = true;
         §5!M§ = new §6"§(this);
         §5!M§.init(§>!^§.§8'§.Views.View_FacebookLevelPlay[0]);
         this.§8!Q§ = new VersusComponent(§5!M§);
         §5!M§.getItemByName("Button_Fullscreen").setVisibility(false);
         §+!h§();
      }
      
      private function §%!I§(userId:String) : String
      {
         var object:Object = null;
         for each(object in this.§%q§.data)
         {
            if(object.u == userId)
            {
               if(object.a)
               {
                  return object.a;
               }
            }
         }
         return null;
      }
      
      private function §,v§(amt:int) : String
      {
         var subString:String = null;
         var result:String = amt.toString();
         var subStrings:Array = [];
         if(result.length % 3 > 0)
         {
            subStrings.push(result.substr(0,result.length % 3));
            result = result.slice(result.length % 3);
         }
         while(result.length > 0)
         {
            subStrings.push(result.substr(0,3));
            result = result.substr(3);
         }
         for each(subString in subStrings)
         {
            result += subString + ",";
         }
         return result.substr(0,result.length - 1);
      }
      
      override public function keyUp(e:KeyboardEvent) : void
      {
         super.keyUp(e);
         if(!AngryBirdsFP11.DEBUG_MODE_ENABLED)
         {
            return;
         }
         switch(e.keyCode)
         {
            case Keyboard.M:
         }
      }
      
      override public function run(deltaTime:Number) : int
      {
         if(FacebookTutorialPopupManager.isOpen || §]!e§.§1!J§())
         {
            return StateBase.STATE_STATUS_RUNNING;
         }
         var vsComponentRunResults:Boolean = this.§8!Q§.run(deltaTime);
         this.§6!§(deltaTime);
         if(!§]!B§.§>F§.objects.mSardineCanAdded)
         {
            this.§?1§(deltaTime);
         }
         if(mNextState == StateLevelEndRio.STATE_NAME)
         {
            if(!this.§]$§)
            {
               §-;§.addEventListener(MouseEvent.MOUSE_DOWN,this.§1!H§);
               this.§]$§ = true;
            }
            if(vsComponentRunResults || this.§-w§)
            {
               this.§'!S§ -= deltaTime;
               if(this.§'!S§ < 0 || this.§-w§)
               {
                  return StateBase.STATE_STATUS_COMPLETED;
               }
            }
         }
         else
         {
            if(mNextState == StateLevelEndEagle.STATE_NAME)
            {
               return StateBase.STATE_STATUS_COMPLETED;
            }
            if(mNextState)
            {
               return StateBase.STATE_STATUS_COMPLETED;
            }
         }
         var superReturn:int = super.run(deltaTime);
         return StateBase.STATE_STATUS_RUNNING;
      }
      
      private function §1!H§(e:MouseEvent) : void
      {
         this.§-w§ = true;
         §-;§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§1!H§);
      }
      
      override protected function levelCompleted() : void
      {
         super.levelCompleted();
         var currentLevel:String = LevelManager.§var§;
         var score:int = §-;§.getScore();
         §+!N§.§1`§(GoogleAnalyticsTracker.§,H§,currentLevel,score);
         var powerupsUsed:Array = (§]!B§.§>F§ as FacebookLeveLMain).§`§();
         §+!N§.§'%§(powerupsUsed,currentLevel,score);
      }
      
      override public function uiInteractionHandler(eventIndex:int, eventName:String, component:UIEventListenerRovio) : void
      {
         switch(eventName)
         {
            case "showTutorial":
               FacebookTutorialPopupManager.§,!B§(§5!M§,"ALL",true);
               FacebookTutorialPopupManager.§"!]§(§5!M§,true);
               break;
            case "PAUSE":
               mNextState = §@!E§();
               break;
            case "RESTART_LEVEL":
               StateLevelLoadClassic.§7!R§();
               mNextState = StateLevelLoadClassic.STATE_NAME;
               break;
            case "CLOSE_TUTORIAL":
               FacebookTutorialPopupManager.§<Z§();
               break;
            case "RESTART_LEVEL":
               break;
            case "CLOSE_TUTORIAL_POWERUP":
               FacebookTutorialPopupManager.§<Z§();
               break;
            case "ZOOM_IN":
               §-;§.doUserZoom(true);
               break;
            case "ZOOM_OUT":
               §-;§.doUserZoom(false);
         }
      }
      
      override protected function initActivation() : void
      {
         super.initActivation();
         this.§8!Q§.§-F§ = false;
      }
      
      override protected function initMightyEagleButton() : void
      {
      }
      
      override public function deactivateMightyEagleButton() : void
      {
      }
      
      override protected function prepareHideMightyEagleButton() : void
      {
      }
      
      override protected function hideMightyEagleButton() : void
      {
      }
      
      override protected function onHideMightyEagle() : void
      {
      }
      
      override protected function useMightyEagle() : void
      {
      }
      
      override protected function updateCurrentScore(deltaTime:Number) : void
      {
         super.updateCurrentScore(deltaTime);
         var score:int = §-;§.getScore();
         var highscore:int = AngryBirdsFP11.sUserProgress.getScoreForLevel(LevelManager.§var§);
         var scoreVisible:int = §=!T§.getValue();
         if(scoreVisible < score)
         {
            scoreVisible = Math.min(score,§=!T§.getValue() + deltaTime * SCORE_SPEED);
            §=!T§.assign(scoreVisible);
         }
         this.§8!Q§.updateCurrentScore(scoreVisible,score,highscore);
      }
      
      private function §?1§(deltaTime:Number) : void
      {
         if((§5!M§.getItemByName("MovieClip_Boom") as §6#§).§ x§() == "End")
         {
            §5!M§.getItemByName("MovieClip_Boom").setVisibility(false);
            (§5!M§.getItemByName("MovieClip_Boom") as §6#§).§;!G§("Start");
         }
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§8!Q§.deActivate();
         §-;§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§1!H§);
         §]!B§.§>F§.§6!j§();
         this.§7K§();
         this.§6!Z§();
      }
      
      private function §7K§() : void
      {
         var fps:int = 0;
         var currentLevel:String = null;
         var isFullScreen:Boolean = false;
         if(this.§3!i§ > FPS_MEASURE_TIME_MIN)
         {
            fps = Math.round(1000 / this.§3!i§ * this.§!!;§);
            currentLevel = LevelManager.§var§;
            isFullScreen = (§]!B§.§%h§ as AngryBirdsUltraBook).§`X§();
            §+!N§.§2!,§(fps,currentLevel,Starling.isSoftware,isFullScreen);
         }
      }
      
      private function §6!§(deltaTime:Number) : void
      {
         this.§3!i§ += deltaTime;
         if(this.§3!i§ > 0)
         {
            ++this.§!!;§;
         }
         if(this.§&1§ != §]!B§.§"!U§() || this.§5!F§ != §]!B§.§=w§())
         {
            this.§6!Z§();
         }
      }
      
      private function §6!Z§() : void
      {
         this.§3!i§ = FPS_MEASURE_TIME_START;
         this.§!!;§ = 0;
         this.§&1§ = §]!B§.§"!U§();
         this.§5!F§ = §]!B§.§=w§();
      }
      
      private function §"!V§(tween:§!T§) : void
      {
         if(tween)
         {
            tween.§,'§();
         }
      }
   }
}
