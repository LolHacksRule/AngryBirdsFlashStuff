package §9c§
{
   import §"!2§.§+,§;
   import §"!2§.UIButtonRovio;
   import §"!2§.UIContainerRovio;
   import §"!2§.UITextFieldRovio;
   import §#!X§.LevelManager;
   import §-!>§.§4!T§;
   import §3!j§.SoundEngine;
   import §9!!§.Integer;
   import §<!G§.§9h§;
   import §<!G§.TweenManager;
   import §>!<§.UIComponentInteractiveRovio;
   import §>!<§.UIEventListenerRovio;
   import §@!H§.§-!H§;
   import §@!H§.§3!5§;
   import §[!>§.StateBase;
   import §^h§.§5!9§;
   import §^h§.StarSplash;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class StateLevelEndRio extends StateBase
   {
      
      public static const STATE_NAME:String = "LevelEndStateRio";
      
      public static const SHAKE_COUNT:Number = 30;
      
      protected static const LOOP_CHANNEL_NAME:String = "ScoreLoopCountChannel";
      
      protected static const EFFECT_CHANNEL_NAME:String = "EndScreenEffectChannel";
       
      
      private var §%!^§:§9h§;
      
      private var §=u§:Number;
      
      private var §1!+§:Number = 0.0;
      
      private var §+!V§:Number = 0.0;
      
      private var §7!^§:Boolean = false;
      
      private var §4!R§:Timer;
      
      private var §@!A§:§5!9§;
      
      protected var §2R§:Array;
      
      protected var §,Y§:StarSplash;
      
      protected var §'z§:Vector.<StarSplash>;
      
      public var mNewScoreCounter:int;
      
      private var §+^§:int;
      
      private var §do§:Boolean;
      
      protected var §&!Z§:Boolean;
      
      private var §?z§:Integer;
      
      protected var §#!5§:Boolean;
      
      private var §6!-§:§9h§;
      
      protected var §%#§:Boolean;
      
      protected var §<2§:int;
      
      public function StateLevelEndRio(initState:Boolean = false, name:String = "LevelEndStateRio")
      {
         this.§2R§ = [];
         this.§?z§ = new Integer();
         super(initState,name);
      }
      
      override public function init() : void
      {
         super.init();
         §^,§ = new §-!H§(this);
         §^,§.init(this.getViewXML());
         this.initButtonDefaultPositions();
         this.§'z§ = new Vector.<StarSplash>();
         SoundEngine.§"!"§(LOOP_CHANNEL_NAME,1,1);
         SoundEngine.§"!"§(EFFECT_CHANNEL_NAME,3,1);
      }
      
      protected function initButtonDefaultPositions() : void
      {
         this.§2R§.push((§^,§.getItemByName("Button_Menu") as UIButtonRovio).x);
         this.§2R§.push((§^,§.getItemByName("Button_Replay") as UIButtonRovio).x);
         this.§2R§.push((§^,§.getItemByName("Button_NextLevel") as UIButtonRovio).x);
         this.§2R§.push((§^,§.getItemByName("Button_CutScene") as UIButtonRovio).x);
      }
      
      protected function getViewXML() : XML
      {
         return §3!5§.§4@§.Views.View_LevelEndRio[0];
      }
      
      protected function showButtonsCutScene() : void
      {
         if(!AngryBirdsFP11.sUserProgress.§41§(LevelManager.§!=§))
         {
            (§^,§.getItemByName("Button_Menu") as UIButtonRovio).setVisibility(false);
            (§^,§.getItemByName("Button_Replay") as UIButtonRovio).setVisibility(true);
            (§^,§.getItemByName("Button_NextLevel") as UIButtonRovio).setVisibility(false);
            (§^,§.getItemByName("Button_CutScene") as UIButtonRovio).setVisibility(true);
            (§^,§.getItemByName("Button_Replay") as UIButtonRovio).x = this.§2R§[0] + Math.abs(this.§2R§[1] - this.§2R§[0]) / 2;
            (§^,§.getItemByName("Button_CutScene") as UIButtonRovio).x = this.§2R§[1] + Math.abs(this.§2R§[2] - this.§2R§[1]) / 2;
         }
         else
         {
            (§^,§.getItemByName("Button_Menu") as UIButtonRovio).setVisibility(true);
            (§^,§.getItemByName("Button_Replay") as UIButtonRovio).setVisibility(true);
            (§^,§.getItemByName("Button_NextLevel") as UIButtonRovio).setVisibility(false);
            (§^,§.getItemByName("Button_CutScene") as UIButtonRovio).setVisibility(true);
            (§^,§.getItemByName("Button_Menu") as UIButtonRovio).x = this.§2R§[0];
            (§^,§.getItemByName("Button_Replay") as UIButtonRovio).x = this.§2R§[1];
            (§^,§.getItemByName("Button_CutScene") as UIButtonRovio).x = this.§2R§[2];
         }
      }
      
      protected function showButtonsNormal() : void
      {
         (§^,§.getItemByName("Button_Menu") as UIButtonRovio).setVisibility(true);
         (§^,§.getItemByName("Button_Replay") as UIButtonRovio).setVisibility(true);
         (§^,§.getItemByName("Button_CutScene") as UIButtonRovio).setVisibility(false);
         if(LevelManager.§`l§())
         {
            (§^,§.getItemByName("Button_NextLevel") as UIButtonRovio).setVisibility(true);
            (§^,§.getItemByName("Button_Menu") as UIButtonRovio).x = this.§2R§[0];
            (§^,§.getItemByName("Button_Replay") as UIButtonRovio).x = this.§2R§[1];
            (§^,§.getItemByName("Button_NextLevel") as UIButtonRovio).x = this.§2R§[2];
         }
         else
         {
            (§^,§.getItemByName("Button_NextLevel") as UIButtonRovio).setVisibility(false);
            (§^,§.getItemByName("Button_Menu") as UIButtonRovio).x = this.§2R§[0] + Math.abs(this.§2R§[1] - this.§2R§[0]) / 2;
            (§^,§.getItemByName("Button_Replay") as UIButtonRovio).x = this.§2R§[1] + Math.abs(this.§2R§[2] - this.§2R§[1]) / 2;
         }
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§%#§ = false;
         §4!T§.pause();
         this.§@!A§ = new §5!9§(0,0,0,0);
         §^,§.movieClip.addChildAt(this.§@!A§,§^,§.movieClip.numChildren - 1);
         if(LevelManager.§2! §())
         {
            this.showButtonsCutScene();
         }
         else
         {
            this.showButtonsNormal();
         }
         this.mNewScoreCounter = 0;
         this.§do§ = false;
         SoundEngine.§`B§("LevelCompletedTheme1");
         this.§@!A§.§89§(0.7);
         this.§1!+§ = 0;
         this.§+!V§ = 0;
         this.§2u§();
      }
      
      private function §2u§() : void
      {
         this.§&!Z§ = false;
         this.setScoreData();
         this.§4!R§ = new Timer(500);
         this.§+^§ = 0;
         this.§4!R§.addEventListener(TimerEvent.TIMER,this.§5o§);
         this.§4!R§.start();
      }
      
      protected function §=!Z§() : void
      {
         if(AngryBirdsFP11.sUserProgress.getEagleScoreForLevel(LevelManager.§!=§) == 100)
         {
            (§^,§.getItemByName("MovieClip_ResultMEFeather") as §+,§).mClip.gotoAndStop("On");
         }
         else
         {
            (§^,§.getItemByName("MovieClip_ResultMEFeather") as §+,§).mClip.gotoAndStop("Off");
         }
      }
      
      protected function §<j§(newScore:int, highScore:int) : void
      {
         if(this.§#!5§)
         {
            highScore = newScore;
            AngryBirdsFP11.sUserProgress.§,g§(LevelManager.§!=§,highScore);
            §^,§.setText("New Highscore!","TextField_BestScore");
         }
         else
         {
            §^,§.setText("Best " + highScore.toString(),"TextField_BestScore");
            this.§<2§ = LevelManager.§%!"§(LevelManager.§!=§,highScore);
            switch(this.§<2§)
            {
               case 1:
                  (§^,§.getItemByName("MovieClip_BestScoreStars") as §+,§).§"r§("OneStar");
                  break;
               case 2:
                  (§^,§.getItemByName("MovieClip_BestScoreStars") as §+,§).§"r§("TwoStar");
                  break;
               case 3:
                  (§^,§.getItemByName("MovieClip_BestScoreStars") as §+,§).§"r§("ThreeStar");
            }
         }
      }
      
      protected function setScoreData() : void
      {
         var highScore:int = AngryBirdsFP11.sUserProgress.getScoreForLevel(LevelManager.§!=§);
         var newScore:int = §4!T§.controller.getScore();
         this.§#!5§ = newScore > highScore;
         this.§<j§(newScore,highScore);
         this.§=!Z§();
         var newEagleScore:int = §4!T§.controller.getEagleScore();
         var highEagleScore:int = AngryBirdsFP11.sUserProgress.getEagleScoreForLevel(LevelManager.§!=§);
         var isNewEagleHighScore:Boolean = newEagleScore > highEagleScore;
         if(isNewEagleHighScore)
         {
            highEagleScore = newEagleScore;
            AngryBirdsFP11.sUserProgress.§;!+§(LevelManager.§!=§,highEagleScore);
         }
         var starCount:int = AngryBirdsFP11.sUserProgress.getStarsForLevel(LevelManager.§!=§,newScore);
         (§^,§.getItemByName("MovieClip_NewHighScoreBadge") as §+,§).setVisibility(false);
         (§^,§.getItemByName("MovieClip_StarLeft") as §+,§).mClip.gotoAndStop("UnLit");
         (§^,§.getItemByName("MovieClip_StarCenter") as §+,§).mClip.gotoAndStop("UnLit");
         (§^,§.getItemByName("MovieClip_StarRight") as §+,§).mClip.gotoAndStop("UnLit");
      }
      
      protected function onBadgeLanded() : void
      {
         if(this.§#!5§)
         {
            SoundEngine.§`B§("Hiscore_Badge",EFFECT_CHANNEL_NAME);
            §^,§.setText("New Highscore!","TextField_NewHighScore");
            (§^,§.getItemByName("TextField_NewHighScore") as UITextFieldRovio).setVisibility(true);
            (§^,§.getItemByName("MovieClip_BestScoreStars") as §+,§).setVisibility(false);
            this.§ !K§();
         }
         else
         {
            (§^,§.getItemByName("TextField_BestScore") as UITextFieldRovio).setVisibility(true);
            (§^,§.getItemByName("MovieClip_BestScoreStars") as §+,§).setVisibility(true);
         }
      }
      
      protected function § !K§() : void
      {
         this.§1!+§ = 0;
         this.§+!V§ = 0;
         this.§=u§ = SHAKE_COUNT;
      }
      
      private function §-O§(deltaTime:Number) : void
      {
         (§^,§.getItemByName("Container_LevelEndStripe") as UIContainerRovio).x = (§^,§.getItemByName("Container_LevelEndStripe") as UIContainerRovio).x - this.§1!+§;
         (§^,§.getItemByName("Container_LevelEndStripe") as UIContainerRovio).y = (§^,§.getItemByName("Container_LevelEndStripe") as UIContainerRovio).y - this.§+!V§;
         if(this.§=u§ > 0)
         {
            this.§1!+§ = (Math.random() - 0.5) * (this.§=u§ / SHAKE_COUNT) * 20;
            this.§+!V§ = (Math.random() - 0.5) * (this.§=u§ / SHAKE_COUNT) * 20;
            (§^,§.getItemByName("Container_LevelEndStripe") as UIContainerRovio).x = (§^,§.getItemByName("Container_LevelEndStripe") as UIContainerRovio).x + this.§1!+§;
            (§^,§.getItemByName("Container_LevelEndStripe") as UIContainerRovio).y = (§^,§.getItemByName("Container_LevelEndStripe") as UIContainerRovio).y + this.§+!V§;
         }
         else
         {
            this.§=u§ = -1;
            this.§-b§();
            this.§1!+§ = 0;
            this.§+!V§ = 0;
         }
         this.§=u§ -= deltaTime / 10;
      }
      
      protected function §-b§() : void
      {
      }
      
      private function §5o§(e:TimerEvent) : void
      {
         var posX:Number = NaN;
         var posY:Number = NaN;
         var countTime:Number = NaN;
         var goldScore:Number = LevelManager.§<l§(LevelManager.§!=§).§&X§;
         var silverScore:Number = LevelManager.§<l§(LevelManager.§!=§).§;!>§;
         if((§^,§.getItemByName("MovieClip_StarLeft") as §+,§).mClip.currentLabel == "UnLit")
         {
            SoundEngine.§`B§("Hiscore_Count",LOOP_CHANNEL_NAME,100);
            SoundEngine.§`B§("Hiscore_Star_Splash1",EFFECT_CHANNEL_NAME);
            this.§4!R§.delay = 1000;
            this.§?z§.assign(§4!T§.controller.getScore());
            countTime = this.§?z§.getValue() / goldScore * 2;
            if(goldScore <= 0)
            {
               countTime = 1;
            }
            this.§6!-§ = TweenManager.§&!'§.§3L§(this,{"mNewScoreCounter":this.§?z§.getValue()},{"mNewScoreCounter":0},countTime);
            this.§6!-§.onComplete = this.§+!U§;
            this.§6!-§.play();
            (§^,§.getItemByName("MovieClip_StarLeft") as §+,§).mClip.gotoAndStop("Lit");
            posX = (§^,§.getItemByName("MovieClip_StarLeft") as §+,§).x + (§^,§.getItemByName("Container_LevelEndStripe") as UIContainerRovio).x;
            posY = (§^,§.getItemByName("MovieClip_StarLeft") as §+,§).y + (§^,§.getItemByName("Container_LevelEndStripe") as UIContainerRovio).y;
            this.§,Y§ = new StarSplash(AngryBirdsFP11.§8!Z§,AngryBirdsFP11.include,posX,posY,StarSplash.STARSPLASH_LEFT);
            §^,§.addChild(this.§,Y§);
            this.§'z§.push(this.§,Y§);
         }
         else if(this.§?z§.getValue() >= silverScore && (§^,§.getItemByName("MovieClip_StarCenter") as §+,§).mClip.currentLabel == "UnLit")
         {
            SoundEngine.§`B§("Hiscore_Star_Splash2",EFFECT_CHANNEL_NAME);
            (§^,§.getItemByName("MovieClip_StarCenter") as §+,§).mClip.gotoAndStop("Lit");
            posX = (§^,§.getItemByName("MovieClip_StarCenter") as §+,§).x + (§^,§.getItemByName("Container_LevelEndStripe") as UIContainerRovio).x;
            posY = (§^,§.getItemByName("MovieClip_StarCenter") as §+,§).y + (§^,§.getItemByName("Container_LevelEndStripe") as UIContainerRovio).y;
            this.§,Y§ = new StarSplash(AngryBirdsFP11.§8!Z§,AngryBirdsFP11.include,posX,posY,StarSplash.STARSPLASH_CENTER);
            §^,§.addChild(this.§,Y§);
            this.§'z§.push(this.§,Y§);
         }
         else if(this.§?z§.getValue() >= goldScore && (§^,§.getItemByName("MovieClip_StarRight") as §+,§).mClip.currentLabel == "UnLit")
         {
            this.§%#§ = true;
            SoundEngine.§`B§("Hiscore_Star_Splash3",EFFECT_CHANNEL_NAME);
            (§^,§.getItemByName("MovieClip_StarRight") as §+,§).mClip.gotoAndStop("Lit");
            posX = (§^,§.getItemByName("MovieClip_StarRight") as §+,§).x + (§^,§.getItemByName("Container_LevelEndStripe") as UIContainerRovio).x;
            posY = (§^,§.getItemByName("MovieClip_StarRight") as §+,§).y + (§^,§.getItemByName("Container_LevelEndStripe") as UIContainerRovio).y;
            this.§,Y§ = new StarSplash(AngryBirdsFP11.§8!Z§,AngryBirdsFP11.include,posX,posY,StarSplash.STARSPLASH_RIGHT);
            §^,§.addChild(this.§,Y§);
            this.§'z§.push(this.§,Y§);
         }
         else if(!this.§do§)
         {
            this.§do§ = true;
         }
         else
         {
            this.§4!R§.stop();
            if(this.§#!5§ && !this.§&!Z§)
            {
               (§^,§.getItemByName("MovieClip_NewHighScoreBadge") as §+,§).setVisibility(true);
            }
            else
            {
               (§^,§.getItemByName("MovieClip_NewHighScoreBadge") as §+,§).setVisibility(false);
            }
            this.§%!^§ = TweenManager.§&!'§.§3L§((§^,§.getItemByName("MovieClip_NewHighScoreBadge") as §+,§).mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":7,
               "scaleY":7
            },0.1);
            this.§%!^§.onComplete = this.onBadgeLanded;
            this.§%!^§.play();
         }
         ++this.§+^§;
      }
      
      private function §+!U§() : void
      {
         SoundEngine.§5v§(LOOP_CHANNEL_NAME);
      }
      
      override public function run(deltaTime:Number) : int
      {
         var splash:StarSplash = null;
         var superReturn:int = super.run(deltaTime);
         if(superReturn != StateBase.STATE_STATUS_RUNNING)
         {
            return superReturn;
         }
         §^,§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScore");
         §^,§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScoreEffects");
         for each(splash in this.§'z§)
         {
            splash.update(deltaTime);
         }
         if(this.§=u§ > -1)
         {
            this.§-O§(deltaTime);
         }
         if(mNextState.length > 0)
         {
            §4!T§.§1t§.clearLevel();
            return StateBase.STATE_STATUS_COMPLETED;
         }
         return StateBase.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§-K§();
         this.§=u§ = 0;
         this.mNewScoreCounter = 0;
         if(this.§6!-§)
         {
            this.§6!-§.stop();
            this.§6!-§ = null;
         }
         if(this.§%!^§)
         {
            this.§%!^§.stop();
            this.§%!^§ = null;
         }
         SoundEngine.§5v§(LOOP_CHANNEL_NAME);
         this.setButtonStates(UIComponentInteractiveRovio.COMPONENT_STATE_ACTIVE_DEFAULT);
         §^,§.setText("0","TextField_LevelEndScore");
         §^,§.setText("0","TextField_LevelEndScoreEffects");
         if(this.§@!A§)
         {
            if(§^,§.movieClip.contains(this.§@!A§))
            {
               §^,§.movieClip.removeChild(this.§@!A§);
            }
            this.§@!A§.clean();
            this.§@!A§ = null;
         }
      }
      
      protected function setButtonStates(state:String) : void
      {
         (§^,§.getItemByName("Button_Menu") as UIButtonRovio).setComponentVisualState(state);
         (§^,§.getItemByName("Button_Replay") as UIButtonRovio).setComponentVisualState(state);
         (§^,§.getItemByName("Button_NextLevel") as UIButtonRovio).setComponentVisualState(state);
         (§^,§.getItemByName("Button_CutScene") as UIButtonRovio).setComponentVisualState(state);
      }
      
      private function §-K§() : void
      {
         var splash:StarSplash = null;
         if(this.§4!R§)
         {
            this.§4!R§.stop();
            try
            {
               this.§4!R§.removeEventListener(TimerEvent.TIMER,this.§5o§);
            }
            catch(e:Error)
            {
               trace("No timer available found");
            }
         }
         for each(splash in this.§'z§)
         {
            if(§^,§.contains(splash))
            {
               §^,§.removeChild(splash);
            }
            splash.clean();
         }
         this.§'z§ = new Vector.<StarSplash>();
         this.§<§();
      }
      
      protected function §<§() : void
      {
         (§^,§.getItemByName("TextField_BestScore") as UITextFieldRovio).setVisibility(false);
         (§^,§.getItemByName("MovieClip_BestScoreStars") as §+,§).setVisibility(false);
         (§^,§.getItemByName("TextField_NewHighScore") as UITextFieldRovio).setVisibility(false);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      protected function §>]§() : void
      {
         StateLevelLoadClassic.§'8§();
         mNextState = this.§"!4§();
      }
      
      override public function uiInteractionHandler(eventIndex:int, eventName:String, component:UIEventListenerRovio) : void
      {
         var data:String = null;
         switch(eventName)
         {
            case "NEXT_LEVEL":
               this.§>]§();
               break;
            case "REPLAY":
               StateLevelLoadClassic.§3`§();
               mNextState = this.§"2§();
               break;
            case "WATCH_REPLAY":
               StateLevelLoadClassic.§3`§();
               mNextState = this.§"2§();
               data = §4!T§.§1t§.§0!1§();
               if(data)
               {
                  §4!T§.§1t§.§'>§(data);
               }
               break;
            case "MENU":
               SoundEngine.§=O§();
               mNextState = this.§[?§();
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§8R§.§,!f§();
         }
      }
      
      protected function §"2§() : String
      {
         return StateLevelLoadClassic.STATE_NAME;
      }
      
      protected function §"!4§() : String
      {
         return StateCutScene.STATE_NAME;
      }
      
      public function §[?§() : String
      {
         return StateLevelSelection.STATE_NAME;
      }
   }
}
