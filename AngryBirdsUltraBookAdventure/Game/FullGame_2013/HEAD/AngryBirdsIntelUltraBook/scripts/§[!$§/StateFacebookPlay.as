package §[!$§
{
   import §#_§.CachedFacebookFriends;
   import §0!Q§.UIEventListenerRovio;
   import §1N§.StateBase;
   import §5=§.§9F§;
   import §5=§.GoogleAnalyticsTracker;
   import §6a§.§=D§;
   import §7!>§.Starling;
   import §7t§.StateLevelEndEagle;
   import §7t§.StateLevelEndRio;
   import §7t§.StateLevelLoadClassic;
   import §7t§.StatePlay;
   import §91§.§[!d§;
   import §;!1§.§9u§;
   import §;!1§.FacebookTutorialPopupManager;
   import §;!1§.SyncingPopup;
   import §;+§.FacebookLeveLMain;
   import §=!5§.§+q§;
   import §=!5§.§`X§;
   import §>!_§.LevelManager;
   import §?!O§.§?W§;
   import §?!Y§.§`S§;
   import §[w§.§?O§;
   import §]!@§.LevelMain;
   import §]B§.VersusComponent;
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
       
      
      private var §`!7§:Number = -5000.0;
      
      private var §^!P§:int = 0;
      
      private var §^6§:Number = 0;
      
      private var § !0§:Number = 0;
      
      private var §<!1§:Number;
      
      protected var §`!+§:CachedFacebookFriends;
      
      private var §1M§:VersusComponent;
      
      private var §5x§:Boolean = false;
      
      private var §<#§:Boolean = false;
      
      private var §<!^§:SyncingPopup;
      
      public function StateFacebookPlay(initState:Boolean = true, name:String = "StatePlay")
      {
         super(initState,name);
      }
      
      override protected function getGameLogicController(levelMain:LevelMain) : §[!d§
      {
         return new §?O§(levelMain);
      }
      
      protected function §>!3§() : void
      {
         this.§`!+§ = AngryBirdsUltraBook.sHighScoreListManager.§[4§(LevelManager.§6X§(LevelManager.§1m§).name,LevelManager.§1m§);
      }
      
      protected function §3!-§() : void
      {
         (§`S§.§=F§ as AngryBirdsUltraBook).§,!@§(LevelManager.§1m§,this.§`!+§);
      }
      
      override protected function levelStarted() : void
      {
         super.levelStarted();
         §9F§.§&k§(GoogleAnalyticsTracker.§4'§,LevelManager.§1m§);
         this.§>!3§();
         this.§3!-§();
         this.§1M§.levelStarted(this.§`!+§,LevelManager.§1m§);
         this.§5x§ = false;
         this.§<#§ = false;
         §1!<§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§%!&§);
         trace("Level started");
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§1M§.activate();
         if(this.§5x§)
         {
            §1!<§.addEventListener(MouseEvent.MOUSE_DOWN,this.§%!&§);
         }
         §`=§.getItemByName("Button_Magnify").mClip.useHandCursor = false;
         this.§<!1§ = 2500;
         (§`S§.§=F§ as AngryBirdsUltraBook).§`<§(FriendsBar.SIDEBAR_BUTTON_STATE_PLAY);
         this.§;!K§();
         FacebookTutorialPopupManager.§0W§(§`=§);
      }
      
      override public function init() : void
      {
         §&!C§ = true;
         §`=§ = new §`X§(this);
         §`=§.init(§+q§.§%M§.Views.View_FacebookLevelPlay[0]);
         this.§1M§ = new VersusComponent(§`=§);
         §`=§.getItemByName("Button_Fullscreen").setVisibility(false);
         §>,§();
      }
      
      private function §3!B§(userId:String) : String
      {
         var object:Object = null;
         for each(object in this.§`!+§.data)
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
      
      private function §3!>§(amt:int) : String
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
         if(FacebookTutorialPopupManager.isOpen || §9u§.§?=§())
         {
            return StateBase.STATE_STATUS_RUNNING;
         }
         var vsComponentRunResults:Boolean = this.§1M§.run(deltaTime);
         this.§6!T§(deltaTime);
         if(!§`S§.§[o§.objects.mSardineCanAdded)
         {
            this.§<!I§(deltaTime);
         }
         if(mNextState == StateLevelEndRio.STATE_NAME)
         {
            if(!this.§5x§)
            {
               §1!<§.addEventListener(MouseEvent.MOUSE_DOWN,this.§%!&§);
               this.§5x§ = true;
            }
            if(vsComponentRunResults || this.§<#§)
            {
               this.§<!1§ -= deltaTime;
               if(this.§<!1§ < 0 || this.§<#§)
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
      
      private function §%!&§(e:MouseEvent) : void
      {
         this.§<#§ = true;
         §1!<§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§%!&§);
      }
      
      override protected function levelCompleted() : void
      {
         super.levelCompleted();
         var currentLevel:String = LevelManager.§1m§;
         var score:int = §1!<§.getScore();
         §9F§.§&k§(GoogleAnalyticsTracker.§ !I§,currentLevel,score);
         var powerupsUsed:Array = (§`S§.§[o§ as FacebookLeveLMain).§!!X§();
         §9F§.§-y§(powerupsUsed,currentLevel,score);
      }
      
      override public function uiInteractionHandler(eventIndex:int, eventName:String, component:UIEventListenerRovio) : void
      {
         switch(eventName)
         {
            case "showTutorial":
               FacebookTutorialPopupManager.§`!H§(§`=§,"ALL",true);
               FacebookTutorialPopupManager.§0W§(§`=§,true);
               break;
            case "PAUSE":
               mNextState = §&!'§();
               break;
            case "RESTART_LEVEL":
               StateLevelLoadClassic.§;!8§();
               mNextState = StateLevelLoadClassic.STATE_NAME;
               break;
            case "CLOSE_TUTORIAL":
               FacebookTutorialPopupManager.§ c§();
               break;
            case "RESTART_LEVEL":
               break;
            case "CLOSE_TUTORIAL_POWERUP":
               FacebookTutorialPopupManager.§ c§();
               break;
            case "ZOOM_IN":
               §1!<§.doUserZoom(true);
               break;
            case "ZOOM_OUT":
               §1!<§.doUserZoom(false);
         }
      }
      
      override protected function initActivation() : void
      {
         super.initActivation();
         this.§1M§.§"!A§ = false;
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
         var score:int = §1!<§.getScore();
         var highscore:int = AngryBirdsFP11.sUserProgress.getScoreForLevel(LevelManager.§1m§);
         var scoreVisible:int = §'!H§.getValue();
         if(scoreVisible < score)
         {
            scoreVisible = Math.min(score,§'!H§.getValue() + deltaTime * SCORE_SPEED);
            §'!H§.assign(scoreVisible);
         }
         this.§1M§.updateCurrentScore(scoreVisible,score,highscore);
      }
      
      private function §<!I§(deltaTime:Number) : void
      {
         if((§`=§.getItemByName("MovieClip_Boom") as §=D§).§+J§() == "End")
         {
            §`=§.getItemByName("MovieClip_Boom").setVisibility(false);
            (§`=§.getItemByName("MovieClip_Boom") as §=D§).§`c§("Start");
         }
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§1M§.deActivate();
         §1!<§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§%!&§);
         §`S§.§[o§.§,g§();
         this.§,!d§();
         this.§;!K§();
      }
      
      private function §,!d§() : void
      {
         var fps:int = 0;
         var currentLevel:String = null;
         var isFullScreen:Boolean = false;
         if(this.§`!7§ > FPS_MEASURE_TIME_MIN)
         {
            fps = Math.round(1000 / this.§`!7§ * this.§^!P§);
            currentLevel = LevelManager.§1m§;
            isFullScreen = (§`S§.§=F§ as AngryBirdsUltraBook).§;!§();
            §9F§.§@V§(fps,currentLevel,Starling.isSoftware,isFullScreen);
         }
      }
      
      private function §6!T§(deltaTime:Number) : void
      {
         this.§`!7§ += deltaTime;
         if(this.§`!7§ > 0)
         {
            ++this.§^!P§;
         }
         if(this.§^6§ != §`S§.§7$§() || this.§ !0§ != §`S§.§4v§())
         {
            this.§;!K§();
         }
      }
      
      private function §;!K§() : void
      {
         this.§`!7§ = FPS_MEASURE_TIME_START;
         this.§^!P§ = 0;
         this.§^6§ = §`S§.§7$§();
         this.§ !0§ = §`S§.§4v§();
      }
      
      private function §!!1§(tween:§?W§) : void
      {
         if(tween)
         {
            tween.§"f§();
         }
      }
   }
}
