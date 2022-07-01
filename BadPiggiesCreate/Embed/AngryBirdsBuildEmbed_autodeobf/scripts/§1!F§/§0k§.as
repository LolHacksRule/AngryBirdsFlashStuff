package §1!F§
{
   import §!y§.§2U§;
   import §!y§.§=!Z§;
   import §"!E§.§#!'§;
   import §"!E§.§%O§;
   import §"!E§.§;!j§;
   import §"!E§.§[!s§;
   import §#!4§.§+!S§;
   import §#!4§.§<f§;
   import §-!0§.§1^§;
   import §1?§.§+!§;
   import §5!`§.§ !c§;
   import §5!`§.§%!Y§;
   import §8!Q§.§2!7§;
   import §9!n§.§0Y§;
   import §9!n§.§@!T§;
   import §=!3§.§;!!§;
   import §?!-§.§'!V§;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §0k§ extends §;!!§
   {
      
      public static const STATE_NAME:String = "LevelEndStateRio";
      
      public static const §0#§:Number = 30;
      
      protected static const §]!2§:String = "ScoreLoopCountChannel";
      
      protected static const §;X§:String = "EndScreenEffectChannel";
       
      
      private var §9!t§:§0Y§;
      
      private var §#H§:Number;
      
      private var §?!H§:Number = 0.0;
      
      private var §4!q§:Number = 0.0;
      
      private var §#!<§:Boolean = false;
      
      private var §1!+§:Timer;
      
      private var §7H§:§%!Y§;
      
      private var §@W§:Array;
      
      protected var §>!^§:§ !c§;
      
      protected var §>!_§:Vector.<§ !c§>;
      
      public var mNewScoreCounter:int;
      
      private var §=w§:int;
      
      private var §9i§:Boolean;
      
      protected var §>H§:Boolean;
      
      private var §]!4§:§2!7§;
      
      protected var §8!_§:Boolean;
      
      private var §47§:§0Y§;
      
      protected var §^!-§:Boolean;
      
      protected var §4!$§:int;
      
      public function §0k§(param1:Boolean = false, param2:String = "LevelEndStateRio")
      {
         this.§@W§ = [];
         this.§]!4§ = new §2!7§();
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §+!$§ = new §2U§(this);
         §+!$§.init(this.getViewXML());
         this.initButtonDefaultPositions();
         this.§>!_§ = new Vector.<§ !c§>();
         §+!§.§#n§(§]!2§,1,1);
         §+!§.§#n§(§;X§,3,1);
      }
      
      protected function initButtonDefaultPositions() : void
      {
         this.§@W§.push((§+!$§.getItemByName("Button_Menu") as §#!'§).x);
         this.§@W§.push((§+!$§.getItemByName("Button_Replay") as §#!'§).x);
         this.§@W§.push((§+!$§.getItemByName("Button_NextLevel") as §#!'§).x);
         this.§@W§.push((§+!$§.getItemByName("Button_CutScene") as §#!'§).x);
      }
      
      protected function getViewXML() : XML
      {
         return §=!Z§.§;K§.Views.View_LevelEndRio[0];
      }
      
      protected function showButtonsCutScene() : void
      {
         if(!AngryBirdsFP11.sUserProgress.isLevelPassed(§1^§.§ ]§))
         {
            (§+!$§.getItemByName("Button_Menu") as §#!'§).setVisibility(false);
            (§+!$§.getItemByName("Button_Replay") as §#!'§).setVisibility(true);
            (§+!$§.getItemByName("Button_NextLevel") as §#!'§).setVisibility(false);
            (§+!$§.getItemByName("Button_CutScene") as §#!'§).setVisibility(true);
            (§+!$§.getItemByName("Button_Replay") as §#!'§).x = this.§@W§[0] + Math.abs(this.§@W§[1] - this.§@W§[0]) / 2;
            (§+!$§.getItemByName("Button_CutScene") as §#!'§).x = this.§@W§[1] + Math.abs(this.§@W§[2] - this.§@W§[1]) / 2;
         }
         else
         {
            (§+!$§.getItemByName("Button_Menu") as §#!'§).setVisibility(true);
            (§+!$§.getItemByName("Button_Replay") as §#!'§).setVisibility(true);
            (§+!$§.getItemByName("Button_NextLevel") as §#!'§).setVisibility(false);
            (§+!$§.getItemByName("Button_CutScene") as §#!'§).setVisibility(true);
            (§+!$§.getItemByName("Button_Menu") as §#!'§).x = this.§@W§[0];
            (§+!$§.getItemByName("Button_Replay") as §#!'§).x = this.§@W§[1];
            (§+!$§.getItemByName("Button_CutScene") as §#!'§).x = this.§@W§[2];
         }
      }
      
      protected function showButtonsNormal() : void
      {
         (§+!$§.getItemByName("Button_Menu") as §#!'§).setVisibility(true);
         (§+!$§.getItemByName("Button_Replay") as §#!'§).setVisibility(true);
         (§+!$§.getItemByName("Button_CutScene") as §#!'§).setVisibility(false);
         if(§1^§.§`!L§())
         {
            (§+!$§.getItemByName("Button_NextLevel") as §#!'§).setVisibility(true);
            (§+!$§.getItemByName("Button_Menu") as §#!'§).x = this.§@W§[0];
            (§+!$§.getItemByName("Button_Replay") as §#!'§).x = this.§@W§[1];
            (§+!$§.getItemByName("Button_NextLevel") as §#!'§).x = this.§@W§[2];
         }
         else
         {
            (§+!$§.getItemByName("Button_NextLevel") as §#!'§).setVisibility(false);
            (§+!$§.getItemByName("Button_Menu") as §#!'§).x = this.§@W§[0] + Math.abs(this.§@W§[1] - this.§@W§[0]) / 2;
            (§+!$§.getItemByName("Button_Replay") as §#!'§).x = this.§@W§[1] + Math.abs(this.§@W§[2] - this.§@W§[1]) / 2;
         }
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§^!-§ = false;
         §'!V§.pause();
         this.§7H§ = new §%!Y§(0,0,0,0);
         §+!$§.movieClip.addChildAt(this.§7H§,§+!$§.movieClip.numChildren - 1);
         if(§1^§.§`!?§())
         {
            this.showButtonsCutScene();
         }
         else
         {
            this.showButtonsNormal();
         }
         this.mNewScoreCounter = 0;
         this.§9i§ = false;
         §+!§.§4c§("LevelCompletedTheme1");
         this.§7H§.§#[§(0.7);
         this.§?!H§ = 0;
         this.§4!q§ = 0;
         this.§5!t§();
      }
      
      private function §5!t§() : void
      {
         this.§>H§ = false;
         this.setScoreData();
         this.§1!+§ = new Timer(500);
         this.§=w§ = 0;
         this.§1!+§.addEventListener(TimerEvent.TIMER,this.§;#§);
         this.§1!+§.start();
      }
      
      protected function setMightyEagleFeather() : void
      {
         if(AngryBirdsFP11.sUserProgress.§8!O§(§1^§.§ ]§) == 100)
         {
            (§+!$§.getItemByName("MovieClip_ResultMEFeather") as §%O§).mClip.gotoAndStop("On");
         }
         else
         {
            (§+!$§.getItemByName("MovieClip_ResultMEFeather") as §%O§).mClip.gotoAndStop("Off");
         }
      }
      
      protected function setScoreStars(param1:int, param2:int) : void
      {
         if(this.§8!_§)
         {
            param2 = param1;
            AngryBirdsFP11.sUserProgress.§8!f§(§1^§.§ ]§,param2);
            §+!$§.setText("New Highscore!","TextField_BestScore");
         }
         else
         {
            §+!$§.setText("Best " + param2.toString(),"TextField_BestScore");
            this.§4!$§ = §1^§.§>6§(§1^§.§ ]§,param2);
            switch(this.§4!$§)
            {
               case 1:
                  (§+!$§.getItemByName("MovieClip_BestScoreStars") as §%O§).§-!a§("OneStar");
                  break;
               case 2:
                  (§+!$§.getItemByName("MovieClip_BestScoreStars") as §%O§).§-!a§("TwoStar");
                  break;
               case 3:
                  (§+!$§.getItemByName("MovieClip_BestScoreStars") as §%O§).§-!a§("ThreeStar");
            }
         }
      }
      
      protected function setScoreData() : void
      {
         var _loc1_:int = AngryBirdsFP11.sUserProgress.§!7§(§1^§.§ ]§);
         var _loc2_:int = §'!V§.§?!G§.getScore();
         this.§8!_§ = _loc2_ > _loc1_;
         this.setScoreStars(_loc2_,_loc1_);
         this.setMightyEagleFeather();
         var _loc3_:int = §'!V§.§?!G§.getEagleScore();
         var _loc4_:int = AngryBirdsFP11.sUserProgress.§8!O§(§1^§.§ ]§);
         var _loc5_:*;
         if(_loc5_ = _loc3_ > _loc4_)
         {
            _loc4_ = _loc3_;
            AngryBirdsFP11.sUserProgress.§]!L§(§1^§.§ ]§,_loc4_);
         }
         var _loc6_:int = AngryBirdsFP11.sUserProgress.§"!%§(§1^§.§ ]§,_loc2_);
         (§+!$§.getItemByName("MovieClip_NewHighScoreBadge") as §%O§).setVisibility(false);
         (§+!$§.getItemByName("MovieClip_StarLeft") as §%O§).mClip.gotoAndStop("UnLit");
         (§+!$§.getItemByName("MovieClip_StarCenter") as §%O§).mClip.gotoAndStop("UnLit");
         (§+!$§.getItemByName("MovieClip_StarRight") as §%O§).mClip.gotoAndStop("UnLit");
      }
      
      protected function onBadgeLanded() : void
      {
         if(this.§8!_§)
         {
            §+!§.§4c§("Hiscore_Badge",§;X§);
            §+!$§.setText("New Highscore!","TextField_NewHighScore");
            (§+!$§.getItemByName("TextField_NewHighScore") as §;!j§).setVisibility(true);
            (§+!$§.getItemByName("MovieClip_BestScoreStars") as §%O§).setVisibility(false);
            this.§77§();
         }
         else
         {
            (§+!$§.getItemByName("TextField_BestScore") as §;!j§).setVisibility(true);
            (§+!$§.getItemByName("MovieClip_BestScoreStars") as §%O§).setVisibility(true);
         }
      }
      
      protected function §77§() : void
      {
         this.§?!H§ = 0;
         this.§4!q§ = 0;
         this.§#H§ = §0#§;
      }
      
      private function §'!O§(param1:Number) : void
      {
         (§+!$§.getItemByName("Container_LevelEndStripe") as §[!s§).x = (§+!$§.getItemByName("Container_LevelEndStripe") as §[!s§).x - this.§?!H§;
         (§+!$§.getItemByName("Container_LevelEndStripe") as §[!s§).y = (§+!$§.getItemByName("Container_LevelEndStripe") as §[!s§).y - this.§4!q§;
         if(this.§#H§ > 0)
         {
            this.§?!H§ = (Math.random() - 0.5) * (this.§#H§ / §0#§) * 20;
            this.§4!q§ = (Math.random() - 0.5) * (this.§#H§ / §0#§) * 20;
            (§+!$§.getItemByName("Container_LevelEndStripe") as §[!s§).x = (§+!$§.getItemByName("Container_LevelEndStripe") as §[!s§).x + this.§?!H§;
            (§+!$§.getItemByName("Container_LevelEndStripe") as §[!s§).y = (§+!$§.getItemByName("Container_LevelEndStripe") as §[!s§).y + this.§4!q§;
         }
         else
         {
            this.§?!H§ = 0;
            this.§4!q§ = 0;
         }
         this.§#H§ -= param1 / 10;
      }
      
      private function §;#§(param1:TimerEvent) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc4_:Number = §1^§.§'!_§(§1^§.§ ]§).§9>§;
         var _loc5_:Number = §1^§.§'!_§(§1^§.§ ]§).§6!H§;
         if((§+!$§.getItemByName("MovieClip_StarLeft") as §%O§).mClip.currentLabel == "UnLit")
         {
            §+!§.§4c§("Hiscore_Count",§]!2§,100);
            §+!§.§4c§("Hiscore_Star_Splash1",§;X§);
            this.§1!+§.delay = 1000;
            this.§]!4§.assign(§'!V§.§?!G§.getScore());
            _loc6_ = this.§]!4§.getValue() / _loc4_ * 2;
            if(_loc4_ <= 0)
            {
               _loc6_ = 1;
            }
            this.§47§ = §@!T§.§`!t§.§8!"§(this,{"mNewScoreCounter":this.§]!4§.getValue()},{"mNewScoreCounter":0},_loc6_);
            this.§47§.onComplete = this.§7a§;
            this.§47§.play();
            (§+!$§.getItemByName("MovieClip_StarLeft") as §%O§).mClip.gotoAndStop("Lit");
            _loc2_ = (§+!$§.getItemByName("MovieClip_StarLeft") as §%O§).x + (§+!$§.getItemByName("Container_LevelEndStripe") as §[!s§).x;
            _loc3_ = (§+!$§.getItemByName("MovieClip_StarLeft") as §%O§).y + (§+!$§.getItemByName("Container_LevelEndStripe") as §[!s§).y;
            this.§>!^§ = new § !c§(AngryBirdsFP11.screenWidth,AngryBirdsFP11.screenHeight,_loc2_,_loc3_,§ !c§.§&$§);
            §+!$§.addChild(this.§>!^§);
            this.§>!_§.push(this.§>!^§);
         }
         else if(this.§]!4§.getValue() >= _loc5_ && (§+!$§.getItemByName("MovieClip_StarCenter") as §%O§).mClip.currentLabel == "UnLit")
         {
            §+!§.§4c§("Hiscore_Star_Splash2",§;X§);
            (§+!$§.getItemByName("MovieClip_StarCenter") as §%O§).mClip.gotoAndStop("Lit");
            _loc2_ = (§+!$§.getItemByName("MovieClip_StarCenter") as §%O§).x + (§+!$§.getItemByName("Container_LevelEndStripe") as §[!s§).x;
            _loc3_ = (§+!$§.getItemByName("MovieClip_StarCenter") as §%O§).y + (§+!$§.getItemByName("Container_LevelEndStripe") as §[!s§).y;
            this.§>!^§ = new § !c§(AngryBirdsFP11.screenWidth,AngryBirdsFP11.screenHeight,_loc2_,_loc3_,§ !c§.§#4§);
            §+!$§.addChild(this.§>!^§);
            this.§>!_§.push(this.§>!^§);
         }
         else if(this.§]!4§.getValue() >= _loc4_ && (§+!$§.getItemByName("MovieClip_StarRight") as §%O§).mClip.currentLabel == "UnLit")
         {
            this.§^!-§ = true;
            §+!§.§4c§("Hiscore_Star_Splash3",§;X§);
            (§+!$§.getItemByName("MovieClip_StarRight") as §%O§).mClip.gotoAndStop("Lit");
            _loc2_ = (§+!$§.getItemByName("MovieClip_StarRight") as §%O§).x + (§+!$§.getItemByName("Container_LevelEndStripe") as §[!s§).x;
            _loc3_ = (§+!$§.getItemByName("MovieClip_StarRight") as §%O§).y + (§+!$§.getItemByName("Container_LevelEndStripe") as §[!s§).y;
            this.§>!^§ = new § !c§(AngryBirdsFP11.screenWidth,AngryBirdsFP11.screenHeight,_loc2_,_loc3_,§ !c§.§%p§);
            §+!$§.addChild(this.§>!^§);
            this.§>!_§.push(this.§>!^§);
         }
         else if(!this.§9i§)
         {
            this.§9i§ = true;
         }
         else
         {
            this.§1!+§.stop();
            if(this.§8!_§ && !this.§>H§)
            {
               (§+!$§.getItemByName("MovieClip_NewHighScoreBadge") as §%O§).setVisibility(true);
            }
            else
            {
               (§+!$§.getItemByName("MovieClip_NewHighScoreBadge") as §%O§).setVisibility(false);
            }
            this.§9!t§ = §@!T§.§`!t§.§8!"§((§+!$§.getItemByName("MovieClip_NewHighScoreBadge") as §%O§).mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":7,
               "scaleY":7
            },0.1);
            this.§9!t§.onComplete = this.onBadgeLanded;
            this.§9!t§.play();
         }
         ++this.§=w§;
      }
      
      private function §7a§() : void
      {
         §+!§.§+!h§(§]!2§);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:§ !c§ = null;
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §;!!§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         §+!$§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScore");
         §+!$§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScoreEffects");
         for each(_loc3_ in this.§>!_§)
         {
            _loc3_.update(param1);
         }
         if(this.§#H§ >= 0)
         {
            this.§'!O§(param1);
         }
         if(mNextState.length > 0)
         {
            §'!V§.§1!2§.clearLevel();
            return §;!!§.STATE_STATUS_COMPLETED;
         }
         return §;!!§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§!>§();
         this.§#H§ = 0;
         this.mNewScoreCounter = 0;
         if(this.§47§)
         {
            this.§47§.stop();
            this.§47§ = null;
         }
         if(this.§9!t§)
         {
            this.§9!t§.stop();
            this.§9!t§ = null;
         }
         §+!§.§+!h§(§]!2§);
         this.setButtonStates(§<f§.COMPONENT_STATE_ACTIVE_DEFAULT);
         §+!$§.setText("0","TextField_LevelEndScore");
         §+!$§.setText("0","TextField_LevelEndScoreEffects");
         if(this.§7H§)
         {
            if(§+!$§.movieClip.contains(this.§7H§))
            {
               §+!$§.movieClip.removeChild(this.§7H§);
            }
            this.§7H§.clean();
            this.§7H§ = null;
         }
      }
      
      protected function setButtonStates(param1:String) : void
      {
         (§+!$§.getItemByName("Button_Menu") as §#!'§).setComponentVisualState(param1);
         (§+!$§.getItemByName("Button_Replay") as §#!'§).setComponentVisualState(param1);
         (§+!$§.getItemByName("Button_NextLevel") as §#!'§).setComponentVisualState(param1);
         (§+!$§.getItemByName("Button_CutScene") as §#!'§).setComponentVisualState(param1);
      }
      
      private function §!>§() : void
      {
         var splash:§ !c§ = null;
         if(this.§1!+§)
         {
            this.§1!+§.stop();
            try
            {
               this.§1!+§.removeEventListener(TimerEvent.TIMER,this.§;#§);
            }
            catch(e:Error)
            {
            }
         }
         for each(splash in this.§>!_§)
         {
            if(§+!$§.contains(splash))
            {
               §+!$§.removeChild(splash);
            }
            splash.clean();
         }
         this.§>!_§ = new Vector.<§ !c§>();
         this.hideBestScoreTexts();
      }
      
      protected function hideBestScoreTexts() : void
      {
         (§+!$§.getItemByName("TextField_BestScore") as §;!j§).setVisibility(false);
         (§+!$§.getItemByName("MovieClip_BestScoreStars") as §%O§).setVisibility(false);
         (§+!$§.getItemByName("TextField_NewHighScore") as §;!j§).setVisibility(false);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      protected function §5U§() : void
      {
         §26§.§=0§();
         mNextState = this.§54§();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§+!S§) : void
      {
         var _loc4_:String = null;
         switch(param2)
         {
            case "NEXT_LEVEL":
               this.§5U§();
               break;
            case "REPLAY":
               §26§.§!=§();
               mNextState = this.§3m§();
               break;
            case "WATCH_REPLAY":
               §26§.§!=§();
               mNextState = this.§3m§();
               if(_loc4_ = §'!V§.§1!2§.§8!§())
               {
                  §'!V§.§1!2§.§8V§(_loc4_);
                  break;
               }
               break;
            case "MENU":
               §+!§.§'!Q§();
               mNextState = this.§3! §();
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§`!d§.§!5§();
         }
      }
      
      protected function §3m§() : String
      {
         return §26§.STATE_NAME;
      }
      
      protected function §54§() : String
      {
         return StateCutScene.STATE_NAME;
      }
      
      public function §3! §() : String
      {
         return §?&§.STATE_NAME;
      }
   }
}
