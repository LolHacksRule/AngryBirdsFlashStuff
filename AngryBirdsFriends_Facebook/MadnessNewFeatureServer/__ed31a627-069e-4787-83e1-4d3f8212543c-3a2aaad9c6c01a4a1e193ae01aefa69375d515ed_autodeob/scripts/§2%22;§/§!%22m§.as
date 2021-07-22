package §2";§
{
   import § !j§.§4#c§;
   import §#,§.§ !>§;
   import §#,§.§'!`§;
   import §#,§.§]$+§;
   import §#,§.§`"$§;
   import §%!-§.§5!z§;
   import §%!-§.§?l§;
   import §&!_§.§@"E§;
   import §&$3§.§"!&§;
   import §&$3§.§7$C§;
   import §,!Q§.§+!2§;
   import §,!Q§.§6"n§;
   import §,"v§.§;"n§;
   import §5"t§.§7"J§;
   import §5"t§.§7"Y§;
   import §5"t§.§<#r§;
   import §8#K§.§3Z§;
   import §`#@§.§7n§;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §!"m§ extends §7!z§
   {
      
      public static const STATE_NAME:String = "LevelEndState";
      
      public static const §-!n§:Number = 30;
      
      protected static const §5r§:String = "ScoreLoopCountChannel";
      
      protected static const §0"M§:String = "EndScreenEffectChannel";
       
      
      private var §3"$§:§7$C§;
      
      private var §>"4§:Number;
      
      private var §%#l§:Number = 0.0;
      
      private var §^L§:Number = 0.0;
      
      private var §!"x§:Boolean = false;
      
      private var §-#]§:Timer;
      
      private var §4!§:§<#r§;
      
      protected var §,d§:Array;
      
      protected var §;#x§:§7"J§;
      
      protected var §#! §:Vector.<§7"J§>;
      
      public var mNewScoreCounter:int;
      
      private var §3T§:int;
      
      private var §&,§:Boolean;
      
      protected var §!#9§:Boolean;
      
      private var §3"-§:§@"E§;
      
      protected var §9"#§:Boolean;
      
      private var §"K§:§7$C§;
      
      protected var §4"?§:Boolean;
      
      protected var §?$2§:int;
      
      public function §!"m§(param1:§;"n§, param2:§4#c§, param3:Boolean = false, param4:String = "LevelEndState")
      {
         this.§,d§ = [];
         this.§3"-§ = new §@"E§();
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         §[$5§ = new §5!z§(this);
         §[$5§.init(this.getViewXML());
         this.§!#S§();
         this.§#! § = new Vector.<§7"J§>();
         §3Z§.§'#E§(§5r§,1,1);
         §3Z§.§'#E§(§0"M§,5,1);
      }
      
      protected function §!#S§() : void
      {
         this.§,d§.push((§[$5§.getItemByName("Button_Menu") as § !>§).x);
         this.§,d§.push((§[$5§.getItemByName("Button_Replay") as § !>§).x);
         this.§,d§.push((§[$5§.getItemByName("Button_NextLevel") as § !>§).x);
         this.§,d§.push((§[$5§.getItemByName("Button_CutScene") as § !>§).x);
      }
      
      protected function getViewXML() : XML
      {
         return §?l§.§3m§.Views.View_LevelEnd[0];
      }
      
      protected function showButtonsCutScene() : void
      {
         if(!AngryBirdsBase.singleton.dataModel.userProgress.§6!b§(mLevelManager.currentLevel))
         {
            (§[$5§.getItemByName("Button_Menu") as § !>§).setVisibility(false);
            (§[$5§.getItemByName("Button_Replay") as § !>§).setVisibility(true);
            (§[$5§.getItemByName("Button_NextLevel") as § !>§).setVisibility(false);
            (§[$5§.getItemByName("Button_CutScene") as § !>§).setVisibility(true);
            (§[$5§.getItemByName("Button_Replay") as § !>§).x = this.§,d§[0] + Math.abs(this.§,d§[1] - this.§,d§[0]) / 2;
            (§[$5§.getItemByName("Button_CutScene") as § !>§).x = this.§,d§[1] + Math.abs(this.§,d§[2] - this.§,d§[1]) / 2;
         }
         else
         {
            (§[$5§.getItemByName("Button_Menu") as § !>§).setVisibility(true);
            (§[$5§.getItemByName("Button_Replay") as § !>§).setVisibility(true);
            (§[$5§.getItemByName("Button_NextLevel") as § !>§).setVisibility(false);
            (§[$5§.getItemByName("Button_CutScene") as § !>§).setVisibility(true);
            (§[$5§.getItemByName("Button_Menu") as § !>§).x = this.§,d§[0];
            (§[$5§.getItemByName("Button_Replay") as § !>§).x = this.§,d§[1];
            (§[$5§.getItemByName("Button_CutScene") as § !>§).x = this.§,d§[2];
         }
      }
      
      protected function showButtonsNormal() : void
      {
         (§[$5§.getItemByName("Button_Menu") as § !>§).setVisibility(true);
         (§[$5§.getItemByName("Button_Replay") as § !>§).setVisibility(true);
         (§[$5§.getItemByName("Button_CutScene") as § !>§).setVisibility(false);
         if(mLevelManager.getNextLevelId())
         {
            (§[$5§.getItemByName("Button_NextLevel") as § !>§).setVisibility(true);
            (§[$5§.getItemByName("Button_Menu") as § !>§).x = this.§,d§[0];
            (§[$5§.getItemByName("Button_Replay") as § !>§).x = this.§,d§[1];
            (§[$5§.getItemByName("Button_NextLevel") as § !>§).x = this.§,d§[2];
         }
         else
         {
            (§[$5§.getItemByName("Button_NextLevel") as § !>§).setVisibility(false);
            (§[$5§.getItemByName("Button_Menu") as § !>§).x = this.§,d§[0] + Math.abs(this.§,d§[1] - this.§,d§[0]) / 2;
            (§[$5§.getItemByName("Button_Replay") as § !>§).x = this.§,d§[1] + Math.abs(this.§,d§[2] - this.§,d§[1]) / 2;
         }
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.§4"?§ = false;
         §7n§.pause();
         this.§4!§ = new §<#r§(0,0,0,0);
         §[$5§.movieClip.addChildAt(this.§4!§,0);
         if(mLevelManager.isCutSceneNext())
         {
            this.showButtonsCutScene();
         }
         else
         {
            this.showButtonsNormal();
         }
         this.mNewScoreCounter = 0;
         this.§&,§ = false;
         §3Z§.playSound("LevelCompletedTheme1");
         this.§4!§.§>#0§(0.7);
         this.§%#l§ = 0;
         this.§^L§ = 0;
         this.§@"T§();
      }
      
      private function §@"T§() : void
      {
         this.§!#9§ = false;
         this.setScoreData();
         this.§-#]§ = new Timer(500);
         this.§3T§ = 0;
         this.§-#]§.addEventListener(TimerEvent.TIMER,this.§,!#§);
         this.§-#]§.start();
      }
      
      protected function §7#H§() : void
      {
         if(AngryBirdsBase.singleton.dataModel.userProgress.getEagleScoreForLevel(mLevelManager.currentLevel) == 100)
         {
            (§[$5§.getItemByName("MovieClip_ResultMEFeather") as §'!`§).mClip.gotoAndStop("On");
         }
         else
         {
            (§[$5§.getItemByName("MovieClip_ResultMEFeather") as §'!`§).mClip.gotoAndStop("Off");
         }
      }
      
      protected function §]"i§(param1:int, param2:int) : void
      {
         if(this.§9"#§)
         {
            param2 = param1;
            AngryBirdsBase.singleton.dataModel.userProgress.§?L§(mLevelManager.currentLevel,param2);
            §[$5§.setText("New Highscore!","TextField_BestScore");
         }
         else
         {
            §[$5§.setText("Best " + param2.toString(),"TextField_BestScore");
            this.§?$2§ = mLevelManager.getNumStarsForLevel(mLevelManager.currentLevel,param2);
            switch(this.§?$2§)
            {
               case 1:
                  (§[$5§.getItemByName("MovieClip_BestScoreStars") as §'!`§).§!!q§("OneStar");
                  break;
               case 2:
                  (§[$5§.getItemByName("MovieClip_BestScoreStars") as §'!`§).§!!q§("TwoStar");
                  break;
               case 3:
                  (§[$5§.getItemByName("MovieClip_BestScoreStars") as §'!`§).§!!q§("ThreeStar");
            }
         }
      }
      
      protected function setScoreData() : void
      {
         var _loc1_:int = AngryBirdsBase.singleton.dataModel.userProgress.getScoreForLevel(mLevelManager.currentLevel);
         var _loc2_:int = §7n§.§ "'§.getScore();
         this.§9"#§ = _loc2_ > _loc1_;
         this.§]"i§(_loc2_,_loc1_);
         this.§7#H§();
         var _loc3_:int = §7n§.§ "'§.getEagleScore();
         var _loc4_:int = AngryBirdsBase.singleton.dataModel.userProgress.getEagleScoreForLevel(mLevelManager.currentLevel);
         var _loc5_:*;
         if(_loc5_ = _loc3_ > _loc4_)
         {
            _loc4_ = _loc3_;
            AngryBirdsBase.singleton.dataModel.userProgress.§2#+§(mLevelManager.currentLevel,_loc4_);
         }
         var _loc6_:int = AngryBirdsBase.singleton.dataModel.userProgress.getStarsForLevel(mLevelManager.currentLevel,_loc2_);
         (§[$5§.getItemByName("MovieClip_NewHighScoreBadge") as §'!`§).setVisibility(false);
         (§[$5§.getItemByName("MovieClip_StarLeft") as §'!`§).mClip.gotoAndStop("UnLit");
         (§[$5§.getItemByName("MovieClip_StarCenter") as §'!`§).mClip.gotoAndStop("UnLit");
         (§[$5§.getItemByName("MovieClip_StarRight") as §'!`§).mClip.gotoAndStop("UnLit");
      }
      
      protected function onBadgeLanded() : void
      {
         if(this.§9"#§)
         {
            §3Z§.playSound("highscore",§0"M§);
            §[$5§.setText("New Highscore!","TextField_NewHighScore");
            (§[$5§.getItemByName("TextField_NewHighScore") as §`"$§).setVisibility(true);
            (§[$5§.getItemByName("MovieClip_BestScoreStars") as §'!`§).setVisibility(false);
            this.§3$8§();
         }
         else
         {
            (§[$5§.getItemByName("TextField_BestScore") as §`"$§).setVisibility(true);
            (§[$5§.getItemByName("MovieClip_BestScoreStars") as §'!`§).setVisibility(true);
         }
      }
      
      protected function §3$8§() : void
      {
         this.§%#l§ = 0;
         this.§^L§ = 0;
         this.§>"4§ = §-!n§;
      }
      
      private function §%!p§(param1:Number) : void
      {
         (§[$5§.getItemByName("Container_LevelEndStripe") as §]$+§).x = (§[$5§.getItemByName("Container_LevelEndStripe") as §]$+§).x - this.§%#l§;
         (§[$5§.getItemByName("Container_LevelEndStripe") as §]$+§).y = (§[$5§.getItemByName("Container_LevelEndStripe") as §]$+§).y - this.§^L§;
         if(this.§>"4§ > 0)
         {
            this.§%#l§ = (Math.random() - 0.5) * (this.§>"4§ / §-!n§) * 20;
            this.§^L§ = (Math.random() - 0.5) * (this.§>"4§ / §-!n§) * 20;
            (§[$5§.getItemByName("Container_LevelEndStripe") as §]$+§).x = (§[$5§.getItemByName("Container_LevelEndStripe") as §]$+§).x + this.§%#l§;
            (§[$5§.getItemByName("Container_LevelEndStripe") as §]$+§).y = (§[$5§.getItemByName("Container_LevelEndStripe") as §]$+§).y + this.§^L§;
         }
         else
         {
            this.§%#l§ = 0;
            this.§^L§ = 0;
         }
         this.§>"4§ -= param1 / 10;
      }
      
      private function §,!#§(param1:TimerEvent) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:String = null;
         var _loc8_:String = null;
         var _loc9_:String = null;
         var _loc4_:Number = mLevelManager.getGoldScoreForLevel(mLevelManager.currentLevel);
         var _loc5_:Number = mLevelManager.getSilverScoreForLevel(mLevelManager.currentLevel);
         if((§[$5§.getItemByName("MovieClip_StarLeft") as §'!`§).mClip.currentLabel == "UnLit")
         {
            §3Z§.playSound("gamescorescreen_score_count_loop",§5r§,100);
            this.§-#]§.delay = 1000;
            this.§3"-§.§@&§(§7n§.§ "'§.getScore());
            _loc6_ = this.§3"-§.getValue() / _loc4_ * 2;
            if(_loc4_ <= 0)
            {
               _loc6_ = 1;
            }
            this.§"K§ = §"!&§.§`"H§.§1"W§(this,{"mNewScoreCounter":this.§3"-§.getValue()},{"mNewScoreCounter":0},_loc6_);
            this.§"K§.onComplete = this.§&#s§;
            this.§"K§.play();
            _loc7_ = this.setStarLeftLit();
            _loc2_ = (§[$5§.getItemByName("MovieClip_StarLeft") as §'!`§).x + (§[$5§.getItemByName("Container_LevelEndStripe") as §]$+§).x;
            _loc3_ = (§[$5§.getItemByName("MovieClip_StarLeft") as §'!`§).y + (§[$5§.getItemByName("Container_LevelEndStripe") as §]$+§).y;
            this.§;#x§ = new §7"J§(AngryBirdsBase.screenWidth,AngryBirdsBase.screenHeight,_loc2_,_loc3_,§7"J§.§6#v§,§7"J§.§!A§,_loc7_);
            §[$5§.addChild(this.§;#x§);
            this.§#! §.push(this.§;#x§);
         }
         else if(this.§3"-§.getValue() >= _loc5_ && (§[$5§.getItemByName("MovieClip_StarCenter") as §'!`§).mClip.currentLabel == "UnLit")
         {
            _loc8_ = this.setStarCenterLit();
            _loc2_ = (§[$5§.getItemByName("MovieClip_StarCenter") as §'!`§).x + (§[$5§.getItemByName("Container_LevelEndStripe") as §]$+§).x;
            _loc3_ = (§[$5§.getItemByName("MovieClip_StarCenter") as §'!`§).y + (§[$5§.getItemByName("Container_LevelEndStripe") as §]$+§).y;
            this.§;#x§ = new §7"J§(AngryBirdsBase.screenWidth,AngryBirdsBase.screenHeight,_loc2_,_loc3_,§7"J§.§]"C§,§7"J§.§!A§,_loc8_);
            §[$5§.addChild(this.§;#x§);
            this.§#! §.push(this.§;#x§);
         }
         else if(this.§3"-§.getValue() >= _loc4_ && (§[$5§.getItemByName("MovieClip_StarRight") as §'!`§).mClip.currentLabel == "UnLit")
         {
            this.§4"?§ = true;
            _loc9_ = this.setStarRightLit();
            _loc2_ = (§[$5§.getItemByName("MovieClip_StarRight") as §'!`§).x + (§[$5§.getItemByName("Container_LevelEndStripe") as §]$+§).x;
            _loc3_ = (§[$5§.getItemByName("MovieClip_StarRight") as §'!`§).y + (§[$5§.getItemByName("Container_LevelEndStripe") as §]$+§).y;
            this.§;#x§ = new §7"J§(AngryBirdsBase.screenWidth,AngryBirdsBase.screenHeight,_loc2_,_loc3_,§7"J§.§,]§,§7"J§.§!A§,_loc9_);
            §[$5§.addChild(this.§;#x§);
            this.§#! §.push(this.§;#x§);
         }
         else if(!this.§&,§)
         {
            this.§&,§ = true;
         }
         else
         {
            this.§-#]§.stop();
            if(this.§9"#§ && !this.§!#9§)
            {
               (§[$5§.getItemByName("MovieClip_NewHighScoreBadge") as §'!`§).setVisibility(true);
            }
            else
            {
               (§[$5§.getItemByName("MovieClip_NewHighScoreBadge") as §'!`§).setVisibility(false);
            }
            this.§3"$§ = §"!&§.§`"H§.§1"W§((§[$5§.getItemByName("MovieClip_NewHighScoreBadge") as §'!`§).mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":7,
               "scaleY":7
            },0.1);
            this.§3"$§.onComplete = this.onBadgeLanded;
            this.§3"$§.play();
         }
         ++this.§3T§;
      }
      
      protected function setStarLeftLit() : String
      {
         §3Z§.playSound("star_1_coins",§0"M§);
         (§[$5§.getItemByName("MovieClip_StarLeft") as §'!`§).mClip.gotoAndStop("Lit");
         return §7"Y§.§^#N§;
      }
      
      protected function setStarCenterLit() : String
      {
         §3Z§.playSound("star_2_coins",§0"M§);
         (§[$5§.getItemByName("MovieClip_StarCenter") as §'!`§).mClip.gotoAndStop("Lit");
         return §7"Y§.§^#N§;
      }
      
      protected function setStarRightLit() : String
      {
         §3Z§.playSound("star_3_coins",§0"M§);
         (§[$5§.getItemByName("MovieClip_StarRight") as §'!`§).mClip.gotoAndStop("Lit");
         return §7"Y§.§^#N§;
      }
      
      private function §&#s§() : void
      {
         §3Z§.§&$?§(§5r§);
      }
      
      override protected function update(param1:Number) : void
      {
         var _loc2_:§7"J§ = null;
         super.update(param1);
         §[$5§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScore");
         §[$5§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScoreEffects");
         for each(_loc2_ in this.§#! §)
         {
            _loc2_.update(param1);
         }
         if(this.§>"4§ >= 0)
         {
            this.§%!p§(param1);
         }
         if(nextState.length > 0)
         {
            §7n§.§6#K§.clearLevel();
         }
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§>!v§();
         this.§>"4§ = 0;
         this.mNewScoreCounter = 0;
         if(this.§"K§)
         {
            this.§"K§.stop();
            this.§"K§ = null;
         }
         if(this.§3"$§)
         {
            this.§3"$§.stop();
            this.§3"$§ = null;
         }
         §3Z§.§&$?§(§5r§);
         this.setButtonStates(§+!2§.COMPONENT_STATE_ACTIVE_DEFAULT);
         §[$5§.setText("0","TextField_LevelEndScore");
         §[$5§.setText("0","TextField_LevelEndScoreEffects");
         this.§+"X§();
      }
      
      protected function §+"X§() : void
      {
         if(this.§4!§)
         {
            if(§[$5§.movieClip.contains(this.§4!§))
            {
               §[$5§.movieClip.removeChild(this.§4!§);
            }
            this.§4!§.§"#%§();
            this.§4!§ = null;
         }
      }
      
      protected function setButtonStates(param1:String) : void
      {
         (§[$5§.getItemByName("Button_Menu") as § !>§).setComponentVisualState(param1);
         (§[$5§.getItemByName("Button_Replay") as § !>§).setComponentVisualState(param1);
         (§[$5§.getItemByName("Button_NextLevel") as § !>§).setComponentVisualState(param1);
         (§[$5§.getItemByName("Button_CutScene") as § !>§).setComponentVisualState(param1);
      }
      
      private function §>!v§() : void
      {
         var splash:§7"J§ = null;
         if(this.§-#]§)
         {
            this.§-#]§.stop();
            try
            {
               this.§-#]§.removeEventListener(TimerEvent.TIMER,this.§,!#§);
            }
            catch(e:Error)
            {
            }
         }
         for each(splash in this.§#! §)
         {
            if(§[$5§.contains(splash))
            {
               §[$5§.removeChild(splash);
            }
            splash.§"#%§();
         }
         this.§#! § = new Vector.<§7"J§>();
         this.§0#?§();
      }
      
      protected function §0#?§() : void
      {
         (§[$5§.getItemByName("TextField_BestScore") as §`"$§).setVisibility(false);
         (§[$5§.getItemByName("MovieClip_BestScoreStars") as §'!`§).setVisibility(false);
         (§[$5§.getItemByName("TextField_NewHighScore") as §`"$§).setVisibility(false);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      protected function loadNextLevel() : void
      {
         prepareToLoadNextClassicLevel();
         §1!L§(this.getCutSceneState());
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§6"n§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
               §3Z§.playSound("Menu_Confirm",§3Z§.§[!F§);
               this.loadNextLevel();
               break;
            case "REPLAY":
               §3Z§.playSound("Menu_Confirm",§3Z§.§[!F§);
               §1!L§(this.getStateLevelLoadState());
               break;
            case "MENU":
               §3Z§.§3j§();
               §3Z§.playSound("Menu_Confirm",§3Z§.§[!F§);
               §1!L§(this.getMenuButtonTargetState());
               break;
            case "FULLSCREEN_BUTTON":
               §3Z§.playSound("Menu_Confirm",§3Z§.§[!F§);
               AngryBirdsBase.singleton.§1a§();
         }
      }
      
      protected function getStateLevelLoadState() : String
      {
         return §9!R§.STATE_NAME;
      }
      
      protected function getCutSceneState() : String
      {
         return StateCutScene.STATE_NAME;
      }
      
      public function getMenuButtonTargetState() : String
      {
         return §9#7§.STATE_NAME;
      }
   }
}
