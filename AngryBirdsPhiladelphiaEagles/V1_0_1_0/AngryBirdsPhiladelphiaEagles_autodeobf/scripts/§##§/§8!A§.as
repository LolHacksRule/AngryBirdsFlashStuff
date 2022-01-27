package §##§
{
   import §"I§.§,&§;
   import §'!N§.§%!E§;
   import §'!N§.§>p§;
   import §,!<§.§6!M§;
   import §1!#§.§<t§;
   import §1!#§.§]H§;
   import §3p§.§2^§;
   import §3p§.§4;§;
   import §5=§.§^n§;
   import §=8§.§&H§;
   import §=8§.§'^§;
   import §=8§.§,!%§;
   import §=8§.dynamic;
   import §@w§.§2G§;
   import §[N§.§9k§;
   import §]!O§.§+[§;
   import §]!O§.§;Q§;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §8!A§ extends §6!M§
   {
      
      public static const §=,§:String = "LevelEndStateRio";
      
      public static const §?&§:Number = 30;
      
      protected static const §"Q§:String = "ScoreLoopCountChannel";
      
      protected static const §5!=§:String = "EndScreenEffectChannel";
       
      
      private var §+4§:§]H§;
      
      private var §@!9§:Number;
      
      private var §!G§:Number = 0.0;
      
      private var §%r§:Number = 0.0;
      
      private var §<!'§:Boolean = false;
      
      private var §34§:Timer;
      
      private var §3!6§:§4;§;
      
      protected var §&1§:Array;
      
      protected var §]!G§:§2^§;
      
      protected var §=Q§:Vector.<§2^§>;
      
      public var mNewScoreCounter:int;
      
      private var §6"§:int;
      
      private var §'!4§:Boolean;
      
      protected var §9U§:Boolean;
      
      private var §4I§:§,&§;
      
      protected var §6'§:Boolean;
      
      private var §'t§:§]H§;
      
      protected var §;p§:Boolean;
      
      protected var §import§:int;
      
      public function §8!A§(param1:Boolean = false, param2:String = "LevelEndStateRio")
      {
         this.§&1§ = [];
         this.§4I§ = new §,&§();
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         § § = new §+[§(this);
         § §.init(this.getViewXML());
         this.initButtonDefaultPositions();
         this.§=Q§ = new Vector.<§2^§>();
         §9k§.§?!F§(§"Q§,1,1);
         §9k§.§?!F§(§5!=§,3,1);
      }
      
      protected function initButtonDefaultPositions() : void
      {
         this.§&1§.push((§ §.getItemByName("Button_Menu") as dynamic).x);
         this.§&1§.push((§ §.getItemByName("Button_Replay") as dynamic).x);
         this.§&1§.push((§ §.getItemByName("Button_NextLevel") as dynamic).x);
         this.§&1§.push((§ §.getItemByName("Button_CutScene") as dynamic).x);
      }
      
      protected function getViewXML() : XML
      {
         return §;Q§.static.Views.View_LevelEndRio[0];
      }
      
      protected function showButtonsCutScene() : void
      {
         if(!AngryBirdsFP11.§ ;§.isLevelPassed(§^n§.§-7§))
         {
            (§ §.getItemByName("Button_Menu") as dynamic).setVisibility(false);
            (§ §.getItemByName("Button_Replay") as dynamic).setVisibility(true);
            (§ §.getItemByName("Button_NextLevel") as dynamic).setVisibility(false);
            (§ §.getItemByName("Button_CutScene") as dynamic).setVisibility(true);
            (§ §.getItemByName("Button_Replay") as dynamic).x = this.§&1§[0] + Math.abs(this.§&1§[1] - this.§&1§[0]) / 2;
            (§ §.getItemByName("Button_CutScene") as dynamic).x = this.§&1§[1] + Math.abs(this.§&1§[2] - this.§&1§[1]) / 2;
         }
         else
         {
            (§ §.getItemByName("Button_Menu") as dynamic).setVisibility(true);
            (§ §.getItemByName("Button_Replay") as dynamic).setVisibility(true);
            (§ §.getItemByName("Button_NextLevel") as dynamic).setVisibility(false);
            (§ §.getItemByName("Button_CutScene") as dynamic).setVisibility(true);
            (§ §.getItemByName("Button_Menu") as dynamic).x = this.§&1§[0];
            (§ §.getItemByName("Button_Replay") as dynamic).x = this.§&1§[1];
            (§ §.getItemByName("Button_CutScene") as dynamic).x = this.§&1§[2];
         }
      }
      
      protected function showButtonsNormal() : void
      {
         (§ §.getItemByName("Button_Menu") as dynamic).setVisibility(true);
         (§ §.getItemByName("Button_Replay") as dynamic).setVisibility(true);
         (§ §.getItemByName("Button_CutScene") as dynamic).setVisibility(false);
         if(§^n§.§<_§())
         {
            (§ §.getItemByName("Button_NextLevel") as dynamic).setVisibility(true);
            (§ §.getItemByName("Button_Menu") as dynamic).x = this.§&1§[0];
            (§ §.getItemByName("Button_Replay") as dynamic).x = this.§&1§[1];
            (§ §.getItemByName("Button_NextLevel") as dynamic).x = this.§&1§[2];
         }
         else
         {
            (§ §.getItemByName("Button_NextLevel") as dynamic).setVisibility(false);
            (§ §.getItemByName("Button_Menu") as dynamic).x = this.§&1§[0] + Math.abs(this.§&1§[1] - this.§&1§[0]) / 2;
            (§ §.getItemByName("Button_Replay") as dynamic).x = this.§&1§[1] + Math.abs(this.§&1§[2] - this.§&1§[1]) / 2;
         }
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§;p§ = false;
         §2G§.pause();
         this.§3!6§ = new §4;§(0,0,0,0);
         § §.movieClip.addChildAt(this.§3!6§,§ §.movieClip.numChildren - 1);
         if(§^n§.§[@§())
         {
            this.showButtonsCutScene();
         }
         else
         {
            this.showButtonsNormal();
         }
         this.mNewScoreCounter = 0;
         this.§'!4§ = false;
         §9k§.playSound("LevelCompletedTheme1");
         this.§3!6§.fadeToAlpha(0.7);
         this.§!G§ = 0;
         this.§%r§ = 0;
         this.§78§();
      }
      
      private function §78§() : void
      {
         this.§9U§ = false;
         this.setScoreData();
         this.§34§ = new Timer(500);
         this.§6"§ = 0;
         this.§34§.addEventListener(TimerEvent.TIMER,this.§+q§);
         this.§34§.start();
      }
      
      protected function setMightyEagleFeather() : void
      {
         if(AngryBirdsFP11.§ ;§.§4m§(§^n§.§-7§) == 100)
         {
            (§ §.getItemByName("MovieClip_ResultMEFeather") as §,!%§).mClip.gotoAndStop("On");
         }
         else
         {
            (§ §.getItemByName("MovieClip_ResultMEFeather") as §,!%§).mClip.gotoAndStop("Off");
         }
      }
      
      protected function setScoreStars(param1:int, param2:int) : void
      {
         if(this.§6'§)
         {
            param2 = param1;
            AngryBirdsFP11.§ ;§.§#!P§(§^n§.§-7§,param2);
            § §.setText("New Highscore!","TextField_BestScore");
         }
         else
         {
            § §.setText("Best " + param2.toString(),"TextField_BestScore");
            this.§import§ = §^n§.§!!A§(§^n§.§-7§,param2);
            switch(this.§import§)
            {
               case 1:
                  (§ §.getItemByName("MovieClip_BestScoreStars") as §,!%§).§3j§("OneStar");
                  break;
               case 2:
                  (§ §.getItemByName("MovieClip_BestScoreStars") as §,!%§).§3j§("TwoStar");
                  break;
               case 3:
                  (§ §.getItemByName("MovieClip_BestScoreStars") as §,!%§).§3j§("ThreeStar");
            }
         }
      }
      
      protected function setScoreData() : void
      {
         var _loc1_:int = AngryBirdsFP11.§ ;§.§7g§(§^n§.§-7§);
         var _loc2_:int = §2G§.controller.getScore();
         this.§6'§ = _loc2_ > _loc1_;
         this.setScoreStars(_loc2_,_loc1_);
         this.setMightyEagleFeather();
         var _loc3_:int = §2G§.controller.getEagleScore();
         var _loc4_:int = AngryBirdsFP11.§ ;§.§4m§(§^n§.§-7§);
         var _loc5_:*;
         if(_loc5_ = _loc3_ > _loc4_)
         {
            _loc4_ = _loc3_;
            AngryBirdsFP11.§ ;§.§'Z§(§^n§.§-7§,_loc4_);
         }
         var _loc6_:int = AngryBirdsFP11.§ ;§.§1!;§(§^n§.§-7§,_loc2_);
         (§ §.getItemByName("MovieClip_NewHighScoreBadge") as §,!%§).setVisibility(false);
         (§ §.getItemByName("MovieClip_StarLeft") as §,!%§).mClip.gotoAndStop("UnLit");
         (§ §.getItemByName("MovieClip_StarCenter") as §,!%§).mClip.gotoAndStop("UnLit");
         (§ §.getItemByName("MovieClip_StarRight") as §,!%§).mClip.gotoAndStop("UnLit");
      }
      
      protected function onBadgeLanded() : void
      {
         if(this.§6'§)
         {
            §9k§.playSound("Hiscore_Badge",§5!=§);
            § §.setText("New Highscore!","TextField_NewHighScore");
            (§ §.getItemByName("TextField_NewHighScore") as §&H§).setVisibility(true);
            (§ §.getItemByName("MovieClip_BestScoreStars") as §,!%§).setVisibility(false);
            this.§2T§();
         }
         else
         {
            (§ §.getItemByName("TextField_BestScore") as §&H§).setVisibility(true);
            (§ §.getItemByName("MovieClip_BestScoreStars") as §,!%§).setVisibility(true);
         }
      }
      
      protected function §2T§() : void
      {
         this.§!G§ = 0;
         this.§%r§ = 0;
         this.§@!9§ = §?&§;
      }
      
      private function §96§(param1:Number) : void
      {
         (§ §.getItemByName("Container_LevelEndStripe") as §'^§).x = (§ §.getItemByName("Container_LevelEndStripe") as §'^§).x - this.§!G§;
         (§ §.getItemByName("Container_LevelEndStripe") as §'^§).y = (§ §.getItemByName("Container_LevelEndStripe") as §'^§).y - this.§%r§;
         if(this.§@!9§ > 0)
         {
            this.§!G§ = (Math.random() - 0.5) * (this.§@!9§ / §?&§) * 20;
            this.§%r§ = (Math.random() - 0.5) * (this.§@!9§ / §?&§) * 20;
            (§ §.getItemByName("Container_LevelEndStripe") as §'^§).x = (§ §.getItemByName("Container_LevelEndStripe") as §'^§).x + this.§!G§;
            (§ §.getItemByName("Container_LevelEndStripe") as §'^§).y = (§ §.getItemByName("Container_LevelEndStripe") as §'^§).y + this.§%r§;
         }
         else
         {
            this.§@!9§ = -1;
            this.shakingOver();
            this.§!G§ = 0;
            this.§%r§ = 0;
         }
         this.§@!9§ -= param1 / 10;
      }
      
      protected function shakingOver() : void
      {
      }
      
      private function §+q§(param1:TimerEvent) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc4_:Number = §^n§.§5'§(§^n§.§-7§).§"@§;
         var _loc5_:Number = §^n§.§5'§(§^n§.§-7§).§-! §;
         if((§ §.getItemByName("MovieClip_StarLeft") as §,!%§).mClip.currentLabel == "UnLit")
         {
            §9k§.playSound("Hiscore_Count",§"Q§,100);
            §9k§.playSound("Hiscore_Star_Splash1",§5!=§);
            this.§34§.delay = 1000;
            this.§4I§.assign(§2G§.controller.getScore());
            _loc6_ = this.§4I§.getValue() / _loc4_ * 2;
            if(_loc4_ <= 0)
            {
               _loc6_ = 1;
            }
            this.§'t§ = §<t§.§4J§.§#q§(this,{"mNewScoreCounter":this.§4I§.getValue()},{"mNewScoreCounter":0},_loc6_);
            this.§'t§.onComplete = this.§4<§;
            this.§'t§.play();
            (§ §.getItemByName("MovieClip_StarLeft") as §,!%§).mClip.gotoAndStop("Lit");
            _loc2_ = (§ §.getItemByName("MovieClip_StarLeft") as §,!%§).x + (§ §.getItemByName("Container_LevelEndStripe") as §'^§).x;
            _loc3_ = (§ §.getItemByName("MovieClip_StarLeft") as §,!%§).y + (§ §.getItemByName("Container_LevelEndStripe") as §'^§).y;
            this.§]!G§ = new §2^§(AngryBirdsFP11.§4!F§,AngryBirdsFP11.§0!M§,_loc2_,_loc3_,§2^§.§"K§);
            § §.addChild(this.§]!G§);
            this.§=Q§.push(this.§]!G§);
         }
         else if(this.§4I§.getValue() >= _loc5_ && (§ §.getItemByName("MovieClip_StarCenter") as §,!%§).mClip.currentLabel == "UnLit")
         {
            §9k§.playSound("Hiscore_Star_Splash2",§5!=§);
            (§ §.getItemByName("MovieClip_StarCenter") as §,!%§).mClip.gotoAndStop("Lit");
            _loc2_ = (§ §.getItemByName("MovieClip_StarCenter") as §,!%§).x + (§ §.getItemByName("Container_LevelEndStripe") as §'^§).x;
            _loc3_ = (§ §.getItemByName("MovieClip_StarCenter") as §,!%§).y + (§ §.getItemByName("Container_LevelEndStripe") as §'^§).y;
            this.§]!G§ = new §2^§(AngryBirdsFP11.§4!F§,AngryBirdsFP11.§0!M§,_loc2_,_loc3_,§2^§.§`8§);
            § §.addChild(this.§]!G§);
            this.§=Q§.push(this.§]!G§);
         }
         else if(this.§4I§.getValue() >= _loc4_ && (§ §.getItemByName("MovieClip_StarRight") as §,!%§).mClip.currentLabel == "UnLit")
         {
            this.§;p§ = true;
            §9k§.playSound("Hiscore_Star_Splash3",§5!=§);
            (§ §.getItemByName("MovieClip_StarRight") as §,!%§).mClip.gotoAndStop("Lit");
            _loc2_ = (§ §.getItemByName("MovieClip_StarRight") as §,!%§).x + (§ §.getItemByName("Container_LevelEndStripe") as §'^§).x;
            _loc3_ = (§ §.getItemByName("MovieClip_StarRight") as §,!%§).y + (§ §.getItemByName("Container_LevelEndStripe") as §'^§).y;
            this.§]!G§ = new §2^§(AngryBirdsFP11.§4!F§,AngryBirdsFP11.§0!M§,_loc2_,_loc3_,§2^§.§4!§);
            § §.addChild(this.§]!G§);
            this.§=Q§.push(this.§]!G§);
         }
         else if(!this.§'!4§)
         {
            this.§'!4§ = true;
         }
         else
         {
            this.§34§.stop();
            if(this.§6'§ && !this.§9U§)
            {
               (§ §.getItemByName("MovieClip_NewHighScoreBadge") as §,!%§).setVisibility(true);
            }
            else
            {
               (§ §.getItemByName("MovieClip_NewHighScoreBadge") as §,!%§).setVisibility(false);
            }
            this.§+4§ = §<t§.§4J§.§#q§((§ §.getItemByName("MovieClip_NewHighScoreBadge") as §,!%§).mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":7,
               "scaleY":7
            },0.1);
            this.§+4§.onComplete = this.onBadgeLanded;
            this.§+4§.play();
         }
         ++this.§6"§;
      }
      
      private function §4<§() : void
      {
         §9k§.§3n§(§"Q§);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:§2^§ = null;
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §6!M§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         § §.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScore");
         § §.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScoreEffects");
         for each(_loc3_ in this.§=Q§)
         {
            _loc3_.update(param1);
         }
         if(this.§@!9§ > -1)
         {
            this.§96§(param1);
         }
         if(mNextState.length > 0)
         {
            §2G§.§7!,§.clearLevel();
            return §6!M§.STATE_STATUS_COMPLETED;
         }
         return §6!M§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§[z§();
         this.§@!9§ = 0;
         this.mNewScoreCounter = 0;
         if(this.§'t§)
         {
            this.§'t§.stop();
            this.§'t§ = null;
         }
         if(this.§+4§)
         {
            this.§+4§.stop();
            this.§+4§ = null;
         }
         §9k§.§3n§(§"Q§);
         this.setButtonStates(§>p§.COMPONENT_STATE_ACTIVE_DEFAULT);
         § §.setText("0","TextField_LevelEndScore");
         § §.setText("0","TextField_LevelEndScoreEffects");
         if(this.§3!6§)
         {
            if(§ §.movieClip.contains(this.§3!6§))
            {
               § §.movieClip.removeChild(this.§3!6§);
            }
            this.§3!6§.clean();
            this.§3!6§ = null;
         }
      }
      
      protected function setButtonStates(param1:String) : void
      {
         (§ §.getItemByName("Button_Menu") as dynamic).setComponentVisualState(param1);
         (§ §.getItemByName("Button_Replay") as dynamic).setComponentVisualState(param1);
         (§ §.getItemByName("Button_NextLevel") as dynamic).setComponentVisualState(param1);
         (§ §.getItemByName("Button_CutScene") as dynamic).setComponentVisualState(param1);
      }
      
      private function §[z§() : void
      {
         var splash:§2^§ = null;
         if(this.§34§)
         {
            this.§34§.stop();
            try
            {
               this.§34§.removeEventListener(TimerEvent.TIMER,this.§+q§);
            }
            catch(e:Error)
            {
            }
         }
         for each(splash in this.§=Q§)
         {
            if(§ §.contains(splash))
            {
               § §.removeChild(splash);
            }
            splash.clean();
         }
         this.§=Q§ = new Vector.<§2^§>();
         this.hideBestScoreTexts();
      }
      
      protected function hideBestScoreTexts() : void
      {
         (§ §.getItemByName("TextField_BestScore") as §&H§).setVisibility(false);
         (§ §.getItemByName("MovieClip_BestScoreStars") as §,!%§).setVisibility(false);
         (§ §.getItemByName("TextField_NewHighScore") as §&H§).setVisibility(false);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      protected function §in§() : void
      {
         §6l§.§'! §();
         mNextState = this.§<w§();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§%!E§) : void
      {
         var _loc4_:String = null;
         switch(param2)
         {
            case "NEXT_LEVEL":
               this.§in§();
               break;
            case "REPLAY":
               §6l§.§"w§();
               mNextState = this.§[!@§();
               break;
            case "WATCH_REPLAY":
               §6l§.§"w§();
               mNextState = this.§[!@§();
               if(_loc4_ = §2G§.§7!,§.§6G§())
               {
                  §2G§.§7!,§.§^C§(_loc4_);
               }
               break;
            case "MENU":
               §9k§.§return§();
               mNextState = this.§,d§();
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§<2§.§ !J§();
         }
      }
      
      protected function §[!@§() : String
      {
         return §6l§.§=,§;
      }
      
      protected function §<w§() : String
      {
         return StateCutScene.§=,§;
      }
      
      public function §,d§() : String
      {
         return §5!E§.§=,§;
      }
   }
}
