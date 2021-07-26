package §]§
{
   import § "L§.§"!A§;
   import § "L§.§1"r§;
   import § "L§.§23§;
   import § "L§.§7`§;
   import §";§.§%"X§;
   import §";§.§false§;
   import §#"4§.§'#B§;
   import §+`§.§%"q§;
   import §-#;§.§5#J§;
   import §-#;§.§;!t§;
   import §-#;§.§>",§;
   import §3"V§.§ b§;
   import §7#$§.§]#q§;
   import §;"5§.§6"W§;
   import §;"5§.§@$-§;
   import §?#z§.§]$?§;
   import §^"3§.§ #&§;
   import §^"3§.§`$4§;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §+!F§ extends §1$?§
   {
      
      public static const STATE_NAME:String = "LevelEndState";
      
      public static const §'<§:Number = 30;
      
      protected static const §7$&§:String = "ScoreLoopCountChannel";
      
      protected static const §0$?§:String = "EndScreenEffectChannel";
       
      
      private var §,"J§:§@$-§;
      
      private var §6#U§:Number;
      
      private var §4#Q§:Number = 0.0;
      
      private var § !Q§:Number = 0.0;
      
      private var §2#6§:Boolean = false;
      
      private var §^t§:Timer;
      
      private var §##h§:§5#J§;
      
      protected var §<"#§:Array;
      
      protected var §1=§:§;!t§;
      
      protected var §2!^§:Vector.<§;!t§>;
      
      public var mNewScoreCounter:int;
      
      private var §[n§:int;
      
      private var §#u§:Boolean;
      
      protected var §6!&§:Boolean;
      
      private var §2#8§:§'#B§;
      
      protected var §`"e§:Boolean;
      
      private var §<$5§:§@$-§;
      
      protected var §+!L§:Boolean;
      
      protected var §<$;§:int;
      
      public function §+!F§(param1:§]#q§, param2:§%"q§, param3:Boolean = false, param4:String = "LevelEndState")
      {
         this.§<"#§ = [];
         this.§2#8§ = new §'#B§();
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         §;!w§ = new §%"X§(this);
         §;!w§.init(this.getViewXML());
         this.§6#i§();
         this.§2!^§ = new Vector.<§;!t§>();
         § b§.§%#C§(§7$&§,1,1);
         § b§.§%#C§(§0$?§,5,1);
      }
      
      protected function §6#i§() : void
      {
         this.§<"#§.push((§;!w§.getItemByName("Button_Menu") as §1"r§).x);
         this.§<"#§.push((§;!w§.getItemByName("Button_Replay") as §1"r§).x);
         this.§<"#§.push((§;!w§.getItemByName("Button_NextLevel") as §1"r§).x);
         this.§<"#§.push((§;!w§.getItemByName("Button_CutScene") as §1"r§).x);
      }
      
      protected function getViewXML() : XML
      {
         return §false§.§4#;§.Views.View_LevelEnd[0];
      }
      
      protected function showButtonsCutScene() : void
      {
         if(!AngryBirdsBase.singleton.dataModel.userProgress.§&#2§(mLevelManager.currentLevel))
         {
            (§;!w§.getItemByName("Button_Menu") as §1"r§).setVisibility(false);
            (§;!w§.getItemByName("Button_Replay") as §1"r§).setVisibility(true);
            (§;!w§.getItemByName("Button_NextLevel") as §1"r§).setVisibility(false);
            (§;!w§.getItemByName("Button_CutScene") as §1"r§).setVisibility(true);
            (§;!w§.getItemByName("Button_Replay") as §1"r§).x = this.§<"#§[0] + Math.abs(this.§<"#§[1] - this.§<"#§[0]) / 2;
            (§;!w§.getItemByName("Button_CutScene") as §1"r§).x = this.§<"#§[1] + Math.abs(this.§<"#§[2] - this.§<"#§[1]) / 2;
         }
         else
         {
            (§;!w§.getItemByName("Button_Menu") as §1"r§).setVisibility(true);
            (§;!w§.getItemByName("Button_Replay") as §1"r§).setVisibility(true);
            (§;!w§.getItemByName("Button_NextLevel") as §1"r§).setVisibility(false);
            (§;!w§.getItemByName("Button_CutScene") as §1"r§).setVisibility(true);
            (§;!w§.getItemByName("Button_Menu") as §1"r§).x = this.§<"#§[0];
            (§;!w§.getItemByName("Button_Replay") as §1"r§).x = this.§<"#§[1];
            (§;!w§.getItemByName("Button_CutScene") as §1"r§).x = this.§<"#§[2];
         }
      }
      
      protected function showButtonsNormal() : void
      {
         (§;!w§.getItemByName("Button_Menu") as §1"r§).setVisibility(true);
         (§;!w§.getItemByName("Button_Replay") as §1"r§).setVisibility(true);
         (§;!w§.getItemByName("Button_CutScene") as §1"r§).setVisibility(false);
         if(mLevelManager.getNextLevelId())
         {
            (§;!w§.getItemByName("Button_NextLevel") as §1"r§).setVisibility(true);
            (§;!w§.getItemByName("Button_Menu") as §1"r§).x = this.§<"#§[0];
            (§;!w§.getItemByName("Button_Replay") as §1"r§).x = this.§<"#§[1];
            (§;!w§.getItemByName("Button_NextLevel") as §1"r§).x = this.§<"#§[2];
         }
         else
         {
            (§;!w§.getItemByName("Button_NextLevel") as §1"r§).setVisibility(false);
            (§;!w§.getItemByName("Button_Menu") as §1"r§).x = this.§<"#§[0] + Math.abs(this.§<"#§[1] - this.§<"#§[0]) / 2;
            (§;!w§.getItemByName("Button_Replay") as §1"r§).x = this.§<"#§[1] + Math.abs(this.§<"#§[2] - this.§<"#§[1]) / 2;
         }
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.§+!L§ = false;
         §]$?§.pause();
         this.§##h§ = new §5#J§(0,0,0,0);
         §;!w§.movieClip.addChildAt(this.§##h§,0);
         if(mLevelManager.isCutSceneNext())
         {
            this.showButtonsCutScene();
         }
         else
         {
            this.showButtonsNormal();
         }
         this.mNewScoreCounter = 0;
         this.§#u§ = false;
         § b§.playSound("LevelCompletedTheme1");
         this.§##h§.§?!4§(0.7);
         this.§4#Q§ = 0;
         this.§ !Q§ = 0;
         this.§#"J§();
      }
      
      private function §#"J§() : void
      {
         this.§6!&§ = false;
         this.setScoreData();
         this.§^t§ = new Timer(500);
         this.§[n§ = 0;
         this.§^t§.addEventListener(TimerEvent.TIMER,this.§5=§);
         this.§^t§.start();
      }
      
      protected function §,!T§() : void
      {
         if(AngryBirdsBase.singleton.dataModel.userProgress.getEagleScoreForLevel(mLevelManager.currentLevel) == 100)
         {
            (§;!w§.getItemByName("MovieClip_ResultMEFeather") as §"!A§).mClip.gotoAndStop("On");
         }
         else
         {
            (§;!w§.getItemByName("MovieClip_ResultMEFeather") as §"!A§).mClip.gotoAndStop("Off");
         }
      }
      
      protected function § "p§(param1:int, param2:int) : void
      {
         if(this.§`"e§)
         {
            param2 = param1;
            AngryBirdsBase.singleton.dataModel.userProgress.§[1§(mLevelManager.currentLevel,param2);
            §;!w§.setText("New Highscore!","TextField_BestScore");
         }
         else
         {
            §;!w§.setText("Best " + param2.toString(),"TextField_BestScore");
            this.§<$;§ = mLevelManager.getNumStarsForLevel(mLevelManager.currentLevel,param2);
            switch(this.§<$;§)
            {
               case 1:
                  (§;!w§.getItemByName("MovieClip_BestScoreStars") as §"!A§).§&";§("OneStar");
                  break;
               case 2:
                  (§;!w§.getItemByName("MovieClip_BestScoreStars") as §"!A§).§&";§("TwoStar");
                  break;
               case 3:
                  (§;!w§.getItemByName("MovieClip_BestScoreStars") as §"!A§).§&";§("ThreeStar");
            }
         }
      }
      
      protected function setScoreData() : void
      {
         var _loc1_:int = AngryBirdsBase.singleton.dataModel.userProgress.getScoreForLevel(mLevelManager.currentLevel);
         var _loc2_:int = §]$?§.§;r§.getScore();
         this.§`"e§ = _loc2_ > _loc1_;
         this.§ "p§(_loc2_,_loc1_);
         this.§,!T§();
         var _loc3_:int = §]$?§.§;r§.getEagleScore();
         var _loc4_:int = AngryBirdsBase.singleton.dataModel.userProgress.getEagleScoreForLevel(mLevelManager.currentLevel);
         var _loc5_:*;
         if(_loc5_ = _loc3_ > _loc4_)
         {
            _loc4_ = _loc3_;
            AngryBirdsBase.singleton.dataModel.userProgress.§ d§(mLevelManager.currentLevel,_loc4_);
         }
         var _loc6_:int = AngryBirdsBase.singleton.dataModel.userProgress.getStarsForLevel(mLevelManager.currentLevel,_loc2_);
         (§;!w§.getItemByName("MovieClip_NewHighScoreBadge") as §"!A§).setVisibility(false);
         (§;!w§.getItemByName("MovieClip_StarLeft") as §"!A§).mClip.gotoAndStop("UnLit");
         (§;!w§.getItemByName("MovieClip_StarCenter") as §"!A§).mClip.gotoAndStop("UnLit");
         (§;!w§.getItemByName("MovieClip_StarRight") as §"!A§).mClip.gotoAndStop("UnLit");
      }
      
      protected function onBadgeLanded() : void
      {
         if(this.§`"e§)
         {
            § b§.playSound("highscore",§0$?§);
            §;!w§.setText("New Highscore!","TextField_NewHighScore");
            (§;!w§.getItemByName("TextField_NewHighScore") as §7`§).setVisibility(true);
            (§;!w§.getItemByName("MovieClip_BestScoreStars") as §"!A§).setVisibility(false);
            this.§@#o§();
         }
         else
         {
            (§;!w§.getItemByName("TextField_BestScore") as §7`§).setVisibility(true);
            (§;!w§.getItemByName("MovieClip_BestScoreStars") as §"!A§).setVisibility(true);
         }
      }
      
      protected function §@#o§() : void
      {
         this.§4#Q§ = 0;
         this.§ !Q§ = 0;
         this.§6#U§ = §'<§;
      }
      
      private function §'#8§(param1:Number) : void
      {
         (§;!w§.getItemByName("Container_LevelEndStripe") as §23§).x = (§;!w§.getItemByName("Container_LevelEndStripe") as §23§).x - this.§4#Q§;
         (§;!w§.getItemByName("Container_LevelEndStripe") as §23§).y = (§;!w§.getItemByName("Container_LevelEndStripe") as §23§).y - this.§ !Q§;
         if(this.§6#U§ > 0)
         {
            this.§4#Q§ = (Math.random() - 0.5) * (this.§6#U§ / §'<§) * 20;
            this.§ !Q§ = (Math.random() - 0.5) * (this.§6#U§ / §'<§) * 20;
            (§;!w§.getItemByName("Container_LevelEndStripe") as §23§).x = (§;!w§.getItemByName("Container_LevelEndStripe") as §23§).x + this.§4#Q§;
            (§;!w§.getItemByName("Container_LevelEndStripe") as §23§).y = (§;!w§.getItemByName("Container_LevelEndStripe") as §23§).y + this.§ !Q§;
         }
         else
         {
            this.§4#Q§ = 0;
            this.§ !Q§ = 0;
         }
         this.§6#U§ -= param1 / 10;
      }
      
      private function §5=§(param1:TimerEvent) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:String = null;
         var _loc8_:String = null;
         var _loc9_:String = null;
         var _loc4_:Number = mLevelManager.getGoldScoreForLevel(mLevelManager.currentLevel);
         var _loc5_:Number = mLevelManager.getSilverScoreForLevel(mLevelManager.currentLevel);
         if((§;!w§.getItemByName("MovieClip_StarLeft") as §"!A§).mClip.currentLabel == "UnLit")
         {
            § b§.playSound("gamescorescreen_score_count_loop",§7$&§,100);
            this.§^t§.delay = 1000;
            this.§2#8§.§!!5§(§]$?§.§;r§.getScore());
            _loc6_ = this.§2#8§.getValue() / _loc4_ * 2;
            if(_loc4_ <= 0)
            {
               _loc6_ = 1;
            }
            this.§<$5§ = §6"W§.§+!,§.§9!n§(this,{"mNewScoreCounter":this.§2#8§.getValue()},{"mNewScoreCounter":0},_loc6_);
            this.§<$5§.onComplete = this.§%"c§;
            this.§<$5§.play();
            _loc7_ = this.setStarLeftLit();
            _loc2_ = (§;!w§.getItemByName("MovieClip_StarLeft") as §"!A§).x + (§;!w§.getItemByName("Container_LevelEndStripe") as §23§).x;
            _loc3_ = (§;!w§.getItemByName("MovieClip_StarLeft") as §"!A§).y + (§;!w§.getItemByName("Container_LevelEndStripe") as §23§).y;
            this.§1=§ = new §;!t§(AngryBirdsBase.screenWidth,AngryBirdsBase.screenHeight,_loc2_,_loc3_,§;!t§.§8!t§,§;!t§.§=;§,_loc7_);
            §;!w§.addChild(this.§1=§);
            this.§2!^§.push(this.§1=§);
         }
         else if(this.§2#8§.getValue() >= _loc5_ && (§;!w§.getItemByName("MovieClip_StarCenter") as §"!A§).mClip.currentLabel == "UnLit")
         {
            _loc8_ = this.setStarCenterLit();
            _loc2_ = (§;!w§.getItemByName("MovieClip_StarCenter") as §"!A§).x + (§;!w§.getItemByName("Container_LevelEndStripe") as §23§).x;
            _loc3_ = (§;!w§.getItemByName("MovieClip_StarCenter") as §"!A§).y + (§;!w§.getItemByName("Container_LevelEndStripe") as §23§).y;
            this.§1=§ = new §;!t§(AngryBirdsBase.screenWidth,AngryBirdsBase.screenHeight,_loc2_,_loc3_,§;!t§.§78§,§;!t§.§=;§,_loc8_);
            §;!w§.addChild(this.§1=§);
            this.§2!^§.push(this.§1=§);
         }
         else if(this.§2#8§.getValue() >= _loc4_ && (§;!w§.getItemByName("MovieClip_StarRight") as §"!A§).mClip.currentLabel == "UnLit")
         {
            this.§+!L§ = true;
            _loc9_ = this.setStarRightLit();
            _loc2_ = (§;!w§.getItemByName("MovieClip_StarRight") as §"!A§).x + (§;!w§.getItemByName("Container_LevelEndStripe") as §23§).x;
            _loc3_ = (§;!w§.getItemByName("MovieClip_StarRight") as §"!A§).y + (§;!w§.getItemByName("Container_LevelEndStripe") as §23§).y;
            this.§1=§ = new §;!t§(AngryBirdsBase.screenWidth,AngryBirdsBase.screenHeight,_loc2_,_loc3_,§;!t§.§9!2§,§;!t§.§=;§,_loc9_);
            §;!w§.addChild(this.§1=§);
            this.§2!^§.push(this.§1=§);
         }
         else if(!this.§#u§)
         {
            this.§#u§ = true;
         }
         else
         {
            this.§^t§.stop();
            if(this.§`"e§ && !this.§6!&§)
            {
               (§;!w§.getItemByName("MovieClip_NewHighScoreBadge") as §"!A§).setVisibility(true);
            }
            else
            {
               (§;!w§.getItemByName("MovieClip_NewHighScoreBadge") as §"!A§).setVisibility(false);
            }
            this.§,"J§ = §6"W§.§+!,§.§9!n§((§;!w§.getItemByName("MovieClip_NewHighScoreBadge") as §"!A§).mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":7,
               "scaleY":7
            },0.1);
            this.§,"J§.onComplete = this.onBadgeLanded;
            this.§,"J§.play();
         }
         ++this.§[n§;
      }
      
      protected function setStarLeftLit() : String
      {
         § b§.playSound("star_1_coins",§0$?§);
         (§;!w§.getItemByName("MovieClip_StarLeft") as §"!A§).mClip.gotoAndStop("Lit");
         return §>",§.§+!y§;
      }
      
      protected function setStarCenterLit() : String
      {
         § b§.playSound("star_2_coins",§0$?§);
         (§;!w§.getItemByName("MovieClip_StarCenter") as §"!A§).mClip.gotoAndStop("Lit");
         return §>",§.§+!y§;
      }
      
      protected function setStarRightLit() : String
      {
         § b§.playSound("star_3_coins",§0$?§);
         (§;!w§.getItemByName("MovieClip_StarRight") as §"!A§).mClip.gotoAndStop("Lit");
         return §>",§.§+!y§;
      }
      
      private function §%"c§() : void
      {
         § b§.§8!7§(§7$&§);
      }
      
      override protected function update(param1:Number) : void
      {
         var _loc2_:§;!t§ = null;
         super.update(param1);
         §;!w§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScore");
         §;!w§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScoreEffects");
         for each(_loc2_ in this.§2!^§)
         {
            _loc2_.update(param1);
         }
         if(this.§6#U§ >= 0)
         {
            this.§'#8§(param1);
         }
         if(nextState.length > 0)
         {
            §]$?§.§2#§.clearLevel();
         }
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§-#`§();
         this.§6#U§ = 0;
         this.mNewScoreCounter = 0;
         if(this.§<$5§)
         {
            this.§<$5§.stop();
            this.§<$5§ = null;
         }
         if(this.§,"J§)
         {
            this.§,"J§.stop();
            this.§,"J§ = null;
         }
         § b§.§8!7§(§7$&§);
         this.setButtonStates(§ #&§.COMPONENT_STATE_ACTIVE_DEFAULT);
         §;!w§.setText("0","TextField_LevelEndScore");
         §;!w§.setText("0","TextField_LevelEndScoreEffects");
         this.§`!,§();
      }
      
      protected function §`!,§() : void
      {
         if(this.§##h§)
         {
            if(§;!w§.movieClip.contains(this.§##h§))
            {
               §;!w§.movieClip.removeChild(this.§##h§);
            }
            this.§##h§.§<![§();
            this.§##h§ = null;
         }
      }
      
      protected function setButtonStates(param1:String) : void
      {
         (§;!w§.getItemByName("Button_Menu") as §1"r§).setComponentVisualState(param1);
         (§;!w§.getItemByName("Button_Replay") as §1"r§).setComponentVisualState(param1);
         (§;!w§.getItemByName("Button_NextLevel") as §1"r§).setComponentVisualState(param1);
         (§;!w§.getItemByName("Button_CutScene") as §1"r§).setComponentVisualState(param1);
      }
      
      private function §-#`§() : void
      {
         var splash:§;!t§ = null;
         if(this.§^t§)
         {
            this.§^t§.stop();
            try
            {
               this.§^t§.removeEventListener(TimerEvent.TIMER,this.§5=§);
            }
            catch(e:Error)
            {
            }
         }
         for each(splash in this.§2!^§)
         {
            if(§;!w§.contains(splash))
            {
               §;!w§.removeChild(splash);
            }
            splash.§<![§();
         }
         this.§2!^§ = new Vector.<§;!t§>();
         this.§?a§();
      }
      
      protected function §?a§() : void
      {
         (§;!w§.getItemByName("TextField_BestScore") as §7`§).setVisibility(false);
         (§;!w§.getItemByName("MovieClip_BestScoreStars") as §"!A§).setVisibility(false);
         (§;!w§.getItemByName("TextField_NewHighScore") as §7`§).setVisibility(false);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      protected function loadNextLevel() : void
      {
         prepareToLoadNextClassicLevel();
         §3#§(this.getCutSceneState());
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§`$4§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
               § b§.playSound("Menu_Confirm",§ b§.§;$5§);
               this.loadNextLevel();
               break;
            case "REPLAY":
               § b§.playSound("Menu_Confirm",§ b§.§;$5§);
               §3#§(this.getStateLevelLoadState());
               break;
            case "MENU":
               § b§.§#! §();
               § b§.playSound("Menu_Confirm",§ b§.§;$5§);
               §3#§(this.getMenuButtonTargetState());
               break;
            case "FULLSCREEN_BUTTON":
               § b§.playSound("Menu_Confirm",§ b§.§;$5§);
               AngryBirdsBase.singleton.§`<§();
         }
      }
      
      protected function getStateLevelLoadState() : String
      {
         return §8$C§.STATE_NAME;
      }
      
      protected function getCutSceneState() : String
      {
         return StateCutScene.STATE_NAME;
      }
      
      public function getMenuButtonTargetState() : String
      {
         return §#!$§.STATE_NAME;
      }
   }
}
