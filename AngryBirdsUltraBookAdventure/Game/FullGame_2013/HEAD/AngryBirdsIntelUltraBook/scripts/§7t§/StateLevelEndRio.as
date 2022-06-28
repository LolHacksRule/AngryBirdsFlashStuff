package §7t§
{
   import §!!0§.SoundEngine;
   import §0!Q§.UIComponentInteractiveRovio;
   import §0!Q§.UIEventListenerRovio;
   import §1N§.StateBase;
   import §5!3§.§2!R§;
   import §5!3§.StarSplash;
   import §5=§.Integer;
   import §6a§.§=D§;
   import §6a§.UIButtonRovio;
   import §6a§.UIContainerRovio;
   import §6a§.UITextFieldRovio;
   import §=!5§.§+q§;
   import §=!5§.§`X§;
   import §>!_§.LevelManager;
   import §?!O§.§?W§;
   import §?!O§.TweenManager;
   import §?!Y§.§`S§;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class StateLevelEndRio extends StateBase
   {
      
      public static const STATE_NAME:String = "LevelEndStateRio";
      
      public static const SHAKE_COUNT:Number = 30;
      
      protected static const LOOP_CHANNEL_NAME:String = "ScoreLoopCountChannel";
      
      protected static const EFFECT_CHANNEL_NAME:String = "EndScreenEffectChannel";
       
      
      private var §>V§:§?W§;
      
      private var §^!H§:Number;
      
      private var §"!5§:Number = 0.0;
      
      private var §&Y§:Number = 0.0;
      
      private var §,!X§:Boolean = false;
      
      private var §>!`§:Timer;
      
      private var §%!Q§:§2!R§;
      
      protected var §`$§:Array;
      
      protected var §,O§:StarSplash;
      
      protected var §5o§:Vector.<StarSplash>;
      
      public var mNewScoreCounter:int;
      
      private var §6j§:int;
      
      private var §&!5§:Boolean;
      
      protected var §[![§:Boolean;
      
      private var §4!B§:Integer;
      
      protected var §6!%§:Boolean;
      
      private var §@i§:§?W§;
      
      protected var §2!L§:Boolean;
      
      protected var §!!B§:int;
      
      public function StateLevelEndRio(initState:Boolean = false, name:String = "LevelEndStateRio")
      {
         this.§`$§ = [];
         this.§4!B§ = new Integer();
         super(initState,name);
      }
      
      override public function init() : void
      {
         super.init();
         §`=§ = new §`X§(this);
         §`=§.init(this.getViewXML());
         this.initButtonDefaultPositions();
         this.§5o§ = new Vector.<StarSplash>();
         SoundEngine.§ Q§(LOOP_CHANNEL_NAME,1,1);
         SoundEngine.§ Q§(EFFECT_CHANNEL_NAME,3,1);
      }
      
      protected function initButtonDefaultPositions() : void
      {
         this.§`$§.push((§`=§.getItemByName("Button_Menu") as UIButtonRovio).x);
         this.§`$§.push((§`=§.getItemByName("Button_Replay") as UIButtonRovio).x);
         this.§`$§.push((§`=§.getItemByName("Button_NextLevel") as UIButtonRovio).x);
         this.§`$§.push((§`=§.getItemByName("Button_CutScene") as UIButtonRovio).x);
      }
      
      protected function getViewXML() : XML
      {
         return §+q§.§%M§.Views.View_LevelEndRio[0];
      }
      
      protected function showButtonsCutScene() : void
      {
         if(!AngryBirdsFP11.sUserProgress.§ R§(LevelManager.§1m§))
         {
            (§`=§.getItemByName("Button_Menu") as UIButtonRovio).setVisibility(false);
            (§`=§.getItemByName("Button_Replay") as UIButtonRovio).setVisibility(true);
            (§`=§.getItemByName("Button_NextLevel") as UIButtonRovio).setVisibility(false);
            (§`=§.getItemByName("Button_CutScene") as UIButtonRovio).setVisibility(true);
            (§`=§.getItemByName("Button_Replay") as UIButtonRovio).x = this.§`$§[0] + Math.abs(this.§`$§[1] - this.§`$§[0]) / 2;
            (§`=§.getItemByName("Button_CutScene") as UIButtonRovio).x = this.§`$§[1] + Math.abs(this.§`$§[2] - this.§`$§[1]) / 2;
         }
         else
         {
            (§`=§.getItemByName("Button_Menu") as UIButtonRovio).setVisibility(true);
            (§`=§.getItemByName("Button_Replay") as UIButtonRovio).setVisibility(true);
            (§`=§.getItemByName("Button_NextLevel") as UIButtonRovio).setVisibility(false);
            (§`=§.getItemByName("Button_CutScene") as UIButtonRovio).setVisibility(true);
            (§`=§.getItemByName("Button_Menu") as UIButtonRovio).x = this.§`$§[0];
            (§`=§.getItemByName("Button_Replay") as UIButtonRovio).x = this.§`$§[1];
            (§`=§.getItemByName("Button_CutScene") as UIButtonRovio).x = this.§`$§[2];
         }
      }
      
      protected function showButtonsNormal() : void
      {
         (§`=§.getItemByName("Button_Menu") as UIButtonRovio).setVisibility(true);
         (§`=§.getItemByName("Button_Replay") as UIButtonRovio).setVisibility(true);
         (§`=§.getItemByName("Button_CutScene") as UIButtonRovio).setVisibility(false);
         if(LevelManager.§8!I§())
         {
            (§`=§.getItemByName("Button_NextLevel") as UIButtonRovio).setVisibility(true);
            (§`=§.getItemByName("Button_Menu") as UIButtonRovio).x = this.§`$§[0];
            (§`=§.getItemByName("Button_Replay") as UIButtonRovio).x = this.§`$§[1];
            (§`=§.getItemByName("Button_NextLevel") as UIButtonRovio).x = this.§`$§[2];
         }
         else
         {
            (§`=§.getItemByName("Button_NextLevel") as UIButtonRovio).setVisibility(false);
            (§`=§.getItemByName("Button_Menu") as UIButtonRovio).x = this.§`$§[0] + Math.abs(this.§`$§[1] - this.§`$§[0]) / 2;
            (§`=§.getItemByName("Button_Replay") as UIButtonRovio).x = this.§`$§[1] + Math.abs(this.§`$§[2] - this.§`$§[1]) / 2;
         }
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§2!L§ = false;
         §`S§.pause();
         this.§%!Q§ = new §2!R§(0,0,0,0);
         §`=§.movieClip.addChildAt(this.§%!Q§,§`=§.movieClip.numChildren - 1);
         if(LevelManager.§%!M§())
         {
            this.showButtonsCutScene();
         }
         else
         {
            this.showButtonsNormal();
         }
         this.mNewScoreCounter = 0;
         this.§&!5§ = false;
         SoundEngine.§-!h§("LevelCompletedTheme1");
         this.§%!Q§.§`!]§(0.7);
         this.§"!5§ = 0;
         this.§&Y§ = 0;
         this.§=!@§();
      }
      
      private function §=!@§() : void
      {
         this.§[![§ = false;
         this.setScoreData();
         this.§>!`§ = new Timer(500);
         this.§6j§ = 0;
         this.§>!`§.addEventListener(TimerEvent.TIMER,this.§`!2§);
         this.§>!`§.start();
      }
      
      protected function §%!"§() : void
      {
         if(AngryBirdsFP11.sUserProgress.getEagleScoreForLevel(LevelManager.§1m§) == 100)
         {
            (§`=§.getItemByName("MovieClip_ResultMEFeather") as §=D§).mClip.gotoAndStop("On");
         }
         else
         {
            (§`=§.getItemByName("MovieClip_ResultMEFeather") as §=D§).mClip.gotoAndStop("Off");
         }
      }
      
      protected function §3?§(newScore:int, highScore:int) : void
      {
         if(this.§6!%§)
         {
            highScore = newScore;
            AngryBirdsFP11.sUserProgress.§6s§(LevelManager.§1m§,highScore);
            §`=§.setText("New Highscore!","TextField_BestScore");
         }
         else
         {
            §`=§.setText("Best " + highScore.toString(),"TextField_BestScore");
            this.§!!B§ = LevelManager.§8!R§(LevelManager.§1m§,highScore);
            switch(this.§!!B§)
            {
               case 1:
                  (§`=§.getItemByName("MovieClip_BestScoreStars") as §=D§).§`c§("OneStar");
                  break;
               case 2:
                  (§`=§.getItemByName("MovieClip_BestScoreStars") as §=D§).§`c§("TwoStar");
                  break;
               case 3:
                  (§`=§.getItemByName("MovieClip_BestScoreStars") as §=D§).§`c§("ThreeStar");
            }
         }
      }
      
      protected function setScoreData() : void
      {
         var highScore:int = AngryBirdsFP11.sUserProgress.getScoreForLevel(LevelManager.§1m§);
         var newScore:int = §`S§.controller.getScore();
         this.§6!%§ = newScore > highScore;
         this.§3?§(newScore,highScore);
         this.§%!"§();
         var newEagleScore:int = §`S§.controller.getEagleScore();
         var highEagleScore:int = AngryBirdsFP11.sUserProgress.getEagleScoreForLevel(LevelManager.§1m§);
         var isNewEagleHighScore:Boolean = newEagleScore > highEagleScore;
         if(isNewEagleHighScore)
         {
            highEagleScore = newEagleScore;
            AngryBirdsFP11.sUserProgress.§3!Z§(LevelManager.§1m§,highEagleScore);
         }
         var starCount:int = AngryBirdsFP11.sUserProgress.getStarsForLevel(LevelManager.§1m§,newScore);
         (§`=§.getItemByName("MovieClip_NewHighScoreBadge") as §=D§).setVisibility(false);
         (§`=§.getItemByName("MovieClip_StarLeft") as §=D§).mClip.gotoAndStop("UnLit");
         (§`=§.getItemByName("MovieClip_StarCenter") as §=D§).mClip.gotoAndStop("UnLit");
         (§`=§.getItemByName("MovieClip_StarRight") as §=D§).mClip.gotoAndStop("UnLit");
      }
      
      protected function onBadgeLanded() : void
      {
         if(this.§6!%§)
         {
            SoundEngine.§-!h§("Hiscore_Badge",EFFECT_CHANNEL_NAME);
            §`=§.setText("New Highscore!","TextField_NewHighScore");
            (§`=§.getItemByName("TextField_NewHighScore") as UITextFieldRovio).setVisibility(true);
            (§`=§.getItemByName("MovieClip_BestScoreStars") as §=D§).setVisibility(false);
            this.§0V§();
         }
         else
         {
            (§`=§.getItemByName("TextField_BestScore") as UITextFieldRovio).setVisibility(true);
            (§`=§.getItemByName("MovieClip_BestScoreStars") as §=D§).setVisibility(true);
         }
      }
      
      protected function §0V§() : void
      {
         this.§"!5§ = 0;
         this.§&Y§ = 0;
         this.§^!H§ = SHAKE_COUNT;
      }
      
      private function § !3§(deltaTime:Number) : void
      {
         (§`=§.getItemByName("Container_LevelEndStripe") as UIContainerRovio).x = (§`=§.getItemByName("Container_LevelEndStripe") as UIContainerRovio).x - this.§"!5§;
         (§`=§.getItemByName("Container_LevelEndStripe") as UIContainerRovio).y = (§`=§.getItemByName("Container_LevelEndStripe") as UIContainerRovio).y - this.§&Y§;
         if(this.§^!H§ > 0)
         {
            this.§"!5§ = (Math.random() - 0.5) * (this.§^!H§ / SHAKE_COUNT) * 20;
            this.§&Y§ = (Math.random() - 0.5) * (this.§^!H§ / SHAKE_COUNT) * 20;
            (§`=§.getItemByName("Container_LevelEndStripe") as UIContainerRovio).x = (§`=§.getItemByName("Container_LevelEndStripe") as UIContainerRovio).x + this.§"!5§;
            (§`=§.getItemByName("Container_LevelEndStripe") as UIContainerRovio).y = (§`=§.getItemByName("Container_LevelEndStripe") as UIContainerRovio).y + this.§&Y§;
         }
         else
         {
            this.§^!H§ = -1;
            this.§6u§();
            this.§"!5§ = 0;
            this.§&Y§ = 0;
         }
         this.§^!H§ -= deltaTime / 10;
      }
      
      protected function §6u§() : void
      {
      }
      
      private function §`!2§(e:TimerEvent) : void
      {
         var posX:Number = NaN;
         var posY:Number = NaN;
         var countTime:Number = NaN;
         var goldScore:Number = LevelManager.§1n§(LevelManager.§1m§).§<q§;
         var silverScore:Number = LevelManager.§1n§(LevelManager.§1m§).§4!4§;
         if((§`=§.getItemByName("MovieClip_StarLeft") as §=D§).mClip.currentLabel == "UnLit")
         {
            SoundEngine.§-!h§("Hiscore_Count",LOOP_CHANNEL_NAME,100);
            SoundEngine.§-!h§("Hiscore_Star_Splash1",EFFECT_CHANNEL_NAME);
            this.§>!`§.delay = 1000;
            this.§4!B§.assign(§`S§.controller.getScore());
            countTime = this.§4!B§.getValue() / goldScore * 2;
            if(goldScore <= 0)
            {
               countTime = 1;
            }
            this.§@i§ = TweenManager.§7!E§.§5§(this,{"mNewScoreCounter":this.§4!B§.getValue()},{"mNewScoreCounter":0},countTime);
            this.§@i§.onComplete = this.§3p§;
            this.§@i§.play();
            (§`=§.getItemByName("MovieClip_StarLeft") as §=D§).mClip.gotoAndStop("Lit");
            posX = (§`=§.getItemByName("MovieClip_StarLeft") as §=D§).x + (§`=§.getItemByName("Container_LevelEndStripe") as UIContainerRovio).x;
            posY = (§`=§.getItemByName("MovieClip_StarLeft") as §=D§).y + (§`=§.getItemByName("Container_LevelEndStripe") as UIContainerRovio).y;
            this.§,O§ = new StarSplash(AngryBirdsFP11.§@]§,AngryBirdsFP11.§!3§,posX,posY,StarSplash.STARSPLASH_LEFT);
            §`=§.addChild(this.§,O§);
            this.§5o§.push(this.§,O§);
         }
         else if(this.§4!B§.getValue() >= silverScore && (§`=§.getItemByName("MovieClip_StarCenter") as §=D§).mClip.currentLabel == "UnLit")
         {
            SoundEngine.§-!h§("Hiscore_Star_Splash2",EFFECT_CHANNEL_NAME);
            (§`=§.getItemByName("MovieClip_StarCenter") as §=D§).mClip.gotoAndStop("Lit");
            posX = (§`=§.getItemByName("MovieClip_StarCenter") as §=D§).x + (§`=§.getItemByName("Container_LevelEndStripe") as UIContainerRovio).x;
            posY = (§`=§.getItemByName("MovieClip_StarCenter") as §=D§).y + (§`=§.getItemByName("Container_LevelEndStripe") as UIContainerRovio).y;
            this.§,O§ = new StarSplash(AngryBirdsFP11.§@]§,AngryBirdsFP11.§!3§,posX,posY,StarSplash.STARSPLASH_CENTER);
            §`=§.addChild(this.§,O§);
            this.§5o§.push(this.§,O§);
         }
         else if(this.§4!B§.getValue() >= goldScore && (§`=§.getItemByName("MovieClip_StarRight") as §=D§).mClip.currentLabel == "UnLit")
         {
            this.§2!L§ = true;
            SoundEngine.§-!h§("Hiscore_Star_Splash3",EFFECT_CHANNEL_NAME);
            (§`=§.getItemByName("MovieClip_StarRight") as §=D§).mClip.gotoAndStop("Lit");
            posX = (§`=§.getItemByName("MovieClip_StarRight") as §=D§).x + (§`=§.getItemByName("Container_LevelEndStripe") as UIContainerRovio).x;
            posY = (§`=§.getItemByName("MovieClip_StarRight") as §=D§).y + (§`=§.getItemByName("Container_LevelEndStripe") as UIContainerRovio).y;
            this.§,O§ = new StarSplash(AngryBirdsFP11.§@]§,AngryBirdsFP11.§!3§,posX,posY,StarSplash.STARSPLASH_RIGHT);
            §`=§.addChild(this.§,O§);
            this.§5o§.push(this.§,O§);
         }
         else if(!this.§&!5§)
         {
            this.§&!5§ = true;
         }
         else
         {
            this.§>!`§.stop();
            if(this.§6!%§ && !this.§[![§)
            {
               (§`=§.getItemByName("MovieClip_NewHighScoreBadge") as §=D§).setVisibility(true);
            }
            else
            {
               (§`=§.getItemByName("MovieClip_NewHighScoreBadge") as §=D§).setVisibility(false);
            }
            this.§>V§ = TweenManager.§7!E§.§5§((§`=§.getItemByName("MovieClip_NewHighScoreBadge") as §=D§).mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":7,
               "scaleY":7
            },0.1);
            this.§>V§.onComplete = this.onBadgeLanded;
            this.§>V§.play();
         }
         ++this.§6j§;
      }
      
      private function §3p§() : void
      {
         SoundEngine.§]!&§(LOOP_CHANNEL_NAME);
      }
      
      override public function run(deltaTime:Number) : int
      {
         var splash:StarSplash = null;
         var superReturn:int = super.run(deltaTime);
         if(superReturn != StateBase.STATE_STATUS_RUNNING)
         {
            return superReturn;
         }
         §`=§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScore");
         §`=§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScoreEffects");
         for each(splash in this.§5o§)
         {
            splash.update(deltaTime);
         }
         if(this.§^!H§ > -1)
         {
            this.§ !3§(deltaTime);
         }
         if(mNextState.length > 0)
         {
            §`S§.§[o§.clearLevel();
            return StateBase.STATE_STATUS_COMPLETED;
         }
         return StateBase.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§34§();
         this.§^!H§ = 0;
         this.mNewScoreCounter = 0;
         if(this.§@i§)
         {
            this.§@i§.stop();
            this.§@i§ = null;
         }
         if(this.§>V§)
         {
            this.§>V§.stop();
            this.§>V§ = null;
         }
         SoundEngine.§]!&§(LOOP_CHANNEL_NAME);
         this.setButtonStates(UIComponentInteractiveRovio.COMPONENT_STATE_ACTIVE_DEFAULT);
         §`=§.setText("0","TextField_LevelEndScore");
         §`=§.setText("0","TextField_LevelEndScoreEffects");
         if(this.§%!Q§)
         {
            if(§`=§.movieClip.contains(this.§%!Q§))
            {
               §`=§.movieClip.removeChild(this.§%!Q§);
            }
            this.§%!Q§.clean();
            this.§%!Q§ = null;
         }
      }
      
      protected function setButtonStates(state:String) : void
      {
         (§`=§.getItemByName("Button_Menu") as UIButtonRovio).setComponentVisualState(state);
         (§`=§.getItemByName("Button_Replay") as UIButtonRovio).setComponentVisualState(state);
         (§`=§.getItemByName("Button_NextLevel") as UIButtonRovio).setComponentVisualState(state);
         (§`=§.getItemByName("Button_CutScene") as UIButtonRovio).setComponentVisualState(state);
      }
      
      private function §34§() : void
      {
         var splash:StarSplash = null;
         if(this.§>!`§)
         {
            this.§>!`§.stop();
            try
            {
               this.§>!`§.removeEventListener(TimerEvent.TIMER,this.§`!2§);
            }
            catch(e:Error)
            {
               trace("No timer available found");
            }
         }
         for each(splash in this.§5o§)
         {
            if(§`=§.contains(splash))
            {
               §`=§.removeChild(splash);
            }
            splash.clean();
         }
         this.§5o§ = new Vector.<StarSplash>();
         this.§<!C§();
      }
      
      protected function §<!C§() : void
      {
         (§`=§.getItemByName("TextField_BestScore") as UITextFieldRovio).setVisibility(false);
         (§`=§.getItemByName("MovieClip_BestScoreStars") as §=D§).setVisibility(false);
         (§`=§.getItemByName("TextField_NewHighScore") as UITextFieldRovio).setVisibility(false);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      protected function §`+§() : void
      {
         StateLevelLoadClassic.§7^§();
         mNextState = this.§4!;§();
      }
      
      override public function uiInteractionHandler(eventIndex:int, eventName:String, component:UIEventListenerRovio) : void
      {
         var data:String = null;
         switch(eventName)
         {
            case "NEXT_LEVEL":
               this.§`+§();
               break;
            case "REPLAY":
               StateLevelLoadClassic.§;!8§();
               mNextState = this.§-D§();
               break;
            case "WATCH_REPLAY":
               StateLevelLoadClassic.§;!8§();
               mNextState = this.§-D§();
               data = §`S§.§[o§.§-L§();
               if(data)
               {
                  §`S§.§[o§.§9!N§(data);
               }
               break;
            case "MENU":
               SoundEngine.§%!V§();
               mNextState = this.§=P§();
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§'t§.§0-§();
         }
      }
      
      protected function §-D§() : String
      {
         return StateLevelLoadClassic.STATE_NAME;
      }
      
      protected function §4!;§() : String
      {
         return StateCutScene.STATE_NAME;
      }
      
      public function §=P§() : String
      {
         return StateLevelSelection.STATE_NAME;
      }
   }
}
