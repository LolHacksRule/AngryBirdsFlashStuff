package §!X§
{
   import §""d§.§+">§;
   import §""d§.§,m§;
   import §""d§.§2"8§;
   import §""d§.§<`§;
   import §'! §.§4!Q§;
   import §'! §.§41§;
   import §'+§.§="B§;
   import §,"v§.§@§;
   import §,#+§.§7!m§;
   import §4##§.§7!B§;
   import §4##§.§7!Y§;
   import §5",§.§#F§;
   import §5",§.§%"@§;
   import §5",§.§`#+§;
   import §7A§.§<1§;
   import §^!`§.§%n§;
   import §^!`§.§6"!§;
   import com.angrybirds.§;!e§;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §%" § extends §@!?§
   {
      
      public static const §'#2§:String = "LevelEndState";
      
      public static const §&!N§:Number = 30;
      
      protected static const §;?§:String = "ScoreLoopCountChannel";
      
      protected static const §-#1§:String = "EndScreenEffectChannel";
       
      
      private var §@"6§:§4!Q§;
      
      private var §8!i§:Number;
      
      private var §!!Y§:Number = 0.0;
      
      private var §9T§:Number = 0.0;
      
      private var §`Q§:Boolean = false;
      
      private var § null§:Timer;
      
      private var §0$§:§`#+§;
      
      protected var §;!'§:Array;
      
      protected var §-"?§:§%"@§;
      
      protected var §<!T§:Vector.<§%"@§>;
      
      public var mNewScoreCounter:int;
      
      private var §2O§:int;
      
      private var §=!r§:Boolean;
      
      protected var §+"6§:Boolean;
      
      private var §4!j§:§<1§;
      
      protected var §4!U§:Boolean;
      
      private var §2_§:§4!Q§;
      
      protected var §8!#§:Boolean;
      
      protected var §>#4§:int;
      
      public function §%" §(param1:§7!m§, param2:§="B§, param3:Boolean = false, param4:String = "LevelEndState")
      {
         this.§;!'§ = [];
         this.§4!j§ = new §<1§();
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         §>I§ = new §6"!§(this);
         §>I§.init(this.getViewXML());
         this.§1"O§();
         this.§<!T§ = new Vector.<§%"@§>();
         §@§.§"#'§(§;?§,1,1);
         §@§.§"#'§(§-#1§,3,1);
      }
      
      protected function §1"O§() : void
      {
         this.§;!'§.push((§>I§.getItemByName("Button_Menu") as §2"8§).x);
         this.§;!'§.push((§>I§.getItemByName("Button_Replay") as §2"8§).x);
         this.§;!'§.push((§>I§.getItemByName("Button_NextLevel") as §2"8§).x);
         this.§;!'§.push((§>I§.getItemByName("Button_CutScene") as §2"8§).x);
      }
      
      protected function getViewXML() : XML
      {
         return §%n§.§ set§.Views.View_LevelEnd[0];
      }
      
      protected function §!"%§() : void
      {
         if(!§;"@§.singleton.dataModel.userProgress.isLevelPassed(§ !p§.currentLevel))
         {
            (§>I§.getItemByName("Button_Menu") as §2"8§).setVisibility(false);
            (§>I§.getItemByName("Button_Replay") as §2"8§).setVisibility(true);
            (§>I§.getItemByName("Button_NextLevel") as §2"8§).setVisibility(false);
            (§>I§.getItemByName("Button_CutScene") as §2"8§).setVisibility(true);
            (§>I§.getItemByName("Button_Replay") as §2"8§).x = this.§;!'§[0] + Math.abs(this.§;!'§[1] - this.§;!'§[0]) / 2;
            (§>I§.getItemByName("Button_CutScene") as §2"8§).x = this.§;!'§[1] + Math.abs(this.§;!'§[2] - this.§;!'§[1]) / 2;
         }
         else
         {
            (§>I§.getItemByName("Button_Menu") as §2"8§).setVisibility(true);
            (§>I§.getItemByName("Button_Replay") as §2"8§).setVisibility(true);
            (§>I§.getItemByName("Button_NextLevel") as §2"8§).setVisibility(false);
            (§>I§.getItemByName("Button_CutScene") as §2"8§).setVisibility(true);
            (§>I§.getItemByName("Button_Menu") as §2"8§).x = this.§;!'§[0];
            (§>I§.getItemByName("Button_Replay") as §2"8§).x = this.§;!'§[1];
            (§>I§.getItemByName("Button_CutScene") as §2"8§).x = this.§;!'§[2];
         }
      }
      
      protected function §%"V§() : void
      {
         (§>I§.getItemByName("Button_Menu") as §2"8§).setVisibility(true);
         (§>I§.getItemByName("Button_Replay") as §2"8§).setVisibility(true);
         (§>I§.getItemByName("Button_CutScene") as §2"8§).setVisibility(false);
         if(§ !p§.getNextLevelId())
         {
            (§>I§.getItemByName("Button_NextLevel") as §2"8§).setVisibility(true);
            (§>I§.getItemByName("Button_Menu") as §2"8§).x = this.§;!'§[0];
            (§>I§.getItemByName("Button_Replay") as §2"8§).x = this.§;!'§[1];
            (§>I§.getItemByName("Button_NextLevel") as §2"8§).x = this.§;!'§[2];
         }
         else
         {
            (§>I§.getItemByName("Button_NextLevel") as §2"8§).setVisibility(false);
            (§>I§.getItemByName("Button_Menu") as §2"8§).x = this.§;!'§[0] + Math.abs(this.§;!'§[1] - this.§;!'§[0]) / 2;
            (§>I§.getItemByName("Button_Replay") as §2"8§).x = this.§;!'§[1] + Math.abs(this.§;!'§[2] - this.§;!'§[1]) / 2;
         }
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.§8!#§ = false;
         §;!e§.pause();
         this.§0$§ = new §`#+§(0,0,0,0);
         §>I§.movieClip.addChildAt(this.§0$§,§>I§.movieClip.numChildren - 1);
         if(§ !p§.isCutSceneNext())
         {
            this.§!"%§();
         }
         else
         {
            this.§%"V§();
         }
         this.mNewScoreCounter = 0;
         this.§=!r§ = false;
         §@§.§=Y§("LevelCompletedTheme1");
         this.§0$§.§'!9§(0.7);
         this.§!!Y§ = 0;
         this.§9T§ = 0;
         this.§<"I§();
      }
      
      private function §<"I§() : void
      {
         this.§+"6§ = false;
         this.setScoreData();
         this.§ null§ = new Timer(500);
         this.§2O§ = 0;
         this.§ null§.addEventListener(TimerEvent.TIMER,this.§^"_§);
         this.§ null§.start();
      }
      
      protected function §`"=§() : void
      {
         if(§;"@§.singleton.dataModel.userProgress.getEagleScoreForLevel(§ !p§.currentLevel) == 100)
         {
            (§>I§.getItemByName("MovieClip_ResultMEFeather") as §<`§).mClip.gotoAndStop("On");
         }
         else
         {
            (§>I§.getItemByName("MovieClip_ResultMEFeather") as §<`§).mClip.gotoAndStop("Off");
         }
      }
      
      protected function §6!@§(param1:int, param2:int) : void
      {
         if(this.§4!U§)
         {
            param2 = param1;
            §;"@§.singleton.dataModel.userProgress.§&'§(§ !p§.currentLevel,param2);
            §>I§.setText("New Highscore!","TextField_BestScore");
         }
         else
         {
            §>I§.setText("Best " + param2.toString(),"TextField_BestScore");
            this.§>#4§ = § !p§.getNumStarsForLevel(§ !p§.currentLevel,param2);
            switch(this.§>#4§)
            {
               case 1:
                  (§>I§.getItemByName("MovieClip_BestScoreStars") as §<`§).§%"Y§("OneStar");
                  break;
               case 2:
                  (§>I§.getItemByName("MovieClip_BestScoreStars") as §<`§).§%"Y§("TwoStar");
                  break;
               case 3:
                  (§>I§.getItemByName("MovieClip_BestScoreStars") as §<`§).§%"Y§("ThreeStar");
            }
         }
      }
      
      protected function setScoreData() : void
      {
         var _loc1_:int = §;"@§.singleton.dataModel.userProgress.getScoreForLevel(§ !p§.currentLevel);
         var _loc2_:int = §;!e§.§%e§.getScore(10);
         this.§4!U§ = _loc2_ > _loc1_;
         this.§6!@§(_loc2_,_loc1_);
         this.§`"=§();
         var _loc3_:int = §;!e§.§%e§.getEagleScore();
         var _loc4_:int = §;"@§.singleton.dataModel.userProgress.getEagleScoreForLevel(§ !p§.currentLevel);
         var _loc5_:*;
         if(_loc5_ = _loc3_ > _loc4_)
         {
            _loc4_ = _loc3_;
            §;"@§.singleton.dataModel.userProgress.§?"I§(§ !p§.currentLevel,_loc4_);
         }
         var _loc6_:int = §;"@§.singleton.dataModel.userProgress.getStarsForLevel(§ !p§.currentLevel,_loc2_);
         (§>I§.getItemByName("MovieClip_NewHighScoreBadge") as §<`§).setVisibility(false);
         (§>I§.getItemByName("MovieClip_StarLeft") as §<`§).mClip.gotoAndStop("UnLit");
         (§>I§.getItemByName("MovieClip_StarCenter") as §<`§).mClip.gotoAndStop("UnLit");
         (§>I§.getItemByName("MovieClip_StarRight") as §<`§).mClip.gotoAndStop("UnLit");
      }
      
      protected function onBadgeLanded() : void
      {
         if(this.§4!U§)
         {
            §@§.§=Y§("Hiscore_Badge",§-#1§);
            §>I§.setText("New Highscore!","TextField_NewHighScore");
            (§>I§.getItemByName("TextField_NewHighScore") as §+">§).setVisibility(true);
            (§>I§.getItemByName("MovieClip_BestScoreStars") as §<`§).setVisibility(false);
            this.§3!H§();
         }
         else
         {
            (§>I§.getItemByName("TextField_BestScore") as §+">§).setVisibility(true);
            (§>I§.getItemByName("MovieClip_BestScoreStars") as §<`§).setVisibility(true);
         }
      }
      
      protected function §3!H§() : void
      {
         this.§!!Y§ = 0;
         this.§9T§ = 0;
         this.§8!i§ = §&!N§;
      }
      
      private function §7"5§(param1:Number) : void
      {
         (§>I§.getItemByName("Container_LevelEndStripe") as §,m§).x = (§>I§.getItemByName("Container_LevelEndStripe") as §,m§).x - this.§!!Y§;
         (§>I§.getItemByName("Container_LevelEndStripe") as §,m§).y = (§>I§.getItemByName("Container_LevelEndStripe") as §,m§).y - this.§9T§;
         if(this.§8!i§ > 0)
         {
            this.§!!Y§ = (Math.random() - 0.5) * (this.§8!i§ / §&!N§) * 20;
            this.§9T§ = (Math.random() - 0.5) * (this.§8!i§ / §&!N§) * 20;
            (§>I§.getItemByName("Container_LevelEndStripe") as §,m§).x = (§>I§.getItemByName("Container_LevelEndStripe") as §,m§).x + this.§!!Y§;
            (§>I§.getItemByName("Container_LevelEndStripe") as §,m§).y = (§>I§.getItemByName("Container_LevelEndStripe") as §,m§).y + this.§9T§;
         }
         else
         {
            this.§!!Y§ = 0;
            this.§9T§ = 0;
         }
         this.§8!i§ -= param1 / 10;
      }
      
      private function §^"_§(param1:TimerEvent) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:String = null;
         var _loc8_:String = null;
         var _loc9_:String = null;
         var _loc4_:Number = § !p§.getGoldScoreForLevel(§ !p§.currentLevel);
         var _loc5_:Number = § !p§.getSilverScoreForLevel(§ !p§.currentLevel);
         if((§>I§.getItemByName("MovieClip_StarLeft") as §<`§).mClip.currentLabel == "UnLit")
         {
            §@§.§=Y§("Hiscore_Count",§;?§,100);
            this.§ null§.delay = 1000;
            this.§4!j§.§6!b§(§;!e§.§%e§.getScore(10));
            _loc6_ = this.§4!j§.getValue() / _loc4_ * 2;
            if(_loc4_ <= 0)
            {
               _loc6_ = 1;
            }
            this.§2_§ = §41§.§-G§.§&#'§(this,{"mNewScoreCounter":this.§4!j§.getValue()},{"mNewScoreCounter":0},_loc6_);
            this.§2_§.onComplete = this.§^z§;
            this.§2_§.play();
            _loc7_ = this.§6R§();
            _loc2_ = (§>I§.getItemByName("MovieClip_StarLeft") as §<`§).x + (§>I§.getItemByName("Container_LevelEndStripe") as §,m§).x;
            _loc3_ = (§>I§.getItemByName("MovieClip_StarLeft") as §<`§).y + (§>I§.getItemByName("Container_LevelEndStripe") as §,m§).y;
            this.§-"?§ = new §%"@§(§;"@§.screenWidth,§;"@§.screenHeight,_loc2_,_loc3_,§%"@§.§'!$§,§%"@§.§["]§,_loc7_);
            §>I§.addChild(this.§-"?§);
            this.§<!T§.push(this.§-"?§);
         }
         else if(this.§4!j§.getValue() >= _loc5_ && (§>I§.getItemByName("MovieClip_StarCenter") as §<`§).mClip.currentLabel == "UnLit")
         {
            _loc8_ = this.§3"H§();
            _loc2_ = (§>I§.getItemByName("MovieClip_StarCenter") as §<`§).x + (§>I§.getItemByName("Container_LevelEndStripe") as §,m§).x;
            _loc3_ = (§>I§.getItemByName("MovieClip_StarCenter") as §<`§).y + (§>I§.getItemByName("Container_LevelEndStripe") as §,m§).y;
            this.§-"?§ = new §%"@§(§;"@§.screenWidth,§;"@§.screenHeight,_loc2_,_loc3_,§%"@§.§`#&§,§%"@§.§["]§,_loc8_);
            §>I§.addChild(this.§-"?§);
            this.§<!T§.push(this.§-"?§);
         }
         else if(this.§4!j§.getValue() >= _loc4_ && (§>I§.getItemByName("MovieClip_StarRight") as §<`§).mClip.currentLabel == "UnLit")
         {
            this.§8!#§ = true;
            _loc9_ = this.§9_§();
            _loc2_ = (§>I§.getItemByName("MovieClip_StarRight") as §<`§).x + (§>I§.getItemByName("Container_LevelEndStripe") as §,m§).x;
            _loc3_ = (§>I§.getItemByName("MovieClip_StarRight") as §<`§).y + (§>I§.getItemByName("Container_LevelEndStripe") as §,m§).y;
            this.§-"?§ = new §%"@§(§;"@§.screenWidth,§;"@§.screenHeight,_loc2_,_loc3_,§%"@§.§=!I§,§%"@§.§["]§,_loc9_);
            §>I§.addChild(this.§-"?§);
            this.§<!T§.push(this.§-"?§);
         }
         else if(!this.§=!r§)
         {
            this.§=!r§ = true;
         }
         else
         {
            this.§ null§.stop();
            if(this.§4!U§ && !this.§+"6§)
            {
               (§>I§.getItemByName("MovieClip_NewHighScoreBadge") as §<`§).setVisibility(true);
            }
            else
            {
               (§>I§.getItemByName("MovieClip_NewHighScoreBadge") as §<`§).setVisibility(false);
            }
            this.§@"6§ = §41§.§-G§.§&#'§((§>I§.getItemByName("MovieClip_NewHighScoreBadge") as §<`§).mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":7,
               "scaleY":7
            },0.1);
            this.§@"6§.onComplete = this.onBadgeLanded;
            this.§@"6§.play();
         }
         ++this.§2O§;
      }
      
      protected function §6R§() : String
      {
         §@§.§=Y§("Hiscore_Star_Splash1",§-#1§);
         (§>I§.getItemByName("MovieClip_StarLeft") as §<`§).mClip.gotoAndStop("Lit");
         return §#F§.§0"o§;
      }
      
      protected function §3"H§() : String
      {
         §@§.§=Y§("Hiscore_Star_Splash2",§-#1§);
         (§>I§.getItemByName("MovieClip_StarCenter") as §<`§).mClip.gotoAndStop("Lit");
         return §#F§.§0"o§;
      }
      
      protected function §9_§() : String
      {
         §@§.§=Y§("Hiscore_Star_Splash3",§-#1§);
         (§>I§.getItemByName("MovieClip_StarRight") as §<`§).mClip.gotoAndStop("Lit");
         return §#F§.§0"o§;
      }
      
      private function §^z§() : void
      {
         §@§.§@!D§(§;?§);
      }
      
      override protected function update(param1:Number) : void
      {
         var _loc2_:§%"@§ = null;
         super.update(param1);
         §>I§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScore");
         §>I§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScoreEffects");
         for each(_loc2_ in this.§<!T§)
         {
            _loc2_.update(param1);
         }
         if(this.§8!i§ >= 0)
         {
            this.§7"5§(param1);
         }
         if(nextState.length > 0)
         {
            §;!e§.§<x§.clearLevel();
         }
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§63§();
         this.§8!i§ = 0;
         this.mNewScoreCounter = 0;
         if(this.§2_§)
         {
            this.§2_§.stop();
            this.§2_§ = null;
         }
         if(this.§@"6§)
         {
            this.§@"6§.stop();
            this.§@"6§ = null;
         }
         §@§.§@!D§(§;?§);
         this.§?"f§(§7!Y§.COMPONENT_STATE_ACTIVE_DEFAULT);
         §>I§.setText("0","TextField_LevelEndScore");
         §>I§.setText("0","TextField_LevelEndScoreEffects");
         if(this.§0$§)
         {
            if(§>I§.movieClip.contains(this.§0$§))
            {
               §>I§.movieClip.removeChild(this.§0$§);
            }
            this.§0$§.§;!k§();
            this.§0$§ = null;
         }
      }
      
      protected function §?"f§(param1:String) : void
      {
         (§>I§.getItemByName("Button_Menu") as §2"8§).setComponentVisualState(param1);
         (§>I§.getItemByName("Button_Replay") as §2"8§).setComponentVisualState(param1);
         (§>I§.getItemByName("Button_NextLevel") as §2"8§).setComponentVisualState(param1);
         (§>I§.getItemByName("Button_CutScene") as §2"8§).setComponentVisualState(param1);
      }
      
      private function §63§() : void
      {
         var splash:§%"@§ = null;
         if(this.§ null§)
         {
            this.§ null§.stop();
            try
            {
               this.§ null§.removeEventListener(TimerEvent.TIMER,this.§^"_§);
            }
            catch(e:Error)
            {
            }
         }
         for each(splash in this.§<!T§)
         {
            if(§>I§.contains(splash))
            {
               §>I§.removeChild(splash);
            }
            splash.§;!k§();
         }
         this.§<!T§ = new Vector.<§%"@§>();
         this.§7b§();
      }
      
      protected function §7b§() : void
      {
         (§>I§.getItemByName("TextField_BestScore") as §+">§).setVisibility(false);
         (§>I§.getItemByName("MovieClip_BestScoreStars") as §<`§).setVisibility(false);
         (§>I§.getItemByName("TextField_NewHighScore") as §+">§).setVisibility(false);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      protected function loadNextLevel() : void
      {
         § !Y§();
         §0"B§(this.getCutSceneState());
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§7!B§) : void
      {
         var _loc4_:String = null;
         switch(param2)
         {
            case "NEXT_LEVEL":
               this.loadNextLevel();
               break;
            case "REPLAY":
               §0"B§(this.getStateLevelLoadState());
               break;
            case "WATCH_REPLAY":
               §0"B§(this.getStateLevelLoadState());
               if(_loc4_ = §;!e§.§<x§.§4i§())
               {
                  §;!e§.§<x§.§6"8§(_loc4_);
               }
               break;
            case "MENU":
               §@§.§+A§();
               §0"B§(this.getMenuButtonTargetState());
               break;
            case "FULLSCREEN_BUTTON":
               §;"@§.singleton.§35§();
         }
      }
      
      protected function getStateLevelLoadState() : String
      {
         return §>!I§.§'#2§;
      }
      
      protected function getCutSceneState() : String
      {
         return StateCutScene.§'#2§;
      }
      
      public function getMenuButtonTargetState() : String
      {
         return §,"p§.§'#2§;
      }
   }
}
