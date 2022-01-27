package §%"Q§
{
   import §&!j§.§5#+§;
   import §+d§.§0#&§;
   import §0"g§.§%b§;
   import §0"g§.§5!%§;
   import §8!h§.§%"z§;
   import §8!h§.§-V§;
   import §9!a§.§&!q§;
   import §9!a§.§&c§;
   import §9!a§.§]a§;
   import §=Z§.§0%§;
   import §=Z§.§9!c§;
   import §=Z§.§;g§;
   import §=Z§.§@!8§;
   import §[!H§.§4Z§;
   import §[!H§.§^x§;
   import §`"1§.§=Q§;
   import com.angrybirds.§<!J§;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   import §null §.§5#§;
   
   public class §^!e§ extends §`!6§
   {
      
      public static const §-!U§:String = "LevelEndState";
      
      public static const §[!'§:Number = 30;
      
      protected static const §2"p§:String = "ScoreLoopCountChannel";
      
      protected static const §2"n§:String = "EndScreenEffectChannel";
       
      
      private var §]!p§:§%b§;
      
      private var §3"I§:Number;
      
      private var §implements§:Number = 0.0;
      
      private var §?!B§:Number = 0.0;
      
      private var §""z§:Boolean = false;
      
      private var §"9§:Timer;
      
      private var §+"l§:§&c§;
      
      protected var §"!U§:Array;
      
      protected var §4#-§:§&!q§;
      
      protected var §["P§:Vector.<§&!q§>;
      
      public var mNewScoreCounter:int;
      
      private var §]!m§:int;
      
      private var §,r§:Boolean;
      
      protected var §4!Q§:Boolean;
      
      private var §3"B§:§0#&§;
      
      protected var §#$§:Boolean;
      
      private var §,!z§:§%b§;
      
      protected var §6B§:Boolean;
      
      protected var §+"T§:int;
      
      public function §^!e§(param1:§5#§, param2:§5#+§, param3:Boolean = false, param4:String = "LevelEndState")
      {
         this.§"!U§ = [];
         this.§3"B§ = new §0#&§();
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         §^!b§ = new §4Z§(this);
         §^!b§.init(this.getViewXML());
         this.§4#,§();
         this.§["P§ = new Vector.<§&!q§>();
         §=Q§.§`"u§(§2"p§,1,1);
         §=Q§.§`"u§(§2"n§,3,1);
      }
      
      protected function §4#,§() : void
      {
         this.§"!U§.push((§^!b§.getItemByName("Button_Menu") as §;g§).x);
         this.§"!U§.push((§^!b§.getItemByName("Button_Replay") as §;g§).x);
         this.§"!U§.push((§^!b§.getItemByName("Button_NextLevel") as §;g§).x);
         this.§"!U§.push((§^!b§.getItemByName("Button_CutScene") as §;g§).x);
      }
      
      protected function getViewXML() : XML
      {
         return §^x§.§ '§.Views.View_LevelEnd[0];
      }
      
      protected function §3n§() : void
      {
         if(!§4"#§.singleton.dataModel.userProgress.isLevelPassed(§'""§.currentLevel))
         {
            (§^!b§.getItemByName("Button_Menu") as §;g§).setVisibility(false);
            (§^!b§.getItemByName("Button_Replay") as §;g§).setVisibility(true);
            (§^!b§.getItemByName("Button_NextLevel") as §;g§).setVisibility(false);
            (§^!b§.getItemByName("Button_CutScene") as §;g§).setVisibility(true);
            (§^!b§.getItemByName("Button_Replay") as §;g§).x = this.§"!U§[0] + Math.abs(this.§"!U§[1] - this.§"!U§[0]) / 2;
            (§^!b§.getItemByName("Button_CutScene") as §;g§).x = this.§"!U§[1] + Math.abs(this.§"!U§[2] - this.§"!U§[1]) / 2;
         }
         else
         {
            (§^!b§.getItemByName("Button_Menu") as §;g§).setVisibility(true);
            (§^!b§.getItemByName("Button_Replay") as §;g§).setVisibility(true);
            (§^!b§.getItemByName("Button_NextLevel") as §;g§).setVisibility(false);
            (§^!b§.getItemByName("Button_CutScene") as §;g§).setVisibility(true);
            (§^!b§.getItemByName("Button_Menu") as §;g§).x = this.§"!U§[0];
            (§^!b§.getItemByName("Button_Replay") as §;g§).x = this.§"!U§[1];
            (§^!b§.getItemByName("Button_CutScene") as §;g§).x = this.§"!U§[2];
         }
      }
      
      protected function §-E§() : void
      {
         (§^!b§.getItemByName("Button_Menu") as §;g§).setVisibility(true);
         (§^!b§.getItemByName("Button_Replay") as §;g§).setVisibility(true);
         (§^!b§.getItemByName("Button_CutScene") as §;g§).setVisibility(false);
         if(§'""§.getNextLevelId())
         {
            (§^!b§.getItemByName("Button_NextLevel") as §;g§).setVisibility(true);
            (§^!b§.getItemByName("Button_Menu") as §;g§).x = this.§"!U§[0];
            (§^!b§.getItemByName("Button_Replay") as §;g§).x = this.§"!U§[1];
            (§^!b§.getItemByName("Button_NextLevel") as §;g§).x = this.§"!U§[2];
         }
         else
         {
            (§^!b§.getItemByName("Button_NextLevel") as §;g§).setVisibility(false);
            (§^!b§.getItemByName("Button_Menu") as §;g§).x = this.§"!U§[0] + Math.abs(this.§"!U§[1] - this.§"!U§[0]) / 2;
            (§^!b§.getItemByName("Button_Replay") as §;g§).x = this.§"!U§[1] + Math.abs(this.§"!U§[2] - this.§"!U§[1]) / 2;
         }
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.§6B§ = false;
         §<!J§.pause();
         this.§+"l§ = new §&c§(0,0,0,0);
         §^!b§.movieClip.addChildAt(this.§+"l§,§^!b§.movieClip.numChildren - 1);
         if(§'""§.isCutSceneNext())
         {
            this.§3n§();
         }
         else
         {
            this.§-E§();
         }
         this.mNewScoreCounter = 0;
         this.§,r§ = false;
         §=Q§.§`!A§("LevelCompletedTheme1");
         this.§+"l§.§8m§(0.7);
         this.§implements§ = 0;
         this.§?!B§ = 0;
         this.§6"k§();
      }
      
      private function §6"k§() : void
      {
         this.§4!Q§ = false;
         this.setScoreData();
         this.§"9§ = new Timer(500);
         this.§]!m§ = 0;
         this.§"9§.addEventListener(TimerEvent.TIMER,this.§%!t§);
         this.§"9§.start();
      }
      
      protected function §9"+§() : void
      {
         if(§4"#§.singleton.dataModel.userProgress.getEagleScoreForLevel(§'""§.currentLevel) == 100)
         {
            (§^!b§.getItemByName("MovieClip_ResultMEFeather") as §9!c§).mClip.gotoAndStop("On");
         }
         else
         {
            (§^!b§.getItemByName("MovieClip_ResultMEFeather") as §9!c§).mClip.gotoAndStop("Off");
         }
      }
      
      protected function §&"K§(param1:int, param2:int) : void
      {
         if(this.§#$§)
         {
            param2 = param1;
            §4"#§.singleton.dataModel.userProgress.§>"t§(§'""§.currentLevel,param2);
            §^!b§.setText("New Highscore!","TextField_BestScore");
         }
         else
         {
            §^!b§.setText("Best " + param2.toString(),"TextField_BestScore");
            this.§+"T§ = §'""§.getNumStarsForLevel(§'""§.currentLevel,param2);
            switch(this.§+"T§)
            {
               case 1:
                  (§^!b§.getItemByName("MovieClip_BestScoreStars") as §9!c§).§ g§("OneStar");
                  break;
               case 2:
                  (§^!b§.getItemByName("MovieClip_BestScoreStars") as §9!c§).§ g§("TwoStar");
                  break;
               case 3:
                  (§^!b§.getItemByName("MovieClip_BestScoreStars") as §9!c§).§ g§("ThreeStar");
            }
         }
      }
      
      protected function setScoreData() : void
      {
         var _loc1_:int = §4"#§.singleton.dataModel.userProgress.getScoreForLevel(§'""§.currentLevel);
         var _loc2_:int = §<!J§.§]!D§.getScore(10);
         this.§#$§ = _loc2_ > _loc1_;
         this.§&"K§(_loc2_,_loc1_);
         this.§9"+§();
         var _loc3_:int = §<!J§.§]!D§.getEagleScore();
         var _loc4_:int = §4"#§.singleton.dataModel.userProgress.getEagleScoreForLevel(§'""§.currentLevel);
         var _loc5_:*;
         if(_loc5_ = _loc3_ > _loc4_)
         {
            _loc4_ = _loc3_;
            §4"#§.singleton.dataModel.userProgress.§#!C§(§'""§.currentLevel,_loc4_);
         }
         var _loc6_:int = §4"#§.singleton.dataModel.userProgress.getStarsForLevel(§'""§.currentLevel,_loc2_);
         (§^!b§.getItemByName("MovieClip_NewHighScoreBadge") as §9!c§).setVisibility(false);
         (§^!b§.getItemByName("MovieClip_StarLeft") as §9!c§).mClip.gotoAndStop("UnLit");
         (§^!b§.getItemByName("MovieClip_StarCenter") as §9!c§).mClip.gotoAndStop("UnLit");
         (§^!b§.getItemByName("MovieClip_StarRight") as §9!c§).mClip.gotoAndStop("UnLit");
      }
      
      protected function onBadgeLanded() : void
      {
         if(this.§#$§)
         {
            §=Q§.§`!A§("Hiscore_Badge",§2"n§);
            §^!b§.setText("New Highscore!","TextField_NewHighScore");
            (§^!b§.getItemByName("TextField_NewHighScore") as §0%§).setVisibility(true);
            (§^!b§.getItemByName("MovieClip_BestScoreStars") as §9!c§).setVisibility(false);
            this.§`q§();
         }
         else
         {
            (§^!b§.getItemByName("TextField_BestScore") as §0%§).setVisibility(true);
            (§^!b§.getItemByName("MovieClip_BestScoreStars") as §9!c§).setVisibility(true);
         }
      }
      
      protected function §`q§() : void
      {
         this.§implements§ = 0;
         this.§?!B§ = 0;
         this.§3"I§ = §[!'§;
      }
      
      private function §"!a§(param1:Number) : void
      {
         (§^!b§.getItemByName("Container_LevelEndStripe") as §@!8§).x = (§^!b§.getItemByName("Container_LevelEndStripe") as §@!8§).x - this.§implements§;
         (§^!b§.getItemByName("Container_LevelEndStripe") as §@!8§).y = (§^!b§.getItemByName("Container_LevelEndStripe") as §@!8§).y - this.§?!B§;
         if(this.§3"I§ > 0)
         {
            this.§implements§ = (Math.random() - 0.5) * (this.§3"I§ / §[!'§) * 20;
            this.§?!B§ = (Math.random() - 0.5) * (this.§3"I§ / §[!'§) * 20;
            (§^!b§.getItemByName("Container_LevelEndStripe") as §@!8§).x = (§^!b§.getItemByName("Container_LevelEndStripe") as §@!8§).x + this.§implements§;
            (§^!b§.getItemByName("Container_LevelEndStripe") as §@!8§).y = (§^!b§.getItemByName("Container_LevelEndStripe") as §@!8§).y + this.§?!B§;
         }
         else
         {
            this.§implements§ = 0;
            this.§?!B§ = 0;
         }
         this.§3"I§ -= param1 / 10;
      }
      
      private function §%!t§(param1:TimerEvent) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:String = null;
         var _loc8_:String = null;
         var _loc9_:String = null;
         var _loc4_:Number = §'""§.getGoldScoreForLevel(§'""§.currentLevel);
         var _loc5_:Number = §'""§.getSilverScoreForLevel(§'""§.currentLevel);
         if((§^!b§.getItemByName("MovieClip_StarLeft") as §9!c§).mClip.currentLabel == "UnLit")
         {
            §=Q§.§`!A§("Hiscore_Count",§2"p§,100);
            this.§"9§.delay = 1000;
            this.§3"B§.§-[§(§<!J§.§]!D§.getScore(10));
            _loc6_ = this.§3"B§.getValue() / _loc4_ * 2;
            if(_loc4_ <= 0)
            {
               _loc6_ = 1;
            }
            this.§,!z§ = §5!%§.§!6§.§4!M§(this,{"mNewScoreCounter":this.§3"B§.getValue()},{"mNewScoreCounter":0},_loc6_);
            this.§,!z§.onComplete = this.§;"3§;
            this.§,!z§.play();
            _loc7_ = this.§3!N§();
            _loc2_ = (§^!b§.getItemByName("MovieClip_StarLeft") as §9!c§).x + (§^!b§.getItemByName("Container_LevelEndStripe") as §@!8§).x;
            _loc3_ = (§^!b§.getItemByName("MovieClip_StarLeft") as §9!c§).y + (§^!b§.getItemByName("Container_LevelEndStripe") as §@!8§).y;
            this.§4#-§ = new §&!q§(§4"#§.screenWidth,§4"#§.screenHeight,_loc2_,_loc3_,§&!q§.§[0§,§&!q§.§9?§,_loc7_);
            §^!b§.addChild(this.§4#-§);
            this.§["P§.push(this.§4#-§);
         }
         else if(this.§3"B§.getValue() >= _loc5_ && (§^!b§.getItemByName("MovieClip_StarCenter") as §9!c§).mClip.currentLabel == "UnLit")
         {
            _loc8_ = this.§2!;§();
            _loc2_ = (§^!b§.getItemByName("MovieClip_StarCenter") as §9!c§).x + (§^!b§.getItemByName("Container_LevelEndStripe") as §@!8§).x;
            _loc3_ = (§^!b§.getItemByName("MovieClip_StarCenter") as §9!c§).y + (§^!b§.getItemByName("Container_LevelEndStripe") as §@!8§).y;
            this.§4#-§ = new §&!q§(§4"#§.screenWidth,§4"#§.screenHeight,_loc2_,_loc3_,§&!q§.§=!N§,§&!q§.§9?§,_loc8_);
            §^!b§.addChild(this.§4#-§);
            this.§["P§.push(this.§4#-§);
         }
         else if(this.§3"B§.getValue() >= _loc4_ && (§^!b§.getItemByName("MovieClip_StarRight") as §9!c§).mClip.currentLabel == "UnLit")
         {
            this.§6B§ = true;
            _loc9_ = this.§^"5§();
            _loc2_ = (§^!b§.getItemByName("MovieClip_StarRight") as §9!c§).x + (§^!b§.getItemByName("Container_LevelEndStripe") as §@!8§).x;
            _loc3_ = (§^!b§.getItemByName("MovieClip_StarRight") as §9!c§).y + (§^!b§.getItemByName("Container_LevelEndStripe") as §@!8§).y;
            this.§4#-§ = new §&!q§(§4"#§.screenWidth,§4"#§.screenHeight,_loc2_,_loc3_,§&!q§.§[">§,§&!q§.§9?§,_loc9_);
            §^!b§.addChild(this.§4#-§);
            this.§["P§.push(this.§4#-§);
         }
         else if(!this.§,r§)
         {
            this.§,r§ = true;
         }
         else
         {
            this.§"9§.stop();
            if(this.§#$§ && !this.§4!Q§)
            {
               (§^!b§.getItemByName("MovieClip_NewHighScoreBadge") as §9!c§).setVisibility(true);
            }
            else
            {
               (§^!b§.getItemByName("MovieClip_NewHighScoreBadge") as §9!c§).setVisibility(false);
            }
            this.§]!p§ = §5!%§.§!6§.§4!M§((§^!b§.getItemByName("MovieClip_NewHighScoreBadge") as §9!c§).mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":7,
               "scaleY":7
            },0.1);
            this.§]!p§.onComplete = this.onBadgeLanded;
            this.§]!p§.play();
         }
         ++this.§]!m§;
      }
      
      protected function §3!N§() : String
      {
         §=Q§.§`!A§("Hiscore_Star_Splash1",§2"n§);
         (§^!b§.getItemByName("MovieClip_StarLeft") as §9!c§).mClip.gotoAndStop("Lit");
         return §]a§.§?!5§;
      }
      
      protected function §2!;§() : String
      {
         §=Q§.§`!A§("Hiscore_Star_Splash2",§2"n§);
         (§^!b§.getItemByName("MovieClip_StarCenter") as §9!c§).mClip.gotoAndStop("Lit");
         return §]a§.§?!5§;
      }
      
      protected function §^"5§() : String
      {
         §=Q§.§`!A§("Hiscore_Star_Splash3",§2"n§);
         (§^!b§.getItemByName("MovieClip_StarRight") as §9!c§).mClip.gotoAndStop("Lit");
         return §]a§.§?!5§;
      }
      
      private function §;"3§() : void
      {
         §=Q§.§&"=§(§2"p§);
      }
      
      override protected function update(param1:Number) : void
      {
         var _loc2_:§&!q§ = null;
         super.update(param1);
         §^!b§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScore");
         §^!b§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScoreEffects");
         for each(_loc2_ in this.§["P§)
         {
            _loc2_.update(param1);
         }
         if(this.§3"I§ >= 0)
         {
            this.§"!a§(param1);
         }
         if(nextState.length > 0)
         {
            §<!J§.§=!%§.clearLevel();
         }
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§6!q§();
         this.§3"I§ = 0;
         this.mNewScoreCounter = 0;
         if(this.§,!z§)
         {
            this.§,!z§.stop();
            this.§,!z§ = null;
         }
         if(this.§]!p§)
         {
            this.§]!p§.stop();
            this.§]!p§ = null;
         }
         §=Q§.§&"=§(§2"p§);
         this.§[!,§(§%"z§.COMPONENT_STATE_ACTIVE_DEFAULT);
         §^!b§.setText("0","TextField_LevelEndScore");
         §^!b§.setText("0","TextField_LevelEndScoreEffects");
         if(this.§+"l§)
         {
            if(§^!b§.movieClip.contains(this.§+"l§))
            {
               §^!b§.movieClip.removeChild(this.§+"l§);
            }
            this.§+"l§.§ "!§();
            this.§+"l§ = null;
         }
      }
      
      protected function §[!,§(param1:String) : void
      {
         (§^!b§.getItemByName("Button_Menu") as §;g§).setComponentVisualState(param1);
         (§^!b§.getItemByName("Button_Replay") as §;g§).setComponentVisualState(param1);
         (§^!b§.getItemByName("Button_NextLevel") as §;g§).setComponentVisualState(param1);
         (§^!b§.getItemByName("Button_CutScene") as §;g§).setComponentVisualState(param1);
      }
      
      private function §6!q§() : void
      {
         var splash:§&!q§ = null;
         if(this.§"9§)
         {
            this.§"9§.stop();
            try
            {
               this.§"9§.removeEventListener(TimerEvent.TIMER,this.§%!t§);
            }
            catch(e:Error)
            {
            }
         }
         for each(splash in this.§["P§)
         {
            if(§^!b§.contains(splash))
            {
               §^!b§.removeChild(splash);
            }
            splash.§ "!§();
         }
         this.§["P§ = new Vector.<§&!q§>();
         this.§;!'§();
      }
      
      protected function §;!'§() : void
      {
         (§^!b§.getItemByName("TextField_BestScore") as §0%§).setVisibility(false);
         (§^!b§.getItemByName("MovieClip_BestScoreStars") as §9!c§).setVisibility(false);
         (§^!b§.getItemByName("TextField_NewHighScore") as §0%§).setVisibility(false);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      protected function loadNextLevel() : void
      {
         §`"y§();
         §`0§(this.getCutSceneState());
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§-V§) : void
      {
         var _loc4_:String = null;
         switch(param2)
         {
            case "NEXT_LEVEL":
               this.loadNextLevel();
               break;
            case "REPLAY":
               §`0§(this.getStateLevelLoadState());
               break;
            case "WATCH_REPLAY":
               §`0§(this.getStateLevelLoadState());
               if(_loc4_ = §<!J§.§=!%§.§#4§())
               {
                  §<!J§.§=!%§.§0"n§(_loc4_);
               }
               break;
            case "MENU":
               §=Q§.§!#,§();
               §`0§(this.getMenuButtonTargetState());
               break;
            case "FULLSCREEN_BUTTON":
               §4"#§.singleton.§^L§();
         }
      }
      
      protected function getStateLevelLoadState() : String
      {
         return §7"9§.§-!U§;
      }
      
      protected function getCutSceneState() : String
      {
         return StateCutScene.§-!U§;
      }
      
      public function getMenuButtonTargetState() : String
      {
         return §!K§.§-!U§;
      }
   }
}
