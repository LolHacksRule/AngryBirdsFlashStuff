package §`!%§
{
   import § !;§.§`! §;
   import §"!&§.§ !5§;
   import §"!&§.§%!>§;
   import §"!5§.§,!!§;
   import §'X§.§9[§;
   import §,K§.§+%§;
   import §,K§.§-!$§;
   import §1;§.§!!1§;
   import §1;§.§0!&§;
   import §=^§.§ p§;
   import §=^§.§[!B§;
   import §=^§.§]P§;
   import §=^§.§`f§;
   import §>!C§.§6M§;
   import §?!?§.§3!E§;
   import §@s§.§'!0§;
   import §@s§.§9$§;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §6E§ extends §9[§
   {
      
      public static const §0!7§:String = "LevelEndStateRio";
      
      public static const §=A§:Number = 30;
      
      protected static const §[J§:String = "ScoreLoopCountChannel";
      
      protected static const §,!#§:String = "EndScreenEffectChannel";
       
      
      private var §;!>§:§ !5§;
      
      private var §=@§:Number;
      
      private var §=K§:Number = 0.0;
      
      private var §!m§:Number = 0.0;
      
      private var §1!5§:Boolean = false;
      
      private var §3Y§:Timer;
      
      private var §>!;§:§-!$§;
      
      protected var §[f§:Array;
      
      protected var §5A§:§+%§;
      
      protected var §^`§:Vector.<§+%§>;
      
      public var mNewScoreCounter:int;
      
      private var §[a§:int;
      
      private var §^&§:Boolean;
      
      protected var §+h§:Boolean;
      
      private var §]!#§:§`! §;
      
      protected var §;!&§:Boolean;
      
      private var §'E§:§ !5§;
      
      protected var §!!"§:Boolean;
      
      protected var §#3§:int;
      
      public function §6E§(param1:Boolean = false, param2:String = "LevelEndStateRio")
      {
         this.§[f§ = [];
         this.§]!#§ = new §`! §();
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §#!4§ = new §!!1§(this);
         §#!4§.init(this.getViewXML());
         this.initButtonDefaultPositions();
         this.§^`§ = new Vector.<§+%§>();
         §3!E§.§5!%§(§[J§,1,1);
         §3!E§.§5!%§(§,!#§,3,1);
      }
      
      protected function initButtonDefaultPositions() : void
      {
         this.§[f§.push((§#!4§.getItemByName("Button_Menu") as §]P§).x);
         this.§[f§.push((§#!4§.getItemByName("Button_Replay") as §]P§).x);
         this.§[f§.push((§#!4§.getItemByName("Button_NextLevel") as §]P§).x);
         this.§[f§.push((§#!4§.getItemByName("Button_CutScene") as §]P§).x);
      }
      
      protected function getViewXML() : XML
      {
         return §0!&§.§'^§.Views.View_LevelEndRio[0];
      }
      
      protected function showButtonsCutScene() : void
      {
         if(!AngryBirdsFP11.sUserProgress.isLevelPassed(§6M§.§[z§))
         {
            (§#!4§.getItemByName("Button_Menu") as §]P§).setVisibility(false);
            (§#!4§.getItemByName("Button_Replay") as §]P§).setVisibility(true);
            (§#!4§.getItemByName("Button_NextLevel") as §]P§).setVisibility(false);
            (§#!4§.getItemByName("Button_CutScene") as §]P§).setVisibility(true);
            (§#!4§.getItemByName("Button_Replay") as §]P§).x = this.§[f§[0] + Math.abs(this.§[f§[1] - this.§[f§[0]) / 2;
            (§#!4§.getItemByName("Button_CutScene") as §]P§).x = this.§[f§[1] + Math.abs(this.§[f§[2] - this.§[f§[1]) / 2;
         }
         else
         {
            (§#!4§.getItemByName("Button_Menu") as §]P§).setVisibility(true);
            (§#!4§.getItemByName("Button_Replay") as §]P§).setVisibility(true);
            (§#!4§.getItemByName("Button_NextLevel") as §]P§).setVisibility(false);
            (§#!4§.getItemByName("Button_CutScene") as §]P§).setVisibility(true);
            (§#!4§.getItemByName("Button_Menu") as §]P§).x = this.§[f§[0];
            (§#!4§.getItemByName("Button_Replay") as §]P§).x = this.§[f§[1];
            (§#!4§.getItemByName("Button_CutScene") as §]P§).x = this.§[f§[2];
         }
      }
      
      protected function showButtonsNormal() : void
      {
         (§#!4§.getItemByName("Button_Menu") as §]P§).setVisibility(true);
         (§#!4§.getItemByName("Button_Replay") as §]P§).setVisibility(true);
         (§#!4§.getItemByName("Button_CutScene") as §]P§).setVisibility(false);
         if(§6M§.§1$§())
         {
            (§#!4§.getItemByName("Button_NextLevel") as §]P§).setVisibility(true);
            (§#!4§.getItemByName("Button_Menu") as §]P§).x = this.§[f§[0];
            (§#!4§.getItemByName("Button_Replay") as §]P§).x = this.§[f§[1];
            (§#!4§.getItemByName("Button_NextLevel") as §]P§).x = this.§[f§[2];
         }
         else
         {
            (§#!4§.getItemByName("Button_NextLevel") as §]P§).setVisibility(false);
            (§#!4§.getItemByName("Button_Menu") as §]P§).x = this.§[f§[0] + Math.abs(this.§[f§[1] - this.§[f§[0]) / 2;
            (§#!4§.getItemByName("Button_Replay") as §]P§).x = this.§[f§[1] + Math.abs(this.§[f§[2] - this.§[f§[1]) / 2;
         }
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§!!"§ = false;
         §,!!§.pause();
         this.§>!;§ = new §-!$§(0,0,0,0);
         §#!4§.movieClip.addChildAt(this.§>!;§,§#!4§.movieClip.numChildren - 1);
         if(§6M§.§"p§())
         {
            this.showButtonsCutScene();
         }
         else
         {
            this.showButtonsNormal();
         }
         this.mNewScoreCounter = 0;
         this.§^&§ = false;
         §3!E§.§<!,§("LevelCompletedTheme1");
         this.§>!;§.§0C§(0.7);
         this.§=K§ = 0;
         this.§!m§ = 0;
         this.§`!3§();
      }
      
      private function §`!3§() : void
      {
         this.§+h§ = false;
         this.setScoreData();
         this.§3Y§ = new Timer(500);
         this.§[a§ = 0;
         this.§3Y§.addEventListener(TimerEvent.TIMER,this.§3!B§);
         this.§3Y§.start();
      }
      
      protected function setMightyEagleFeather() : void
      {
         if(AngryBirdsFP11.sUserProgress.§^z§(§6M§.§[z§) == 100)
         {
            (§#!4§.getItemByName("MovieClip_ResultMEFeather") as §[!B§).mClip.gotoAndStop("On");
         }
         else
         {
            (§#!4§.getItemByName("MovieClip_ResultMEFeather") as §[!B§).mClip.gotoAndStop("Off");
         }
      }
      
      protected function setScoreStars(param1:int, param2:int) : void
      {
         if(this.§;!&§)
         {
            param2 = param1;
            AngryBirdsFP11.sUserProgress.§,!+§(§6M§.§[z§,param2);
            §#!4§.setText("New Highscore!","TextField_BestScore");
         }
         else
         {
            §#!4§.setText("Best " + param2.toString(),"TextField_BestScore");
            this.§#3§ = §6M§.§ 1§(§6M§.§[z§,param2);
            switch(this.§#3§)
            {
               case 1:
                  (§#!4§.getItemByName("MovieClip_BestScoreStars") as §[!B§).§'!-§("OneStar");
                  break;
               case 2:
                  (§#!4§.getItemByName("MovieClip_BestScoreStars") as §[!B§).§'!-§("TwoStar");
                  break;
               case 3:
                  (§#!4§.getItemByName("MovieClip_BestScoreStars") as §[!B§).§'!-§("ThreeStar");
            }
         }
      }
      
      protected function setScoreData() : void
      {
         var _loc1_:int = AngryBirdsFP11.sUserProgress.§4[§(§6M§.§[z§);
         var _loc2_:int = §,!!§.controller.getScore();
         this.§;!&§ = _loc2_ > _loc1_;
         this.setScoreStars(_loc2_,_loc1_);
         this.setMightyEagleFeather();
         var _loc3_:int = §,!!§.controller.getEagleScore();
         var _loc4_:int = AngryBirdsFP11.sUserProgress.§^z§(§6M§.§[z§);
         var _loc5_:*;
         if(_loc5_ = _loc3_ > _loc4_)
         {
            _loc4_ = _loc3_;
            AngryBirdsFP11.sUserProgress.§4!4§(§6M§.§[z§,_loc4_);
         }
         var _loc6_:int = AngryBirdsFP11.sUserProgress.§-U§(§6M§.§[z§,_loc2_);
         (§#!4§.getItemByName("MovieClip_NewHighScoreBadge") as §[!B§).setVisibility(false);
         (§#!4§.getItemByName("MovieClip_StarLeft") as §[!B§).mClip.gotoAndStop("UnLit");
         (§#!4§.getItemByName("MovieClip_StarCenter") as §[!B§).mClip.gotoAndStop("UnLit");
         (§#!4§.getItemByName("MovieClip_StarRight") as §[!B§).mClip.gotoAndStop("UnLit");
      }
      
      protected function onBadgeLanded() : void
      {
         if(this.§;!&§)
         {
            §3!E§.§<!,§("Hiscore_Badge",§,!#§);
            §#!4§.setText("New Highscore!","TextField_NewHighScore");
            (§#!4§.getItemByName("TextField_NewHighScore") as § p§).setVisibility(true);
            (§#!4§.getItemByName("MovieClip_BestScoreStars") as §[!B§).setVisibility(false);
            this.§@X§();
         }
         else
         {
            (§#!4§.getItemByName("TextField_BestScore") as § p§).setVisibility(true);
            (§#!4§.getItemByName("MovieClip_BestScoreStars") as §[!B§).setVisibility(true);
         }
      }
      
      protected function §@X§() : void
      {
         this.§=K§ = 0;
         this.§!m§ = 0;
         this.§=@§ = §=A§;
      }
      
      private function §`?§(param1:Number) : void
      {
         (§#!4§.getItemByName("Container_LevelEndStripe") as §`f§).x = (§#!4§.getItemByName("Container_LevelEndStripe") as §`f§).x - this.§=K§;
         (§#!4§.getItemByName("Container_LevelEndStripe") as §`f§).y = (§#!4§.getItemByName("Container_LevelEndStripe") as §`f§).y - this.§!m§;
         if(this.§=@§ > 0)
         {
            this.§=K§ = (Math.random() - 0.5) * (this.§=@§ / §=A§) * 20;
            this.§!m§ = (Math.random() - 0.5) * (this.§=@§ / §=A§) * 20;
            (§#!4§.getItemByName("Container_LevelEndStripe") as §`f§).x = (§#!4§.getItemByName("Container_LevelEndStripe") as §`f§).x + this.§=K§;
            (§#!4§.getItemByName("Container_LevelEndStripe") as §`f§).y = (§#!4§.getItemByName("Container_LevelEndStripe") as §`f§).y + this.§!m§;
         }
         else
         {
            this.§=K§ = 0;
            this.§!m§ = 0;
         }
         this.§=@§ -= param1 / 10;
      }
      
      private function §3!B§(param1:TimerEvent) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc4_:Number = §6M§.§ r§(§6M§.§[z§).§4$§;
         var _loc5_:Number = §6M§.§ r§(§6M§.§[z§).§!!9§;
         if((§#!4§.getItemByName("MovieClip_StarLeft") as §[!B§).mClip.currentLabel == "UnLit")
         {
            §3!E§.§<!,§("Hiscore_Count",§[J§,100);
            §3!E§.§<!,§("Hiscore_Star_Splash1",§,!#§);
            this.§3Y§.delay = 1000;
            this.§]!#§.assign(§,!!§.controller.getScore());
            _loc6_ = this.§]!#§.getValue() / _loc4_ * 2;
            if(_loc4_ <= 0)
            {
               _loc6_ = 1;
            }
            this.§'E§ = §%!>§.§-]§.§?U§(this,{"mNewScoreCounter":this.§]!#§.getValue()},{"mNewScoreCounter":0},_loc6_);
            this.§'E§.onComplete = this.§,!2§;
            this.§'E§.play();
            (§#!4§.getItemByName("MovieClip_StarLeft") as §[!B§).mClip.gotoAndStop("Lit");
            _loc2_ = (§#!4§.getItemByName("MovieClip_StarLeft") as §[!B§).x + (§#!4§.getItemByName("Container_LevelEndStripe") as §`f§).x;
            _loc3_ = (§#!4§.getItemByName("MovieClip_StarLeft") as §[!B§).y + (§#!4§.getItemByName("Container_LevelEndStripe") as §`f§).y;
            this.§5A§ = new §+%§(AngryBirdsFP11.screenWidth,AngryBirdsFP11.screenHeight,_loc2_,_loc3_,§+%§.§=!B§);
            §#!4§.addChild(this.§5A§);
            this.§^`§.push(this.§5A§);
         }
         else if(this.§]!#§.getValue() >= _loc5_ && (§#!4§.getItemByName("MovieClip_StarCenter") as §[!B§).mClip.currentLabel == "UnLit")
         {
            §3!E§.§<!,§("Hiscore_Star_Splash2",§,!#§);
            (§#!4§.getItemByName("MovieClip_StarCenter") as §[!B§).mClip.gotoAndStop("Lit");
            _loc2_ = (§#!4§.getItemByName("MovieClip_StarCenter") as §[!B§).x + (§#!4§.getItemByName("Container_LevelEndStripe") as §`f§).x;
            _loc3_ = (§#!4§.getItemByName("MovieClip_StarCenter") as §[!B§).y + (§#!4§.getItemByName("Container_LevelEndStripe") as §`f§).y;
            this.§5A§ = new §+%§(AngryBirdsFP11.screenWidth,AngryBirdsFP11.screenHeight,_loc2_,_loc3_,§+%§.§`!<§);
            §#!4§.addChild(this.§5A§);
            this.§^`§.push(this.§5A§);
         }
         else if(this.§]!#§.getValue() >= _loc4_ && (§#!4§.getItemByName("MovieClip_StarRight") as §[!B§).mClip.currentLabel == "UnLit")
         {
            this.§!!"§ = true;
            §3!E§.§<!,§("Hiscore_Star_Splash3",§,!#§);
            (§#!4§.getItemByName("MovieClip_StarRight") as §[!B§).mClip.gotoAndStop("Lit");
            _loc2_ = (§#!4§.getItemByName("MovieClip_StarRight") as §[!B§).x + (§#!4§.getItemByName("Container_LevelEndStripe") as §`f§).x;
            _loc3_ = (§#!4§.getItemByName("MovieClip_StarRight") as §[!B§).y + (§#!4§.getItemByName("Container_LevelEndStripe") as §`f§).y;
            this.§5A§ = new §+%§(AngryBirdsFP11.screenWidth,AngryBirdsFP11.screenHeight,_loc2_,_loc3_,§+%§.§^W§);
            §#!4§.addChild(this.§5A§);
            this.§^`§.push(this.§5A§);
         }
         else if(!this.§^&§)
         {
            this.§^&§ = true;
         }
         else
         {
            this.§3Y§.stop();
            if(this.§;!&§ && !this.§+h§)
            {
               (§#!4§.getItemByName("MovieClip_NewHighScoreBadge") as §[!B§).setVisibility(true);
            }
            else
            {
               (§#!4§.getItemByName("MovieClip_NewHighScoreBadge") as §[!B§).setVisibility(false);
            }
            this.§;!>§ = §%!>§.§-]§.§?U§((§#!4§.getItemByName("MovieClip_NewHighScoreBadge") as §[!B§).mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":7,
               "scaleY":7
            },0.1);
            this.§;!>§.onComplete = this.onBadgeLanded;
            this.§;!>§.play();
         }
         ++this.§[a§;
      }
      
      private function §,!2§() : void
      {
         §3!E§.§9o§(§[J§);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:§+%§ = null;
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §9[§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         §#!4§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScore");
         §#!4§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScoreEffects");
         for each(_loc3_ in this.§^`§)
         {
            _loc3_.update(param1);
         }
         if(this.§=@§ >= 0)
         {
            this.§`?§(param1);
         }
         if(mNextState.length > 0)
         {
            §,!!§.§;4§.clearLevel();
            return §9[§.STATE_STATUS_COMPLETED;
         }
         return §9[§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§&y§();
         this.§=@§ = 0;
         this.mNewScoreCounter = 0;
         if(this.§'E§)
         {
            this.§'E§.stop();
            this.§'E§ = null;
         }
         if(this.§;!>§)
         {
            this.§;!>§.stop();
            this.§;!>§ = null;
         }
         §3!E§.§9o§(§[J§);
         this.setButtonStates(§9$§.COMPONENT_STATE_ACTIVE_DEFAULT);
         §#!4§.setText("0","TextField_LevelEndScore");
         §#!4§.setText("0","TextField_LevelEndScoreEffects");
         if(this.§>!;§)
         {
            if(§#!4§.movieClip.contains(this.§>!;§))
            {
               §#!4§.movieClip.removeChild(this.§>!;§);
            }
            this.§>!;§.clean();
            this.§>!;§ = null;
         }
      }
      
      protected function setButtonStates(param1:String) : void
      {
         (§#!4§.getItemByName("Button_Menu") as §]P§).setComponentVisualState(param1);
         (§#!4§.getItemByName("Button_Replay") as §]P§).setComponentVisualState(param1);
         (§#!4§.getItemByName("Button_NextLevel") as §]P§).setComponentVisualState(param1);
         (§#!4§.getItemByName("Button_CutScene") as §]P§).setComponentVisualState(param1);
      }
      
      private function §&y§() : void
      {
         var splash:§+%§ = null;
         if(this.§3Y§)
         {
            this.§3Y§.stop();
            try
            {
               this.§3Y§.removeEventListener(TimerEvent.TIMER,this.§3!B§);
            }
            catch(e:Error)
            {
            }
         }
         for each(splash in this.§^`§)
         {
            if(§#!4§.contains(splash))
            {
               §#!4§.removeChild(splash);
            }
            splash.clean();
         }
         this.§^`§ = new Vector.<§+%§>();
         this.hideBestScoreTexts();
      }
      
      protected function hideBestScoreTexts() : void
      {
         (§#!4§.getItemByName("TextField_BestScore") as § p§).setVisibility(false);
         (§#!4§.getItemByName("MovieClip_BestScoreStars") as §[!B§).setVisibility(false);
         (§#!4§.getItemByName("TextField_NewHighScore") as § p§).setVisibility(false);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      protected function §]O§() : void
      {
         § @§.§-!-§();
         mNextState = this.§;i§();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§'!0§) : void
      {
         var _loc4_:String = null;
         switch(param2)
         {
            case "NEXT_LEVEL":
               this.§]O§();
               break;
            case "REPLAY":
               § @§.§'d§();
               mNextState = this.§,T§();
               break;
            case "WATCH_REPLAY":
               § @§.§'d§();
               mNextState = this.§,T§();
               if(_loc4_ = §,!!§.§;4§.§`!+§())
               {
                  §,!!§.§;4§.§7!F§(_loc4_);
                  break;
               }
               break;
            case "MENU":
               §3!E§.§#'§();
               mNextState = this.§5z§();
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§@t§.§"&§();
         }
      }
      
      protected function §,T§() : String
      {
         return § @§.§0!7§;
      }
      
      protected function §;i§() : String
      {
         return StateCutScene.§0!7§;
      }
      
      public function §5z§() : String
      {
         return §!,§.§0!7§;
      }
   }
}
