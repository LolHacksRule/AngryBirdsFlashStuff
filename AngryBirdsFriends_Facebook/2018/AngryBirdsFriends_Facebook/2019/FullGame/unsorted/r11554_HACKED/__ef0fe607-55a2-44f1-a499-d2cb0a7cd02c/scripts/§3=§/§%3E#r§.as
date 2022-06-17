package §3=§
{
   import §"$=§.§'![§;
   import §%#v§.§0"j§;
   import §%#v§.§?!F§;
   import §+#B§.§["Q§;
   import §3"G§.§16§;
   import §4!n§.§'!,§;
   import §4!n§.§'!V§;
   import §5!$§.§"S§;
   import §5!$§.§-#j§;
   import §5!$§.§<c§;
   import §5!$§.§>§;
   import §6§.§'#n§;
   import §6§.§]%§;
   import §=!2§.§%"T§;
   import §>"9§.§[#%§;
   import §>#O§.§'##§;
   import §>#O§.§]U§;
   import §>#O§.§]u§;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §>#r§ extends §-"4§
   {
      
      public static const STATE_NAME:String = "LevelEndState";
      
      public static const §4!b§:Number = 30;
      
      protected static const §-w§:String = "ScoreLoopCountChannel";
      
      protected static const §-",§:String = "EndScreenEffectChannel";
       
      
      private var §7#M§:§]%§;
      
      private var §`#$§:Number;
      
      private var §;Y§:Number = 0.0;
      
      private var §1!1§:Number = 0.0;
      
      private var §4"x§:Boolean = false;
      
      private var §0,§:Timer;
      
      private var §>5§:§]U§;
      
      protected var §]#G§:Array;
      
      protected var §%#e§:§]u§;
      
      protected var §"#e§:Vector.<§]u§>;
      
      public var mNewScoreCounter:int;
      
      private var § !k§:int;
      
      private var §<#Z§:Boolean;
      
      protected var §@n§:Boolean;
      
      private var §6"r§:§["Q§;
      
      protected var §4c§:Boolean;
      
      private var §9$"§:§]%§;
      
      protected var §7#5§:Boolean;
      
      protected var §7!V§:int;
      
      public function §>#r§(param1:§'![§, param2:§16§, param3:Boolean = false, param4:String = "LevelEndState")
      {
         this.§]#G§ = [];
         this.§6"r§ = new §["Q§();
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         §<"`§ = new §?!F§(this);
         §<"`§.init(this.getViewXML());
         this.§>i§();
         this.§"#e§ = new Vector.<§]u§>();
         §[#%§.§8!3§(§-w§,1,1);
         §[#%§.§8!3§(§-",§,5,1);
      }
      
      protected function §>i§() : void
      {
         this.§]#G§.push((§<"`§.getItemByName("Button_Menu") as §"S§).x);
         this.§]#G§.push((§<"`§.getItemByName("Button_Replay") as §"S§).x);
         this.§]#G§.push((§<"`§.getItemByName("Button_NextLevel") as §"S§).x);
         this.§]#G§.push((§<"`§.getItemByName("Button_CutScene") as §"S§).x);
      }
      
      protected function getViewXML() : XML
      {
         return §0"j§.§-i§.Views.View_LevelEnd[0];
      }
      
      protected function showButtonsCutScene() : void
      {
         if(!AngryBirdsBase.singleton.dataModel.userProgress.§""3§(mLevelManager.currentLevel))
         {
            (§<"`§.getItemByName("Button_Menu") as §"S§).setVisibility(false);
            (§<"`§.getItemByName("Button_Replay") as §"S§).setVisibility(true);
            (§<"`§.getItemByName("Button_NextLevel") as §"S§).setVisibility(false);
            (§<"`§.getItemByName("Button_CutScene") as §"S§).setVisibility(true);
            (§<"`§.getItemByName("Button_Replay") as §"S§).x = this.§]#G§[0] + Math.abs(this.§]#G§[1] - this.§]#G§[0]) / 2;
            (§<"`§.getItemByName("Button_CutScene") as §"S§).x = this.§]#G§[1] + Math.abs(this.§]#G§[2] - this.§]#G§[1]) / 2;
         }
         else
         {
            (§<"`§.getItemByName("Button_Menu") as §"S§).setVisibility(true);
            (§<"`§.getItemByName("Button_Replay") as §"S§).setVisibility(true);
            (§<"`§.getItemByName("Button_NextLevel") as §"S§).setVisibility(false);
            (§<"`§.getItemByName("Button_CutScene") as §"S§).setVisibility(true);
            (§<"`§.getItemByName("Button_Menu") as §"S§).x = this.§]#G§[0];
            (§<"`§.getItemByName("Button_Replay") as §"S§).x = this.§]#G§[1];
            (§<"`§.getItemByName("Button_CutScene") as §"S§).x = this.§]#G§[2];
         }
      }
      
      protected function showButtonsNormal() : void
      {
         (§<"`§.getItemByName("Button_Menu") as §"S§).setVisibility(true);
         (§<"`§.getItemByName("Button_Replay") as §"S§).setVisibility(true);
         (§<"`§.getItemByName("Button_CutScene") as §"S§).setVisibility(false);
         if(mLevelManager.getNextLevelId())
         {
            (§<"`§.getItemByName("Button_NextLevel") as §"S§).setVisibility(true);
            (§<"`§.getItemByName("Button_Menu") as §"S§).x = this.§]#G§[0];
            (§<"`§.getItemByName("Button_Replay") as §"S§).x = this.§]#G§[1];
            (§<"`§.getItemByName("Button_NextLevel") as §"S§).x = this.§]#G§[2];
         }
         else
         {
            (§<"`§.getItemByName("Button_NextLevel") as §"S§).setVisibility(false);
            (§<"`§.getItemByName("Button_Menu") as §"S§).x = this.§]#G§[0] + Math.abs(this.§]#G§[1] - this.§]#G§[0]) / 2;
            (§<"`§.getItemByName("Button_Replay") as §"S§).x = this.§]#G§[1] + Math.abs(this.§]#G§[2] - this.§]#G§[1]) / 2;
         }
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.§7#5§ = false;
         §%"T§.pause();
         this.§>5§ = new §]U§(0,0,0,0);
         §<"`§.movieClip.addChildAt(this.§>5§,0);
         if(mLevelManager.isCutSceneNext())
         {
            this.showButtonsCutScene();
         }
         else
         {
            this.showButtonsNormal();
         }
         this.mNewScoreCounter = 0;
         this.§<#Z§ = false;
         §[#%§.playSound("LevelCompletedTheme1");
         this.§>5§.§3#q§(0.7);
         this.§;Y§ = 0;
         this.§1!1§ = 0;
         this.§#`§();
      }
      
      private function §#`§() : void
      {
         this.§@n§ = false;
         this.setScoreData();
         this.§0,§ = new Timer(500);
         this.§ !k§ = 0;
         this.§0,§.addEventListener(TimerEvent.TIMER,this.§ J§);
         this.§0,§.start();
      }
      
      protected function §8s§() : void
      {
         if(AngryBirdsBase.singleton.dataModel.userProgress.getEagleScoreForLevel(mLevelManager.currentLevel) == 100)
         {
            (§<"`§.getItemByName("MovieClip_ResultMEFeather") as §>#8§).mClip.gotoAndStop("On");
         }
         else
         {
            (§<"`§.getItemByName("MovieClip_ResultMEFeather") as §>#8§).mClip.gotoAndStop("Off");
         }
      }
      
      protected function §93§(param1:int, param2:int) : void
      {
         if(this.§4c§)
         {
            param2 = param1;
            AngryBirdsBase.singleton.dataModel.userProgress.§<$#§(mLevelManager.currentLevel,param2);
            §<"`§.setText("New Highscore!","TextField_BestScore");
         }
         else
         {
            §<"`§.setText("Best " + param2.toString(),"TextField_BestScore");
            this.§7!V§ = mLevelManager.getNumStarsForLevel(mLevelManager.currentLevel,param2);
            switch(this.§7!V§)
            {
               case 1:
                  (§<"`§.getItemByName("MovieClip_BestScoreStars") as §>#8§).§,#T§("OneStar");
                  break;
               case 2:
                  (§<"`§.getItemByName("MovieClip_BestScoreStars") as §>#8§).§,#T§("TwoStar");
                  break;
               case 3:
                  (§<"`§.getItemByName("MovieClip_BestScoreStars") as §>#8§).§,#T§("ThreeStar");
            }
         }
      }
      
      protected function setScoreData() : void
      {
         var _loc1_:int = AngryBirdsBase.singleton.dataModel.userProgress.getScoreForLevel(mLevelManager.currentLevel);
         var _loc2_:int = §%"T§.§+"M§.getScore();
         this.§4c§ = _loc2_ > _loc1_;
         this.§93§(_loc2_,_loc1_);
         this.§8s§();
         var _loc3_:int = §%"T§.§+"M§.getEagleScore();
         var _loc4_:int = AngryBirdsBase.singleton.dataModel.userProgress.getEagleScoreForLevel(mLevelManager.currentLevel);
         if(_loc3_ > _loc4_)
         {
            _loc4_ = _loc3_;
            AngryBirdsBase.singleton.dataModel.userProgress.§5!+§(mLevelManager.currentLevel,_loc4_);
         }
         int(AngryBirdsBase.singleton.dataModel.userProgress.getStarsForLevel(mLevelManager.currentLevel,_loc2_));
         (§<"`§.getItemByName("MovieClip_NewHighScoreBadge") as §>#8§).setVisibility(false);
         (§<"`§.getItemByName("MovieClip_StarLeft") as §>#8§).mClip.gotoAndStop("UnLit");
         (§<"`§.getItemByName("MovieClip_StarCenter") as §>#8§).mClip.gotoAndStop("UnLit");
         (§<"`§.getItemByName("MovieClip_StarRight") as §>#8§).mClip.gotoAndStop("UnLit");
      }
      
      protected function onBadgeLanded() : void
      {
         if(this.§4c§)
         {
            §[#%§.playSound("highscore",§-",§);
            §<"`§.setText("New Highscore!","TextField_NewHighScore");
            (§<"`§.getItemByName("TextField_NewHighScore") as §-#j§).setVisibility(true);
            (§<"`§.getItemByName("MovieClip_BestScoreStars") as §>#8§).setVisibility(false);
            this.§,"S§();
         }
         else
         {
            (§<"`§.getItemByName("TextField_BestScore") as §-#j§).setVisibility(true);
            (§<"`§.getItemByName("MovieClip_BestScoreStars") as §>#8§).setVisibility(true);
         }
      }
      
      protected function §,"S§() : void
      {
         this.§;Y§ = 0;
         this.§1!1§ = 0;
         this.§`#$§ = §4!b§;
      }
      
      private function §@#l§(param1:Number) : void
      {
         (§<"`§.getItemByName("Container_LevelEndStripe") as §<c§).x = (§<"`§.getItemByName("Container_LevelEndStripe") as §<c§).x - this.§;Y§;
         (§<"`§.getItemByName("Container_LevelEndStripe") as §<c§).y = (§<"`§.getItemByName("Container_LevelEndStripe") as §<c§).y - this.§1!1§;
         if(this.§`#$§ > 0)
         {
            this.§;Y§ = (Math.random() - 0.5) * (this.§`#$§ / §4!b§) * 20;
            this.§1!1§ = (Math.random() - 0.5) * (this.§`#$§ / §4!b§) * 20;
            (§<"`§.getItemByName("Container_LevelEndStripe") as §<c§).x = (§<"`§.getItemByName("Container_LevelEndStripe") as §<c§).x + this.§;Y§;
            (§<"`§.getItemByName("Container_LevelEndStripe") as §<c§).y = (§<"`§.getItemByName("Container_LevelEndStripe") as §<c§).y + this.§1!1§;
         }
         else
         {
            this.§;Y§ = 0;
            this.§1!1§ = 0;
         }
         this.§`#$§ -= param1 / 10;
      }
      
      private function § J§(param1:TimerEvent) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:String = null;
         var _loc8_:String = null;
         var _loc9_:String = null;
         var _loc4_:Number = mLevelManager.getGoldScoreForLevel(mLevelManager.currentLevel);
         var _loc5_:Number = mLevelManager.getSilverScoreForLevel(mLevelManager.currentLevel);
         if((§<"`§.getItemByName("MovieClip_StarLeft") as §>#8§).mClip.currentLabel == "UnLit")
         {
            §[#%§.playSound("gamescorescreen_score_count_loop",§-w§,100);
            this.§0,§.delay = 1000;
            this.§6"r§.§<!Q§(§%"T§.§+"M§.getScore());
            _loc6_ = this.§6"r§.getValue() / _loc4_ * 2;
            if(_loc4_ <= 0)
            {
               _loc6_ = 1;
            }
            this.§9$"§ = §'#n§.§?q§.§9!N§(this,{"mNewScoreCounter":this.§6"r§.getValue()},{"mNewScoreCounter":0},_loc6_);
            this.§9$"§.onComplete = this.§=!6§;
            this.§9$"§.play();
            _loc7_ = this.setStarLeftLit();
            _loc2_ = (§<"`§.getItemByName("MovieClip_StarLeft") as §>#8§).x + (§<"`§.getItemByName("Container_LevelEndStripe") as §<c§).x;
            _loc3_ = (§<"`§.getItemByName("MovieClip_StarLeft") as §>#8§).y + (§<"`§.getItemByName("Container_LevelEndStripe") as §<c§).y;
            this.§%#e§ = new §]u§(AngryBirdsBase.screenWidth,AngryBirdsBase.screenHeight,_loc2_,_loc3_,§]u§.§,#=§,§]u§.§!#_§,_loc7_);
            §<"`§.addChild(this.§%#e§);
            this.§"#e§.push(this.§%#e§);
         }
         else if(this.§6"r§.getValue() >= _loc5_ && (§<"`§.getItemByName("MovieClip_StarCenter") as §>#8§).mClip.currentLabel == "UnLit")
         {
            _loc8_ = this.setStarCenterLit();
            _loc2_ = (§<"`§.getItemByName("MovieClip_StarCenter") as §>#8§).x + (§<"`§.getItemByName("Container_LevelEndStripe") as §<c§).x;
            _loc3_ = (§<"`§.getItemByName("MovieClip_StarCenter") as §>#8§).y + (§<"`§.getItemByName("Container_LevelEndStripe") as §<c§).y;
            this.§%#e§ = new §]u§(AngryBirdsBase.screenWidth,AngryBirdsBase.screenHeight,_loc2_,_loc3_,§]u§.§>"n§,§]u§.§!#_§,_loc8_);
            §<"`§.addChild(this.§%#e§);
            this.§"#e§.push(this.§%#e§);
         }
         else if(this.§6"r§.getValue() >= _loc4_ && (§<"`§.getItemByName("MovieClip_StarRight") as §>#8§).mClip.currentLabel == "UnLit")
         {
            this.§7#5§ = true;
            _loc9_ = this.setStarRightLit();
            _loc2_ = (§<"`§.getItemByName("MovieClip_StarRight") as §>#8§).x + (§<"`§.getItemByName("Container_LevelEndStripe") as §<c§).x;
            _loc3_ = (§<"`§.getItemByName("MovieClip_StarRight") as §>#8§).y + (§<"`§.getItemByName("Container_LevelEndStripe") as §<c§).y;
            this.§%#e§ = new §]u§(AngryBirdsBase.screenWidth,AngryBirdsBase.screenHeight,_loc2_,_loc3_,§]u§.§3!`§,§]u§.§!#_§,_loc9_);
            §<"`§.addChild(this.§%#e§);
            this.§"#e§.push(this.§%#e§);
         }
         else if(!this.§<#Z§)
         {
            this.§<#Z§ = true;
         }
         else
         {
            this.§0,§.stop();
            if(this.§4c§ && !this.§@n§)
            {
               (§<"`§.getItemByName("MovieClip_NewHighScoreBadge") as §>#8§).setVisibility(true);
            }
            else
            {
               (§<"`§.getItemByName("MovieClip_NewHighScoreBadge") as §>#8§).setVisibility(false);
            }
            this.§7#M§ = §'#n§.§?q§.§9!N§((§<"`§.getItemByName("MovieClip_NewHighScoreBadge") as §>#8§).mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":7,
               "scaleY":7
            },0.1);
            this.§7#M§.onComplete = this.onBadgeLanded;
            this.§7#M§.play();
         }
         ++this.§ !k§;
      }
      
      protected function setStarLeftLit() : String
      {
         §[#%§.playSound("star_1_coins",§-",§);
         (§<"`§.getItemByName("MovieClip_StarLeft") as §>#8§).mClip.gotoAndStop("Lit");
         return §'##§.§#R§;
      }
      
      protected function setStarCenterLit() : String
      {
         §[#%§.playSound("star_2_coins",§-",§);
         (§<"`§.getItemByName("MovieClip_StarCenter") as §>#8§).mClip.gotoAndStop("Lit");
         return §'##§.§#R§;
      }
      
      protected function setStarRightLit() : String
      {
         §[#%§.playSound("star_3_coins",§-",§);
         (§<"`§.getItemByName("MovieClip_StarRight") as §>#8§).mClip.gotoAndStop("Lit");
         return §'##§.§#R§;
      }
      
      private function §=!6§() : void
      {
         §[#%§.§3$A§(§-w§);
      }
      
      override protected function update(param1:Number) : void
      {
         var _loc2_:§]u§ = null;
         super.update(param1);
         §<"`§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScore");
         §<"`§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScoreEffects");
         for each(_loc2_ in this.§"#e§)
         {
            _loc2_.update(param1);
         }
         if(this.§`#$§ >= 0)
         {
            this.§@#l§(param1);
         }
         if(nextState.length > 0)
         {
            §%"T§.§;`§.clearLevel();
         }
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§"#`§();
         this.§`#$§ = 0;
         this.mNewScoreCounter = 0;
         if(this.§9$"§)
         {
            this.§9$"§.stop();
            this.§9$"§ = null;
         }
         if(this.§7#M§)
         {
            this.§7#M§.stop();
            this.§7#M§ = null;
         }
         §[#%§.§3$A§(§-w§);
         this.setButtonStates(§'!V§.COMPONENT_STATE_ACTIVE_DEFAULT);
         §<"`§.setText("0","TextField_LevelEndScore");
         §<"`§.setText("0","TextField_LevelEndScoreEffects");
         this.§!#$§();
      }
      
      protected function §!#$§() : void
      {
         if(this.§>5§)
         {
            if(§<"`§.movieClip.contains(this.§>5§))
            {
               §<"`§.movieClip.removeChild(this.§>5§);
            }
            this.§>5§.§4#y§();
            this.§>5§ = null;
         }
      }
      
      protected function setButtonStates(param1:String) : void
      {
         (§<"`§.getItemByName("Button_Menu") as §"S§).setComponentVisualState(param1);
         (§<"`§.getItemByName("Button_Replay") as §"S§).setComponentVisualState(param1);
         (§<"`§.getItemByName("Button_NextLevel") as §"S§).setComponentVisualState(param1);
         (§<"`§.getItemByName("Button_CutScene") as §"S§).setComponentVisualState(param1);
      }
      
      private function §"#`§() : void
      {
         var splash:§]u§ = null;
         if(this.§0,§)
         {
            this.§0,§.stop();
            try
            {
               this.§0,§.removeEventListener(TimerEvent.TIMER,this.§ J§);
            }
            catch(e:Error)
            {
            }
         }
         for each(splash in this.§"#e§)
         {
            if(§<"`§.contains(splash))
            {
               §<"`§.removeChild(splash);
            }
            splash.§4#y§();
         }
         this.§"#e§ = new Vector.<§]u§>();
         this.§;!k§();
      }
      
      protected function §;!k§() : void
      {
         (§<"`§.getItemByName("TextField_BestScore") as §-#j§).setVisibility(false);
         (§<"`§.getItemByName("MovieClip_BestScoreStars") as §>#8§).setVisibility(false);
         (§<"`§.getItemByName("TextField_NewHighScore") as §-#j§).setVisibility(false);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      protected function loadNextLevel() : void
      {
         prepareToLoadNextClassicLevel();
         §%D§(this.getCutSceneState());
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§'!,§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
               §[#%§.playSound("Menu_Confirm",§[#%§.§-"I§);
               this.loadNextLevel();
               break;
            case "REPLAY":
               §[#%§.playSound("Menu_Confirm",§[#%§.§-"I§);
               §%D§(this.getStateLevelLoadState());
               break;
            case "MENU":
               §[#%§.§^L§();
               §[#%§.playSound("Menu_Confirm",§[#%§.§-"I§);
               §%D§(this.getMenuButtonTargetState());
               break;
            case "FULLSCREEN_BUTTON":
               §[#%§.playSound("Menu_Confirm",§[#%§.§-"I§);
               AngryBirdsBase.singleton.§3'§();
         }
      }
      
      protected function getStateLevelLoadState() : String
      {
         return §#$@§.STATE_NAME;
      }
      
      protected function getCutSceneState() : String
      {
         return StateCutScene.STATE_NAME;
      }
      
      public function getMenuButtonTargetState() : String
      {
         return §8$8§.STATE_NAME;
      }
   }
}
