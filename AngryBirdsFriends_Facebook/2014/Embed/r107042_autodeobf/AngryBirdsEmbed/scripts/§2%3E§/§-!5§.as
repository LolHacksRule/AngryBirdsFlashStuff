package §2>§
{
   import §%q§.§'!A§;
   import §%q§.§9;§;
   import §'0§.§]!2§;
   import §+3§.§4!6§;
   import §+3§.§8O§;
   import §2T§.§&M§;
   import §2T§.§2H§;
   import §2T§.§5@§;
   import §2T§.§[l§;
   import §3V§.§9p§;
   import §6Z§.§'?§;
   import §6h§.§[!4§;
   import §7=§.§9Y§;
   import §7J§.§<!?§;
   import §7J§.§=U§;
   import §?H§.§+!B§;
   import §?H§.§-!K§;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §-!5§ extends §9Y§
   {
      
      public static const §]! §:String = "LevelEndStateRio";
      
      public static const §9m§:Number = 30;
      
      protected static const §5y§:String = "ScoreLoopCountChannel";
      
      protected static const §!!#§:String = "EndScreenEffectChannel";
       
      
      private var §-U§:§9;§;
      
      private var §[k§:Number;
      
      private var §!3§:Number = 0.0;
      
      private var §%!I§:Number = 0.0;
      
      private var §3!H§:Boolean = false;
      
      private var §^K§:Timer;
      
      private var §22§:§8O§;
      
      protected var §&I§:Array;
      
      protected var §0!'§:§4!6§;
      
      protected var §@!0§:Vector.<§4!6§>;
      
      public var mNewScoreCounter:int;
      
      private var §"!,§:int;
      
      private var §>!6§:Boolean;
      
      protected var §!x§:Boolean;
      
      private var §32§:§9p§;
      
      protected var §%a§:Boolean;
      
      private var §5N§:§9;§;
      
      protected var §>!C§:Boolean;
      
      protected var §=J§:int;
      
      public function §-!5§(param1:Boolean = false, param2:String = "LevelEndStateRio")
      {
         this.§&I§ = [];
         this.§32§ = new §9p§();
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §!s§ = new §+!B§(this);
         §!s§.init(this.getViewXML());
         this.initButtonDefaultPositions();
         this.§@!0§ = new Vector.<§4!6§>();
         §]!2§.§+B§(§5y§,1,1);
         §]!2§.§+B§(§!!#§,3,1);
      }
      
      protected function initButtonDefaultPositions() : void
      {
         this.§&I§.push((§!s§.getItemByName("Button_Menu") as §2H§).x);
         this.§&I§.push((§!s§.getItemByName("Button_Replay") as §2H§).x);
         this.§&I§.push((§!s§.getItemByName("Button_NextLevel") as §2H§).x);
         this.§&I§.push((§!s§.getItemByName("Button_CutScene") as §2H§).x);
      }
      
      protected function getViewXML() : XML
      {
         return §-!K§.§"!G§.Views.View_LevelEndRio[0];
      }
      
      protected function showButtonsCutScene() : void
      {
         if(!AngryBirdsFP11.sUserProgress.isLevelPassed(§'?§.§"t§))
         {
            (§!s§.getItemByName("Button_Menu") as §2H§).setVisibility(false);
            (§!s§.getItemByName("Button_Replay") as §2H§).setVisibility(true);
            (§!s§.getItemByName("Button_NextLevel") as §2H§).setVisibility(false);
            (§!s§.getItemByName("Button_CutScene") as §2H§).setVisibility(true);
            (§!s§.getItemByName("Button_Replay") as §2H§).x = this.§&I§[0] + Math.abs(this.§&I§[1] - this.§&I§[0]) / 2;
            (§!s§.getItemByName("Button_CutScene") as §2H§).x = this.§&I§[1] + Math.abs(this.§&I§[2] - this.§&I§[1]) / 2;
         }
         else
         {
            (§!s§.getItemByName("Button_Menu") as §2H§).setVisibility(true);
            (§!s§.getItemByName("Button_Replay") as §2H§).setVisibility(true);
            (§!s§.getItemByName("Button_NextLevel") as §2H§).setVisibility(false);
            (§!s§.getItemByName("Button_CutScene") as §2H§).setVisibility(true);
            (§!s§.getItemByName("Button_Menu") as §2H§).x = this.§&I§[0];
            (§!s§.getItemByName("Button_Replay") as §2H§).x = this.§&I§[1];
            (§!s§.getItemByName("Button_CutScene") as §2H§).x = this.§&I§[2];
         }
      }
      
      protected function showButtonsNormal() : void
      {
         (§!s§.getItemByName("Button_Menu") as §2H§).setVisibility(true);
         (§!s§.getItemByName("Button_Replay") as §2H§).setVisibility(true);
         (§!s§.getItemByName("Button_CutScene") as §2H§).setVisibility(false);
         if(§'?§.§[§())
         {
            (§!s§.getItemByName("Button_NextLevel") as §2H§).setVisibility(true);
            (§!s§.getItemByName("Button_Menu") as §2H§).x = this.§&I§[0];
            (§!s§.getItemByName("Button_Replay") as §2H§).x = this.§&I§[1];
            (§!s§.getItemByName("Button_NextLevel") as §2H§).x = this.§&I§[2];
         }
         else
         {
            (§!s§.getItemByName("Button_NextLevel") as §2H§).setVisibility(false);
            (§!s§.getItemByName("Button_Menu") as §2H§).x = this.§&I§[0] + Math.abs(this.§&I§[1] - this.§&I§[0]) / 2;
            (§!s§.getItemByName("Button_Replay") as §2H§).x = this.§&I§[1] + Math.abs(this.§&I§[2] - this.§&I§[1]) / 2;
         }
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§>!C§ = false;
         §[!4§.pause();
         this.§22§ = new §8O§(0,0,0,0);
         §!s§.movieClip.addChildAt(this.§22§,§!s§.movieClip.numChildren - 1);
         if(§'?§.§"!'§())
         {
            this.showButtonsCutScene();
         }
         else
         {
            this.showButtonsNormal();
         }
         this.mNewScoreCounter = 0;
         this.§>!6§ = false;
         §]!2§.playSound(this.§-q§);
         this.§22§.§&<§(0.7);
         this.§!3§ = 0;
         this.§%!I§ = 0;
         this.§<s§();
      }
      
      protected function get §-q§() : String
      {
         return "LevelCompletedTheme1";
      }
      
      private function §<s§() : void
      {
         this.§!x§ = false;
         this.setScoreData();
         this.§^K§ = new Timer(500);
         this.§"!,§ = 0;
         this.§^K§.addEventListener(TimerEvent.TIMER,this.§4,§);
         this.§^K§.start();
      }
      
      protected function setMightyEagleFeather() : void
      {
         if(AngryBirdsFP11.sUserProgress.§%!E§(§'?§.§"t§) == 100)
         {
            (§!s§.getItemByName("MovieClip_ResultMEFeather") as §[l§).mClip.gotoAndStop("On");
         }
         else
         {
            (§!s§.getItemByName("MovieClip_ResultMEFeather") as §[l§).mClip.gotoAndStop("Off");
         }
      }
      
      protected function setScoreStars(param1:int, param2:int) : void
      {
         if(this.§%a§)
         {
            param2 = param1;
            AngryBirdsFP11.sUserProgress.§4!<§(§'?§.§"t§,param2);
            §!s§.setText("New Highscore!","TextField_BestScore");
         }
         else
         {
            §!s§.setText("Best " + param2.toString(),"TextField_BestScore");
            this.§=J§ = §'?§.§[!K§(§'?§.§"t§,param2);
            switch(this.§=J§)
            {
               case 1:
                  (§!s§.getItemByName("MovieClip_BestScoreStars") as §[l§).§7!1§("OneStar");
                  break;
               case 2:
                  (§!s§.getItemByName("MovieClip_BestScoreStars") as §[l§).§7!1§("TwoStar");
                  break;
               case 3:
                  (§!s§.getItemByName("MovieClip_BestScoreStars") as §[l§).§7!1§("ThreeStar");
            }
         }
      }
      
      protected function setScoreData() : void
      {
         var _loc1_:int = AngryBirdsFP11.sUserProgress.§&!C§(§'?§.§"t§);
         var _loc2_:int = §[!4§.controller.getScore();
         this.§%a§ = _loc2_ > _loc1_;
         this.setScoreStars(_loc2_,_loc1_);
         this.setMightyEagleFeather();
         var _loc3_:int = §[!4§.controller.getEagleScore();
         var _loc4_:int = AngryBirdsFP11.sUserProgress.§%!E§(§'?§.§"t§);
         var _loc5_:*;
         if(_loc5_ = _loc3_ > _loc4_)
         {
            _loc4_ = _loc3_;
            AngryBirdsFP11.sUserProgress.§^!,§(§'?§.§"t§,_loc4_);
         }
         var _loc6_:int = AngryBirdsFP11.sUserProgress.§2l§(§'?§.§"t§,_loc2_);
         (§!s§.getItemByName("MovieClip_NewHighScoreBadge") as §[l§).setVisibility(false);
         (§!s§.getItemByName("MovieClip_StarLeft") as §[l§).mClip.gotoAndStop("UnLit");
         (§!s§.getItemByName("MovieClip_StarCenter") as §[l§).mClip.gotoAndStop("UnLit");
         (§!s§.getItemByName("MovieClip_StarRight") as §[l§).mClip.gotoAndStop("UnLit");
      }
      
      protected function onBadgeLanded() : void
      {
         if(this.§%a§)
         {
            §]!2§.playSound("Hiscore_Badge",§!!#§);
            §!s§.setText("New Highscore!","TextField_NewHighScore");
            (§!s§.getItemByName("TextField_NewHighScore") as §5@§).setVisibility(true);
            (§!s§.getItemByName("MovieClip_BestScoreStars") as §[l§).setVisibility(false);
            this.§^0§();
         }
         else
         {
            (§!s§.getItemByName("TextField_BestScore") as §5@§).setVisibility(true);
            (§!s§.getItemByName("MovieClip_BestScoreStars") as §[l§).setVisibility(true);
         }
      }
      
      protected function §^0§() : void
      {
         this.§!3§ = 0;
         this.§%!I§ = 0;
         this.§[k§ = §9m§;
      }
      
      private function §1V§(param1:Number) : void
      {
         (§!s§.getItemByName("Container_LevelEndStripe") as §&M§).x = (§!s§.getItemByName("Container_LevelEndStripe") as §&M§).x - this.§!3§;
         (§!s§.getItemByName("Container_LevelEndStripe") as §&M§).y = (§!s§.getItemByName("Container_LevelEndStripe") as §&M§).y - this.§%!I§;
         if(this.§[k§ > 0)
         {
            this.§!3§ = (Math.random() - 0.5) * (this.§[k§ / §9m§) * 20;
            this.§%!I§ = (Math.random() - 0.5) * (this.§[k§ / §9m§) * 20;
            (§!s§.getItemByName("Container_LevelEndStripe") as §&M§).x = (§!s§.getItemByName("Container_LevelEndStripe") as §&M§).x + this.§!3§;
            (§!s§.getItemByName("Container_LevelEndStripe") as §&M§).y = (§!s§.getItemByName("Container_LevelEndStripe") as §&M§).y + this.§%!I§;
         }
         else
         {
            this.§[k§ = -1;
            this.§[_§();
            this.§!3§ = 0;
            this.§%!I§ = 0;
         }
         this.§[k§ -= param1 / 10;
      }
      
      protected function §[_§() : void
      {
      }
      
      private function §4,§(param1:TimerEvent) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = false;
         var _loc4_:Number = §'?§.§>5§(§'?§.§"t§).§%!=§;
         var _loc5_:Number = §'?§.§>5§(§'?§.§"t§).§]C§;
         if((§!s§.getItemByName("MovieClip_StarLeft") as §[l§).mClip.currentLabel == "UnLit")
         {
            §]!2§.playSound("Hiscore_Count",§5y§,100);
            this.§^K§.delay = 1000;
            this.§32§.assign(§[!4§.controller.getScore());
            _loc6_ = this.§32§.getValue() / _loc4_ * 2;
            if(_loc4_ <= 0)
            {
               _loc6_ = 1;
            }
            this.§5N§ = §'!A§.§5+§.§;h§(this,{"mNewScoreCounter":this.§32§.getValue()},{"mNewScoreCounter":0},_loc6_);
            this.§5N§.onComplete = this.§?!!§;
            this.§5N§.play();
            _loc7_ = this.§!!E§();
            _loc2_ = (§!s§.getItemByName("MovieClip_StarLeft") as §[l§).x + (§!s§.getItemByName("Container_LevelEndStripe") as §&M§).x;
            _loc3_ = (§!s§.getItemByName("MovieClip_StarLeft") as §[l§).y + (§!s§.getItemByName("Container_LevelEndStripe") as §&M§).y;
            this.§0!'§ = new §4!6§(AngryBirdsFP11.screenWidth,AngryBirdsFP11.screenHeight,_loc2_,_loc3_,§4!6§.§3a§,§4!6§.§2!G§,_loc7_);
            §!s§.addChild(this.§0!'§);
            this.§@!0§.push(this.§0!'§);
         }
         else if(this.§32§.getValue() >= _loc5_ && (§!s§.getItemByName("MovieClip_StarCenter") as §[l§).mClip.currentLabel == "UnLit")
         {
            _loc8_ = this.§,!+§();
            _loc2_ = (§!s§.getItemByName("MovieClip_StarCenter") as §[l§).x + (§!s§.getItemByName("Container_LevelEndStripe") as §&M§).x;
            _loc3_ = (§!s§.getItemByName("MovieClip_StarCenter") as §[l§).y + (§!s§.getItemByName("Container_LevelEndStripe") as §&M§).y;
            this.§0!'§ = new §4!6§(AngryBirdsFP11.screenWidth,AngryBirdsFP11.screenHeight,_loc2_,_loc3_,§4!6§.§`!%§,§4!6§.§2!G§,_loc8_);
            §!s§.addChild(this.§0!'§);
            this.§@!0§.push(this.§0!'§);
         }
         else if(this.§32§.getValue() >= _loc4_ && (§!s§.getItemByName("MovieClip_StarRight") as §[l§).mClip.currentLabel == "UnLit")
         {
            this.§>!C§ = true;
            _loc9_ = this.§=!6§();
            _loc2_ = (§!s§.getItemByName("MovieClip_StarRight") as §[l§).x + (§!s§.getItemByName("Container_LevelEndStripe") as §&M§).x;
            _loc3_ = (§!s§.getItemByName("MovieClip_StarRight") as §[l§).y + (§!s§.getItemByName("Container_LevelEndStripe") as §&M§).y;
            this.§0!'§ = new §4!6§(AngryBirdsFP11.screenWidth,AngryBirdsFP11.screenHeight,_loc2_,_loc3_,§4!6§.§]`§,§4!6§.§2!G§,_loc9_);
            §!s§.addChild(this.§0!'§);
            this.§@!0§.push(this.§0!'§);
         }
         else if(!this.§>!6§)
         {
            this.§>!6§ = true;
         }
         else
         {
            this.§^K§.stop();
            if(this.§%a§ && !this.§!x§)
            {
               (§!s§.getItemByName("MovieClip_NewHighScoreBadge") as §[l§).setVisibility(true);
            }
            else
            {
               (§!s§.getItemByName("MovieClip_NewHighScoreBadge") as §[l§).setVisibility(false);
            }
            this.§-U§ = §'!A§.§5+§.§;h§((§!s§.getItemByName("MovieClip_NewHighScoreBadge") as §[l§).mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":7,
               "scaleY":7
            },0.1);
            this.§-U§.onComplete = this.onBadgeLanded;
            this.§-U§.play();
         }
         ++this.§"!,§;
      }
      
      protected function §!!E§() : Boolean
      {
         §]!2§.playSound("Hiscore_Star_Splash1",§!!#§);
         (§!s§.getItemByName("MovieClip_StarLeft") as §[l§).mClip.gotoAndStop("Lit");
         return false;
      }
      
      protected function §,!+§() : Boolean
      {
         §]!2§.playSound("Hiscore_Star_Splash2",§!!#§);
         (§!s§.getItemByName("MovieClip_StarCenter") as §[l§).mClip.gotoAndStop("Lit");
         return false;
      }
      
      protected function §=!6§() : Boolean
      {
         §]!2§.playSound("Hiscore_Star_Splash3",§!!#§);
         (§!s§.getItemByName("MovieClip_StarRight") as §[l§).mClip.gotoAndStop("Lit");
         return false;
      }
      
      private function §?!!§() : void
      {
         §]!2§.§<!7§(§5y§);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:§4!6§ = null;
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §9Y§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         §!s§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScore");
         §!s§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScoreEffects");
         for each(_loc3_ in this.§@!0§)
         {
            _loc3_.update(param1);
         }
         if(this.§[k§ > -1)
         {
            this.§1V§(param1);
         }
         if(mNextState.length > 0)
         {
            §[!4§.§continue§.clearLevel();
            return §9Y§.STATE_STATUS_COMPLETED;
         }
         return §9Y§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§6%§();
         this.§[k§ = 0;
         this.mNewScoreCounter = 0;
         if(this.§5N§)
         {
            this.§5N§.stop();
            this.§5N§ = null;
         }
         if(this.§-U§)
         {
            this.§-U§.stop();
            this.§-U§ = null;
         }
         §]!2§.§<!7§(§5y§);
         this.setButtonStates(§=U§.COMPONENT_STATE_ACTIVE_DEFAULT);
         §!s§.setText("0","TextField_LevelEndScore");
         §!s§.setText("0","TextField_LevelEndScoreEffects");
         if(this.§22§)
         {
            if(§!s§.movieClip.contains(this.§22§))
            {
               §!s§.movieClip.removeChild(this.§22§);
            }
            this.§22§.clean();
            this.§22§ = null;
         }
      }
      
      protected function setButtonStates(param1:String) : void
      {
         (§!s§.getItemByName("Button_Menu") as §2H§).setComponentVisualState(param1);
         (§!s§.getItemByName("Button_Replay") as §2H§).setComponentVisualState(param1);
         (§!s§.getItemByName("Button_NextLevel") as §2H§).setComponentVisualState(param1);
         (§!s§.getItemByName("Button_CutScene") as §2H§).setComponentVisualState(param1);
      }
      
      private function §6%§() : void
      {
         var splash:§4!6§ = null;
         if(this.§^K§)
         {
            this.§^K§.stop();
            try
            {
               this.§^K§.removeEventListener(TimerEvent.TIMER,this.§4,§);
            }
            catch(e:Error)
            {
            }
         }
         for each(splash in this.§@!0§)
         {
            if(§!s§.contains(splash))
            {
               §!s§.removeChild(splash);
            }
            splash.clean();
         }
         this.§@!0§ = new Vector.<§4!6§>();
         this.hideBestScoreTexts();
      }
      
      protected function hideBestScoreTexts() : void
      {
         (§!s§.getItemByName("TextField_BestScore") as §5@§).setVisibility(false);
         (§!s§.getItemByName("MovieClip_BestScoreStars") as §[l§).setVisibility(false);
         (§!s§.getItemByName("TextField_NewHighScore") as §5@§).setVisibility(false);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      protected function §<!4§() : void
      {
         §9$§.§`a§();
         mNextState = this.§0!;§();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§<!?§) : void
      {
         var _loc4_:String = null;
         switch(param2)
         {
            case "NEXT_LEVEL":
               this.§<!4§();
               break;
            case "REPLAY":
               §9$§.§9g§();
               mNextState = this.§4!'§();
               break;
            case "WATCH_REPLAY":
               §9$§.§9g§();
               mNextState = this.§4!'§();
               if(_loc4_ = §[!4§.§continue§.§ !§())
               {
                  §[!4§.§continue§.§+a§(_loc4_);
               }
               break;
            case "MENU":
               §]!2§.§^F§();
               mNextState = this.§30§();
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§6C§.§`d§();
         }
      }
      
      protected function §4!'§() : String
      {
         return §9$§.§]! §;
      }
      
      protected function §0!;§() : String
      {
         return StateCutScene.§]! §;
      }
      
      public function §30§() : String
      {
         return §0!O§.§]! §;
      }
   }
}
