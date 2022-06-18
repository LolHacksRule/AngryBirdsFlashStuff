package §@!%§
{
   import § "§.§8!3§;
   import §"!F§.§-]§;
   import §"!F§.§^$§;
   import §-'§.§%!$§;
   import §0m§.§1!,§;
   import §0u§.§"`§;
   import §0u§.§&]§;
   import §1!?§.§7_§;
   import §10§.§#!4§;
   import §4-§.§%+§;
   import §4-§.§'J§;
   import §4-§.§;g§;
   import §4-§.§>Z§;
   import §6!,§.§1W§;
   import §6!,§.§[H§;
   import §]5§.§,G§;
   import §]5§.§1^§;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §=z§ extends §1!,§
   {
      
      public static const §5%§:String = "LevelEndStateRio";
      
      public static const §>!%§:Number = 30;
      
      protected static const §+c§:String = "ScoreLoopCountChannel";
      
      protected static const §4]§:String = "EndScreenEffectChannel";
       
      
      private var §7M§:§1^§;
      
      private var §>!#§:Number;
      
      private var §!B§:Number = 0.0;
      
      private var §@r§:Number = 0.0;
      
      private var §#!3§:Boolean = false;
      
      private var §%,§:Timer;
      
      private var §2!C§:§^$§;
      
      private var §9E§:Array;
      
      protected var §2e§:§-]§;
      
      protected var §?!&§:Vector.<§-]§>;
      
      public var mNewScoreCounter:int;
      
      private var §!r§:int;
      
      private var §]r§:Boolean;
      
      protected var §],§:Boolean;
      
      private var §0Y§:§%!$§;
      
      protected var §`M§:Boolean;
      
      private var §2p§:§1^§;
      
      protected var §#!'§:Boolean;
      
      protected var §&!-§:int;
      
      public function §=z§(param1:Boolean = false, param2:String = "LevelEndStateRio")
      {
         this.§9E§ = [];
         this.§0Y§ = new §%!$§();
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §`k§ = new §[H§(this);
         §`k§.init(this.getViewXML());
         this.initButtonDefaultPositions();
         this.§?!&§ = new Vector.<§-]§>();
         §7_§.§#I§(§+c§,1,1);
         §7_§.§#I§(§4]§,3,1);
      }
      
      protected function initButtonDefaultPositions() : void
      {
         this.§9E§.push((§`k§.getItemByName("Button_Menu") as §%+§).x);
         this.§9E§.push((§`k§.getItemByName("Button_Replay") as §%+§).x);
         this.§9E§.push((§`k§.getItemByName("Button_NextLevel") as §%+§).x);
         this.§9E§.push((§`k§.getItemByName("Button_CutScene") as §%+§).x);
      }
      
      protected function getViewXML() : XML
      {
         return §1W§.§&!G§.Views.View_LevelEndRio[0];
      }
      
      protected function showButtonsCutScene() : void
      {
         if(!AngryBirdsFP11.sUserProgress.isLevelPassed(§8!3§.§-[§))
         {
            (§`k§.getItemByName("Button_Menu") as §%+§).setVisibility(false);
            (§`k§.getItemByName("Button_Replay") as §%+§).setVisibility(true);
            (§`k§.getItemByName("Button_NextLevel") as §%+§).setVisibility(false);
            (§`k§.getItemByName("Button_CutScene") as §%+§).setVisibility(true);
            (§`k§.getItemByName("Button_Replay") as §%+§).x = this.§9E§[0] + Math.abs(this.§9E§[1] - this.§9E§[0]) / 2;
            (§`k§.getItemByName("Button_CutScene") as §%+§).x = this.§9E§[1] + Math.abs(this.§9E§[2] - this.§9E§[1]) / 2;
         }
         else
         {
            (§`k§.getItemByName("Button_Menu") as §%+§).setVisibility(true);
            (§`k§.getItemByName("Button_Replay") as §%+§).setVisibility(true);
            (§`k§.getItemByName("Button_NextLevel") as §%+§).setVisibility(false);
            (§`k§.getItemByName("Button_CutScene") as §%+§).setVisibility(true);
            (§`k§.getItemByName("Button_Menu") as §%+§).x = this.§9E§[0];
            (§`k§.getItemByName("Button_Replay") as §%+§).x = this.§9E§[1];
            (§`k§.getItemByName("Button_CutScene") as §%+§).x = this.§9E§[2];
         }
      }
      
      protected function showButtonsNormal() : void
      {
         (§`k§.getItemByName("Button_Menu") as §%+§).setVisibility(true);
         (§`k§.getItemByName("Button_Replay") as §%+§).setVisibility(true);
         (§`k§.getItemByName("Button_CutScene") as §%+§).setVisibility(false);
         if(§8!3§.§9!$§())
         {
            (§`k§.getItemByName("Button_NextLevel") as §%+§).setVisibility(true);
            (§`k§.getItemByName("Button_Menu") as §%+§).x = this.§9E§[0];
            (§`k§.getItemByName("Button_Replay") as §%+§).x = this.§9E§[1];
            (§`k§.getItemByName("Button_NextLevel") as §%+§).x = this.§9E§[2];
         }
         else
         {
            (§`k§.getItemByName("Button_NextLevel") as §%+§).setVisibility(false);
            (§`k§.getItemByName("Button_Menu") as §%+§).x = this.§9E§[0] + Math.abs(this.§9E§[1] - this.§9E§[0]) / 2;
            (§`k§.getItemByName("Button_Replay") as §%+§).x = this.§9E§[1] + Math.abs(this.§9E§[2] - this.§9E§[1]) / 2;
         }
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§#!'§ = false;
         §#!4§.pause();
         this.§2!C§ = new §^$§(0,0,0,0);
         §`k§.mMovieClip.addChildAt(this.§2!C§,§`k§.mMovieClip.numChildren - 1);
         if(§8!3§.§3!?§())
         {
            this.showButtonsCutScene();
         }
         else
         {
            this.showButtonsNormal();
         }
         this.mNewScoreCounter = 0;
         this.§]r§ = false;
         §7_§.§4!5§("LevelCompletedTheme1");
         this.§2!C§.§3t§(0.7);
         this.§!B§ = 0;
         this.§@r§ = 0;
         this.§5!=§();
      }
      
      private function §5!=§() : void
      {
         this.§],§ = false;
         this.setScoreData();
         this.§%,§ = new Timer(500);
         this.§!r§ = 0;
         this.§%,§.addEventListener(TimerEvent.TIMER,this.§&!E§);
         this.§%,§.start();
      }
      
      protected function setMightyEagleFeather() : void
      {
         if(AngryBirdsFP11.sUserProgress.§-@§(§8!3§.§-[§) == 100)
         {
            (§`k§.getItemByName("MovieClip_ResultMEFeather") as §;g§).mClip.gotoAndStop("On");
         }
         else
         {
            (§`k§.getItemByName("MovieClip_ResultMEFeather") as §;g§).mClip.gotoAndStop("Off");
         }
      }
      
      protected function setScoreStars(param1:int, param2:int) : void
      {
         if(this.§`M§)
         {
            param2 = param1;
            AngryBirdsFP11.sUserProgress.§1!E§(§8!3§.§-[§,param2);
            §`k§.setText("New Highscore!","TextField_BestScore");
         }
         else
         {
            §`k§.setText("Best " + param2.toString(),"TextField_BestScore");
            this.§&!-§ = §8!3§.§0-§(§8!3§.§-[§,param2);
            switch(this.§&!-§)
            {
               case 1:
                  (§`k§.getItemByName("MovieClip_BestScoreStars") as §;g§).§#!6§("OneStar");
                  break;
               case 2:
                  (§`k§.getItemByName("MovieClip_BestScoreStars") as §;g§).§#!6§("TwoStar");
                  break;
               case 3:
                  (§`k§.getItemByName("MovieClip_BestScoreStars") as §;g§).§#!6§("ThreeStar");
            }
         }
      }
      
      protected function setScoreData() : void
      {
         var _loc1_:int = AngryBirdsFP11.sUserProgress.§^A§(§8!3§.§-[§);
         var _loc2_:int = §#!4§.controller.getScore();
         this.§`M§ = _loc2_ > _loc1_;
         this.setScoreStars(_loc2_,_loc1_);
         this.setMightyEagleFeather();
         var _loc3_:int = §#!4§.controller.getEagleScore();
         var _loc4_:int = AngryBirdsFP11.sUserProgress.§-@§(§8!3§.§-[§);
         var _loc5_:*;
         if(_loc5_ = _loc3_ > _loc4_)
         {
            _loc4_ = _loc3_;
            AngryBirdsFP11.sUserProgress.§+!@§(§8!3§.§-[§,_loc4_);
         }
         var _loc6_:int = AngryBirdsFP11.sUserProgress.§9!"§(§8!3§.§-[§,_loc2_);
         (§`k§.getItemByName("MovieClip_NewHighScoreBadge") as §;g§).setVisibility(false);
         (§`k§.getItemByName("MovieClip_StarLeft") as §;g§).mClip.gotoAndStop("UnLit");
         (§`k§.getItemByName("MovieClip_StarCenter") as §;g§).mClip.gotoAndStop("UnLit");
         (§`k§.getItemByName("MovieClip_StarRight") as §;g§).mClip.gotoAndStop("UnLit");
      }
      
      protected function onBadgeLanded() : void
      {
         if(this.§`M§)
         {
            §7_§.§4!5§("Hiscore_Badge",§4]§);
            §`k§.setText("New Highscore!","TextField_NewHighScore");
            (§`k§.getItemByName("TextField_NewHighScore") as §>Z§).setVisibility(true);
            (§`k§.getItemByName("MovieClip_BestScoreStars") as §;g§).setVisibility(false);
            this.§`N§();
         }
         else
         {
            (§`k§.getItemByName("TextField_BestScore") as §>Z§).setVisibility(true);
            (§`k§.getItemByName("MovieClip_BestScoreStars") as §;g§).setVisibility(true);
         }
      }
      
      protected function §`N§() : void
      {
         this.§!B§ = 0;
         this.§@r§ = 0;
         this.§>!#§ = §>!%§;
      }
      
      private function §8!-§(param1:Number) : void
      {
         (§`k§.getItemByName("Container_LevelEndStripe") as §'J§).x = (§`k§.getItemByName("Container_LevelEndStripe") as §'J§).x - this.§!B§;
         (§`k§.getItemByName("Container_LevelEndStripe") as §'J§).y = (§`k§.getItemByName("Container_LevelEndStripe") as §'J§).y - this.§@r§;
         if(this.§>!#§ > 0)
         {
            this.§!B§ = (Math.random() - 0.5) * (this.§>!#§ / §>!%§) * 20;
            this.§@r§ = (Math.random() - 0.5) * (this.§>!#§ / §>!%§) * 20;
            (§`k§.getItemByName("Container_LevelEndStripe") as §'J§).x = (§`k§.getItemByName("Container_LevelEndStripe") as §'J§).x + this.§!B§;
            (§`k§.getItemByName("Container_LevelEndStripe") as §'J§).y = (§`k§.getItemByName("Container_LevelEndStripe") as §'J§).y + this.§@r§;
         }
         else
         {
            this.§!B§ = 0;
            this.§@r§ = 0;
         }
         this.§>!#§ -= param1 / 10;
      }
      
      private function §&!E§(param1:TimerEvent) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc4_:Number = §8!3§.§]!>§(§8!3§.§-[§).§%!!§;
         var _loc5_:Number = §8!3§.§]!>§(§8!3§.§-[§).§]N§;
         if((§`k§.getItemByName("MovieClip_StarLeft") as §;g§).mClip.currentLabel == "UnLit")
         {
            §7_§.§4!5§("Hiscore_Count",§+c§,100);
            §7_§.§4!5§("Hiscore_Star_Splash1",§4]§);
            this.§%,§.delay = 1000;
            this.§0Y§.assign(§#!4§.controller.getScore());
            _loc6_ = this.§0Y§.getValue() / _loc4_ * 2;
            if(_loc4_ <= 0)
            {
               _loc6_ = 1;
            }
            this.§2p§ = §,G§.§+S§.§1u§(this,{"mNewScoreCounter":this.§0Y§.getValue()},{"mNewScoreCounter":0},_loc6_);
            this.§2p§.onComplete = this.§11§;
            this.§2p§.play();
            (§`k§.getItemByName("MovieClip_StarLeft") as §;g§).mClip.gotoAndStop("Lit");
            _loc2_ = (§`k§.getItemByName("MovieClip_StarLeft") as §;g§).x + (§`k§.getItemByName("Container_LevelEndStripe") as §'J§).x;
            _loc3_ = (§`k§.getItemByName("MovieClip_StarLeft") as §;g§).y + (§`k§.getItemByName("Container_LevelEndStripe") as §'J§).y;
            this.§2e§ = new §-]§(AngryBirdsFP11.screenWidth,AngryBirdsFP11.screenHeight,_loc2_,_loc3_,§-]§.§4!%§);
            §`k§.addChild(this.§2e§);
            this.§?!&§.push(this.§2e§);
         }
         else if(this.§0Y§.getValue() >= _loc5_ && (§`k§.getItemByName("MovieClip_StarCenter") as §;g§).mClip.currentLabel == "UnLit")
         {
            §7_§.§4!5§("Hiscore_Star_Splash2",§4]§);
            (§`k§.getItemByName("MovieClip_StarCenter") as §;g§).mClip.gotoAndStop("Lit");
            _loc2_ = (§`k§.getItemByName("MovieClip_StarCenter") as §;g§).x + (§`k§.getItemByName("Container_LevelEndStripe") as §'J§).x;
            _loc3_ = (§`k§.getItemByName("MovieClip_StarCenter") as §;g§).y + (§`k§.getItemByName("Container_LevelEndStripe") as §'J§).y;
            this.§2e§ = new §-]§(AngryBirdsFP11.screenWidth,AngryBirdsFP11.screenHeight,_loc2_,_loc3_,§-]§.§%l§);
            §`k§.addChild(this.§2e§);
            this.§?!&§.push(this.§2e§);
         }
         else if(this.§0Y§.getValue() >= _loc4_ && (§`k§.getItemByName("MovieClip_StarRight") as §;g§).mClip.currentLabel == "UnLit")
         {
            this.§#!'§ = true;
            §7_§.§4!5§("Hiscore_Star_Splash3",§4]§);
            (§`k§.getItemByName("MovieClip_StarRight") as §;g§).mClip.gotoAndStop("Lit");
            _loc2_ = (§`k§.getItemByName("MovieClip_StarRight") as §;g§).x + (§`k§.getItemByName("Container_LevelEndStripe") as §'J§).x;
            _loc3_ = (§`k§.getItemByName("MovieClip_StarRight") as §;g§).y + (§`k§.getItemByName("Container_LevelEndStripe") as §'J§).y;
            this.§2e§ = new §-]§(AngryBirdsFP11.screenWidth,AngryBirdsFP11.screenHeight,_loc2_,_loc3_,§-]§.§%!8§);
            §`k§.addChild(this.§2e§);
            this.§?!&§.push(this.§2e§);
         }
         else if(!this.§]r§)
         {
            this.§]r§ = true;
         }
         else
         {
            this.§%,§.stop();
            if(this.§`M§ && !this.§],§)
            {
               (§`k§.getItemByName("MovieClip_NewHighScoreBadge") as §;g§).setVisibility(true);
            }
            else
            {
               (§`k§.getItemByName("MovieClip_NewHighScoreBadge") as §;g§).setVisibility(false);
            }
            this.§7M§ = §,G§.§+S§.§1u§((§`k§.getItemByName("MovieClip_NewHighScoreBadge") as §;g§).mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":7,
               "scaleY":7
            },0.1);
            this.§7M§.onComplete = this.onBadgeLanded;
            this.§7M§.play();
         }
         ++this.§!r§;
      }
      
      private function §11§() : void
      {
         §7_§.§!4§(§+c§);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:§-]§ = null;
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §1!,§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         §`k§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScore");
         §`k§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScoreEffects");
         for each(_loc3_ in this.§?!&§)
         {
            _loc3_.update(param1);
         }
         if(this.§>!#§ >= 0)
         {
            this.§8!-§(param1);
         }
         if(mNextState.length > 0)
         {
            §#!4§.§^Y§.clearLevel();
            return §1!,§.STATE_STATUS_COMPLETED;
         }
         return §1!,§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§<B§();
         this.§>!#§ = 0;
         this.mNewScoreCounter = 0;
         if(this.§2p§)
         {
            this.§2p§.stop();
            this.§2p§ = null;
         }
         if(this.§7M§)
         {
            this.§7M§.stop();
            this.§7M§ = null;
         }
         §7_§.§!4§(§+c§);
         this.setButtonStates(§"`§.COMPONENT_STATE_ACTIVE_DEFAULT);
         §`k§.setText("0","TextField_LevelEndScore");
         §`k§.setText("0","TextField_LevelEndScoreEffects");
         if(this.§2!C§)
         {
            if(§`k§.mMovieClip.contains(this.§2!C§))
            {
               §`k§.mMovieClip.removeChild(this.§2!C§);
            }
            this.§2!C§.clean();
            this.§2!C§ = null;
         }
      }
      
      protected function setButtonStates(param1:String) : void
      {
         (§`k§.getItemByName("Button_Menu") as §%+§).setComponentVisualState(param1);
         (§`k§.getItemByName("Button_Replay") as §%+§).setComponentVisualState(param1);
         (§`k§.getItemByName("Button_NextLevel") as §%+§).setComponentVisualState(param1);
         (§`k§.getItemByName("Button_CutScene") as §%+§).setComponentVisualState(param1);
      }
      
      private function §<B§() : void
      {
         var splash:§-]§ = null;
         if(this.§%,§)
         {
            this.§%,§.stop();
            try
            {
               this.§%,§.removeEventListener(TimerEvent.TIMER,this.§&!E§);
            }
            catch(e:Error)
            {
            }
         }
         for each(splash in this.§?!&§)
         {
            if(§`k§.contains(splash))
            {
               §`k§.removeChild(splash);
            }
            splash.clean();
         }
         this.§?!&§ = new Vector.<§-]§>();
         this.hideBestScoreTexts();
      }
      
      protected function hideBestScoreTexts() : void
      {
         (§`k§.getItemByName("TextField_BestScore") as §>Z§).setVisibility(false);
         (§`k§.getItemByName("MovieClip_BestScoreStars") as §;g§).setVisibility(false);
         (§`k§.getItemByName("TextField_NewHighScore") as §>Z§).setVisibility(false);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      protected function § in§() : void
      {
         §2!"§.§6!9§();
         mNextState = this.§9v§();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§&]§) : void
      {
         var _loc4_:String = null;
         switch(param2)
         {
            case "NEXT_LEVEL":
               this.§ in§();
               break;
            case "REPLAY":
               §2!"§.§`!B§();
               mNextState = this.§"w§();
               break;
            case "WATCH_REPLAY":
               §2!"§.§`!B§();
               mNextState = this.§"w§();
               if(_loc4_ = §#!4§.§^Y§.§>`§())
               {
                  §#!4§.§^Y§.§20§(_loc4_);
                  break;
               }
               break;
            case "MENU":
               §7_§.§@l§();
               mNextState = this.§%o§();
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§?,§.§do§();
         }
      }
      
      protected function §"w§() : String
      {
         return §2!"§.§5%§;
      }
      
      protected function §9v§() : String
      {
         return StateCutScene.§5%§;
      }
      
      public function §%o§() : String
      {
         return §]V§.§5%§;
      }
   }
}
