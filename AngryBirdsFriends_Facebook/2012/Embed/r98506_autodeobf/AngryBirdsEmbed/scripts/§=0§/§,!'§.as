package §=0§
{
   import §+n§.§3P§;
   import §+n§.§^!%§;
   import §1G§.§`U§;
   import §3!A§.§9!0§;
   import §3'§.§5I§;
   import §3'§.§6k§;
   import §3'§.§8I§;
   import §3'§.§?-§;
   import §74§.§%N§;
   import §74§.§1!C§;
   import §8!G§.§-Z§;
   import §;=§.§7I§;
   import §;=§.§>!2§;
   import §>K§.§%H§;
   import §[R§.§3!@§;
   import §[R§.§5h§;
   import §`t§.§^?§;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §,!'§ extends §`U§
   {
      
      public static const §?1§:String = "LevelEndStateRio";
      
      public static const §>#§:Number = 30;
      
      protected static const §?K§:String = "ScoreLoopCountChannel";
      
      protected static const § true§:String = "EndScreenEffectChannel";
       
      
      private var § !5§:§7I§;
      
      private var §3!H§:Number;
      
      private var §>9§:Number = 0.0;
      
      private var §]!G§:Number = 0.0;
      
      private var §`!+§:Boolean = false;
      
      private var §9!F§:Timer;
      
      private var §-t§:§1!C§;
      
      protected var §-!#§:Array;
      
      protected var §-$§:§%N§;
      
      protected var §`!-§:Vector.<§%N§>;
      
      public var mNewScoreCounter:int;
      
      private var §[+§:int;
      
      private var §!D§:Boolean;
      
      protected var §"m§:Boolean;
      
      private var §'x§:§%H§;
      
      protected var §,v§:Boolean;
      
      private var §!A§:§7I§;
      
      protected var §>f§:Boolean;
      
      protected var §=!4§:int;
      
      public function §,!'§(param1:Boolean = false, param2:String = "LevelEndStateRio")
      {
         this.§-!#§ = [];
         this.§'x§ = new §%H§();
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §4G§ = new §5h§(this);
         §4G§.init(this.getViewXML());
         this.initButtonDefaultPositions();
         this.§`!-§ = new Vector.<§%N§>();
         §9!0§.§;U§(§?K§,1,1);
         §9!0§.§;U§(§ true§,3,1);
      }
      
      protected function initButtonDefaultPositions() : void
      {
         this.§-!#§.push((§4G§.getItemByName("Button_Menu") as §5I§).x);
         this.§-!#§.push((§4G§.getItemByName("Button_Replay") as §5I§).x);
         this.§-!#§.push((§4G§.getItemByName("Button_NextLevel") as §5I§).x);
         this.§-!#§.push((§4G§.getItemByName("Button_CutScene") as §5I§).x);
      }
      
      protected function getViewXML() : XML
      {
         return §3!@§.§`Z§.Views.View_LevelEndRio[0];
      }
      
      protected function showButtonsCutScene() : void
      {
         if(!AngryBirdsFP11.sUserProgress.isLevelPassed(§-Z§.§%s§))
         {
            (§4G§.getItemByName("Button_Menu") as §5I§).setVisibility(false);
            (§4G§.getItemByName("Button_Replay") as §5I§).setVisibility(true);
            (§4G§.getItemByName("Button_NextLevel") as §5I§).setVisibility(false);
            (§4G§.getItemByName("Button_CutScene") as §5I§).setVisibility(true);
            (§4G§.getItemByName("Button_Replay") as §5I§).x = this.§-!#§[0] + Math.abs(this.§-!#§[1] - this.§-!#§[0]) / 2;
            (§4G§.getItemByName("Button_CutScene") as §5I§).x = this.§-!#§[1] + Math.abs(this.§-!#§[2] - this.§-!#§[1]) / 2;
         }
         else
         {
            (§4G§.getItemByName("Button_Menu") as §5I§).setVisibility(true);
            (§4G§.getItemByName("Button_Replay") as §5I§).setVisibility(true);
            (§4G§.getItemByName("Button_NextLevel") as §5I§).setVisibility(false);
            (§4G§.getItemByName("Button_CutScene") as §5I§).setVisibility(true);
            (§4G§.getItemByName("Button_Menu") as §5I§).x = this.§-!#§[0];
            (§4G§.getItemByName("Button_Replay") as §5I§).x = this.§-!#§[1];
            (§4G§.getItemByName("Button_CutScene") as §5I§).x = this.§-!#§[2];
         }
      }
      
      protected function showButtonsNormal() : void
      {
         (§4G§.getItemByName("Button_Menu") as §5I§).setVisibility(true);
         (§4G§.getItemByName("Button_Replay") as §5I§).setVisibility(true);
         (§4G§.getItemByName("Button_CutScene") as §5I§).setVisibility(false);
         if(§-Z§.§'Z§())
         {
            (§4G§.getItemByName("Button_NextLevel") as §5I§).setVisibility(true);
            (§4G§.getItemByName("Button_Menu") as §5I§).x = this.§-!#§[0];
            (§4G§.getItemByName("Button_Replay") as §5I§).x = this.§-!#§[1];
            (§4G§.getItemByName("Button_NextLevel") as §5I§).x = this.§-!#§[2];
         }
         else
         {
            (§4G§.getItemByName("Button_NextLevel") as §5I§).setVisibility(false);
            (§4G§.getItemByName("Button_Menu") as §5I§).x = this.§-!#§[0] + Math.abs(this.§-!#§[1] - this.§-!#§[0]) / 2;
            (§4G§.getItemByName("Button_Replay") as §5I§).x = this.§-!#§[1] + Math.abs(this.§-!#§[2] - this.§-!#§[1]) / 2;
         }
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§>f§ = false;
         §^?§.pause();
         this.§-t§ = new §1!C§(0,0,0,0);
         §4G§.movieClip.addChildAt(this.§-t§,§4G§.movieClip.numChildren - 1);
         if(§-Z§.§0L§())
         {
            this.showButtonsCutScene();
         }
         else
         {
            this.showButtonsNormal();
         }
         this.mNewScoreCounter = 0;
         this.§!D§ = false;
         §9!0§.§-! §("LevelCompletedTheme1");
         this.§-t§.§>w§(0.7);
         this.§>9§ = 0;
         this.§]!G§ = 0;
         this.§9_§();
      }
      
      private function §9_§() : void
      {
         this.§"m§ = false;
         this.setScoreData();
         this.§9!F§ = new Timer(500);
         this.§[+§ = 0;
         this.§9!F§.addEventListener(TimerEvent.TIMER,this.§-!8§);
         this.§9!F§.start();
      }
      
      protected function setMightyEagleFeather() : void
      {
         if(AngryBirdsFP11.sUserProgress.§"w§(§-Z§.§%s§) == 100)
         {
            (§4G§.getItemByName("MovieClip_ResultMEFeather") as §?-§).mClip.gotoAndStop("On");
         }
         else
         {
            (§4G§.getItemByName("MovieClip_ResultMEFeather") as §?-§).mClip.gotoAndStop("Off");
         }
      }
      
      protected function setScoreStars(param1:int, param2:int) : void
      {
         if(this.§,v§)
         {
            param2 = param1;
            AngryBirdsFP11.sUserProgress.§23§(§-Z§.§%s§,param2);
            §4G§.setText("New Highscore!","TextField_BestScore");
         }
         else
         {
            §4G§.setText("Best " + param2.toString(),"TextField_BestScore");
            this.§=!4§ = §-Z§.§4!=§(§-Z§.§%s§,param2);
            switch(this.§=!4§)
            {
               case 1:
                  (§4G§.getItemByName("MovieClip_BestScoreStars") as §?-§).§=!E§("OneStar");
                  break;
               case 2:
                  (§4G§.getItemByName("MovieClip_BestScoreStars") as §?-§).§=!E§("TwoStar");
                  break;
               case 3:
                  (§4G§.getItemByName("MovieClip_BestScoreStars") as §?-§).§=!E§("ThreeStar");
            }
         }
      }
      
      protected function setScoreData() : void
      {
         var _loc1_:int = AngryBirdsFP11.sUserProgress.§>P§(§-Z§.§%s§);
         var _loc2_:int = §^?§.controller.getScore();
         this.§,v§ = _loc2_ > _loc1_;
         this.setScoreStars(_loc2_,_loc1_);
         this.setMightyEagleFeather();
         var _loc3_:int = §^?§.controller.getEagleScore();
         var _loc4_:int = AngryBirdsFP11.sUserProgress.§"w§(§-Z§.§%s§);
         var _loc5_:*;
         if(_loc5_ = _loc3_ > _loc4_)
         {
            _loc4_ = _loc3_;
            AngryBirdsFP11.sUserProgress.§7+§(§-Z§.§%s§,_loc4_);
         }
         var _loc6_:int = AngryBirdsFP11.sUserProgress.§=!=§(§-Z§.§%s§,_loc2_);
         (§4G§.getItemByName("MovieClip_NewHighScoreBadge") as §?-§).setVisibility(false);
         (§4G§.getItemByName("MovieClip_StarLeft") as §?-§).mClip.gotoAndStop("UnLit");
         (§4G§.getItemByName("MovieClip_StarCenter") as §?-§).mClip.gotoAndStop("UnLit");
         (§4G§.getItemByName("MovieClip_StarRight") as §?-§).mClip.gotoAndStop("UnLit");
      }
      
      protected function onBadgeLanded() : void
      {
         if(this.§,v§)
         {
            §9!0§.§-! §("Hiscore_Badge",§ true§);
            §4G§.setText("New Highscore!","TextField_NewHighScore");
            (§4G§.getItemByName("TextField_NewHighScore") as §6k§).setVisibility(true);
            (§4G§.getItemByName("MovieClip_BestScoreStars") as §?-§).setVisibility(false);
            this.§`!0§();
         }
         else
         {
            (§4G§.getItemByName("TextField_BestScore") as §6k§).setVisibility(true);
            (§4G§.getItemByName("MovieClip_BestScoreStars") as §?-§).setVisibility(true);
         }
      }
      
      protected function §`!0§() : void
      {
         this.§>9§ = 0;
         this.§]!G§ = 0;
         this.§3!H§ = §>#§;
      }
      
      private function § !F§(param1:Number) : void
      {
         (§4G§.getItemByName("Container_LevelEndStripe") as §8I§).x = (§4G§.getItemByName("Container_LevelEndStripe") as §8I§).x - this.§>9§;
         (§4G§.getItemByName("Container_LevelEndStripe") as §8I§).y = (§4G§.getItemByName("Container_LevelEndStripe") as §8I§).y - this.§]!G§;
         if(this.§3!H§ > 0)
         {
            this.§>9§ = (Math.random() - 0.5) * (this.§3!H§ / §>#§) * 20;
            this.§]!G§ = (Math.random() - 0.5) * (this.§3!H§ / §>#§) * 20;
            (§4G§.getItemByName("Container_LevelEndStripe") as §8I§).x = (§4G§.getItemByName("Container_LevelEndStripe") as §8I§).x + this.§>9§;
            (§4G§.getItemByName("Container_LevelEndStripe") as §8I§).y = (§4G§.getItemByName("Container_LevelEndStripe") as §8I§).y + this.§]!G§;
         }
         else
         {
            this.§3!H§ = -1;
            this.§=!"§();
            this.§>9§ = 0;
            this.§]!G§ = 0;
         }
         this.§3!H§ -= param1 / 10;
      }
      
      protected function §=!"§() : void
      {
      }
      
      private function §-!8§(param1:TimerEvent) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc4_:Number = §-Z§.§4! §(§-Z§.§%s§).§@K§;
         var _loc5_:Number = §-Z§.§4! §(§-Z§.§%s§).§""§;
         if((§4G§.getItemByName("MovieClip_StarLeft") as §?-§).mClip.currentLabel == "UnLit")
         {
            §9!0§.§-! §("Hiscore_Count",§?K§,100);
            §9!0§.§-! §("Hiscore_Star_Splash1",§ true§);
            this.§9!F§.delay = 1000;
            this.§'x§.assign(§^?§.controller.getScore());
            _loc6_ = this.§'x§.getValue() / _loc4_ * 2;
            if(_loc4_ <= 0)
            {
               _loc6_ = 1;
            }
            this.§!A§ = §>!2§.§72§.§-z§(this,{"mNewScoreCounter":this.§'x§.getValue()},{"mNewScoreCounter":0},_loc6_);
            this.§!A§.onComplete = this.§]!,§;
            this.§!A§.play();
            (§4G§.getItemByName("MovieClip_StarLeft") as §?-§).mClip.gotoAndStop("Lit");
            _loc2_ = (§4G§.getItemByName("MovieClip_StarLeft") as §?-§).x + (§4G§.getItemByName("Container_LevelEndStripe") as §8I§).x;
            _loc3_ = (§4G§.getItemByName("MovieClip_StarLeft") as §?-§).y + (§4G§.getItemByName("Container_LevelEndStripe") as §8I§).y;
            this.§-$§ = new §%N§(AngryBirdsFP11.screenWidth,AngryBirdsFP11.screenHeight,_loc2_,_loc3_,§%N§.§%J§);
            §4G§.addChild(this.§-$§);
            this.§`!-§.push(this.§-$§);
         }
         else if(this.§'x§.getValue() >= _loc5_ && (§4G§.getItemByName("MovieClip_StarCenter") as §?-§).mClip.currentLabel == "UnLit")
         {
            §9!0§.§-! §("Hiscore_Star_Splash2",§ true§);
            (§4G§.getItemByName("MovieClip_StarCenter") as §?-§).mClip.gotoAndStop("Lit");
            _loc2_ = (§4G§.getItemByName("MovieClip_StarCenter") as §?-§).x + (§4G§.getItemByName("Container_LevelEndStripe") as §8I§).x;
            _loc3_ = (§4G§.getItemByName("MovieClip_StarCenter") as §?-§).y + (§4G§.getItemByName("Container_LevelEndStripe") as §8I§).y;
            this.§-$§ = new §%N§(AngryBirdsFP11.screenWidth,AngryBirdsFP11.screenHeight,_loc2_,_loc3_,§%N§.§7!"§);
            §4G§.addChild(this.§-$§);
            this.§`!-§.push(this.§-$§);
         }
         else if(this.§'x§.getValue() >= _loc4_ && (§4G§.getItemByName("MovieClip_StarRight") as §?-§).mClip.currentLabel == "UnLit")
         {
            this.§>f§ = true;
            §9!0§.§-! §("Hiscore_Star_Splash3",§ true§);
            (§4G§.getItemByName("MovieClip_StarRight") as §?-§).mClip.gotoAndStop("Lit");
            _loc2_ = (§4G§.getItemByName("MovieClip_StarRight") as §?-§).x + (§4G§.getItemByName("Container_LevelEndStripe") as §8I§).x;
            _loc3_ = (§4G§.getItemByName("MovieClip_StarRight") as §?-§).y + (§4G§.getItemByName("Container_LevelEndStripe") as §8I§).y;
            this.§-$§ = new §%N§(AngryBirdsFP11.screenWidth,AngryBirdsFP11.screenHeight,_loc2_,_loc3_,§%N§.§=V§);
            §4G§.addChild(this.§-$§);
            this.§`!-§.push(this.§-$§);
         }
         else if(!this.§!D§)
         {
            this.§!D§ = true;
         }
         else
         {
            this.§9!F§.stop();
            if(this.§,v§ && !this.§"m§)
            {
               (§4G§.getItemByName("MovieClip_NewHighScoreBadge") as §?-§).setVisibility(true);
            }
            else
            {
               (§4G§.getItemByName("MovieClip_NewHighScoreBadge") as §?-§).setVisibility(false);
            }
            this.§ !5§ = §>!2§.§72§.§-z§((§4G§.getItemByName("MovieClip_NewHighScoreBadge") as §?-§).mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":7,
               "scaleY":7
            },0.1);
            this.§ !5§.onComplete = this.onBadgeLanded;
            this.§ !5§.play();
         }
         ++this.§[+§;
      }
      
      private function §]!,§() : void
      {
         §9!0§.§5!'§(§?K§);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:§%N§ = null;
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §`U§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         §4G§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScore");
         §4G§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScoreEffects");
         for each(_loc3_ in this.§`!-§)
         {
            _loc3_.update(param1);
         }
         if(this.§3!H§ > -1)
         {
            this.§ !F§(param1);
         }
         if(mNextState.length > 0)
         {
            §^?§.§]!%§.clearLevel();
            return §`U§.STATE_STATUS_COMPLETED;
         }
         return §`U§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§'E§();
         this.§3!H§ = 0;
         this.mNewScoreCounter = 0;
         if(this.§!A§)
         {
            this.§!A§.stop();
            this.§!A§ = null;
         }
         if(this.§ !5§)
         {
            this.§ !5§.stop();
            this.§ !5§ = null;
         }
         §9!0§.§5!'§(§?K§);
         this.setButtonStates(§3P§.COMPONENT_STATE_ACTIVE_DEFAULT);
         §4G§.setText("0","TextField_LevelEndScore");
         §4G§.setText("0","TextField_LevelEndScoreEffects");
         if(this.§-t§)
         {
            if(§4G§.movieClip.contains(this.§-t§))
            {
               §4G§.movieClip.removeChild(this.§-t§);
            }
            this.§-t§.clean();
            this.§-t§ = null;
         }
      }
      
      protected function setButtonStates(param1:String) : void
      {
         (§4G§.getItemByName("Button_Menu") as §5I§).setComponentVisualState(param1);
         (§4G§.getItemByName("Button_Replay") as §5I§).setComponentVisualState(param1);
         (§4G§.getItemByName("Button_NextLevel") as §5I§).setComponentVisualState(param1);
         (§4G§.getItemByName("Button_CutScene") as §5I§).setComponentVisualState(param1);
      }
      
      private function §'E§() : void
      {
         var splash:§%N§ = null;
         if(this.§9!F§)
         {
            this.§9!F§.stop();
            try
            {
               this.§9!F§.removeEventListener(TimerEvent.TIMER,this.§-!8§);
            }
            catch(e:Error)
            {
            }
         }
         for each(splash in this.§`!-§)
         {
            if(§4G§.contains(splash))
            {
               §4G§.removeChild(splash);
            }
            splash.clean();
         }
         this.§`!-§ = new Vector.<§%N§>();
         this.hideBestScoreTexts();
      }
      
      protected function hideBestScoreTexts() : void
      {
         (§4G§.getItemByName("TextField_BestScore") as §6k§).setVisibility(false);
         (§4G§.getItemByName("MovieClip_BestScoreStars") as §?-§).setVisibility(false);
         (§4G§.getItemByName("TextField_NewHighScore") as §6k§).setVisibility(false);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      protected function §+d§() : void
      {
         § !2§.§62§();
         mNextState = this.§^t§();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§^!%§) : void
      {
         var _loc4_:String = null;
         switch(param2)
         {
            case "NEXT_LEVEL":
               this.§+d§();
               break;
            case "REPLAY":
               § !2§.§-9§();
               mNextState = this.§7!=§();
               break;
            case "WATCH_REPLAY":
               § !2§.§-9§();
               mNextState = this.§7!=§();
               if(_loc4_ = §^?§.§]!%§.§ !4§())
               {
                  §^?§.§]!%§.§^b§(_loc4_);
                  break;
               }
               break;
            case "MENU":
               §9!0§.§"P§();
               mNextState = this.§2!J§();
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§5W§.§^!@§();
         }
      }
      
      protected function §7!=§() : String
      {
         return § !2§.§?1§;
      }
      
      protected function §^t§() : String
      {
         return StateCutScene.§?1§;
      }
      
      public function §2!J§() : String
      {
         return §33§.§?1§;
      }
   }
}
