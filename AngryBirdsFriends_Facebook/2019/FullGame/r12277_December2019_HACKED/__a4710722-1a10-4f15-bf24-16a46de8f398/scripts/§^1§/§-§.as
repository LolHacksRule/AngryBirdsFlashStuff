package §^1§
{
   import § "v§.§4$4§;
   import § #_§.§?!>§;
   import § null§.§5"<§;
   import § null§.§@§;
   import §+!n§.§+!p§;
   import §-"Y§.§"!1§;
   import §-"Y§.§,#B§;
   import §-"Y§.§9#B§;
   import §2$;§.§!"e§;
   import §2$;§.§-$5§;
   import §2$;§.§;!b§;
   import §2$;§.§=!Z§;
   import §2E§.§[S§;
   import §<8§.§8!g§;
   import §<8§.§;"k§;
   import §?o§.§4#?§;
   import §[#A§.§&n§;
   import §[#A§.§+#<§;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §-§ extends §';§
   {
      
      public static const STATE_NAME:String = "LevelEndState";
      
      public static const §2!d§:Number = 30;
      
      protected static const §<>§:String = "ScoreLoopCountChannel";
      
      protected static const §#! §:String = "EndScreenEffectChannel";
       
      
      private var § E§:§@#5§;
      
      private var §4!f§:Number;
      
      private var §3!A§:Number = 0.0;
      
      private var §8!@§:Number = 0.0;
      
      private var §1"9§:Boolean = false;
      
      private var §<!J§:Timer;
      
      private var §#"?§:§"!1§;
      
      protected var §+$'§:Array;
      
      protected var §?c§:§9#B§;
      
      protected var §'!2§:Vector.<§9#B§>;
      
      public var mNewScoreCounter:int;
      
      private var §]#O§:int;
      
      private var §<!m§:Boolean;
      
      protected var §["V§:Boolean;
      
      private var §^$>§:§[S§;
      
      protected var §]$1§:Boolean;
      
      private var §5>§:§@#5§;
      
      protected var §<$'§:Boolean;
      
      protected var §%-§:int;
      
      public function §-§(param1:§4#?§, param2:§?!>§, param3:Boolean = false, param4:String = "LevelEndState")
      {
         this.§+$'§ = [];
         this.§^$>§ = new §[S§();
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         §@!D§ = new §+#<§(this);
         §@!D§.init(this.getViewXML());
         this.§"!r§();
         this.§'!2§ = new Vector.<§9#B§>();
         §4$4§.§<!A§(§<>§,1,1);
         §4$4§.§<!A§(§#! §,5,1);
      }
      
      protected function §"!r§() : void
      {
         this.§+$'§.push((§@!D§.getItemByName("Button_Menu") as §;!b§).x);
         this.§+$'§.push((§@!D§.getItemByName("Button_Replay") as §;!b§).x);
         this.§+$'§.push((§@!D§.getItemByName("Button_NextLevel") as §;!b§).x);
         this.§+$'§.push((§@!D§.getItemByName("Button_CutScene") as §;!b§).x);
      }
      
      protected function getViewXML() : XML
      {
         return §&n§.§7a§.Views.View_LevelEnd[0];
      }
      
      protected function showButtonsCutScene() : void
      {
         if(!AngryBirdsBase.singleton.dataModel.userProgress.§@"z§(mLevelManager.currentLevel))
         {
            (§@!D§.getItemByName("Button_Menu") as §;!b§).setVisibility(false);
            (§@!D§.getItemByName("Button_Replay") as §;!b§).setVisibility(true);
            (§@!D§.getItemByName("Button_NextLevel") as §;!b§).setVisibility(false);
            (§@!D§.getItemByName("Button_CutScene") as §;!b§).setVisibility(true);
            (§@!D§.getItemByName("Button_Replay") as §;!b§).x = this.§+$'§[0] + Math.abs(this.§+$'§[1] - this.§+$'§[0]) / 2;
            (§@!D§.getItemByName("Button_CutScene") as §;!b§).x = this.§+$'§[1] + Math.abs(this.§+$'§[2] - this.§+$'§[1]) / 2;
         }
         else
         {
            (§@!D§.getItemByName("Button_Menu") as §;!b§).setVisibility(true);
            (§@!D§.getItemByName("Button_Replay") as §;!b§).setVisibility(true);
            (§@!D§.getItemByName("Button_NextLevel") as §;!b§).setVisibility(false);
            (§@!D§.getItemByName("Button_CutScene") as §;!b§).setVisibility(true);
            (§@!D§.getItemByName("Button_Menu") as §;!b§).x = this.§+$'§[0];
            (§@!D§.getItemByName("Button_Replay") as §;!b§).x = this.§+$'§[1];
            (§@!D§.getItemByName("Button_CutScene") as §;!b§).x = this.§+$'§[2];
         }
      }
      
      protected function showButtonsNormal() : void
      {
         (§@!D§.getItemByName("Button_Menu") as §;!b§).setVisibility(true);
         (§@!D§.getItemByName("Button_Replay") as §;!b§).setVisibility(true);
         (§@!D§.getItemByName("Button_CutScene") as §;!b§).setVisibility(false);
         if(mLevelManager.getNextLevelId())
         {
            (§@!D§.getItemByName("Button_NextLevel") as §;!b§).setVisibility(true);
            (§@!D§.getItemByName("Button_Menu") as §;!b§).x = this.§+$'§[0];
            (§@!D§.getItemByName("Button_Replay") as §;!b§).x = this.§+$'§[1];
            (§@!D§.getItemByName("Button_NextLevel") as §;!b§).x = this.§+$'§[2];
         }
         else
         {
            (§@!D§.getItemByName("Button_NextLevel") as §;!b§).setVisibility(false);
            (§@!D§.getItemByName("Button_Menu") as §;!b§).x = this.§+$'§[0] + Math.abs(this.§+$'§[1] - this.§+$'§[0]) / 2;
            (§@!D§.getItemByName("Button_Replay") as §;!b§).x = this.§+$'§[1] + Math.abs(this.§+$'§[2] - this.§+$'§[1]) / 2;
         }
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.§<$'§ = false;
         §+!p§.pause();
         this.§#"?§ = new §"!1§(0,0,0,0);
         §@!D§.movieClip.addChildAt(this.§#"?§,0);
         if(mLevelManager.isCutSceneNext())
         {
            this.showButtonsCutScene();
         }
         else
         {
            this.showButtonsNormal();
         }
         this.mNewScoreCounter = 0;
         this.§<!m§ = false;
         §4$4§.playSound("LevelCompletedTheme1");
         this.§#"?§.§5d§(0.7);
         this.§3!A§ = 0;
         this.§8!@§ = 0;
         this.§!#<§();
      }
      
      private function §!#<§() : void
      {
         this.§["V§ = false;
         this.setScoreData();
         this.§<!J§ = new Timer(500);
         this.§]#O§ = 0;
         this.§<!J§.addEventListener(TimerEvent.TIMER,this.§5#g§);
         this.§<!J§.start();
      }
      
      protected function §]"X§() : void
      {
         if(AngryBirdsBase.singleton.dataModel.userProgress.getEagleScoreForLevel(mLevelManager.currentLevel) == 100)
         {
            (§@!D§.getItemByName("MovieClip_ResultMEFeather") as §=!Z§).mClip.gotoAndStop("On");
         }
         else
         {
            (§@!D§.getItemByName("MovieClip_ResultMEFeather") as §=!Z§).mClip.gotoAndStop("Off");
         }
      }
      
      protected function §4=§(param1:int, param2:int) : void
      {
         if(this.§]$1§)
         {
            param2 = param1;
            AngryBirdsBase.singleton.dataModel.userProgress.§?g§(mLevelManager.currentLevel,param2);
            §@!D§.setText("New Highscore!","TextField_BestScore");
         }
         else
         {
            §@!D§.setText("Best " + param2.toString(),"TextField_BestScore");
            this.§%-§ = mLevelManager.getNumStarsForLevel(mLevelManager.currentLevel,param2);
            switch(this.§%-§)
            {
               case 1:
                  (§@!D§.getItemByName("MovieClip_BestScoreStars") as §=!Z§).§#"-§("OneStar");
                  break;
               case 2:
                  (§@!D§.getItemByName("MovieClip_BestScoreStars") as §=!Z§).§#"-§("TwoStar");
                  break;
               case 3:
                  (§@!D§.getItemByName("MovieClip_BestScoreStars") as §=!Z§).§#"-§("ThreeStar");
            }
         }
      }
      
      protected function setScoreData() : void
      {
         var _loc1_:int = AngryBirdsBase.singleton.dataModel.userProgress.getScoreForLevel(mLevelManager.currentLevel);
         var _loc2_:int = §+!p§.§-#W§.getScore();
         this.§]$1§ = _loc2_ > _loc1_;
         this.§4=§(_loc2_,_loc1_);
         this.§]"X§();
         var _loc3_:int = §+!p§.§-#W§.getEagleScore();
         var _loc4_:int = AngryBirdsBase.singleton.dataModel.userProgress.getEagleScoreForLevel(mLevelManager.currentLevel);
         if(_loc3_ > _loc4_)
         {
            _loc4_ = _loc3_;
            AngryBirdsBase.singleton.dataModel.userProgress.§5"P§(mLevelManager.currentLevel,_loc4_);
         }
         int(AngryBirdsBase.singleton.dataModel.userProgress.getStarsForLevel(mLevelManager.currentLevel,_loc2_));
         (§@!D§.getItemByName("MovieClip_NewHighScoreBadge") as §=!Z§).setVisibility(false);
         (§@!D§.getItemByName("MovieClip_StarLeft") as §=!Z§).mClip.gotoAndStop("UnLit");
         (§@!D§.getItemByName("MovieClip_StarCenter") as §=!Z§).mClip.gotoAndStop("UnLit");
         (§@!D§.getItemByName("MovieClip_StarRight") as §=!Z§).mClip.gotoAndStop("UnLit");
      }
      
      protected function onBadgeLanded() : void
      {
         if(this.§]$1§)
         {
            §4$4§.playSound("highscore",§#! §);
            §@!D§.setText("New Highscore!","TextField_NewHighScore");
            (§@!D§.getItemByName("TextField_NewHighScore") as §-$5§).setVisibility(true);
            (§@!D§.getItemByName("MovieClip_BestScoreStars") as §=!Z§).setVisibility(false);
            this.§3"z§();
         }
         else
         {
            (§@!D§.getItemByName("TextField_BestScore") as §-$5§).setVisibility(true);
            (§@!D§.getItemByName("MovieClip_BestScoreStars") as §=!Z§).setVisibility(true);
         }
      }
      
      protected function §3"z§() : void
      {
         this.§3!A§ = 0;
         this.§8!@§ = 0;
         this.§4!f§ = §2!d§;
      }
      
      private function §-k§(param1:Number) : void
      {
         (§@!D§.getItemByName("Container_LevelEndStripe") as §!"e§).x = (§@!D§.getItemByName("Container_LevelEndStripe") as §!"e§).x - this.§3!A§;
         (§@!D§.getItemByName("Container_LevelEndStripe") as §!"e§).y = (§@!D§.getItemByName("Container_LevelEndStripe") as §!"e§).y - this.§8!@§;
         if(this.§4!f§ > 0)
         {
            this.§3!A§ = (Math.random() - 0.5) * (this.§4!f§ / §2!d§) * 20;
            this.§8!@§ = (Math.random() - 0.5) * (this.§4!f§ / §2!d§) * 20;
            (§@!D§.getItemByName("Container_LevelEndStripe") as §!"e§).x = (§@!D§.getItemByName("Container_LevelEndStripe") as §!"e§).x + this.§3!A§;
            (§@!D§.getItemByName("Container_LevelEndStripe") as §!"e§).y = (§@!D§.getItemByName("Container_LevelEndStripe") as §!"e§).y + this.§8!@§;
         }
         else
         {
            this.§3!A§ = 0;
            this.§8!@§ = 0;
         }
         this.§4!f§ -= param1 / 10;
      }
      
      private function §5#g§(param1:TimerEvent) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:String = null;
         var _loc8_:String = null;
         var _loc9_:String = null;
         var _loc4_:Number = mLevelManager.getGoldScoreForLevel(mLevelManager.currentLevel);
         var _loc5_:Number = mLevelManager.getSilverScoreForLevel(mLevelManager.currentLevel);
         if((§@!D§.getItemByName("MovieClip_StarLeft") as §=!Z§).mClip.currentLabel == "UnLit")
         {
            §4$4§.playSound("gamescorescreen_score_count_loop",§<>§,100);
            this.§<!J§.delay = 1000;
            this.§^$>§.§,#T§(§+!p§.§-#W§.getScore());
            _loc6_ = this.§^$>§.getValue() / _loc4_ * 2;
            if(_loc4_ <= 0)
            {
               _loc6_ = 1;
            }
            this.§5>§ = §5"<§.§3"1§.§3#§(this,{"mNewScoreCounter":this.§^$>§.getValue()},{"mNewScoreCounter":0},_loc6_);
            this.§5>§.onComplete = this.§?C§;
            this.§5>§.play();
            _loc7_ = this.setStarLeftLit();
            _loc2_ = (§@!D§.getItemByName("MovieClip_StarLeft") as §=!Z§).x + (§@!D§.getItemByName("Container_LevelEndStripe") as §!"e§).x;
            _loc3_ = (§@!D§.getItemByName("MovieClip_StarLeft") as §=!Z§).y + (§@!D§.getItemByName("Container_LevelEndStripe") as §!"e§).y;
            this.§?c§ = new §9#B§(AngryBirdsBase.screenWidth,AngryBirdsBase.screenHeight,_loc2_,_loc3_,§9#B§.§<!h§,§9#B§.§?-§,_loc7_);
            §@!D§.addChild(this.§?c§);
            this.§'!2§.push(this.§?c§);
         }
         else if(this.§^$>§.getValue() >= _loc5_ && (§@!D§.getItemByName("MovieClip_StarCenter") as §=!Z§).mClip.currentLabel == "UnLit")
         {
            _loc8_ = this.setStarCenterLit();
            _loc2_ = (§@!D§.getItemByName("MovieClip_StarCenter") as §=!Z§).x + (§@!D§.getItemByName("Container_LevelEndStripe") as §!"e§).x;
            _loc3_ = (§@!D§.getItemByName("MovieClip_StarCenter") as §=!Z§).y + (§@!D§.getItemByName("Container_LevelEndStripe") as §!"e§).y;
            this.§?c§ = new §9#B§(AngryBirdsBase.screenWidth,AngryBirdsBase.screenHeight,_loc2_,_loc3_,§9#B§.§6! §,§9#B§.§?-§,_loc8_);
            §@!D§.addChild(this.§?c§);
            this.§'!2§.push(this.§?c§);
         }
         else if(this.§^$>§.getValue() >= _loc4_ && (§@!D§.getItemByName("MovieClip_StarRight") as §=!Z§).mClip.currentLabel == "UnLit")
         {
            this.§<$'§ = true;
            _loc9_ = this.setStarRightLit();
            _loc2_ = (§@!D§.getItemByName("MovieClip_StarRight") as §=!Z§).x + (§@!D§.getItemByName("Container_LevelEndStripe") as §!"e§).x;
            _loc3_ = (§@!D§.getItemByName("MovieClip_StarRight") as §=!Z§).y + (§@!D§.getItemByName("Container_LevelEndStripe") as §!"e§).y;
            this.§?c§ = new §9#B§(AngryBirdsBase.screenWidth,AngryBirdsBase.screenHeight,_loc2_,_loc3_,§9#B§.§##I§,§9#B§.§?-§,_loc9_);
            §@!D§.addChild(this.§?c§);
            this.§'!2§.push(this.§?c§);
         }
         else if(!this.§<!m§)
         {
            this.§<!m§ = true;
         }
         else
         {
            this.§<!J§.stop();
            if(this.§]$1§ && !this.§["V§)
            {
               (§@!D§.getItemByName("MovieClip_NewHighScoreBadge") as §=!Z§).setVisibility(true);
            }
            else
            {
               (§@!D§.getItemByName("MovieClip_NewHighScoreBadge") as §=!Z§).setVisibility(false);
            }
            this.§ E§ = §5"<§.§3"1§.§3#§((§@!D§.getItemByName("MovieClip_NewHighScoreBadge") as §=!Z§).mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":7,
               "scaleY":7
            },0.1);
            this.§ E§.onComplete = this.onBadgeLanded;
            this.§ E§.play();
         }
         ++this.§]#O§;
      }
      
      protected function setStarLeftLit() : String
      {
         §4$4§.playSound("star_1_coins",§#! §);
         (§@!D§.getItemByName("MovieClip_StarLeft") as §=!Z§).mClip.gotoAndStop("Lit");
         return §,#B§.§+#+§;
      }
      
      protected function setStarCenterLit() : String
      {
         §4$4§.playSound("star_2_coins",§#! §);
         (§@!D§.getItemByName("MovieClip_StarCenter") as §=!Z§).mClip.gotoAndStop("Lit");
         return §,#B§.§+#+§;
      }
      
      protected function setStarRightLit() : String
      {
         §4$4§.playSound("star_3_coins",§#! §);
         (§@!D§.getItemByName("MovieClip_StarRight") as §=!Z§).mClip.gotoAndStop("Lit");
         return §,#B§.§+#+§;
      }
      
      private function §?C§() : void
      {
         §4$4§.§'!?§(§<>§);
      }
      
      override protected function update(param1:Number) : void
      {
         var _loc2_:§9#B§ = null;
         super.update(param1);
         §@!D§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScore");
         §@!D§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScoreEffects");
         for each(_loc2_ in this.§'!2§)
         {
            _loc2_.update(param1);
         }
         if(this.§4!f§ >= 0)
         {
            this.§-k§(param1);
         }
         if(nextState.length > 0)
         {
            §+!p§.§`?§.clearLevel();
         }
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§2"p§();
         this.§4!f§ = 0;
         this.mNewScoreCounter = 0;
         if(this.§5>§)
         {
            this.§5>§.stop();
            this.§5>§ = null;
         }
         if(this.§ E§)
         {
            this.§ E§.stop();
            this.§ E§ = null;
         }
         §4$4§.§'!?§(§<>§);
         this.setButtonStates(§;"k§.COMPONENT_STATE_ACTIVE_DEFAULT);
         §@!D§.setText("0","TextField_LevelEndScore");
         §@!D§.setText("0","TextField_LevelEndScoreEffects");
         this.§7"p§();
      }
      
      protected function §7"p§() : void
      {
         if(this.§#"?§)
         {
            if(§@!D§.movieClip.contains(this.§#"?§))
            {
               §@!D§.movieClip.removeChild(this.§#"?§);
            }
            this.§#"?§.§ !1§();
            this.§#"?§ = null;
         }
      }
      
      protected function setButtonStates(param1:String) : void
      {
         (§@!D§.getItemByName("Button_Menu") as §;!b§).setComponentVisualState(param1);
         (§@!D§.getItemByName("Button_Replay") as §;!b§).setComponentVisualState(param1);
         (§@!D§.getItemByName("Button_NextLevel") as §;!b§).setComponentVisualState(param1);
         (§@!D§.getItemByName("Button_CutScene") as §;!b§).setComponentVisualState(param1);
      }
      
      private function §2"p§() : void
      {
         var splash:§9#B§ = null;
         if(this.§<!J§)
         {
            this.§<!J§.stop();
            try
            {
               this.§<!J§.removeEventListener(TimerEvent.TIMER,this.§5#g§);
            }
            catch(e:Error)
            {
            }
         }
         for each(splash in this.§'!2§)
         {
            if(§@!D§.contains(splash))
            {
               §@!D§.removeChild(splash);
            }
            splash.§ !1§();
         }
         this.§'!2§ = new Vector.<§9#B§>();
         this.§9!c§();
      }
      
      protected function §9!c§() : void
      {
         (§@!D§.getItemByName("TextField_BestScore") as §-$5§).setVisibility(false);
         (§@!D§.getItemByName("MovieClip_BestScoreStars") as §=!Z§).setVisibility(false);
         (§@!D§.getItemByName("TextField_NewHighScore") as §-$5§).setVisibility(false);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      protected function loadNextLevel() : void
      {
         prepareToLoadNextClassicLevel();
         §%!?§(this.getCutSceneState());
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§8!g§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
               §4$4§.playSound("Menu_Confirm",§4$4§.§1#l§);
               this.loadNextLevel();
               break;
            case "REPLAY":
               §4$4§.playSound("Menu_Confirm",§4$4§.§1#l§);
               §%!?§(this.getStateLevelLoadState());
               break;
            case "MENU":
               §4$4§.§?#l§();
               §4$4§.playSound("Menu_Confirm",§4$4§.§1#l§);
               §%!?§(this.getMenuButtonTargetState());
               break;
            case "FULLSCREEN_BUTTON":
               §4$4§.playSound("Menu_Confirm",§4$4§.§1#l§);
               AngryBirdsBase.singleton.§=!Y§();
         }
      }
      
      protected function getStateLevelLoadState() : String
      {
         return §2t§.STATE_NAME;
      }
      
      protected function getCutSceneState() : String
      {
         return StateCutScene.STATE_NAME;
      }
      
      public function getMenuButtonTargetState() : String
      {
         return §;O§.STATE_NAME;
      }
   }
}
