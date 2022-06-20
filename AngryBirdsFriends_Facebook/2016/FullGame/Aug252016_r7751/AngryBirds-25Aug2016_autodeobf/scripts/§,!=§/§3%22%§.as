package §,!=§
{
   import §#v§.§#!?§;
   import §&#S§.§""Z§;
   import §&#S§.§+,§;
   import §'!U§.§0!?§;
   import §'!U§.§4P§;
   import §'U§.§]#[§;
   import §6"r§.§0"<§;
   import §6"r§.§="T§;
   import §6"r§.§=O§;
   import §6"r§.§]$!§;
   import §8§.§#$+§;
   import §<!=§.§#!A§;
   import §<!=§.§;§;
   import §<!=§.§`#w§;
   import §<!O§.§'k§;
   import §<!O§.§@#`§;
   import §>!#§.§>p§;
   import §?§.§>"$§;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §3"%§ extends §7"S§
   {
      
      public static const STATE_NAME:String = "LevelEndState";
      
      public static const §<!h§:Number = 30;
      
      protected static const §<$"§:String = "ScoreLoopCountChannel";
      
      protected static const §]$-§:String = "EndScreenEffectChannel";
       
      
      private var §&#"§:§+,§;
      
      private var §%!"§:Number;
      
      private var §6"p§:Number = 0.0;
      
      private var §9#$§:Number = 0.0;
      
      private var §<D§:Boolean = false;
      
      private var §8"d§:Timer;
      
      private var §"?§:§;#1§;
      
      protected var §1#Q§:Array;
      
      protected var §^!F§:§#!A§;
      
      protected var §'#X§:Vector.<§#!A§>;
      
      public var mNewScoreCounter:int;
      
      private var §@#h§:int;
      
      private var §6$3§:Boolean;
      
      protected var §2$<§:Boolean;
      
      private var §%$ §:§>p§;
      
      protected var § 7§:Boolean;
      
      private var §#^§:§+,§;
      
      protected var §@c§:Boolean;
      
      protected var §+O§:int;
      
      public function §3"%§(param1:§#!?§, param2:§]#[§, param3:Boolean = false, param4:String = "LevelEndState")
      {
         this.§1#Q§ = [];
         this.§%$ § = new §>p§();
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         §!$§ = new §'k§(this);
         §!$§.init(this.getViewXML());
         this.§1#A§();
         this.§'#X§ = new Vector.<§#!A§>();
         §#$+§.§9"]§(§<$"§,1,1);
         §#$+§.§9"]§(§]$-§,3,1);
      }
      
      protected function §1#A§() : void
      {
         this.§1#Q§.push((§!$§.getItemByName("Button_Menu") as §=O§).x);
         this.§1#Q§.push((§!$§.getItemByName("Button_Replay") as §=O§).x);
         this.§1#Q§.push((§!$§.getItemByName("Button_NextLevel") as §=O§).x);
         this.§1#Q§.push((§!$§.getItemByName("Button_CutScene") as §=O§).x);
      }
      
      protected function getViewXML() : XML
      {
         return §@#`§.§#!c§.Views.View_LevelEnd[0];
      }
      
      protected function §2!u§() : void
      {
         if(!AngryBirdsBase.singleton.dataModel.userProgress.§4! §(mLevelManager.currentLevel))
         {
            (§!$§.getItemByName("Button_Menu") as §=O§).setVisibility(false);
            (§!$§.getItemByName("Button_Replay") as §=O§).setVisibility(true);
            (§!$§.getItemByName("Button_NextLevel") as §=O§).setVisibility(false);
            (§!$§.getItemByName("Button_CutScene") as §=O§).setVisibility(true);
            (§!$§.getItemByName("Button_Replay") as §=O§).x = this.§1#Q§[0] + Math.abs(this.§1#Q§[1] - this.§1#Q§[0]) / 2;
            (§!$§.getItemByName("Button_CutScene") as §=O§).x = this.§1#Q§[1] + Math.abs(this.§1#Q§[2] - this.§1#Q§[1]) / 2;
         }
         else
         {
            (§!$§.getItemByName("Button_Menu") as §=O§).setVisibility(true);
            (§!$§.getItemByName("Button_Replay") as §=O§).setVisibility(true);
            (§!$§.getItemByName("Button_NextLevel") as §=O§).setVisibility(false);
            (§!$§.getItemByName("Button_CutScene") as §=O§).setVisibility(true);
            (§!$§.getItemByName("Button_Menu") as §=O§).x = this.§1#Q§[0];
            (§!$§.getItemByName("Button_Replay") as §=O§).x = this.§1#Q§[1];
            (§!$§.getItemByName("Button_CutScene") as §=O§).x = this.§1#Q§[2];
         }
      }
      
      protected function showButtonsNormal() : void
      {
         (§!$§.getItemByName("Button_Menu") as §=O§).setVisibility(true);
         (§!$§.getItemByName("Button_Replay") as §=O§).setVisibility(true);
         (§!$§.getItemByName("Button_CutScene") as §=O§).setVisibility(false);
         if(mLevelManager.getNextLevelId())
         {
            (§!$§.getItemByName("Button_NextLevel") as §=O§).setVisibility(true);
            (§!$§.getItemByName("Button_Menu") as §=O§).x = this.§1#Q§[0];
            (§!$§.getItemByName("Button_Replay") as §=O§).x = this.§1#Q§[1];
            (§!$§.getItemByName("Button_NextLevel") as §=O§).x = this.§1#Q§[2];
         }
         else
         {
            (§!$§.getItemByName("Button_NextLevel") as §=O§).setVisibility(false);
            (§!$§.getItemByName("Button_Menu") as §=O§).x = this.§1#Q§[0] + Math.abs(this.§1#Q§[1] - this.§1#Q§[0]) / 2;
            (§!$§.getItemByName("Button_Replay") as §=O§).x = this.§1#Q§[1] + Math.abs(this.§1#Q§[2] - this.§1#Q§[1]) / 2;
         }
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.§@c§ = false;
         §>"$§.pause();
         this.§"?§ = new §;#1§(0,0,0,0);
         §!$§.movieClip.addChildAt(this.§"?§,§!$§.movieClip.numChildren - 1);
         if(mLevelManager.isCutSceneNext())
         {
            this.§2!u§();
         }
         else
         {
            this.showButtonsNormal();
         }
         this.mNewScoreCounter = 0;
         this.§6$3§ = false;
         §#$+§.playSound("LevelCompletedTheme1");
         this.§"?§.§@!z§(0.7);
         this.§6"p§ = 0;
         this.§9#$§ = 0;
         this.§-!n§();
      }
      
      private function §-!n§() : void
      {
         this.§2$<§ = false;
         this.setScoreData();
         this.§8"d§ = new Timer(500);
         this.§@#h§ = 0;
         this.§8"d§.addEventListener(TimerEvent.TIMER,this.§'!;§);
         this.§8"d§.start();
      }
      
      protected function §=9§() : void
      {
         if(AngryBirdsBase.singleton.dataModel.userProgress.getEagleScoreForLevel(mLevelManager.currentLevel) == 100)
         {
            (§!$§.getItemByName("MovieClip_ResultMEFeather") as §="T§).mClip.gotoAndStop("On");
         }
         else
         {
            (§!$§.getItemByName("MovieClip_ResultMEFeather") as §="T§).mClip.gotoAndStop("Off");
         }
      }
      
      protected function §8#=§(param1:int, param2:int) : void
      {
         if(this.§ 7§)
         {
            param2 = param1;
            AngryBirdsBase.singleton.dataModel.userProgress.§&#f§(mLevelManager.currentLevel,param2);
            §!$§.setText("New Highscore!","TextField_BestScore");
         }
         else
         {
            §!$§.setText("Best " + param2.toString(),"TextField_BestScore");
            this.§+O§ = mLevelManager.getNumStarsForLevel(mLevelManager.currentLevel,param2);
            switch(this.§+O§)
            {
               case 1:
                  (§!$§.getItemByName("MovieClip_BestScoreStars") as §="T§).§9!,§("OneStar");
                  break;
               case 2:
                  (§!$§.getItemByName("MovieClip_BestScoreStars") as §="T§).§9!,§("TwoStar");
                  break;
               case 3:
                  (§!$§.getItemByName("MovieClip_BestScoreStars") as §="T§).§9!,§("ThreeStar");
            }
         }
      }
      
      protected function setScoreData() : void
      {
         var _loc1_:int = AngryBirdsBase.singleton.dataModel.userProgress.getScoreForLevel(mLevelManager.currentLevel);
         var _loc2_:int = §>"$§.§#0§.getScore();
         this.§ 7§ = _loc2_ > _loc1_;
         this.§8#=§(_loc2_,_loc1_);
         this.§=9§();
         var _loc3_:int = §>"$§.§#0§.getEagleScore();
         var _loc4_:int = AngryBirdsBase.singleton.dataModel.userProgress.getEagleScoreForLevel(mLevelManager.currentLevel);
         if(_loc3_ > _loc4_)
         {
            _loc4_ = _loc3_;
            AngryBirdsBase.singleton.dataModel.userProgress.§1$,§(mLevelManager.currentLevel,_loc4_);
         }
         int(AngryBirdsBase.singleton.dataModel.userProgress.getStarsForLevel(mLevelManager.currentLevel,_loc2_));
         (§!$§.getItemByName("MovieClip_NewHighScoreBadge") as §="T§).setVisibility(false);
         (§!$§.getItemByName("MovieClip_StarLeft") as §="T§).mClip.gotoAndStop("UnLit");
         (§!$§.getItemByName("MovieClip_StarCenter") as §="T§).mClip.gotoAndStop("UnLit");
         (§!$§.getItemByName("MovieClip_StarRight") as §="T§).mClip.gotoAndStop("UnLit");
      }
      
      protected function onBadgeLanded() : void
      {
         if(this.§ 7§)
         {
            §#$+§.playSound("Hiscore_Badge",§]$-§);
            §!$§.setText("New Highscore!","TextField_NewHighScore");
            (§!$§.getItemByName("TextField_NewHighScore") as §]$!§).setVisibility(true);
            (§!$§.getItemByName("MovieClip_BestScoreStars") as §="T§).setVisibility(false);
            this.§8e§();
         }
         else
         {
            (§!$§.getItemByName("TextField_BestScore") as §]$!§).setVisibility(true);
            (§!$§.getItemByName("MovieClip_BestScoreStars") as §="T§).setVisibility(true);
         }
      }
      
      protected function §8e§() : void
      {
         this.§6"p§ = 0;
         this.§9#$§ = 0;
         this.§%!"§ = §<!h§;
      }
      
      private function §1"J§(param1:Number) : void
      {
         (§!$§.getItemByName("Container_LevelEndStripe") as §0"<§).x = (§!$§.getItemByName("Container_LevelEndStripe") as §0"<§).x - this.§6"p§;
         (§!$§.getItemByName("Container_LevelEndStripe") as §0"<§).y = (§!$§.getItemByName("Container_LevelEndStripe") as §0"<§).y - this.§9#$§;
         if(this.§%!"§ > 0)
         {
            this.§6"p§ = (Math.random() - 0.5) * (this.§%!"§ / §<!h§) * 20;
            this.§9#$§ = (Math.random() - 0.5) * (this.§%!"§ / §<!h§) * 20;
            (§!$§.getItemByName("Container_LevelEndStripe") as §0"<§).x = (§!$§.getItemByName("Container_LevelEndStripe") as §0"<§).x + this.§6"p§;
            (§!$§.getItemByName("Container_LevelEndStripe") as §0"<§).y = (§!$§.getItemByName("Container_LevelEndStripe") as §0"<§).y + this.§9#$§;
         }
         else
         {
            this.§6"p§ = 0;
            this.§9#$§ = 0;
         }
         this.§%!"§ -= param1 / 10;
      }
      
      private function §'!;§(param1:TimerEvent) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:String = null;
         var _loc8_:String = null;
         var _loc9_:String = null;
         var _loc4_:Number = mLevelManager.getGoldScoreForLevel(mLevelManager.currentLevel);
         var _loc5_:Number = mLevelManager.getSilverScoreForLevel(mLevelManager.currentLevel);
         if((§!$§.getItemByName("MovieClip_StarLeft") as §="T§).mClip.currentLabel == "UnLit")
         {
            §#$+§.playSound("Hiscore_Count",§<$"§,100);
            this.§8"d§.delay = 1000;
            this.§%$ §.§,$-§(§>"$§.§#0§.getScore());
            _loc6_ = this.§%$ §.getValue() / _loc4_ * 2;
            if(_loc4_ <= 0)
            {
               _loc6_ = 1;
            }
            this.§#^§ = §""Z§.§3!]§.§5"0§(this,{"mNewScoreCounter":this.§%$ §.getValue()},{"mNewScoreCounter":0},_loc6_);
            this.§#^§.onComplete = this.§"@§;
            this.§#^§.play();
            _loc7_ = this.setStarLeftLit();
            _loc2_ = (§!$§.getItemByName("MovieClip_StarLeft") as §="T§).x + (§!$§.getItemByName("Container_LevelEndStripe") as §0"<§).x;
            _loc3_ = (§!$§.getItemByName("MovieClip_StarLeft") as §="T§).y + (§!$§.getItemByName("Container_LevelEndStripe") as §0"<§).y;
            this.§^!F§ = new §#!A§(AngryBirdsBase.screenWidth,AngryBirdsBase.screenHeight,_loc2_,_loc3_,§#!A§.§]!a§,§#!A§.§1"y§,_loc7_);
            §!$§.addChild(this.§^!F§);
            this.§'#X§.push(this.§^!F§);
         }
         else if(this.§%$ §.getValue() >= _loc5_ && (§!$§.getItemByName("MovieClip_StarCenter") as §="T§).mClip.currentLabel == "UnLit")
         {
            _loc8_ = this.setStarCenterLit();
            _loc2_ = (§!$§.getItemByName("MovieClip_StarCenter") as §="T§).x + (§!$§.getItemByName("Container_LevelEndStripe") as §0"<§).x;
            _loc3_ = (§!$§.getItemByName("MovieClip_StarCenter") as §="T§).y + (§!$§.getItemByName("Container_LevelEndStripe") as §0"<§).y;
            this.§^!F§ = new §#!A§(AngryBirdsBase.screenWidth,AngryBirdsBase.screenHeight,_loc2_,_loc3_,§#!A§.§`!x§,§#!A§.§1"y§,_loc8_);
            §!$§.addChild(this.§^!F§);
            this.§'#X§.push(this.§^!F§);
         }
         else if(this.§%$ §.getValue() >= _loc4_ && (§!$§.getItemByName("MovieClip_StarRight") as §="T§).mClip.currentLabel == "UnLit")
         {
            this.§@c§ = true;
            _loc9_ = this.setStarRightLit();
            _loc2_ = (§!$§.getItemByName("MovieClip_StarRight") as §="T§).x + (§!$§.getItemByName("Container_LevelEndStripe") as §0"<§).x;
            _loc3_ = (§!$§.getItemByName("MovieClip_StarRight") as §="T§).y + (§!$§.getItemByName("Container_LevelEndStripe") as §0"<§).y;
            this.§^!F§ = new §#!A§(AngryBirdsBase.screenWidth,AngryBirdsBase.screenHeight,_loc2_,_loc3_,§#!A§.§3"O§,§#!A§.§1"y§,_loc9_);
            §!$§.addChild(this.§^!F§);
            this.§'#X§.push(this.§^!F§);
         }
         else if(!this.§6$3§)
         {
            this.§6$3§ = true;
         }
         else
         {
            this.§8"d§.stop();
            if(this.§ 7§ && !this.§2$<§)
            {
               (§!$§.getItemByName("MovieClip_NewHighScoreBadge") as §="T§).setVisibility(true);
            }
            else
            {
               (§!$§.getItemByName("MovieClip_NewHighScoreBadge") as §="T§).setVisibility(false);
            }
            this.§&#"§ = §""Z§.§3!]§.§5"0§((§!$§.getItemByName("MovieClip_NewHighScoreBadge") as §="T§).mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":7,
               "scaleY":7
            },0.1);
            this.§&#"§.onComplete = this.onBadgeLanded;
            this.§&#"§.play();
         }
         ++this.§@#h§;
      }
      
      protected function setStarLeftLit() : String
      {
         §#$+§.playSound("Hiscore_Star_Splash1",§]$-§);
         (§!$§.getItemByName("MovieClip_StarLeft") as §="T§).mClip.gotoAndStop("Lit");
         return §`#w§.§8!_§;
      }
      
      protected function setStarCenterLit() : String
      {
         §#$+§.playSound("Hiscore_Star_Splash2",§]$-§);
         (§!$§.getItemByName("MovieClip_StarCenter") as §="T§).mClip.gotoAndStop("Lit");
         return §`#w§.§8!_§;
      }
      
      protected function setStarRightLit() : String
      {
         §#$+§.playSound("Hiscore_Star_Splash3",§]$-§);
         (§!$§.getItemByName("MovieClip_StarRight") as §="T§).mClip.gotoAndStop("Lit");
         return §`#w§.§8!_§;
      }
      
      private function §"@§() : void
      {
         §#$+§.§%!!§(§<$"§);
      }
      
      override protected function update(param1:Number) : void
      {
         var _loc2_:§#!A§ = null;
         super.update(param1);
         §!$§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScore");
         §!$§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScoreEffects");
         for each(_loc2_ in this.§'#X§)
         {
            _loc2_.update(param1);
         }
         if(this.§%!"§ >= 0)
         {
            this.§1"J§(param1);
         }
         if(nextState.length > 0)
         {
            §>"$§.§3#'§.clearLevel();
         }
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§=$§();
         this.§%!"§ = 0;
         this.mNewScoreCounter = 0;
         if(this.§#^§)
         {
            this.§#^§.stop();
            this.§#^§ = null;
         }
         if(this.§&#"§)
         {
            this.§&#"§.stop();
            this.§&#"§ = null;
         }
         §#$+§.§%!!§(§<$"§);
         this.§&"<§(§4P§.COMPONENT_STATE_ACTIVE_DEFAULT);
         §!$§.setText("0","TextField_LevelEndScore");
         §!$§.setText("0","TextField_LevelEndScoreEffects");
         if(this.§"?§)
         {
            if(§!$§.movieClip.contains(this.§"?§))
            {
               §!$§.movieClip.removeChild(this.§"?§);
            }
            this.§"?§.§4#1§();
            this.§"?§ = null;
         }
      }
      
      protected function §&"<§(param1:String) : void
      {
         (§!$§.getItemByName("Button_Menu") as §=O§).setComponentVisualState(param1);
         (§!$§.getItemByName("Button_Replay") as §=O§).setComponentVisualState(param1);
         (§!$§.getItemByName("Button_NextLevel") as §=O§).setComponentVisualState(param1);
         (§!$§.getItemByName("Button_CutScene") as §=O§).setComponentVisualState(param1);
      }
      
      private function §=$§() : void
      {
         var splash:§#!A§ = null;
         if(this.§8"d§)
         {
            this.§8"d§.stop();
            try
            {
               this.§8"d§.removeEventListener(TimerEvent.TIMER,this.§'!;§);
            }
            catch(e:Error)
            {
            }
         }
         for each(splash in this.§'#X§)
         {
            if(§!$§.contains(splash))
            {
               §!$§.removeChild(splash);
            }
            splash.§4#1§();
         }
         this.§'#X§ = new Vector.<§#!A§>();
         this.§,!Z§();
      }
      
      protected function §,!Z§() : void
      {
         (§!$§.getItemByName("TextField_BestScore") as §]$!§).setVisibility(false);
         (§!$§.getItemByName("MovieClip_BestScoreStars") as §="T§).setVisibility(false);
         (§!$§.getItemByName("TextField_NewHighScore") as §]$!§).setVisibility(false);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      protected function loadNextLevel() : void
      {
         prepareToLoadNextClassicLevel();
         §7P§(this.getCutSceneState());
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§0!?§) : void
      {
         var _loc4_:String = null;
         switch(param2)
         {
            case "NEXT_LEVEL":
               this.loadNextLevel();
               break;
            case "REPLAY":
               §#$+§.playSound("Menu_Confirm",§#$+§.§'!o§);
               §7P§(this.getStateLevelLoadState());
               break;
            case "WATCH_REPLAY":
               §#$+§.playSound("Menu_Confirm",§#$+§.§'!o§);
               §7P§(this.getStateLevelLoadState());
               if(_loc4_ = §>"$§.§3#'§.§6",§())
               {
                  §>"$§.§3#'§.§?#[§(_loc4_);
                  break;
               }
               break;
            case "MENU":
               §#$+§.§#$-§();
               §#$+§.playSound("Menu_Confirm",§#$+§.§'!o§);
               §7P§(this.getMenuButtonTargetState());
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsBase.singleton.§&f§();
         }
      }
      
      protected function getStateLevelLoadState() : String
      {
         return §@#j§.STATE_NAME;
      }
      
      protected function getCutSceneState() : String
      {
         return StateCutScene.STATE_NAME;
      }
      
      public function getMenuButtonTargetState() : String
      {
         return §<!B§.STATE_NAME;
      }
   }
}
