package § C§
{
   import §!Y§.§[o§;
   import §0!!§.§2N§;
   import §2!5§.§";§;
   import §2!5§.§?A§;
   import §2]§.§#H§;
   import §2]§.§set §;
   import §3"§.§0$§;
   import §3O§.§@6§;
   import §>-§.§1]§;
   import §>-§.§6H§;
   import §[v§.§&F§;
   import §[v§.§'4§;
   import §[v§.§=!=§;
   import §[v§.§^P§;
   import §]4§.§-§;
   import §`W§.§-[§;
   import §`W§.§<r§;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §]O§ extends §-§
   {
      
      public static const §?B§:String = "LevelEndStateRio";
      
      public static const §?t§:Number = 30;
      
      protected static const §-!5§:String = "ScoreLoopCountChannel";
      
      protected static const §,!+§:String = "EndScreenEffectChannel";
       
      
      private var §[!<§:§?A§;
      
      private var §%^§:Number;
      
      private var §>_§:Number = 0.0;
      
      private var §+2§:Number = 0.0;
      
      private var §%+§:Boolean = false;
      
      private var §%!B§:Timer;
      
      private var §^!D§:§6H§;
      
      private var §0d§:Array;
      
      protected var §,6§:§1]§;
      
      protected var §use§:Vector.<§1]§>;
      
      public var mNewScoreCounter:int;
      
      private var §90§:int;
      
      private var §8!-§:Boolean;
      
      protected var §6e§:Boolean;
      
      private var §+L§:§2N§;
      
      protected var §&i§:Boolean;
      
      private var §>o§:§?A§;
      
      protected var §%g§:Boolean;
      
      protected var §9! §:int;
      
      public function §]O§(param1:Boolean = false, param2:String = "LevelEndStateRio")
      {
         this.§0d§ = [];
         this.§+L§ = new §2N§();
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §,R§ = new §#H§(this);
         §,R§.init(this.getViewXML());
         this.initButtonDefaultPositions();
         this.§use§ = new Vector.<§1]§>();
         §@6§.§'!&§(§-!5§,1,1);
         §@6§.§'!&§(§,!+§,3,1);
      }
      
      protected function initButtonDefaultPositions() : void
      {
         this.§0d§.push((§,R§.getItemByName("Button_Menu") as §^P§).x);
         this.§0d§.push((§,R§.getItemByName("Button_Replay") as §^P§).x);
         this.§0d§.push((§,R§.getItemByName("Button_NextLevel") as §^P§).x);
         this.§0d§.push((§,R§.getItemByName("Button_CutScene") as §^P§).x);
      }
      
      protected function getViewXML() : XML
      {
         return §set §.§&!1§.Views.View_LevelEndRio[0];
      }
      
      protected function showButtonsCutScene() : void
      {
         if(!AngryBirdsFP11.§64§.isLevelPassed(§0$§.§[C§))
         {
            (§,R§.getItemByName("Button_Menu") as §^P§).setVisibility(false);
            (§,R§.getItemByName("Button_Replay") as §^P§).setVisibility(true);
            (§,R§.getItemByName("Button_NextLevel") as §^P§).setVisibility(false);
            (§,R§.getItemByName("Button_CutScene") as §^P§).setVisibility(true);
            (§,R§.getItemByName("Button_Replay") as §^P§).x = this.§0d§[0] + Math.abs(this.§0d§[1] - this.§0d§[0]) / 2;
            (§,R§.getItemByName("Button_CutScene") as §^P§).x = this.§0d§[1] + Math.abs(this.§0d§[2] - this.§0d§[1]) / 2;
         }
         else
         {
            (§,R§.getItemByName("Button_Menu") as §^P§).setVisibility(true);
            (§,R§.getItemByName("Button_Replay") as §^P§).setVisibility(true);
            (§,R§.getItemByName("Button_NextLevel") as §^P§).setVisibility(false);
            (§,R§.getItemByName("Button_CutScene") as §^P§).setVisibility(true);
            (§,R§.getItemByName("Button_Menu") as §^P§).x = this.§0d§[0];
            (§,R§.getItemByName("Button_Replay") as §^P§).x = this.§0d§[1];
            (§,R§.getItemByName("Button_CutScene") as §^P§).x = this.§0d§[2];
         }
      }
      
      protected function showButtonsNormal() : void
      {
         (§,R§.getItemByName("Button_Menu") as §^P§).setVisibility(true);
         (§,R§.getItemByName("Button_Replay") as §^P§).setVisibility(true);
         (§,R§.getItemByName("Button_CutScene") as §^P§).setVisibility(false);
         if(§0$§.§?W§())
         {
            (§,R§.getItemByName("Button_NextLevel") as §^P§).setVisibility(true);
            (§,R§.getItemByName("Button_Menu") as §^P§).x = this.§0d§[0];
            (§,R§.getItemByName("Button_Replay") as §^P§).x = this.§0d§[1];
            (§,R§.getItemByName("Button_NextLevel") as §^P§).x = this.§0d§[2];
         }
         else
         {
            (§,R§.getItemByName("Button_NextLevel") as §^P§).setVisibility(false);
            (§,R§.getItemByName("Button_Menu") as §^P§).x = this.§0d§[0] + Math.abs(this.§0d§[1] - this.§0d§[0]) / 2;
            (§,R§.getItemByName("Button_Replay") as §^P§).x = this.§0d§[1] + Math.abs(this.§0d§[2] - this.§0d§[1]) / 2;
         }
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§%g§ = false;
         §[o§.pause();
         this.§^!D§ = new §6H§(0,0,0,0);
         §,R§.movieClip.addChildAt(this.§^!D§,§,R§.movieClip.numChildren - 1);
         if(§0$§.§;e§())
         {
            this.showButtonsCutScene();
         }
         else
         {
            this.showButtonsNormal();
         }
         this.mNewScoreCounter = 0;
         this.§8!-§ = false;
         §@6§.playSound("LevelCompletedTheme1");
         this.§^!D§.§@2§(0.7);
         this.§>_§ = 0;
         this.§+2§ = 0;
         this.§%O§();
      }
      
      private function §%O§() : void
      {
         this.§6e§ = false;
         this.setScoreData();
         this.§%!B§ = new Timer(500);
         this.§90§ = 0;
         this.§%!B§.addEventListener(TimerEvent.TIMER,this.§=Y§);
         this.§%!B§.start();
      }
      
      protected function setMightyEagleFeather() : void
      {
         if(AngryBirdsFP11.§64§.§!!@§(§0$§.§[C§) == 100)
         {
            (§,R§.getItemByName("MovieClip_ResultMEFeather") as §=!=§).mClip.gotoAndStop("On");
         }
         else
         {
            (§,R§.getItemByName("MovieClip_ResultMEFeather") as §=!=§).mClip.gotoAndStop("Off");
         }
      }
      
      protected function setScoreStars(param1:int, param2:int) : void
      {
         if(this.§&i§)
         {
            param2 = param1;
            AngryBirdsFP11.§64§.§,! §(§0$§.§[C§,param2);
            §,R§.setText("New Highscore!","TextField_BestScore");
         }
         else
         {
            §,R§.setText("Best " + param2.toString(),"TextField_BestScore");
            this.§9! § = §0$§.§5Y§(§0$§.§[C§,param2);
            switch(this.§9! §)
            {
               case 1:
                  (§,R§.getItemByName("MovieClip_BestScoreStars") as §=!=§).§'8§("OneStar");
                  break;
               case 2:
                  (§,R§.getItemByName("MovieClip_BestScoreStars") as §=!=§).§'8§("TwoStar");
                  break;
               case 3:
                  (§,R§.getItemByName("MovieClip_BestScoreStars") as §=!=§).§'8§("ThreeStar");
            }
         }
      }
      
      protected function setScoreData() : void
      {
         var _loc1_:int = AngryBirdsFP11.§64§.§5!4§(§0$§.§[C§);
         var _loc2_:int = §[o§.controller.getScore();
         this.§&i§ = _loc2_ > _loc1_;
         this.setScoreStars(_loc2_,_loc1_);
         this.setMightyEagleFeather();
         var _loc3_:int = §[o§.controller.getEagleScore();
         var _loc4_:int = AngryBirdsFP11.§64§.§!!@§(§0$§.§[C§);
         var _loc5_:*;
         if(_loc5_ = _loc3_ > _loc4_)
         {
            _loc4_ = _loc3_;
            AngryBirdsFP11.§64§.§=+§(§0$§.§[C§,_loc4_);
         }
         var _loc6_:int = AngryBirdsFP11.§64§.§1!8§(§0$§.§[C§,_loc2_);
         (§,R§.getItemByName("MovieClip_NewHighScoreBadge") as §=!=§).setVisibility(false);
         (§,R§.getItemByName("MovieClip_StarLeft") as §=!=§).mClip.gotoAndStop("UnLit");
         (§,R§.getItemByName("MovieClip_StarCenter") as §=!=§).mClip.gotoAndStop("UnLit");
         (§,R§.getItemByName("MovieClip_StarRight") as §=!=§).mClip.gotoAndStop("UnLit");
      }
      
      protected function onBadgeLanded() : void
      {
         if(this.§&i§)
         {
            §@6§.playSound("Hiscore_Badge",§,!+§);
            §,R§.setText("New Highscore!","TextField_NewHighScore");
            (§,R§.getItemByName("TextField_NewHighScore") as §'4§).setVisibility(true);
            (§,R§.getItemByName("MovieClip_BestScoreStars") as §=!=§).setVisibility(false);
            this.§-0§();
         }
         else
         {
            (§,R§.getItemByName("TextField_BestScore") as §'4§).setVisibility(true);
            (§,R§.getItemByName("MovieClip_BestScoreStars") as §=!=§).setVisibility(true);
         }
      }
      
      protected function §-0§() : void
      {
         this.§>_§ = 0;
         this.§+2§ = 0;
         this.§%^§ = §?t§;
      }
      
      private function §"!0§(param1:Number) : void
      {
         (§,R§.getItemByName("Container_LevelEndStripe") as §&F§).x = (§,R§.getItemByName("Container_LevelEndStripe") as §&F§).x - this.§>_§;
         (§,R§.getItemByName("Container_LevelEndStripe") as §&F§).y = (§,R§.getItemByName("Container_LevelEndStripe") as §&F§).y - this.§+2§;
         if(this.§%^§ > 0)
         {
            this.§>_§ = (Math.random() - 0.5) * (this.§%^§ / §?t§) * 20;
            this.§+2§ = (Math.random() - 0.5) * (this.§%^§ / §?t§) * 20;
            (§,R§.getItemByName("Container_LevelEndStripe") as §&F§).x = (§,R§.getItemByName("Container_LevelEndStripe") as §&F§).x + this.§>_§;
            (§,R§.getItemByName("Container_LevelEndStripe") as §&F§).y = (§,R§.getItemByName("Container_LevelEndStripe") as §&F§).y + this.§+2§;
         }
         else
         {
            this.§>_§ = 0;
            this.§+2§ = 0;
         }
         this.§%^§ -= param1 / 10;
      }
      
      private function §=Y§(param1:TimerEvent) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc4_:Number = §0$§.§2Q§(§0$§.§[C§).§1U§;
         var _loc5_:Number = §0$§.§2Q§(§0$§.§[C§).§#o§;
         if((§,R§.getItemByName("MovieClip_StarLeft") as §=!=§).mClip.currentLabel == "UnLit")
         {
            §@6§.playSound("Hiscore_Count",§-!5§,100);
            §@6§.playSound("Hiscore_Star_Splash1",§,!+§);
            this.§%!B§.delay = 1000;
            this.§+L§.assign(§[o§.controller.getScore());
            _loc6_ = this.§+L§.getValue() / _loc4_ * 2;
            if(_loc4_ <= 0)
            {
               _loc6_ = 1;
            }
            this.§>o§ = §";§.§[8§.§6!$§(this,{"mNewScoreCounter":this.§+L§.getValue()},{"mNewScoreCounter":0},_loc6_);
            this.§>o§.onComplete = this.§`r§;
            this.§>o§.play();
            (§,R§.getItemByName("MovieClip_StarLeft") as §=!=§).mClip.gotoAndStop("Lit");
            _loc2_ = (§,R§.getItemByName("MovieClip_StarLeft") as §=!=§).x + (§,R§.getItemByName("Container_LevelEndStripe") as §&F§).x;
            _loc3_ = (§,R§.getItemByName("MovieClip_StarLeft") as §=!=§).y + (§,R§.getItemByName("Container_LevelEndStripe") as §&F§).y;
            this.§,6§ = new §1]§(AngryBirdsFP11.screenWidth,AngryBirdsFP11.screenHeight,_loc2_,_loc3_,§1]§.override);
            §,R§.addChild(this.§,6§);
            this.§use§.push(this.§,6§);
         }
         else if(this.§+L§.getValue() >= _loc5_ && (§,R§.getItemByName("MovieClip_StarCenter") as §=!=§).mClip.currentLabel == "UnLit")
         {
            §@6§.playSound("Hiscore_Star_Splash2",§,!+§);
            (§,R§.getItemByName("MovieClip_StarCenter") as §=!=§).mClip.gotoAndStop("Lit");
            _loc2_ = (§,R§.getItemByName("MovieClip_StarCenter") as §=!=§).x + (§,R§.getItemByName("Container_LevelEndStripe") as §&F§).x;
            _loc3_ = (§,R§.getItemByName("MovieClip_StarCenter") as §=!=§).y + (§,R§.getItemByName("Container_LevelEndStripe") as §&F§).y;
            this.§,6§ = new §1]§(AngryBirdsFP11.screenWidth,AngryBirdsFP11.screenHeight,_loc2_,_loc3_,§1]§.final);
            §,R§.addChild(this.§,6§);
            this.§use§.push(this.§,6§);
         }
         else if(this.§+L§.getValue() >= _loc4_ && (§,R§.getItemByName("MovieClip_StarRight") as §=!=§).mClip.currentLabel == "UnLit")
         {
            this.§%g§ = true;
            §@6§.playSound("Hiscore_Star_Splash3",§,!+§);
            (§,R§.getItemByName("MovieClip_StarRight") as §=!=§).mClip.gotoAndStop("Lit");
            _loc2_ = (§,R§.getItemByName("MovieClip_StarRight") as §=!=§).x + (§,R§.getItemByName("Container_LevelEndStripe") as §&F§).x;
            _loc3_ = (§,R§.getItemByName("MovieClip_StarRight") as §=!=§).y + (§,R§.getItemByName("Container_LevelEndStripe") as §&F§).y;
            this.§,6§ = new §1]§(AngryBirdsFP11.screenWidth,AngryBirdsFP11.screenHeight,_loc2_,_loc3_,§1]§.§@b§);
            §,R§.addChild(this.§,6§);
            this.§use§.push(this.§,6§);
         }
         else if(!this.§8!-§)
         {
            this.§8!-§ = true;
         }
         else
         {
            this.§%!B§.stop();
            if(this.§&i§ && !this.§6e§)
            {
               (§,R§.getItemByName("MovieClip_NewHighScoreBadge") as §=!=§).setVisibility(true);
            }
            else
            {
               (§,R§.getItemByName("MovieClip_NewHighScoreBadge") as §=!=§).setVisibility(false);
            }
            this.§[!<§ = §";§.§[8§.§6!$§((§,R§.getItemByName("MovieClip_NewHighScoreBadge") as §=!=§).mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":7,
               "scaleY":7
            },0.1);
            this.§[!<§.onComplete = this.onBadgeLanded;
            this.§[!<§.play();
         }
         ++this.§90§;
      }
      
      private function §`r§() : void
      {
         §@6§.§!>§(§-!5§);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:§1]§ = null;
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §-§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         §,R§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScore");
         §,R§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScoreEffects");
         for each(_loc3_ in this.§use§)
         {
            _loc3_.update(param1);
         }
         if(this.§%^§ >= 0)
         {
            this.§"!0§(param1);
         }
         if(mNextState.length > 0)
         {
            §[o§.§='§.clearLevel();
            return §-§.STATE_STATUS_COMPLETED;
         }
         return §-§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§;[§();
         this.§%^§ = 0;
         this.mNewScoreCounter = 0;
         if(this.§>o§)
         {
            this.§>o§.stop();
            this.§>o§ = null;
         }
         if(this.§[!<§)
         {
            this.§[!<§.stop();
            this.§[!<§ = null;
         }
         §@6§.§!>§(§-!5§);
         this.setButtonStates(§<r§.COMPONENT_STATE_ACTIVE_DEFAULT);
         §,R§.setText("0","TextField_LevelEndScore");
         §,R§.setText("0","TextField_LevelEndScoreEffects");
         if(this.§^!D§)
         {
            if(§,R§.movieClip.contains(this.§^!D§))
            {
               §,R§.movieClip.removeChild(this.§^!D§);
            }
            this.§^!D§.clean();
            this.§^!D§ = null;
         }
      }
      
      protected function setButtonStates(param1:String) : void
      {
         (§,R§.getItemByName("Button_Menu") as §^P§).setComponentVisualState(param1);
         (§,R§.getItemByName("Button_Replay") as §^P§).setComponentVisualState(param1);
         (§,R§.getItemByName("Button_NextLevel") as §^P§).setComponentVisualState(param1);
         (§,R§.getItemByName("Button_CutScene") as §^P§).setComponentVisualState(param1);
      }
      
      private function §;[§() : void
      {
         var splash:§1]§ = null;
         if(this.§%!B§)
         {
            this.§%!B§.stop();
            try
            {
               this.§%!B§.removeEventListener(TimerEvent.TIMER,this.§=Y§);
            }
            catch(e:Error)
            {
            }
         }
         for each(splash in this.§use§)
         {
            if(§,R§.contains(splash))
            {
               §,R§.removeChild(splash);
            }
            splash.clean();
         }
         this.§use§ = new Vector.<§1]§>();
         this.hideBestScoreTexts();
      }
      
      protected function hideBestScoreTexts() : void
      {
         (§,R§.getItemByName("TextField_BestScore") as §'4§).setVisibility(false);
         (§,R§.getItemByName("MovieClip_BestScoreStars") as §=!=§).setVisibility(false);
         (§,R§.getItemByName("TextField_NewHighScore") as §'4§).setVisibility(false);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      protected function §9L§() : void
      {
         §7!6§.§2v§();
         mNextState = this.§@e§();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§-[§) : void
      {
         var _loc4_:String = null;
         switch(param2)
         {
            case "NEXT_LEVEL":
               this.§9L§();
               break;
            case "REPLAY":
               §7!6§.§<!G§();
               mNextState = this.§0D§();
               break;
            case "WATCH_REPLAY":
               §7!6§.§<!G§();
               mNextState = this.§0D§();
               if(_loc4_ = §[o§.§='§.§ h§())
               {
                  §[o§.§='§.§]h§(_loc4_);
               }
               break;
            case "MENU":
               §@6§.§&t§();
               mNextState = this.§`q§();
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§?L§.§,!!§();
         }
      }
      
      protected function §0D§() : String
      {
         return §7!6§.§?B§;
      }
      
      protected function §@e§() : String
      {
         return StateCutScene.§?B§;
      }
      
      public function §`q§() : String
      {
         return §4t§.§?B§;
      }
   }
}
