package §`@§
{
   import § !;§.§`! §;
   import §"!&§.§ !5§;
   import §"!&§.§%!>§;
   import §"!5§.§,!!§;
   import §,K§.§+%§;
   import §,K§.§-!$§;
   import §0!§.§0!5§;
   import §1;§.§!!1§;
   import §1;§.§0!&§;
   import §1h§.§ use§;
   import §1h§.§@s§;
   import §2!<§.§?!?§;
   import §>!C§.§6M§;
   import §^@§.§!"§;
   import §^@§.§2q§;
   import §^@§.§=^§;
   import §^@§.§`Y§;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §#!6§ extends §0!5§
   {
      
      public static const §0!7§:String = "LevelEndStateRio";
      
      public static const §=A§:Number = 30;
      
      protected static const §[J§:String = "ScoreLoopCountChannel";
      
      protected static const §,!#§:String = "EndScreenEffectChannel";
       
      
      private var §6E§:§ !5§;
      
      private var §;!>§:Number;
      
      private var §=@§:Number = 0.0;
      
      private var §=K§:Number = 0.0;
      
      private var §!m§:Boolean = false;
      
      private var §1!5§:Timer;
      
      private var §>!;§:§-!$§;
      
      protected var §3Y§:Array;
      
      protected var §[f§:§+%§;
      
      protected var §5A§:Vector.<§+%§>;
      
      public var mNewScoreCounter:int;
      
      private var §^`§:int;
      
      private var §[a§:Boolean;
      
      protected var §^&§:Boolean;
      
      private var §+h§:§`! §;
      
      protected var §]!#§:Boolean;
      
      private var §;!&§:§ !5§;
      
      protected var §'E§:Boolean;
      
      protected var §!!"§:int;
      
      public function §#!6§(param1:Boolean = false, param2:String = "LevelEndStateRio")
      {
         this.§3Y§ = [];
         this.§+h§ = new §`! §();
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §#Z§ = new §!!1§(this);
         §#Z§.init(this.getViewXML());
         this.initButtonDefaultPositions();
         this.§5A§ = new Vector.<§+%§>();
         §?!?§.§&P§(§[J§,1,1);
         §?!?§.§&P§(§,!#§,3,1);
      }
      
      protected function initButtonDefaultPositions() : void
      {
         this.§3Y§.push((§#Z§.getItemByName("Button_Menu") as §=^§).x);
         this.§3Y§.push((§#Z§.getItemByName("Button_Replay") as §=^§).x);
         this.§3Y§.push((§#Z§.getItemByName("Button_NextLevel") as §=^§).x);
         this.§3Y§.push((§#Z§.getItemByName("Button_CutScene") as §=^§).x);
      }
      
      protected function getViewXML() : XML
      {
         return §0!&§.§'^§.Views.View_LevelEndRio[0];
      }
      
      protected function showButtonsCutScene() : void
      {
         if(!AngryBirdsFP11.sUserProgress.isLevelPassed(§6M§.§[z§))
         {
            (§#Z§.getItemByName("Button_Menu") as §=^§).setVisibility(false);
            (§#Z§.getItemByName("Button_Replay") as §=^§).setVisibility(true);
            (§#Z§.getItemByName("Button_NextLevel") as §=^§).setVisibility(false);
            (§#Z§.getItemByName("Button_CutScene") as §=^§).setVisibility(true);
            (§#Z§.getItemByName("Button_Replay") as §=^§).x = this.§3Y§[0] + Math.abs(this.§3Y§[1] - this.§3Y§[0]) / 2;
            (§#Z§.getItemByName("Button_CutScene") as §=^§).x = this.§3Y§[1] + Math.abs(this.§3Y§[2] - this.§3Y§[1]) / 2;
         }
         else
         {
            (§#Z§.getItemByName("Button_Menu") as §=^§).setVisibility(true);
            (§#Z§.getItemByName("Button_Replay") as §=^§).setVisibility(true);
            (§#Z§.getItemByName("Button_NextLevel") as §=^§).setVisibility(false);
            (§#Z§.getItemByName("Button_CutScene") as §=^§).setVisibility(true);
            (§#Z§.getItemByName("Button_Menu") as §=^§).x = this.§3Y§[0];
            (§#Z§.getItemByName("Button_Replay") as §=^§).x = this.§3Y§[1];
            (§#Z§.getItemByName("Button_CutScene") as §=^§).x = this.§3Y§[2];
         }
      }
      
      protected function showButtonsNormal() : void
      {
         (§#Z§.getItemByName("Button_Menu") as §=^§).setVisibility(true);
         (§#Z§.getItemByName("Button_Replay") as §=^§).setVisibility(true);
         (§#Z§.getItemByName("Button_CutScene") as §=^§).setVisibility(false);
         if(§6M§.§"p§())
         {
            (§#Z§.getItemByName("Button_NextLevel") as §=^§).setVisibility(true);
            (§#Z§.getItemByName("Button_Menu") as §=^§).x = this.§3Y§[0];
            (§#Z§.getItemByName("Button_Replay") as §=^§).x = this.§3Y§[1];
            (§#Z§.getItemByName("Button_NextLevel") as §=^§).x = this.§3Y§[2];
         }
         else
         {
            (§#Z§.getItemByName("Button_NextLevel") as §=^§).setVisibility(false);
            (§#Z§.getItemByName("Button_Menu") as §=^§).x = this.§3Y§[0] + Math.abs(this.§3Y§[1] - this.§3Y§[0]) / 2;
            (§#Z§.getItemByName("Button_Replay") as §=^§).x = this.§3Y§[1] + Math.abs(this.§3Y§[2] - this.§3Y§[1]) / 2;
         }
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§'E§ = false;
         §,!!§.pause();
         this.§>!;§ = new §-!$§(0,0,0,0);
         §#Z§.movieClip.addChildAt(this.§>!;§,§#Z§.movieClip.numChildren - 1);
         if(§6M§.§9i§())
         {
            this.showButtonsCutScene();
         }
         else
         {
            this.showButtonsNormal();
         }
         this.mNewScoreCounter = 0;
         this.§[a§ = false;
         §?!?§.§#'§("LevelCompletedTheme1");
         this.§>!;§.§0C§(0.7);
         this.§=@§ = 0;
         this.§=K§ = 0;
         this.§#3§();
      }
      
      private function §#3§() : void
      {
         this.§^&§ = false;
         this.setScoreData();
         this.§1!5§ = new Timer(500);
         this.§^`§ = 0;
         this.§1!5§.addEventListener(TimerEvent.TIMER,this.§3!B§);
         this.§1!5§.start();
      }
      
      protected function setMightyEagleFeather() : void
      {
         if(AngryBirdsFP11.sUserProgress.§^z§(§6M§.§[z§) == 100)
         {
            (§#Z§.getItemByName("MovieClip_ResultMEFeather") as §!"§).mClip.gotoAndStop("On");
         }
         else
         {
            (§#Z§.getItemByName("MovieClip_ResultMEFeather") as §!"§).mClip.gotoAndStop("Off");
         }
      }
      
      protected function setScoreStars(param1:int, param2:int) : void
      {
         if(this.§]!#§)
         {
            param2 = param1;
            AngryBirdsFP11.sUserProgress.§,!+§(§6M§.§[z§,param2);
            §#Z§.setText("New Highscore!","TextField_BestScore");
         }
         else
         {
            §#Z§.setText("Best " + param2.toString(),"TextField_BestScore");
            this.§!!"§ = §6M§.§%Q§(§6M§.§[z§,param2);
            switch(this.§!!"§)
            {
               case 1:
                  (§#Z§.getItemByName("MovieClip_BestScoreStars") as §!"§).§,P§("OneStar");
                  break;
               case 2:
                  (§#Z§.getItemByName("MovieClip_BestScoreStars") as §!"§).§,P§("TwoStar");
                  break;
               case 3:
                  (§#Z§.getItemByName("MovieClip_BestScoreStars") as §!"§).§,P§("ThreeStar");
            }
         }
      }
      
      protected function setScoreData() : void
      {
         var _loc1_:int = AngryBirdsFP11.sUserProgress.§4[§(§6M§.§[z§);
         var _loc2_:int = §,!!§.controller.getScore();
         this.§]!#§ = _loc2_ > _loc1_;
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
         (§#Z§.getItemByName("MovieClip_NewHighScoreBadge") as §!"§).setVisibility(false);
         (§#Z§.getItemByName("MovieClip_StarLeft") as §!"§).mClip.gotoAndStop("UnLit");
         (§#Z§.getItemByName("MovieClip_StarCenter") as §!"§).mClip.gotoAndStop("UnLit");
         (§#Z§.getItemByName("MovieClip_StarRight") as §!"§).mClip.gotoAndStop("UnLit");
      }
      
      protected function onBadgeLanded() : void
      {
         if(this.§]!#§)
         {
            §?!?§.§#'§("Hiscore_Badge",§,!#§);
            §#Z§.setText("New Highscore!","TextField_NewHighScore");
            (§#Z§.getItemByName("TextField_NewHighScore") as §`Y§).setVisibility(true);
            (§#Z§.getItemByName("MovieClip_BestScoreStars") as §!"§).setVisibility(false);
            this.§@X§();
         }
         else
         {
            (§#Z§.getItemByName("TextField_BestScore") as §`Y§).setVisibility(true);
            (§#Z§.getItemByName("MovieClip_BestScoreStars") as §!"§).setVisibility(true);
         }
      }
      
      protected function §@X§() : void
      {
         this.§=@§ = 0;
         this.§=K§ = 0;
         this.§;!>§ = §=A§;
      }
      
      private function §`!3§(param1:Number) : void
      {
         (§#Z§.getItemByName("Container_LevelEndStripe") as §2q§).x = (§#Z§.getItemByName("Container_LevelEndStripe") as §2q§).x - this.§=@§;
         (§#Z§.getItemByName("Container_LevelEndStripe") as §2q§).y = (§#Z§.getItemByName("Container_LevelEndStripe") as §2q§).y - this.§=K§;
         if(this.§;!>§ > 0)
         {
            this.§=@§ = (Math.random() - 0.5) * (this.§;!>§ / §=A§) * 20;
            this.§=K§ = (Math.random() - 0.5) * (this.§;!>§ / §=A§) * 20;
            (§#Z§.getItemByName("Container_LevelEndStripe") as §2q§).x = (§#Z§.getItemByName("Container_LevelEndStripe") as §2q§).x + this.§=@§;
            (§#Z§.getItemByName("Container_LevelEndStripe") as §2q§).y = (§#Z§.getItemByName("Container_LevelEndStripe") as §2q§).y + this.§=K§;
         }
         else
         {
            this.§;!>§ = -1;
            this.§`?§();
            this.§=@§ = 0;
            this.§=K§ = 0;
         }
         this.§;!>§ -= param1 / 10;
      }
      
      protected function §`?§() : void
      {
      }
      
      private function §3!B§(param1:TimerEvent) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc4_:Number = §6M§.getLevelForId(§6M§.§[z§).§!!9§;
         var _loc5_:Number = §6M§.getLevelForId(§6M§.§[z§).§[!$§;
         if((§#Z§.getItemByName("MovieClip_StarLeft") as §!"§).mClip.currentLabel == "UnLit")
         {
            §?!?§.§#'§("Hiscore_Count",§[J§,100);
            §?!?§.§#'§("Hiscore_Star_Splash1",§,!#§);
            this.§1!5§.delay = 1000;
            this.§+h§.assign(§,!!§.controller.getScore());
            _loc6_ = this.§+h§.getValue() / _loc4_ * 2;
            if(_loc4_ <= 0)
            {
               _loc6_ = 1;
            }
            this.§;!&§ = §%!>§.§-]§.§?U§(this,{"mNewScoreCounter":this.§+h§.getValue()},{"mNewScoreCounter":0},_loc6_);
            this.§;!&§.onComplete = this.§,!2§;
            this.§;!&§.play();
            (§#Z§.getItemByName("MovieClip_StarLeft") as §!"§).mClip.gotoAndStop("Lit");
            _loc2_ = (§#Z§.getItemByName("MovieClip_StarLeft") as §!"§).x + (§#Z§.getItemByName("Container_LevelEndStripe") as §2q§).x;
            _loc3_ = (§#Z§.getItemByName("MovieClip_StarLeft") as §!"§).y + (§#Z§.getItemByName("Container_LevelEndStripe") as §2q§).y;
            this.§[f§ = new §+%§(AngryBirdsFP11.screenWidth,AngryBirdsFP11.screenHeight,_loc2_,_loc3_,§+%§.§=!B§);
            §#Z§.addChild(this.§[f§);
            this.§5A§.push(this.§[f§);
         }
         else if(this.§+h§.getValue() >= _loc5_ && (§#Z§.getItemByName("MovieClip_StarCenter") as §!"§).mClip.currentLabel == "UnLit")
         {
            §?!?§.§#'§("Hiscore_Star_Splash2",§,!#§);
            (§#Z§.getItemByName("MovieClip_StarCenter") as §!"§).mClip.gotoAndStop("Lit");
            _loc2_ = (§#Z§.getItemByName("MovieClip_StarCenter") as §!"§).x + (§#Z§.getItemByName("Container_LevelEndStripe") as §2q§).x;
            _loc3_ = (§#Z§.getItemByName("MovieClip_StarCenter") as §!"§).y + (§#Z§.getItemByName("Container_LevelEndStripe") as §2q§).y;
            this.§[f§ = new §+%§(AngryBirdsFP11.screenWidth,AngryBirdsFP11.screenHeight,_loc2_,_loc3_,§+%§.§`!<§);
            §#Z§.addChild(this.§[f§);
            this.§5A§.push(this.§[f§);
         }
         else if(this.§+h§.getValue() >= _loc4_ && (§#Z§.getItemByName("MovieClip_StarRight") as §!"§).mClip.currentLabel == "UnLit")
         {
            this.§'E§ = true;
            §?!?§.§#'§("Hiscore_Star_Splash3",§,!#§);
            (§#Z§.getItemByName("MovieClip_StarRight") as §!"§).mClip.gotoAndStop("Lit");
            _loc2_ = (§#Z§.getItemByName("MovieClip_StarRight") as §!"§).x + (§#Z§.getItemByName("Container_LevelEndStripe") as §2q§).x;
            _loc3_ = (§#Z§.getItemByName("MovieClip_StarRight") as §!"§).y + (§#Z§.getItemByName("Container_LevelEndStripe") as §2q§).y;
            this.§[f§ = new §+%§(AngryBirdsFP11.screenWidth,AngryBirdsFP11.screenHeight,_loc2_,_loc3_,§+%§.§^W§);
            §#Z§.addChild(this.§[f§);
            this.§5A§.push(this.§[f§);
         }
         else if(!this.§[a§)
         {
            this.§[a§ = true;
         }
         else
         {
            this.§1!5§.stop();
            if(this.§]!#§ && !this.§^&§)
            {
               (§#Z§.getItemByName("MovieClip_NewHighScoreBadge") as §!"§).setVisibility(true);
            }
            else
            {
               (§#Z§.getItemByName("MovieClip_NewHighScoreBadge") as §!"§).setVisibility(false);
            }
            this.§6E§ = §%!>§.§-]§.§?U§((§#Z§.getItemByName("MovieClip_NewHighScoreBadge") as §!"§).mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":7,
               "scaleY":7
            },0.1);
            this.§6E§.onComplete = this.onBadgeLanded;
            this.§6E§.play();
         }
         ++this.§^`§;
      }
      
      private function §,!2§() : void
      {
         §?!?§.§<!,§(§[J§);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:§+%§ = null;
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §0!5§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         §#Z§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScore");
         §#Z§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScoreEffects");
         for each(_loc3_ in this.§5A§)
         {
            _loc3_.update(param1);
         }
         if(this.§;!>§ > -1)
         {
            this.§`!3§(param1);
         }
         if(mNextState.length > 0)
         {
            §,!!§.§;4§.clearLevel();
            return §0!5§.STATE_STATUS_COMPLETED;
         }
         return §0!5§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§&y§();
         this.§;!>§ = 0;
         this.mNewScoreCounter = 0;
         if(this.§;!&§)
         {
            this.§;!&§.stop();
            this.§;!&§ = null;
         }
         if(this.§6E§)
         {
            this.§6E§.stop();
            this.§6E§ = null;
         }
         §?!?§.§<!,§(§[J§);
         this.setButtonStates(§ use§.COMPONENT_STATE_ACTIVE_DEFAULT);
         §#Z§.setText("0","TextField_LevelEndScore");
         §#Z§.setText("0","TextField_LevelEndScoreEffects");
         if(this.§>!;§)
         {
            if(§#Z§.movieClip.contains(this.§>!;§))
            {
               §#Z§.movieClip.removeChild(this.§>!;§);
            }
            this.§>!;§.clean();
            this.§>!;§ = null;
         }
      }
      
      protected function setButtonStates(param1:String) : void
      {
         (§#Z§.getItemByName("Button_Menu") as §=^§).setComponentVisualState(param1);
         (§#Z§.getItemByName("Button_Replay") as §=^§).setComponentVisualState(param1);
         (§#Z§.getItemByName("Button_NextLevel") as §=^§).setComponentVisualState(param1);
         (§#Z§.getItemByName("Button_CutScene") as §=^§).setComponentVisualState(param1);
      }
      
      private function §&y§() : void
      {
         var splash:§+%§ = null;
         if(this.§1!5§)
         {
            this.§1!5§.stop();
            try
            {
               this.§1!5§.removeEventListener(TimerEvent.TIMER,this.§3!B§);
            }
            catch(e:Error)
            {
            }
         }
         for each(splash in this.§5A§)
         {
            if(§#Z§.contains(splash))
            {
               §#Z§.removeChild(splash);
            }
            splash.clean();
         }
         this.§5A§ = new Vector.<§+%§>();
         this.hideBestScoreTexts();
      }
      
      protected function hideBestScoreTexts() : void
      {
         (§#Z§.getItemByName("TextField_BestScore") as §`Y§).setVisibility(false);
         (§#Z§.getItemByName("MovieClip_BestScoreStars") as §!"§).setVisibility(false);
         (§#Z§.getItemByName("TextField_NewHighScore") as §`Y§).setVisibility(false);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      protected function §]O§() : void
      {
         § @§.§-!-§();
         mNextState = this.§&N§();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§@s§) : void
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
               §?!?§.§%!%§();
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
      
      protected function §&N§() : String
      {
         return StateCutScene.§0!7§;
      }
      
      public function §5z§() : String
      {
         return §!,§.§0!7§;
      }
   }
}
