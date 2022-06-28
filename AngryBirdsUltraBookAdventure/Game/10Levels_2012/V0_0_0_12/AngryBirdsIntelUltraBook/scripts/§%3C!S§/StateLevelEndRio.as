package §<!S§
{
   import § D§.§]!B§;
   import §"!@§.§!!8§;
   import §"!@§.StarSplash;
   import §"L§.LevelManager;
   import §2=§.§!T§;
   import §2=§.TweenManager;
   import §4!9§.§6"§;
   import §4!9§.§>!^§;
   import §4H§.StateBase;
   import §7p§.Integer;
   import §=?§.SoundEngine;
   import §>!-§.UIComponentInteractiveRovio;
   import §>!-§.UIEventListenerRovio;
   import §]!6§.§6#§;
   import §]!6§.UIButtonRovio;
   import §]!6§.UIContainerRovio;
   import §]!6§.UITextFieldRovio;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class StateLevelEndRio extends StateBase
   {
      
      public static const STATE_NAME:String = "LevelEndStateRio";
      
      public static const SHAKE_COUNT:Number = 30;
      
      protected static const LOOP_CHANNEL_NAME:String = "ScoreLoopCountChannel";
      
      protected static const EFFECT_CHANNEL_NAME:String = "EndScreenEffectChannel";
       
      
      private var §<!J§:§!T§;
      
      private var §^!N§:Number;
      
      private var §&!9§:Number = 0.0;
      
      private var §1!#§:Number = 0.0;
      
      private var §6T§:Boolean = false;
      
      private var §,!C§:Timer;
      
      private var § !A§:§!!8§;
      
      protected var §0!Z§:Array;
      
      protected var §7!`§:StarSplash;
      
      protected var §[w§:Vector.<StarSplash>;
      
      public var mNewScoreCounter:int;
      
      private var §1z§:int;
      
      private var §`!f§:Boolean;
      
      protected var §%!b§:Boolean;
      
      private var §1!`§:Integer;
      
      protected var §]u§:Boolean;
      
      private var §9x§:§!T§;
      
      protected var §#A§:Boolean;
      
      protected var §<U§:int;
      
      public function StateLevelEndRio(initState:Boolean = false, name:String = "LevelEndStateRio")
      {
         this.§0!Z§ = [];
         this.§1!`§ = new Integer();
         super(initState,name);
      }
      
      override public function init() : void
      {
         super.init();
         §5!M§ = new §6"§(this);
         §5!M§.init(this.getViewXML());
         this.initButtonDefaultPositions();
         this.§[w§ = new Vector.<StarSplash>();
         SoundEngine.§#!`§(LOOP_CHANNEL_NAME,1,1);
         SoundEngine.§#!`§(EFFECT_CHANNEL_NAME,3,1);
      }
      
      protected function initButtonDefaultPositions() : void
      {
         this.§0!Z§.push((§5!M§.getItemByName("Button_Menu") as UIButtonRovio).x);
         this.§0!Z§.push((§5!M§.getItemByName("Button_Replay") as UIButtonRovio).x);
         this.§0!Z§.push((§5!M§.getItemByName("Button_NextLevel") as UIButtonRovio).x);
         this.§0!Z§.push((§5!M§.getItemByName("Button_CutScene") as UIButtonRovio).x);
      }
      
      protected function getViewXML() : XML
      {
         return §>!^§.§8'§.Views.View_LevelEndRio[0];
      }
      
      protected function showButtonsCutScene() : void
      {
         if(!AngryBirdsFP11.sUserProgress.§7n§(LevelManager.§var§))
         {
            (§5!M§.getItemByName("Button_Menu") as UIButtonRovio).setVisibility(false);
            (§5!M§.getItemByName("Button_Replay") as UIButtonRovio).setVisibility(true);
            (§5!M§.getItemByName("Button_NextLevel") as UIButtonRovio).setVisibility(false);
            (§5!M§.getItemByName("Button_CutScene") as UIButtonRovio).setVisibility(true);
            (§5!M§.getItemByName("Button_Replay") as UIButtonRovio).x = this.§0!Z§[0] + Math.abs(this.§0!Z§[1] - this.§0!Z§[0]) / 2;
            (§5!M§.getItemByName("Button_CutScene") as UIButtonRovio).x = this.§0!Z§[1] + Math.abs(this.§0!Z§[2] - this.§0!Z§[1]) / 2;
         }
         else
         {
            (§5!M§.getItemByName("Button_Menu") as UIButtonRovio).setVisibility(true);
            (§5!M§.getItemByName("Button_Replay") as UIButtonRovio).setVisibility(true);
            (§5!M§.getItemByName("Button_NextLevel") as UIButtonRovio).setVisibility(false);
            (§5!M§.getItemByName("Button_CutScene") as UIButtonRovio).setVisibility(true);
            (§5!M§.getItemByName("Button_Menu") as UIButtonRovio).x = this.§0!Z§[0];
            (§5!M§.getItemByName("Button_Replay") as UIButtonRovio).x = this.§0!Z§[1];
            (§5!M§.getItemByName("Button_CutScene") as UIButtonRovio).x = this.§0!Z§[2];
         }
      }
      
      protected function showButtonsNormal() : void
      {
         (§5!M§.getItemByName("Button_Menu") as UIButtonRovio).setVisibility(true);
         (§5!M§.getItemByName("Button_Replay") as UIButtonRovio).setVisibility(true);
         (§5!M§.getItemByName("Button_CutScene") as UIButtonRovio).setVisibility(false);
         if(LevelManager.§>!1§())
         {
            (§5!M§.getItemByName("Button_NextLevel") as UIButtonRovio).setVisibility(true);
            (§5!M§.getItemByName("Button_Menu") as UIButtonRovio).x = this.§0!Z§[0];
            (§5!M§.getItemByName("Button_Replay") as UIButtonRovio).x = this.§0!Z§[1];
            (§5!M§.getItemByName("Button_NextLevel") as UIButtonRovio).x = this.§0!Z§[2];
         }
         else
         {
            (§5!M§.getItemByName("Button_NextLevel") as UIButtonRovio).setVisibility(false);
            (§5!M§.getItemByName("Button_Menu") as UIButtonRovio).x = this.§0!Z§[0] + Math.abs(this.§0!Z§[1] - this.§0!Z§[0]) / 2;
            (§5!M§.getItemByName("Button_Replay") as UIButtonRovio).x = this.§0!Z§[1] + Math.abs(this.§0!Z§[2] - this.§0!Z§[1]) / 2;
         }
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§#A§ = false;
         §]!B§.pause();
         this.§ !A§ = new §!!8§(0,0,0,0);
         §5!M§.movieClip.addChildAt(this.§ !A§,§5!M§.movieClip.numChildren - 1);
         if(LevelManager.§>s§())
         {
            this.showButtonsCutScene();
         }
         else
         {
            this.showButtonsNormal();
         }
         this.mNewScoreCounter = 0;
         this.§`!f§ = false;
         SoundEngine.§9!X§("LevelCompletedTheme1");
         this.§ !A§.§6k§(0.7);
         this.§&!9§ = 0;
         this.§1!#§ = 0;
         this.§3G§();
      }
      
      private function §3G§() : void
      {
         this.§%!b§ = false;
         this.setScoreData();
         this.§,!C§ = new Timer(500);
         this.§1z§ = 0;
         this.§,!C§.addEventListener(TimerEvent.TIMER,this.§[^§);
         this.§,!C§.start();
      }
      
      protected function §5?§() : void
      {
         if(AngryBirdsFP11.sUserProgress.getEagleScoreForLevel(LevelManager.§var§) == 100)
         {
            (§5!M§.getItemByName("MovieClip_ResultMEFeather") as §6#§).mClip.gotoAndStop("On");
         }
         else
         {
            (§5!M§.getItemByName("MovieClip_ResultMEFeather") as §6#§).mClip.gotoAndStop("Off");
         }
      }
      
      protected function §<!X§(newScore:int, highScore:int) : void
      {
         if(this.§]u§)
         {
            highScore = newScore;
            AngryBirdsFP11.sUserProgress.§@!f§(LevelManager.§var§,highScore);
            §5!M§.setText("New Highscore!","TextField_BestScore");
         }
         else
         {
            §5!M§.setText("Best " + highScore.toString(),"TextField_BestScore");
            this.§<U§ = LevelManager.§+y§(LevelManager.§var§,highScore);
            switch(this.§<U§)
            {
               case 1:
                  (§5!M§.getItemByName("MovieClip_BestScoreStars") as §6#§).§;!G§("OneStar");
                  break;
               case 2:
                  (§5!M§.getItemByName("MovieClip_BestScoreStars") as §6#§).§;!G§("TwoStar");
                  break;
               case 3:
                  (§5!M§.getItemByName("MovieClip_BestScoreStars") as §6#§).§;!G§("ThreeStar");
            }
         }
      }
      
      protected function setScoreData() : void
      {
         var highScore:int = AngryBirdsFP11.sUserProgress.getScoreForLevel(LevelManager.§var§);
         var newScore:int = §]!B§.controller.getScore();
         this.§]u§ = newScore > highScore;
         this.§<!X§(newScore,highScore);
         this.§5?§();
         var newEagleScore:int = §]!B§.controller.getEagleScore();
         var highEagleScore:int = AngryBirdsFP11.sUserProgress.getEagleScoreForLevel(LevelManager.§var§);
         var isNewEagleHighScore:Boolean = newEagleScore > highEagleScore;
         if(isNewEagleHighScore)
         {
            highEagleScore = newEagleScore;
            AngryBirdsFP11.sUserProgress.§&t§(LevelManager.§var§,highEagleScore);
         }
         var starCount:int = AngryBirdsFP11.sUserProgress.getStarsForLevel(LevelManager.§var§,newScore);
         (§5!M§.getItemByName("MovieClip_NewHighScoreBadge") as §6#§).setVisibility(false);
         (§5!M§.getItemByName("MovieClip_StarLeft") as §6#§).mClip.gotoAndStop("UnLit");
         (§5!M§.getItemByName("MovieClip_StarCenter") as §6#§).mClip.gotoAndStop("UnLit");
         (§5!M§.getItemByName("MovieClip_StarRight") as §6#§).mClip.gotoAndStop("UnLit");
      }
      
      protected function onBadgeLanded() : void
      {
         if(this.§]u§)
         {
            SoundEngine.§9!X§("Hiscore_Badge",EFFECT_CHANNEL_NAME);
            §5!M§.setText("New Highscore!","TextField_NewHighScore");
            (§5!M§.getItemByName("TextField_NewHighScore") as UITextFieldRovio).setVisibility(true);
            (§5!M§.getItemByName("MovieClip_BestScoreStars") as §6#§).setVisibility(false);
            this.§@?§();
         }
         else
         {
            (§5!M§.getItemByName("TextField_BestScore") as UITextFieldRovio).setVisibility(true);
            (§5!M§.getItemByName("MovieClip_BestScoreStars") as §6#§).setVisibility(true);
         }
      }
      
      protected function §@?§() : void
      {
         this.§&!9§ = 0;
         this.§1!#§ = 0;
         this.§^!N§ = SHAKE_COUNT;
      }
      
      private function §&! §(deltaTime:Number) : void
      {
         (§5!M§.getItemByName("Container_LevelEndStripe") as UIContainerRovio).x = (§5!M§.getItemByName("Container_LevelEndStripe") as UIContainerRovio).x - this.§&!9§;
         (§5!M§.getItemByName("Container_LevelEndStripe") as UIContainerRovio).y = (§5!M§.getItemByName("Container_LevelEndStripe") as UIContainerRovio).y - this.§1!#§;
         if(this.§^!N§ > 0)
         {
            this.§&!9§ = (Math.random() - 0.5) * (this.§^!N§ / SHAKE_COUNT) * 20;
            this.§1!#§ = (Math.random() - 0.5) * (this.§^!N§ / SHAKE_COUNT) * 20;
            (§5!M§.getItemByName("Container_LevelEndStripe") as UIContainerRovio).x = (§5!M§.getItemByName("Container_LevelEndStripe") as UIContainerRovio).x + this.§&!9§;
            (§5!M§.getItemByName("Container_LevelEndStripe") as UIContainerRovio).y = (§5!M§.getItemByName("Container_LevelEndStripe") as UIContainerRovio).y + this.§1!#§;
         }
         else
         {
            this.§&!9§ = 0;
            this.§1!#§ = 0;
         }
         this.§^!N§ -= deltaTime / 10;
      }
      
      private function §[^§(e:TimerEvent) : void
      {
         var posX:Number = NaN;
         var posY:Number = NaN;
         var countTime:Number = NaN;
         var goldScore:Number = LevelManager.§;!a§(LevelManager.§var§).§;!L§;
         var silverScore:Number = LevelManager.§;!a§(LevelManager.§var§).§^]§;
         if((§5!M§.getItemByName("MovieClip_StarLeft") as §6#§).mClip.currentLabel == "UnLit")
         {
            SoundEngine.§9!X§("Hiscore_Count",LOOP_CHANNEL_NAME,100);
            SoundEngine.§9!X§("Hiscore_Star_Splash1",EFFECT_CHANNEL_NAME);
            this.§,!C§.delay = 1000;
            this.§1!`§.assign(§]!B§.controller.getScore());
            countTime = this.§1!`§.getValue() / goldScore * 2;
            if(goldScore <= 0)
            {
               countTime = 1;
            }
            this.§9x§ = TweenManager.§8!X§.§8m§(this,{"mNewScoreCounter":this.§1!`§.getValue()},{"mNewScoreCounter":0},countTime);
            this.§9x§.onComplete = this.§with§;
            this.§9x§.play();
            (§5!M§.getItemByName("MovieClip_StarLeft") as §6#§).mClip.gotoAndStop("Lit");
            posX = (§5!M§.getItemByName("MovieClip_StarLeft") as §6#§).x + (§5!M§.getItemByName("Container_LevelEndStripe") as UIContainerRovio).x;
            posY = (§5!M§.getItemByName("MovieClip_StarLeft") as §6#§).y + (§5!M§.getItemByName("Container_LevelEndStripe") as UIContainerRovio).y;
            this.§7!`§ = new StarSplash(AngryBirdsFP11.§8!6§,AngryBirdsFP11.§1[§,posX,posY,StarSplash.STARSPLASH_LEFT);
            §5!M§.addChild(this.§7!`§);
            this.§[w§.push(this.§7!`§);
         }
         else if(this.§1!`§.getValue() >= silverScore && (§5!M§.getItemByName("MovieClip_StarCenter") as §6#§).mClip.currentLabel == "UnLit")
         {
            SoundEngine.§9!X§("Hiscore_Star_Splash2",EFFECT_CHANNEL_NAME);
            (§5!M§.getItemByName("MovieClip_StarCenter") as §6#§).mClip.gotoAndStop("Lit");
            posX = (§5!M§.getItemByName("MovieClip_StarCenter") as §6#§).x + (§5!M§.getItemByName("Container_LevelEndStripe") as UIContainerRovio).x;
            posY = (§5!M§.getItemByName("MovieClip_StarCenter") as §6#§).y + (§5!M§.getItemByName("Container_LevelEndStripe") as UIContainerRovio).y;
            this.§7!`§ = new StarSplash(AngryBirdsFP11.§8!6§,AngryBirdsFP11.§1[§,posX,posY,StarSplash.STARSPLASH_CENTER);
            §5!M§.addChild(this.§7!`§);
            this.§[w§.push(this.§7!`§);
         }
         else if(this.§1!`§.getValue() >= goldScore && (§5!M§.getItemByName("MovieClip_StarRight") as §6#§).mClip.currentLabel == "UnLit")
         {
            this.§#A§ = true;
            SoundEngine.§9!X§("Hiscore_Star_Splash3",EFFECT_CHANNEL_NAME);
            (§5!M§.getItemByName("MovieClip_StarRight") as §6#§).mClip.gotoAndStop("Lit");
            posX = (§5!M§.getItemByName("MovieClip_StarRight") as §6#§).x + (§5!M§.getItemByName("Container_LevelEndStripe") as UIContainerRovio).x;
            posY = (§5!M§.getItemByName("MovieClip_StarRight") as §6#§).y + (§5!M§.getItemByName("Container_LevelEndStripe") as UIContainerRovio).y;
            this.§7!`§ = new StarSplash(AngryBirdsFP11.§8!6§,AngryBirdsFP11.§1[§,posX,posY,StarSplash.STARSPLASH_RIGHT);
            §5!M§.addChild(this.§7!`§);
            this.§[w§.push(this.§7!`§);
         }
         else if(!this.§`!f§)
         {
            this.§`!f§ = true;
         }
         else
         {
            this.§,!C§.stop();
            if(this.§]u§ && !this.§%!b§)
            {
               (§5!M§.getItemByName("MovieClip_NewHighScoreBadge") as §6#§).setVisibility(true);
            }
            else
            {
               (§5!M§.getItemByName("MovieClip_NewHighScoreBadge") as §6#§).setVisibility(false);
            }
            this.§<!J§ = TweenManager.§8!X§.§8m§((§5!M§.getItemByName("MovieClip_NewHighScoreBadge") as §6#§).mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":7,
               "scaleY":7
            },0.1);
            this.§<!J§.onComplete = this.onBadgeLanded;
            this.§<!J§.play();
         }
         ++this.§1z§;
      }
      
      private function §with§() : void
      {
         SoundEngine.§'!B§(LOOP_CHANNEL_NAME);
      }
      
      override public function run(deltaTime:Number) : int
      {
         var splash:StarSplash = null;
         var superReturn:int = super.run(deltaTime);
         if(superReturn != StateBase.STATE_STATUS_RUNNING)
         {
            return superReturn;
         }
         §5!M§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScore");
         §5!M§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScoreEffects");
         for each(splash in this.§[w§)
         {
            splash.update(deltaTime);
         }
         if(this.§^!N§ >= 0)
         {
            this.§&! §(deltaTime);
         }
         if(mNextState.length > 0)
         {
            §]!B§.§>F§.clearLevel();
            return StateBase.STATE_STATUS_COMPLETED;
         }
         return StateBase.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§ F§();
         this.§^!N§ = 0;
         this.mNewScoreCounter = 0;
         if(this.§9x§)
         {
            this.§9x§.stop();
            this.§9x§ = null;
         }
         if(this.§<!J§)
         {
            this.§<!J§.stop();
            this.§<!J§ = null;
         }
         SoundEngine.§'!B§(LOOP_CHANNEL_NAME);
         this.setButtonStates(UIComponentInteractiveRovio.COMPONENT_STATE_ACTIVE_DEFAULT);
         §5!M§.setText("0","TextField_LevelEndScore");
         §5!M§.setText("0","TextField_LevelEndScoreEffects");
         if(this.§ !A§)
         {
            if(§5!M§.movieClip.contains(this.§ !A§))
            {
               §5!M§.movieClip.removeChild(this.§ !A§);
            }
            this.§ !A§.clean();
            this.§ !A§ = null;
         }
      }
      
      protected function setButtonStates(state:String) : void
      {
         (§5!M§.getItemByName("Button_Menu") as UIButtonRovio).setComponentVisualState(state);
         (§5!M§.getItemByName("Button_Replay") as UIButtonRovio).setComponentVisualState(state);
         (§5!M§.getItemByName("Button_NextLevel") as UIButtonRovio).setComponentVisualState(state);
         (§5!M§.getItemByName("Button_CutScene") as UIButtonRovio).setComponentVisualState(state);
      }
      
      private function § F§() : void
      {
         var splash:StarSplash = null;
         if(this.§,!C§)
         {
            this.§,!C§.stop();
            try
            {
               this.§,!C§.removeEventListener(TimerEvent.TIMER,this.§[^§);
            }
            catch(e:Error)
            {
               trace("No timer available found");
            }
         }
         for each(splash in this.§[w§)
         {
            if(§5!M§.contains(splash))
            {
               §5!M§.removeChild(splash);
            }
            splash.clean();
         }
         this.§[w§ = new Vector.<StarSplash>();
         this.§"!9§();
      }
      
      protected function §"!9§() : void
      {
         (§5!M§.getItemByName("TextField_BestScore") as UITextFieldRovio).setVisibility(false);
         (§5!M§.getItemByName("MovieClip_BestScoreStars") as §6#§).setVisibility(false);
         (§5!M§.getItemByName("TextField_NewHighScore") as UITextFieldRovio).setVisibility(false);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      protected function §=!!§() : void
      {
         StateLevelLoadClassic.§[!6§();
         mNextState = this.§"!b§();
      }
      
      override public function uiInteractionHandler(eventIndex:int, eventName:String, component:UIEventListenerRovio) : void
      {
         var data:String = null;
         switch(eventName)
         {
            case "NEXT_LEVEL":
               this.§=!!§();
               break;
            case "REPLAY":
               StateLevelLoadClassic.§7!R§();
               mNextState = this.§4#§();
               break;
            case "WATCH_REPLAY":
               StateLevelLoadClassic.§7!R§();
               mNextState = this.§4#§();
               data = §]!B§.§>F§.§2D§();
               if(data)
               {
                  §]!B§.§>F§.§5!a§(data);
               }
               break;
            case "MENU":
               SoundEngine.§;!8§();
               mNextState = this.§-!5§();
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§5V§.§>J§();
         }
      }
      
      protected function §4#§() : String
      {
         return StateLevelLoadClassic.STATE_NAME;
      }
      
      protected function §"!b§() : String
      {
         return StateCutScene.STATE_NAME;
      }
      
      public function §-!5§() : String
      {
         return StateLevelSelection.STATE_NAME;
      }
   }
}
