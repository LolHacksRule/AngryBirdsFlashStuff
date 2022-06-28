package §#!2§
{
   import §"!2§.§+,§;
   import §"$§.Starling;
   import §#!X§.LevelManager;
   import §&[§.§-o§;
   import §'!%§.CachedFacebookFriends;
   import §-!>§.§4!T§;
   import §6!'§.VersusComponent;
   import §9!!§.§85§;
   import §9!!§.GoogleAnalyticsTracker;
   import §9!H§.§7k§;
   import §9c§.StateLevelEndEagle;
   import §9c§.StateLevelEndRio;
   import §9c§.StateLevelLoadClassic;
   import §9c§.StatePlay;
   import §9v§.§4!c§;
   import §9v§.FacebookTutorialPopupManager;
   import §9v§.SyncingPopup;
   import §<!G§.§9h§;
   import §>!<§.UIEventListenerRovio;
   import §?A§.LevelMain;
   import §@!H§.§-!H§;
   import §@!H§.§3!5§;
   import §@Q§.FacebookLeveLMain;
   import §[!>§.StateBase;
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
       
      
      private var §6!8§:Number = -5000.0;
      
      private var § !J§:int = 0;
      
      private var §3%§:Number = 0;
      
      private var §5w§:Number = 0;
      
      private var §5!e§:Number;
      
      protected var §]!?§:CachedFacebookFriends;
      
      private var §@!'§:VersusComponent;
      
      private var §-H§:Boolean = false;
      
      private var §7p§:Boolean = false;
      
      private var §1!#§:SyncingPopup;
      
      public function StateFacebookPlay(initState:Boolean = true, name:String = "StatePlay")
      {
         super(initState,name);
      }
      
      override protected function getGameLogicController(levelMain:LevelMain) : §7k§
      {
         return new §-o§(levelMain);
      }
      
      protected function §;!@§() : void
      {
         this.§]!?§ = AngryBirdsUltraBook.sHighScoreListManager.§-!O§(LevelManager.§'!7§(LevelManager.§!=§).name,LevelManager.§!=§);
      }
      
      protected function §>!'§() : void
      {
         (§4!T§.§%!K§ as AngryBirdsUltraBook).§1!-§(LevelManager.§!=§,this.§]!?§);
      }
      
      override protected function levelStarted() : void
      {
         super.levelStarted();
         §85§.§,!=§(GoogleAnalyticsTracker.§^=§,LevelManager.§!=§);
         this.§;!@§();
         this.§>!'§();
         this.§@!'§.levelStarted(this.§]!?§,LevelManager.§!=§);
         this.§-H§ = false;
         this.§7p§ = false;
         §-!,§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§"9§);
         trace("Level started");
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§@!'§.activate();
         if(this.§-H§)
         {
            §-!,§.addEventListener(MouseEvent.MOUSE_DOWN,this.§"9§);
         }
         §^,§.getItemByName("Button_Magnify").mClip.useHandCursor = false;
         this.§5!e§ = 2500;
         (§4!T§.§%!K§ as AngryBirdsUltraBook).§"!S§(FriendsBar.SIDEBAR_BUTTON_STATE_PLAY);
         this.§^0§();
         FacebookTutorialPopupManager.§9!X§(§^,§);
      }
      
      override public function init() : void
      {
         §"=§ = true;
         §^,§ = new §-!H§(this);
         §^,§.init(§3!5§.§4@§.Views.View_FacebookLevelPlay[0]);
         this.§@!'§ = new VersusComponent(§^,§);
         §^,§.getItemByName("Button_Fullscreen").setVisibility(false);
         §,;§();
      }
      
      private function §>!H§(userId:String) : String
      {
         var object:Object = null;
         for each(object in this.§]!?§.data)
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
      
      private function §4!+§(amt:int) : String
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
         if(FacebookTutorialPopupManager.isOpen || §4!c§.§&v§())
         {
            return StateBase.STATE_STATUS_RUNNING;
         }
         var vsComponentRunResults:Boolean = this.§@!'§.run(deltaTime);
         this.§9x§(deltaTime);
         if(!§4!T§.§1t§.objects.mSardineCanAdded)
         {
            this.§3!L§(deltaTime);
         }
         if(mNextState == StateLevelEndRio.STATE_NAME)
         {
            if(!this.§-H§)
            {
               §-!,§.addEventListener(MouseEvent.MOUSE_DOWN,this.§"9§);
               this.§-H§ = true;
            }
            if(vsComponentRunResults || this.§7p§)
            {
               this.§5!e§ -= deltaTime;
               if(this.§5!e§ < 0 || this.§7p§)
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
      
      private function §"9§(e:MouseEvent) : void
      {
         this.§7p§ = true;
         §-!,§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§"9§);
      }
      
      override protected function levelCompleted() : void
      {
         super.levelCompleted();
         var currentLevel:String = LevelManager.§!=§;
         var score:int = §-!,§.getScore();
         §85§.§,!=§(GoogleAnalyticsTracker.§9k§,currentLevel,score);
         var powerupsUsed:Array = (§4!T§.§1t§ as FacebookLeveLMain).§#!S§();
         §85§.§2e§(powerupsUsed,currentLevel,score);
      }
      
      override public function uiInteractionHandler(eventIndex:int, eventName:String, component:UIEventListenerRovio) : void
      {
         switch(eventName)
         {
            case "showTutorial":
               FacebookTutorialPopupManager.§>!f§(§^,§,"ALL",true);
               FacebookTutorialPopupManager.§9!X§(§^,§,true);
               break;
            case "PAUSE":
               mNextState = §]!I§();
               break;
            case "RESTART_LEVEL":
               StateLevelLoadClassic.§3`§();
               mNextState = StateLevelLoadClassic.STATE_NAME;
               break;
            case "CLOSE_TUTORIAL":
               FacebookTutorialPopupManager.§^6§();
               break;
            case "RESTART_LEVEL":
               break;
            case "CLOSE_TUTORIAL_POWERUP":
               FacebookTutorialPopupManager.§^6§();
               break;
            case "ZOOM_IN":
               §-!,§.doUserZoom(true);
               break;
            case "ZOOM_OUT":
               §-!,§.doUserZoom(false);
         }
      }
      
      override protected function initActivation() : void
      {
         super.initActivation();
         this.§@!'§.§,!a§ = false;
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
         var score:int = §-!,§.getScore();
         var highscore:int = AngryBirdsFP11.sUserProgress.getScoreForLevel(LevelManager.§!=§);
         var scoreVisible:int = §,!D§.getValue();
         if(scoreVisible < score)
         {
            scoreVisible = Math.min(score,§,!D§.getValue() + deltaTime * SCORE_SPEED);
            §,!D§.assign(scoreVisible);
         }
         this.§@!'§.updateCurrentScore(scoreVisible,score,highscore);
      }
      
      private function §3!L§(deltaTime:Number) : void
      {
         if((§^,§.getItemByName("MovieClip_Boom") as §+,§).§8!-§() == "End")
         {
            §^,§.getItemByName("MovieClip_Boom").setVisibility(false);
            (§^,§.getItemByName("MovieClip_Boom") as §+,§).§"r§("Start");
         }
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§@!'§.deActivate();
         §-!,§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§"9§);
         §4!T§.§1t§.§2$§();
         this.§+!j§();
         this.§^0§();
      }
      
      private function §+!j§() : void
      {
         var fps:int = 0;
         var currentLevel:String = null;
         var isFullScreen:Boolean = false;
         if(this.§6!8§ > FPS_MEASURE_TIME_MIN)
         {
            fps = Math.round(1000 / this.§6!8§ * this.§ !J§);
            currentLevel = LevelManager.§!=§;
            isFullScreen = (§4!T§.§%!K§ as AngryBirdsUltraBook).§7g§();
            §85§.§3!d§(fps,currentLevel,Starling.isSoftware,isFullScreen);
         }
      }
      
      private function §9x§(deltaTime:Number) : void
      {
         this.§6!8§ += deltaTime;
         if(this.§6!8§ > 0)
         {
            ++this.§ !J§;
         }
         if(this.§3%§ != §4!T§.§7"§() || this.§5w§ != §4!T§.§8_§())
         {
            this.§^0§();
         }
      }
      
      private function §^0§() : void
      {
         this.§6!8§ = FPS_MEASURE_TIME_START;
         this.§ !J§ = 0;
         this.§3%§ = §4!T§.§7"§();
         this.§5w§ = §4!T§.§8_§();
      }
      
      private function §@&§(tween:§9h§) : void
      {
         if(tween)
         {
            tween.§]8§();
         }
      }
   }
}
