package §"!@§
{
   import § %§.§0"8§;
   import § %§.§1Q§;
   import §!#"§.§&"H§;
   import §!#"§.§4[§;
   import §'",§.§6#s§;
   import §'",§.§8$7§;
   import §'",§.§@#e§;
   import §3#T§.§'§;
   import §3#T§.§,#[§;
   import §5P§.§""C§;
   import §;#D§.§3#U§;
   import §;$3§.§8=§;
   import §<h§.§%M§;
   import §<h§.§>"0§;
   import §<h§.§@N§;
   import §<h§.§[#K§;
   import §@!M§.§!"p§;
   import §`7§.§;e§;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §["F§ extends §@"S§
   {
      
      public static const STATE_NAME:String = "LevelEndState";
      
      public static const §+1§:Number = 30;
      
      protected static const §!!?§:String = "ScoreLoopCountChannel";
      
      protected static const §0#b§:String = "EndScreenEffectChannel";
       
      
      private var §5#P§:§4[§;
      
      private var §##]§:Number;
      
      private var §[#s§:Number = 0.0;
      
      private var §0!q§:Number = 0.0;
      
      private var §+"V§:Boolean = false;
      
      private var §'#+§:Timer;
      
      private var §"!7§:§6#s§;
      
      protected var §5!h§:Array;
      
      protected var §!$9§:§8$7§;
      
      protected var §;!g§:Vector.<§8$7§>;
      
      public var mNewScoreCounter:int;
      
      private var §1""§:int;
      
      private var § C§:Boolean;
      
      protected var §8# §:Boolean;
      
      private var §2"Z§:§;e§;
      
      protected var §>n§:Boolean;
      
      private var §7!o§:§4[§;
      
      protected var §-#2§:Boolean;
      
      protected var §1!y§:int;
      
      public function §["F§(param1:§8=§, param2:§""C§, param3:Boolean = false, param4:String = "LevelEndState")
      {
         this.§5!h§ = [];
         this.§2"Z§ = new §;e§();
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         §`!H§ = new §0"8§(this);
         §`!H§.init(this.getViewXML());
         this.§82§();
         this.§;!g§ = new Vector.<§8$7§>();
         §!"p§.§5#4§(§!!?§,1,1);
         §!"p§.§5#4§(§0#b§,5,1);
      }
      
      protected function §82§() : void
      {
         this.§5!h§.push((§`!H§.getItemByName("Button_Menu") as §>"0§).x);
         this.§5!h§.push((§`!H§.getItemByName("Button_Replay") as §>"0§).x);
         this.§5!h§.push((§`!H§.getItemByName("Button_NextLevel") as §>"0§).x);
         this.§5!h§.push((§`!H§.getItemByName("Button_CutScene") as §>"0§).x);
      }
      
      protected function getViewXML() : XML
      {
         return §1Q§.§5T§.Views.View_LevelEnd[0];
      }
      
      protected function showButtonsCutScene() : void
      {
         if(!AngryBirdsBase.singleton.dataModel.userProgress.§,!§(mLevelManager.currentLevel))
         {
            (§`!H§.getItemByName("Button_Menu") as §>"0§).setVisibility(false);
            (§`!H§.getItemByName("Button_Replay") as §>"0§).setVisibility(true);
            (§`!H§.getItemByName("Button_NextLevel") as §>"0§).setVisibility(false);
            (§`!H§.getItemByName("Button_CutScene") as §>"0§).setVisibility(true);
            (§`!H§.getItemByName("Button_Replay") as §>"0§).x = this.§5!h§[0] + Math.abs(this.§5!h§[1] - this.§5!h§[0]) / 2;
            (§`!H§.getItemByName("Button_CutScene") as §>"0§).x = this.§5!h§[1] + Math.abs(this.§5!h§[2] - this.§5!h§[1]) / 2;
         }
         else
         {
            (§`!H§.getItemByName("Button_Menu") as §>"0§).setVisibility(true);
            (§`!H§.getItemByName("Button_Replay") as §>"0§).setVisibility(true);
            (§`!H§.getItemByName("Button_NextLevel") as §>"0§).setVisibility(false);
            (§`!H§.getItemByName("Button_CutScene") as §>"0§).setVisibility(true);
            (§`!H§.getItemByName("Button_Menu") as §>"0§).x = this.§5!h§[0];
            (§`!H§.getItemByName("Button_Replay") as §>"0§).x = this.§5!h§[1];
            (§`!H§.getItemByName("Button_CutScene") as §>"0§).x = this.§5!h§[2];
         }
      }
      
      protected function showButtonsNormal() : void
      {
         (§`!H§.getItemByName("Button_Menu") as §>"0§).setVisibility(true);
         (§`!H§.getItemByName("Button_Replay") as §>"0§).setVisibility(true);
         (§`!H§.getItemByName("Button_CutScene") as §>"0§).setVisibility(false);
         if(mLevelManager.getNextLevelId())
         {
            (§`!H§.getItemByName("Button_NextLevel") as §>"0§).setVisibility(true);
            (§`!H§.getItemByName("Button_Menu") as §>"0§).x = this.§5!h§[0];
            (§`!H§.getItemByName("Button_Replay") as §>"0§).x = this.§5!h§[1];
            (§`!H§.getItemByName("Button_NextLevel") as §>"0§).x = this.§5!h§[2];
         }
         else
         {
            (§`!H§.getItemByName("Button_NextLevel") as §>"0§).setVisibility(false);
            (§`!H§.getItemByName("Button_Menu") as §>"0§).x = this.§5!h§[0] + Math.abs(this.§5!h§[1] - this.§5!h§[0]) / 2;
            (§`!H§.getItemByName("Button_Replay") as §>"0§).x = this.§5!h§[1] + Math.abs(this.§5!h§[2] - this.§5!h§[1]) / 2;
         }
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.§-#2§ = false;
         §3#U§.pause();
         this.§"!7§ = new §6#s§(0,0,0,0);
         §`!H§.movieClip.addChildAt(this.§"!7§,0);
         if(mLevelManager.isCutSceneNext())
         {
            this.showButtonsCutScene();
         }
         else
         {
            this.showButtonsNormal();
         }
         this.mNewScoreCounter = 0;
         this.§ C§ = false;
         §!"p§.playSound("LevelCompletedTheme1");
         this.§"!7§.§>$6§(0.7);
         this.§[#s§ = 0;
         this.§0!q§ = 0;
         this.§[G§();
      }
      
      private function §[G§() : void
      {
         this.§8# § = false;
         this.setScoreData();
         this.§'#+§ = new Timer(500);
         this.§1""§ = 0;
         this.§'#+§.addEventListener(TimerEvent.TIMER,this.§^#x§);
         this.§'#+§.start();
      }
      
      protected function §`#j§() : void
      {
         if(AngryBirdsBase.singleton.dataModel.userProgress.getEagleScoreForLevel(mLevelManager.currentLevel) == 100)
         {
            (§`!H§.getItemByName("MovieClip_ResultMEFeather") as §@N§).mClip.gotoAndStop("On");
         }
         else
         {
            (§`!H§.getItemByName("MovieClip_ResultMEFeather") as §@N§).mClip.gotoAndStop("Off");
         }
      }
      
      protected function §%!l§(param1:int, param2:int) : void
      {
         if(this.§>n§)
         {
            param2 = param1;
            AngryBirdsBase.singleton.dataModel.userProgress.§&U§(mLevelManager.currentLevel,param2);
            §`!H§.setText("New Highscore!","TextField_BestScore");
         }
         else
         {
            §`!H§.setText("Best " + param2.toString(),"TextField_BestScore");
            this.§1!y§ = mLevelManager.getNumStarsForLevel(mLevelManager.currentLevel,param2);
            switch(this.§1!y§)
            {
               case 1:
                  (§`!H§.getItemByName("MovieClip_BestScoreStars") as §@N§).§4#y§("OneStar");
                  break;
               case 2:
                  (§`!H§.getItemByName("MovieClip_BestScoreStars") as §@N§).§4#y§("TwoStar");
                  break;
               case 3:
                  (§`!H§.getItemByName("MovieClip_BestScoreStars") as §@N§).§4#y§("ThreeStar");
            }
         }
      }
      
      protected function setScoreData() : void
      {
         var _loc1_:int = AngryBirdsBase.singleton.dataModel.userProgress.getScoreForLevel(mLevelManager.currentLevel);
         var _loc2_:int = §3#U§.§8I§.getScore();
         this.§>n§ = _loc2_ > _loc1_;
         this.§%!l§(_loc2_,_loc1_);
         this.§`#j§();
         var _loc3_:int = §3#U§.§8I§.getEagleScore();
         var _loc4_:int = AngryBirdsBase.singleton.dataModel.userProgress.getEagleScoreForLevel(mLevelManager.currentLevel);
         var _loc5_:*;
         if(_loc5_ = _loc3_ > _loc4_)
         {
            _loc4_ = _loc3_;
            AngryBirdsBase.singleton.dataModel.userProgress.§5#+§(mLevelManager.currentLevel,_loc4_);
         }
         var _loc6_:int = AngryBirdsBase.singleton.dataModel.userProgress.getStarsForLevel(mLevelManager.currentLevel,_loc2_);
         (§`!H§.getItemByName("MovieClip_NewHighScoreBadge") as §@N§).setVisibility(false);
         (§`!H§.getItemByName("MovieClip_StarLeft") as §@N§).mClip.gotoAndStop("UnLit");
         (§`!H§.getItemByName("MovieClip_StarCenter") as §@N§).mClip.gotoAndStop("UnLit");
         (§`!H§.getItemByName("MovieClip_StarRight") as §@N§).mClip.gotoAndStop("UnLit");
      }
      
      protected function onBadgeLanded() : void
      {
         if(this.§>n§)
         {
            §!"p§.playSound("highscore",§0#b§);
            §`!H§.setText("New Highscore!","TextField_NewHighScore");
            (§`!H§.getItemByName("TextField_NewHighScore") as §%M§).setVisibility(true);
            (§`!H§.getItemByName("MovieClip_BestScoreStars") as §@N§).setVisibility(false);
            this.§;#3§();
         }
         else
         {
            (§`!H§.getItemByName("TextField_BestScore") as §%M§).setVisibility(true);
            (§`!H§.getItemByName("MovieClip_BestScoreStars") as §@N§).setVisibility(true);
         }
      }
      
      protected function §;#3§() : void
      {
         this.§[#s§ = 0;
         this.§0!q§ = 0;
         this.§##]§ = §+1§;
      }
      
      private function §;"]§(param1:Number) : void
      {
         (§`!H§.getItemByName("Container_LevelEndStripe") as §[#K§).x = (§`!H§.getItemByName("Container_LevelEndStripe") as §[#K§).x - this.§[#s§;
         (§`!H§.getItemByName("Container_LevelEndStripe") as §[#K§).y = (§`!H§.getItemByName("Container_LevelEndStripe") as §[#K§).y - this.§0!q§;
         if(this.§##]§ > 0)
         {
            this.§[#s§ = (Math.random() - 0.5) * (this.§##]§ / §+1§) * 20;
            this.§0!q§ = (Math.random() - 0.5) * (this.§##]§ / §+1§) * 20;
            (§`!H§.getItemByName("Container_LevelEndStripe") as §[#K§).x = (§`!H§.getItemByName("Container_LevelEndStripe") as §[#K§).x + this.§[#s§;
            (§`!H§.getItemByName("Container_LevelEndStripe") as §[#K§).y = (§`!H§.getItemByName("Container_LevelEndStripe") as §[#K§).y + this.§0!q§;
         }
         else
         {
            this.§[#s§ = 0;
            this.§0!q§ = 0;
         }
         this.§##]§ -= param1 / 10;
      }
      
      private function §^#x§(param1:TimerEvent) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:String = null;
         var _loc8_:String = null;
         var _loc9_:String = null;
         var _loc4_:Number = mLevelManager.getGoldScoreForLevel(mLevelManager.currentLevel);
         var _loc5_:Number = mLevelManager.getSilverScoreForLevel(mLevelManager.currentLevel);
         if((§`!H§.getItemByName("MovieClip_StarLeft") as §@N§).mClip.currentLabel == "UnLit")
         {
            §!"p§.playSound("gamescorescreen_score_count_loop",§!!?§,100);
            this.§'#+§.delay = 1000;
            this.§2"Z§.§ $;§(§3#U§.§8I§.getScore());
            _loc6_ = this.§2"Z§.getValue() / _loc4_ * 2;
            if(_loc4_ <= 0)
            {
               _loc6_ = 1;
            }
            this.§7!o§ = §&"H§.§6!§.§6C§(this,{"mNewScoreCounter":this.§2"Z§.getValue()},{"mNewScoreCounter":0},_loc6_);
            this.§7!o§.onComplete = this.§4,§;
            this.§7!o§.play();
            _loc7_ = this.setStarLeftLit();
            _loc2_ = (§`!H§.getItemByName("MovieClip_StarLeft") as §@N§).x + (§`!H§.getItemByName("Container_LevelEndStripe") as §[#K§).x;
            _loc3_ = (§`!H§.getItemByName("MovieClip_StarLeft") as §@N§).y + (§`!H§.getItemByName("Container_LevelEndStripe") as §[#K§).y;
            this.§!$9§ = new §8$7§(AngryBirdsBase.screenWidth,AngryBirdsBase.screenHeight,_loc2_,_loc3_,§8$7§.§5!l§,§8$7§.§8#s§,_loc7_);
            §`!H§.addChild(this.§!$9§);
            this.§;!g§.push(this.§!$9§);
         }
         else if(this.§2"Z§.getValue() >= _loc5_ && (§`!H§.getItemByName("MovieClip_StarCenter") as §@N§).mClip.currentLabel == "UnLit")
         {
            _loc8_ = this.setStarCenterLit();
            _loc2_ = (§`!H§.getItemByName("MovieClip_StarCenter") as §@N§).x + (§`!H§.getItemByName("Container_LevelEndStripe") as §[#K§).x;
            _loc3_ = (§`!H§.getItemByName("MovieClip_StarCenter") as §@N§).y + (§`!H§.getItemByName("Container_LevelEndStripe") as §[#K§).y;
            this.§!$9§ = new §8$7§(AngryBirdsBase.screenWidth,AngryBirdsBase.screenHeight,_loc2_,_loc3_,§8$7§.§%!L§,§8$7§.§8#s§,_loc8_);
            §`!H§.addChild(this.§!$9§);
            this.§;!g§.push(this.§!$9§);
         }
         else if(this.§2"Z§.getValue() >= _loc4_ && (§`!H§.getItemByName("MovieClip_StarRight") as §@N§).mClip.currentLabel == "UnLit")
         {
            this.§-#2§ = true;
            _loc9_ = this.setStarRightLit();
            _loc2_ = (§`!H§.getItemByName("MovieClip_StarRight") as §@N§).x + (§`!H§.getItemByName("Container_LevelEndStripe") as §[#K§).x;
            _loc3_ = (§`!H§.getItemByName("MovieClip_StarRight") as §@N§).y + (§`!H§.getItemByName("Container_LevelEndStripe") as §[#K§).y;
            this.§!$9§ = new §8$7§(AngryBirdsBase.screenWidth,AngryBirdsBase.screenHeight,_loc2_,_loc3_,§8$7§.§!$-§,§8$7§.§8#s§,_loc9_);
            §`!H§.addChild(this.§!$9§);
            this.§;!g§.push(this.§!$9§);
         }
         else if(!this.§ C§)
         {
            this.§ C§ = true;
         }
         else
         {
            this.§'#+§.stop();
            if(this.§>n§ && !this.§8# §)
            {
               (§`!H§.getItemByName("MovieClip_NewHighScoreBadge") as §@N§).setVisibility(true);
            }
            else
            {
               (§`!H§.getItemByName("MovieClip_NewHighScoreBadge") as §@N§).setVisibility(false);
            }
            this.§5#P§ = §&"H§.§6!§.§6C§((§`!H§.getItemByName("MovieClip_NewHighScoreBadge") as §@N§).mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":7,
               "scaleY":7
            },0.1);
            this.§5#P§.onComplete = this.onBadgeLanded;
            this.§5#P§.play();
         }
         ++this.§1""§;
      }
      
      protected function setStarLeftLit() : String
      {
         §!"p§.playSound("star_1_coins",§0#b§);
         (§`!H§.getItemByName("MovieClip_StarLeft") as §@N§).mClip.gotoAndStop("Lit");
         return §@#e§.§<"h§;
      }
      
      protected function setStarCenterLit() : String
      {
         §!"p§.playSound("star_2_coins",§0#b§);
         (§`!H§.getItemByName("MovieClip_StarCenter") as §@N§).mClip.gotoAndStop("Lit");
         return §@#e§.§<"h§;
      }
      
      protected function setStarRightLit() : String
      {
         §!"p§.playSound("star_3_coins",§0#b§);
         (§`!H§.getItemByName("MovieClip_StarRight") as §@N§).mClip.gotoAndStop("Lit");
         return §@#e§.§<"h§;
      }
      
      private function §4,§() : void
      {
         §!"p§.§5#u§(§!!?§);
      }
      
      override protected function update(param1:Number) : void
      {
         var _loc2_:§8$7§ = null;
         super.update(param1);
         §`!H§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScore");
         §`!H§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScoreEffects");
         for each(_loc2_ in this.§;!g§)
         {
            _loc2_.update(param1);
         }
         if(this.§##]§ >= 0)
         {
            this.§;"]§(param1);
         }
         if(nextState.length > 0)
         {
            §3#U§.§#$4§.clearLevel();
         }
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§ #_§();
         this.§##]§ = 0;
         this.mNewScoreCounter = 0;
         if(this.§7!o§)
         {
            this.§7!o§.stop();
            this.§7!o§ = null;
         }
         if(this.§5#P§)
         {
            this.§5#P§.stop();
            this.§5#P§ = null;
         }
         §!"p§.§5#u§(§!!?§);
         this.setButtonStates(§,#[§.COMPONENT_STATE_ACTIVE_DEFAULT);
         §`!H§.setText("0","TextField_LevelEndScore");
         §`!H§.setText("0","TextField_LevelEndScoreEffects");
         this.§^!r§();
      }
      
      protected function §^!r§() : void
      {
         if(this.§"!7§)
         {
            if(§`!H§.movieClip.contains(this.§"!7§))
            {
               §`!H§.movieClip.removeChild(this.§"!7§);
            }
            this.§"!7§.§,"I§();
            this.§"!7§ = null;
         }
      }
      
      protected function setButtonStates(param1:String) : void
      {
         (§`!H§.getItemByName("Button_Menu") as §>"0§).setComponentVisualState(param1);
         (§`!H§.getItemByName("Button_Replay") as §>"0§).setComponentVisualState(param1);
         (§`!H§.getItemByName("Button_NextLevel") as §>"0§).setComponentVisualState(param1);
         (§`!H§.getItemByName("Button_CutScene") as §>"0§).setComponentVisualState(param1);
      }
      
      private function § #_§() : void
      {
         var splash:§8$7§ = null;
         if(this.§'#+§)
         {
            this.§'#+§.stop();
            try
            {
               this.§'#+§.removeEventListener(TimerEvent.TIMER,this.§^#x§);
            }
            catch(e:Error)
            {
            }
         }
         for each(splash in this.§;!g§)
         {
            if(§`!H§.contains(splash))
            {
               §`!H§.removeChild(splash);
            }
            splash.§,"I§();
         }
         this.§;!g§ = new Vector.<§8$7§>();
         this.§08§();
      }
      
      protected function §08§() : void
      {
         (§`!H§.getItemByName("TextField_BestScore") as §%M§).setVisibility(false);
         (§`!H§.getItemByName("MovieClip_BestScoreStars") as §@N§).setVisibility(false);
         (§`!H§.getItemByName("TextField_NewHighScore") as §%M§).setVisibility(false);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      protected function loadNextLevel() : void
      {
         prepareToLoadNextClassicLevel();
         §1"h§(this.getCutSceneState());
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§'#0§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
               §!"p§.playSound("Menu_Confirm",§!"p§.§+!;§);
               this.loadNextLevel();
               break;
            case "REPLAY":
               §!"p§.playSound("Menu_Confirm",§!"p§.§+!;§);
               §1"h§(this.getStateLevelLoadState());
               break;
            case "MENU":
               §!"p§.§>#p§();
               §!"p§.playSound("Menu_Confirm",§!"p§.§+!;§);
               §1"h§(this.getMenuButtonTargetState());
               break;
            case "FULLSCREEN_BUTTON":
               §!"p§.playSound("Menu_Confirm",§!"p§.§+!;§);
               AngryBirdsBase.singleton.§5#p§();
         }
      }
      
      protected function getStateLevelLoadState() : String
      {
         return §8"o§.STATE_NAME;
      }
      
      protected function getCutSceneState() : String
      {
         return StateCutScene.STATE_NAME;
      }
      
      public function getMenuButtonTargetState() : String
      {
         return §1S§.STATE_NAME;
      }
   }
}
