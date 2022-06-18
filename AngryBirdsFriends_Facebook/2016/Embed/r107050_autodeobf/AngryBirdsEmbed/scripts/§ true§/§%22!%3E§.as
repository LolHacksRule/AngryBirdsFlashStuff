package § true§
{
   import §"!B§.§"t§;
   import §"!B§.§+!9§;
   import §"!B§.§58§;
   import §"!B§.§6!"§;
   import §+[§.§%G§;
   import §3y§.§"!G§;
   import §<!A§.§,!?§;
   import §>!O§.§[+§;
   import §?j§.§`R§;
   import §@a§.§'p§;
   import §@a§.§8H§;
   import §]!=§.§&P§;
   import §]!=§.§;!6§;
   import §`! §.§!!K§;
   import §`! §.§+T§;
   import §`!1§.§'a§;
   import §`!1§.§-!&§;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §"!>§ extends §,!?§
   {
      
      public static const §`W§:String = "LevelEndStateRio";
      
      public static const §,S§:Number = 30;
      
      protected static const §&I§:String = "ScoreLoopCountChannel";
      
      protected static const §@!C§:String = "EndScreenEffectChannel";
       
      
      private var §36§:§'a§;
      
      private var §+#§:Number;
      
      private var §5L§:Number = 0.0;
      
      private var §=z§:Number = 0.0;
      
      private var §`H§:Boolean = false;
      
      private var §?0§:Timer;
      
      private var § 5§:§!!K§;
      
      protected var §3-§:Array;
      
      protected var §8r§:§+T§;
      
      protected var §@I§:Vector.<§+T§>;
      
      public var mNewScoreCounter:int;
      
      private var §="§:int;
      
      private var §[Y§:Boolean;
      
      protected var §#-§:Boolean;
      
      private var §?X§:§"!G§;
      
      protected var §0T§:Boolean;
      
      private var §>a§:§'a§;
      
      protected var §!n§:Boolean;
      
      protected var §%!7§:int;
      
      public function §"!>§(param1:Boolean = false, param2:String = "LevelEndStateRio")
      {
         this.§3-§ = [];
         this.§?X§ = new §"!G§();
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §while§ = new §8H§(this);
         §while§.init(this.getViewXML());
         this.initButtonDefaultPositions();
         this.§@I§ = new Vector.<§+T§>();
         §%G§.§>,§(§&I§,1,1);
         §%G§.§>,§(§@!C§,3,1);
      }
      
      protected function initButtonDefaultPositions() : void
      {
         this.§3-§.push((§while§.getItemByName("Button_Menu") as §+!9§).x);
         this.§3-§.push((§while§.getItemByName("Button_Replay") as §+!9§).x);
         this.§3-§.push((§while§.getItemByName("Button_NextLevel") as §+!9§).x);
         this.§3-§.push((§while§.getItemByName("Button_CutScene") as §+!9§).x);
      }
      
      protected function getViewXML() : XML
      {
         return §'p§.§ ,§.Views.View_LevelEndRio[0];
      }
      
      protected function showButtonsCutScene() : void
      {
         if(!AngryBirdsFP11.sUserProgress.isLevelPassed(§`R§.§7S§))
         {
            (§while§.getItemByName("Button_Menu") as §+!9§).setVisibility(false);
            (§while§.getItemByName("Button_Replay") as §+!9§).setVisibility(true);
            (§while§.getItemByName("Button_NextLevel") as §+!9§).setVisibility(false);
            (§while§.getItemByName("Button_CutScene") as §+!9§).setVisibility(true);
            (§while§.getItemByName("Button_Replay") as §+!9§).x = this.§3-§[0] + Math.abs(this.§3-§[1] - this.§3-§[0]) / 2;
            (§while§.getItemByName("Button_CutScene") as §+!9§).x = this.§3-§[1] + Math.abs(this.§3-§[2] - this.§3-§[1]) / 2;
         }
         else
         {
            (§while§.getItemByName("Button_Menu") as §+!9§).setVisibility(true);
            (§while§.getItemByName("Button_Replay") as §+!9§).setVisibility(true);
            (§while§.getItemByName("Button_NextLevel") as §+!9§).setVisibility(false);
            (§while§.getItemByName("Button_CutScene") as §+!9§).setVisibility(true);
            (§while§.getItemByName("Button_Menu") as §+!9§).x = this.§3-§[0];
            (§while§.getItemByName("Button_Replay") as §+!9§).x = this.§3-§[1];
            (§while§.getItemByName("Button_CutScene") as §+!9§).x = this.§3-§[2];
         }
      }
      
      protected function showButtonsNormal() : void
      {
         (§while§.getItemByName("Button_Menu") as §+!9§).setVisibility(true);
         (§while§.getItemByName("Button_Replay") as §+!9§).setVisibility(true);
         (§while§.getItemByName("Button_CutScene") as §+!9§).setVisibility(false);
         if(§`R§.§ 1§())
         {
            (§while§.getItemByName("Button_NextLevel") as §+!9§).setVisibility(true);
            (§while§.getItemByName("Button_Menu") as §+!9§).x = this.§3-§[0];
            (§while§.getItemByName("Button_Replay") as §+!9§).x = this.§3-§[1];
            (§while§.getItemByName("Button_NextLevel") as §+!9§).x = this.§3-§[2];
         }
         else
         {
            (§while§.getItemByName("Button_NextLevel") as §+!9§).setVisibility(false);
            (§while§.getItemByName("Button_Menu") as §+!9§).x = this.§3-§[0] + Math.abs(this.§3-§[1] - this.§3-§[0]) / 2;
            (§while§.getItemByName("Button_Replay") as §+!9§).x = this.§3-§[1] + Math.abs(this.§3-§[2] - this.§3-§[1]) / 2;
         }
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§!n§ = false;
         §[+§.pause();
         this.§ 5§ = new §!!K§(0,0,0,0);
         §while§.movieClip.addChildAt(this.§ 5§,§while§.movieClip.numChildren - 1);
         if(§`R§.§5!B§())
         {
            this.showButtonsCutScene();
         }
         else
         {
            this.showButtonsNormal();
         }
         this.mNewScoreCounter = 0;
         this.§[Y§ = false;
         §%G§.§48§(this.§4j§);
         this.§ 5§.§3h§(0.7);
         this.§5L§ = 0;
         this.§=z§ = 0;
         this.§"r§();
      }
      
      protected function get §4j§() : String
      {
         return "LevelCompletedTheme1";
      }
      
      private function §"r§() : void
      {
         this.§#-§ = false;
         this.setScoreData();
         this.§?0§ = new Timer(500);
         this.§="§ = 0;
         this.§?0§.addEventListener(TimerEvent.TIMER,this.§`f§);
         this.§?0§.start();
      }
      
      protected function setMightyEagleFeather() : void
      {
         if(AngryBirdsFP11.sUserProgress.§!!#§(§`R§.§7S§) == 100)
         {
            (§while§.getItemByName("MovieClip_ResultMEFeather") as §"t§).mClip.gotoAndStop("On");
         }
         else
         {
            (§while§.getItemByName("MovieClip_ResultMEFeather") as §"t§).mClip.gotoAndStop("Off");
         }
      }
      
      protected function setScoreStars(param1:int, param2:int) : void
      {
         if(this.§0T§)
         {
            param2 = param1;
            AngryBirdsFP11.sUserProgress.§^g§(§`R§.§7S§,param2);
            §while§.setText("New Highscore!","TextField_BestScore");
         }
         else
         {
            §while§.setText("Best " + param2.toString(),"TextField_BestScore");
            this.§%!7§ = §`R§.§-'§(§`R§.§7S§,param2);
            switch(this.§%!7§)
            {
               case 1:
                  (§while§.getItemByName("MovieClip_BestScoreStars") as §"t§).§-A§("OneStar");
                  break;
               case 2:
                  (§while§.getItemByName("MovieClip_BestScoreStars") as §"t§).§-A§("TwoStar");
                  break;
               case 3:
                  (§while§.getItemByName("MovieClip_BestScoreStars") as §"t§).§-A§("ThreeStar");
            }
         }
      }
      
      protected function setScoreData() : void
      {
         var _loc1_:int = AngryBirdsFP11.sUserProgress.§[!M§(§`R§.§7S§);
         var _loc2_:int = §[+§.controller.getScore();
         this.§0T§ = _loc2_ > _loc1_;
         this.setScoreStars(_loc2_,_loc1_);
         this.setMightyEagleFeather();
         var _loc3_:int = §[+§.controller.getEagleScore();
         var _loc4_:int = AngryBirdsFP11.sUserProgress.§!!#§(§`R§.§7S§);
         var _loc5_:*;
         if(_loc5_ = _loc3_ > _loc4_)
         {
            _loc4_ = _loc3_;
            AngryBirdsFP11.sUserProgress.§[x§(§`R§.§7S§,_loc4_);
         }
         var _loc6_:int = AngryBirdsFP11.sUserProgress.§3!3§(§`R§.§7S§,_loc2_);
         (§while§.getItemByName("MovieClip_NewHighScoreBadge") as §"t§).setVisibility(false);
         (§while§.getItemByName("MovieClip_StarLeft") as §"t§).mClip.gotoAndStop("UnLit");
         (§while§.getItemByName("MovieClip_StarCenter") as §"t§).mClip.gotoAndStop("UnLit");
         (§while§.getItemByName("MovieClip_StarRight") as §"t§).mClip.gotoAndStop("UnLit");
      }
      
      protected function onBadgeLanded() : void
      {
         if(this.§0T§)
         {
            §%G§.§48§("Hiscore_Badge",§@!C§);
            §while§.setText("New Highscore!","TextField_NewHighScore");
            (§while§.getItemByName("TextField_NewHighScore") as §6!"§).setVisibility(true);
            (§while§.getItemByName("MovieClip_BestScoreStars") as §"t§).setVisibility(false);
            this.§!!5§();
         }
         else
         {
            (§while§.getItemByName("TextField_BestScore") as §6!"§).setVisibility(true);
            (§while§.getItemByName("MovieClip_BestScoreStars") as §"t§).setVisibility(true);
         }
      }
      
      protected function §!!5§() : void
      {
         this.§5L§ = 0;
         this.§=z§ = 0;
         this.§+#§ = §,S§;
      }
      
      private function §0!C§(param1:Number) : void
      {
         (§while§.getItemByName("Container_LevelEndStripe") as §58§).x = (§while§.getItemByName("Container_LevelEndStripe") as §58§).x - this.§5L§;
         (§while§.getItemByName("Container_LevelEndStripe") as §58§).y = (§while§.getItemByName("Container_LevelEndStripe") as §58§).y - this.§=z§;
         if(this.§+#§ > 0)
         {
            this.§5L§ = (Math.random() - 0.5) * (this.§+#§ / §,S§) * 20;
            this.§=z§ = (Math.random() - 0.5) * (this.§+#§ / §,S§) * 20;
            (§while§.getItemByName("Container_LevelEndStripe") as §58§).x = (§while§.getItemByName("Container_LevelEndStripe") as §58§).x + this.§5L§;
            (§while§.getItemByName("Container_LevelEndStripe") as §58§).y = (§while§.getItemByName("Container_LevelEndStripe") as §58§).y + this.§=z§;
         }
         else
         {
            this.§+#§ = -1;
            this.§#'§();
            this.§5L§ = 0;
            this.§=z§ = 0;
         }
         this.§+#§ -= param1 / 10;
      }
      
      protected function §#'§() : void
      {
      }
      
      private function §`f§(param1:TimerEvent) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = false;
         var _loc4_:Number = §`R§.§7!E§(§`R§.§7S§).§ get§;
         var _loc5_:Number = §`R§.§7!E§(§`R§.§7S§).§[p§;
         if((§while§.getItemByName("MovieClip_StarLeft") as §"t§).mClip.currentLabel == "UnLit")
         {
            §%G§.§48§("Hiscore_Count",§&I§,100);
            this.§?0§.delay = 1000;
            this.§?X§.assign(§[+§.controller.getScore());
            _loc6_ = this.§?X§.getValue() / _loc4_ * 2;
            if(_loc4_ <= 0)
            {
               _loc6_ = 1;
            }
            this.§>a§ = §-!&§.§;R§.§2w§(this,{"mNewScoreCounter":this.§?X§.getValue()},{"mNewScoreCounter":0},_loc6_);
            this.§>a§.onComplete = this.§4!5§;
            this.§>a§.play();
            _loc7_ = this.§[1§();
            _loc2_ = (§while§.getItemByName("MovieClip_StarLeft") as §"t§).x + (§while§.getItemByName("Container_LevelEndStripe") as §58§).x;
            _loc3_ = (§while§.getItemByName("MovieClip_StarLeft") as §"t§).y + (§while§.getItemByName("Container_LevelEndStripe") as §58§).y;
            this.§8r§ = new §+T§(AngryBirdsFP11.screenWidth,AngryBirdsFP11.screenHeight,_loc2_,_loc3_,§+T§.§64§,§+T§.§,5§,_loc7_);
            §while§.addChild(this.§8r§);
            this.§@I§.push(this.§8r§);
         }
         else if(this.§?X§.getValue() >= _loc5_ && (§while§.getItemByName("MovieClip_StarCenter") as §"t§).mClip.currentLabel == "UnLit")
         {
            _loc8_ = this.§"N§();
            _loc2_ = (§while§.getItemByName("MovieClip_StarCenter") as §"t§).x + (§while§.getItemByName("Container_LevelEndStripe") as §58§).x;
            _loc3_ = (§while§.getItemByName("MovieClip_StarCenter") as §"t§).y + (§while§.getItemByName("Container_LevelEndStripe") as §58§).y;
            this.§8r§ = new §+T§(AngryBirdsFP11.screenWidth,AngryBirdsFP11.screenHeight,_loc2_,_loc3_,§+T§.§`e§,§+T§.§,5§,_loc8_);
            §while§.addChild(this.§8r§);
            this.§@I§.push(this.§8r§);
         }
         else if(this.§?X§.getValue() >= _loc4_ && (§while§.getItemByName("MovieClip_StarRight") as §"t§).mClip.currentLabel == "UnLit")
         {
            this.§!n§ = true;
            _loc9_ = this.§8j§();
            _loc2_ = (§while§.getItemByName("MovieClip_StarRight") as §"t§).x + (§while§.getItemByName("Container_LevelEndStripe") as §58§).x;
            _loc3_ = (§while§.getItemByName("MovieClip_StarRight") as §"t§).y + (§while§.getItemByName("Container_LevelEndStripe") as §58§).y;
            this.§8r§ = new §+T§(AngryBirdsFP11.screenWidth,AngryBirdsFP11.screenHeight,_loc2_,_loc3_,§+T§.§4K§,§+T§.§,5§,_loc9_);
            §while§.addChild(this.§8r§);
            this.§@I§.push(this.§8r§);
         }
         else if(!this.§[Y§)
         {
            this.§[Y§ = true;
         }
         else
         {
            this.§?0§.stop();
            if(this.§0T§ && !this.§#-§)
            {
               (§while§.getItemByName("MovieClip_NewHighScoreBadge") as §"t§).setVisibility(true);
            }
            else
            {
               (§while§.getItemByName("MovieClip_NewHighScoreBadge") as §"t§).setVisibility(false);
            }
            this.§36§ = §-!&§.§;R§.§2w§((§while§.getItemByName("MovieClip_NewHighScoreBadge") as §"t§).mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":7,
               "scaleY":7
            },0.1);
            this.§36§.onComplete = this.onBadgeLanded;
            this.§36§.play();
         }
         ++this.§="§;
      }
      
      protected function §[1§() : Boolean
      {
         §%G§.§48§("Hiscore_Star_Splash1",§@!C§);
         (§while§.getItemByName("MovieClip_StarLeft") as §"t§).mClip.gotoAndStop("Lit");
         return false;
      }
      
      protected function §"N§() : Boolean
      {
         §%G§.§48§("Hiscore_Star_Splash2",§@!C§);
         (§while§.getItemByName("MovieClip_StarCenter") as §"t§).mClip.gotoAndStop("Lit");
         return false;
      }
      
      protected function §8j§() : Boolean
      {
         §%G§.§48§("Hiscore_Star_Splash3",§@!C§);
         (§while§.getItemByName("MovieClip_StarRight") as §"t§).mClip.gotoAndStop("Lit");
         return false;
      }
      
      private function §4!5§() : void
      {
         §%G§.§8e§(§&I§);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:§+T§ = null;
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §,!?§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         §while§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScore");
         §while§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScoreEffects");
         for each(_loc3_ in this.§@I§)
         {
            _loc3_.update(param1);
         }
         if(this.§+#§ > -1)
         {
            this.§0!C§(param1);
         }
         if(mNextState.length > 0)
         {
            §[+§.§,!&§.clearLevel();
            return §,!?§.STATE_STATUS_COMPLETED;
         }
         return §,!?§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§3!H§();
         this.§+#§ = 0;
         this.mNewScoreCounter = 0;
         if(this.§>a§)
         {
            this.§>a§.stop();
            this.§>a§ = null;
         }
         if(this.§36§)
         {
            this.§36§.stop();
            this.§36§ = null;
         }
         §%G§.§8e§(§&I§);
         this.setButtonStates(§&P§.COMPONENT_STATE_ACTIVE_DEFAULT);
         §while§.setText("0","TextField_LevelEndScore");
         §while§.setText("0","TextField_LevelEndScoreEffects");
         if(this.§ 5§)
         {
            if(§while§.movieClip.contains(this.§ 5§))
            {
               §while§.movieClip.removeChild(this.§ 5§);
            }
            this.§ 5§.clean();
            this.§ 5§ = null;
         }
      }
      
      protected function setButtonStates(param1:String) : void
      {
         (§while§.getItemByName("Button_Menu") as §+!9§).setComponentVisualState(param1);
         (§while§.getItemByName("Button_Replay") as §+!9§).setComponentVisualState(param1);
         (§while§.getItemByName("Button_NextLevel") as §+!9§).setComponentVisualState(param1);
         (§while§.getItemByName("Button_CutScene") as §+!9§).setComponentVisualState(param1);
      }
      
      private function §3!H§() : void
      {
         var splash:§+T§ = null;
         if(this.§?0§)
         {
            this.§?0§.stop();
            try
            {
               this.§?0§.removeEventListener(TimerEvent.TIMER,this.§`f§);
            }
            catch(e:Error)
            {
            }
         }
         for each(splash in this.§@I§)
         {
            if(§while§.contains(splash))
            {
               §while§.removeChild(splash);
            }
            splash.clean();
         }
         this.§@I§ = new Vector.<§+T§>();
         this.hideBestScoreTexts();
      }
      
      protected function hideBestScoreTexts() : void
      {
         (§while§.getItemByName("TextField_BestScore") as §6!"§).setVisibility(false);
         (§while§.getItemByName("MovieClip_BestScoreStars") as §"t§).setVisibility(false);
         (§while§.getItemByName("TextField_NewHighScore") as §6!"§).setVisibility(false);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      protected function §0,§() : void
      {
         §case §.§-!5§();
         mNextState = this.§5p§();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§;!6§) : void
      {
         var _loc4_:String = null;
         switch(param2)
         {
            case "NEXT_LEVEL":
               this.§0,§();
               break;
            case "REPLAY":
               §case §.§"n§();
               mNextState = this.§<J§();
               break;
            case "WATCH_REPLAY":
               §case §.§"n§();
               mNextState = this.§<J§();
               if(_loc4_ = §[+§.§,!&§.§1#§())
               {
                  §[+§.§,!&§.§34§(_loc4_);
               }
               break;
            case "MENU":
               §%G§.§^R§();
               mNextState = this.§7!>§();
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§6Z§.§9#§();
         }
      }
      
      protected function §<J§() : String
      {
         return §case §.§`W§;
      }
      
      protected function §5p§() : String
      {
         return StateCutScene.§`W§;
      }
      
      public function §7!>§() : String
      {
         return §&!F§.§`W§;
      }
   }
}
