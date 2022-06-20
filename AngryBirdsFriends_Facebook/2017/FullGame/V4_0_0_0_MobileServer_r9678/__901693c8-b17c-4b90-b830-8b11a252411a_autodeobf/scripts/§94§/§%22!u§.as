package §94§
{
   import §%#A§.§'=§;
   import §%#A§.§,#w§;
   import §%#A§.§]!_§;
   import §%#A§.§^!4§;
   import §&$!§.§+#!§;
   import §1#W§.§!#&§;
   import §6"r§.§!#A§;
   import §6V§.§#j§;
   import §8#D§.§#E§;
   import §8#D§.§=>§;
   import §8Z§.§-#C§;
   import §8Z§.§6"w§;
   import §<!b§.§&!i§;
   import §<!b§.§8-§;
   import §<!b§.§>#&§;
   import §<"1§.§'"S§;
   import §<"1§.§@!N§;
   import §@#§.§^#Q§;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §"!u§ extends §`"z§
   {
      
      public static const STATE_NAME:String = "LevelEndState";
      
      public static const §5Y§:Number = 30;
      
      protected static const § !o§:String = "ScoreLoopCountChannel";
      
      protected static const §<!"§:String = "EndScreenEffectChannel";
       
      
      private var §`!$§:§-#C§;
      
      private var §1#N§:Number;
      
      private var §`!_§:Number = 0.0;
      
      private var §1!Z§:Number = 0.0;
      
      private var §6&§:Boolean = false;
      
      private var §'$4§:Timer;
      
      private var §`#Y§:§&!i§;
      
      protected var §49§:Array;
      
      protected var §,$0§:§8-§;
      
      protected var §&O§:Vector.<§8-§>;
      
      public var mNewScoreCounter:int;
      
      private var §""F§:int;
      
      private var § g§:Boolean;
      
      protected var §6"G§:Boolean;
      
      private var §4S§:§#j§;
      
      protected var §<!v§:Boolean;
      
      private var §7$4§:§-#C§;
      
      protected var §@"l§:Boolean;
      
      protected var § !a§:int;
      
      public function §"!u§(param1:§^#Q§, param2:§+#!§, param3:Boolean = false, param4:String = "LevelEndState")
      {
         this.§49§ = [];
         this.§4S§ = new §#j§();
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         §?Q§ = new §#E§(this);
         §?Q§.init(this.getViewXML());
         this.§`m§();
         this.§&O§ = new Vector.<§8-§>();
         §!#&§.§!"k§(§ !o§,1,1);
         §!#&§.§!"k§(§<!"§,5,1);
      }
      
      protected function §`m§() : void
      {
         this.§49§.push((§?Q§.getItemByName("Button_Menu") as §,#w§).x);
         this.§49§.push((§?Q§.getItemByName("Button_Replay") as §,#w§).x);
         this.§49§.push((§?Q§.getItemByName("Button_NextLevel") as §,#w§).x);
         this.§49§.push((§?Q§.getItemByName("Button_CutScene") as §,#w§).x);
      }
      
      protected function getViewXML() : XML
      {
         return §=>§.§%" §.Views.View_LevelEnd[0];
      }
      
      protected function showButtonsCutScene() : void
      {
         if(!AngryBirdsBase.singleton.dataModel.userProgress.§,A§(mLevelManager.currentLevel))
         {
            (§?Q§.getItemByName("Button_Menu") as §,#w§).setVisibility(false);
            (§?Q§.getItemByName("Button_Replay") as §,#w§).setVisibility(true);
            (§?Q§.getItemByName("Button_NextLevel") as §,#w§).setVisibility(false);
            (§?Q§.getItemByName("Button_CutScene") as §,#w§).setVisibility(true);
            (§?Q§.getItemByName("Button_Replay") as §,#w§).x = this.§49§[0] + Math.abs(this.§49§[1] - this.§49§[0]) / 2;
            (§?Q§.getItemByName("Button_CutScene") as §,#w§).x = this.§49§[1] + Math.abs(this.§49§[2] - this.§49§[1]) / 2;
         }
         else
         {
            (§?Q§.getItemByName("Button_Menu") as §,#w§).setVisibility(true);
            (§?Q§.getItemByName("Button_Replay") as §,#w§).setVisibility(true);
            (§?Q§.getItemByName("Button_NextLevel") as §,#w§).setVisibility(false);
            (§?Q§.getItemByName("Button_CutScene") as §,#w§).setVisibility(true);
            (§?Q§.getItemByName("Button_Menu") as §,#w§).x = this.§49§[0];
            (§?Q§.getItemByName("Button_Replay") as §,#w§).x = this.§49§[1];
            (§?Q§.getItemByName("Button_CutScene") as §,#w§).x = this.§49§[2];
         }
      }
      
      protected function showButtonsNormal() : void
      {
         (§?Q§.getItemByName("Button_Menu") as §,#w§).setVisibility(true);
         (§?Q§.getItemByName("Button_Replay") as §,#w§).setVisibility(true);
         (§?Q§.getItemByName("Button_CutScene") as §,#w§).setVisibility(false);
         if(mLevelManager.getNextLevelId())
         {
            (§?Q§.getItemByName("Button_NextLevel") as §,#w§).setVisibility(true);
            (§?Q§.getItemByName("Button_Menu") as §,#w§).x = this.§49§[0];
            (§?Q§.getItemByName("Button_Replay") as §,#w§).x = this.§49§[1];
            (§?Q§.getItemByName("Button_NextLevel") as §,#w§).x = this.§49§[2];
         }
         else
         {
            (§?Q§.getItemByName("Button_NextLevel") as §,#w§).setVisibility(false);
            (§?Q§.getItemByName("Button_Menu") as §,#w§).x = this.§49§[0] + Math.abs(this.§49§[1] - this.§49§[0]) / 2;
            (§?Q§.getItemByName("Button_Replay") as §,#w§).x = this.§49§[1] + Math.abs(this.§49§[2] - this.§49§[1]) / 2;
         }
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.§@"l§ = false;
         §!#A§.pause();
         this.§`#Y§ = new §&!i§(0,0,0,0);
         §?Q§.movieClip.addChildAt(this.§`#Y§,0);
         if(mLevelManager.isCutSceneNext())
         {
            this.showButtonsCutScene();
         }
         else
         {
            this.showButtonsNormal();
         }
         this.mNewScoreCounter = 0;
         this.§ g§ = false;
         §!#&§.playSound("LevelCompletedTheme1");
         this.§`#Y§.§4!>§(0.7);
         this.§`!_§ = 0;
         this.§1!Z§ = 0;
         this.§5!1§();
      }
      
      private function §5!1§() : void
      {
         this.§6"G§ = false;
         this.setScoreData();
         this.§'$4§ = new Timer(500);
         this.§""F§ = 0;
         this.§'$4§.addEventListener(TimerEvent.TIMER,this.§""W§);
         this.§'$4§.start();
      }
      
      protected function §]!H§() : void
      {
         if(AngryBirdsBase.singleton.dataModel.userProgress.getEagleScoreForLevel(mLevelManager.currentLevel) == 100)
         {
            (§?Q§.getItemByName("MovieClip_ResultMEFeather") as §'=§).mClip.gotoAndStop("On");
         }
         else
         {
            (§?Q§.getItemByName("MovieClip_ResultMEFeather") as §'=§).mClip.gotoAndStop("Off");
         }
      }
      
      protected function §=$!§(param1:int, param2:int) : void
      {
         if(this.§<!v§)
         {
            param2 = param1;
            AngryBirdsBase.singleton.dataModel.userProgress.§9!G§(mLevelManager.currentLevel,param2);
            §?Q§.setText("New Highscore!","TextField_BestScore");
         }
         else
         {
            §?Q§.setText("Best " + param2.toString(),"TextField_BestScore");
            this.§ !a§ = mLevelManager.getNumStarsForLevel(mLevelManager.currentLevel,param2);
            switch(this.§ !a§)
            {
               case 1:
                  (§?Q§.getItemByName("MovieClip_BestScoreStars") as §'=§).§&"X§("OneStar");
                  break;
               case 2:
                  (§?Q§.getItemByName("MovieClip_BestScoreStars") as §'=§).§&"X§("TwoStar");
                  break;
               case 3:
                  (§?Q§.getItemByName("MovieClip_BestScoreStars") as §'=§).§&"X§("ThreeStar");
            }
         }
      }
      
      protected function setScoreData() : void
      {
         var _loc1_:int = AngryBirdsBase.singleton.dataModel.userProgress.getScoreForLevel(mLevelManager.currentLevel);
         var _loc2_:int = §!#A§.§=![§.getScore();
         this.§<!v§ = _loc2_ > _loc1_;
         this.§=$!§(_loc2_,_loc1_);
         this.§]!H§();
         var _loc3_:int = §!#A§.§=![§.getEagleScore();
         var _loc4_:int = AngryBirdsBase.singleton.dataModel.userProgress.getEagleScoreForLevel(mLevelManager.currentLevel);
         var _loc5_:*;
         if(_loc5_ = _loc3_ > _loc4_)
         {
            _loc4_ = _loc3_;
            AngryBirdsBase.singleton.dataModel.userProgress.§>!c§(mLevelManager.currentLevel,_loc4_);
         }
         var _loc6_:int = AngryBirdsBase.singleton.dataModel.userProgress.getStarsForLevel(mLevelManager.currentLevel,_loc2_);
         (§?Q§.getItemByName("MovieClip_NewHighScoreBadge") as §'=§).setVisibility(false);
         (§?Q§.getItemByName("MovieClip_StarLeft") as §'=§).mClip.gotoAndStop("UnLit");
         (§?Q§.getItemByName("MovieClip_StarCenter") as §'=§).mClip.gotoAndStop("UnLit");
         (§?Q§.getItemByName("MovieClip_StarRight") as §'=§).mClip.gotoAndStop("UnLit");
      }
      
      protected function onBadgeLanded() : void
      {
         if(this.§<!v§)
         {
            §!#&§.playSound("highscore",§<!"§);
            §?Q§.setText("New Highscore!","TextField_NewHighScore");
            (§?Q§.getItemByName("TextField_NewHighScore") as §^!4§).setVisibility(true);
            (§?Q§.getItemByName("MovieClip_BestScoreStars") as §'=§).setVisibility(false);
            this.§`"o§();
         }
         else
         {
            (§?Q§.getItemByName("TextField_BestScore") as §^!4§).setVisibility(true);
            (§?Q§.getItemByName("MovieClip_BestScoreStars") as §'=§).setVisibility(true);
         }
      }
      
      protected function §`"o§() : void
      {
         this.§`!_§ = 0;
         this.§1!Z§ = 0;
         this.§1#N§ = §5Y§;
      }
      
      private function §,$1§(param1:Number) : void
      {
         (§?Q§.getItemByName("Container_LevelEndStripe") as §]!_§).x = (§?Q§.getItemByName("Container_LevelEndStripe") as §]!_§).x - this.§`!_§;
         (§?Q§.getItemByName("Container_LevelEndStripe") as §]!_§).y = (§?Q§.getItemByName("Container_LevelEndStripe") as §]!_§).y - this.§1!Z§;
         if(this.§1#N§ > 0)
         {
            this.§`!_§ = (Math.random() - 0.5) * (this.§1#N§ / §5Y§) * 20;
            this.§1!Z§ = (Math.random() - 0.5) * (this.§1#N§ / §5Y§) * 20;
            (§?Q§.getItemByName("Container_LevelEndStripe") as §]!_§).x = (§?Q§.getItemByName("Container_LevelEndStripe") as §]!_§).x + this.§`!_§;
            (§?Q§.getItemByName("Container_LevelEndStripe") as §]!_§).y = (§?Q§.getItemByName("Container_LevelEndStripe") as §]!_§).y + this.§1!Z§;
         }
         else
         {
            this.§`!_§ = 0;
            this.§1!Z§ = 0;
         }
         this.§1#N§ -= param1 / 10;
      }
      
      private function §""W§(param1:TimerEvent) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:String = null;
         var _loc8_:String = null;
         var _loc9_:String = null;
         var _loc4_:Number = mLevelManager.getGoldScoreForLevel(mLevelManager.currentLevel);
         var _loc5_:Number = mLevelManager.getSilverScoreForLevel(mLevelManager.currentLevel);
         if((§?Q§.getItemByName("MovieClip_StarLeft") as §'=§).mClip.currentLabel == "UnLit")
         {
            §!#&§.playSound("gamescorescreen_score_count_loop",§ !o§,100);
            this.§'$4§.delay = 1000;
            this.§4S§.§`"x§(§!#A§.§=![§.getScore());
            _loc6_ = this.§4S§.getValue() / _loc4_ * 2;
            if(_loc4_ <= 0)
            {
               _loc6_ = 1;
            }
            this.§7$4§ = §6"w§.§ "D§.§""3§(this,{"mNewScoreCounter":this.§4S§.getValue()},{"mNewScoreCounter":0},_loc6_);
            this.§7$4§.onComplete = this.§!"M§;
            this.§7$4§.play();
            _loc7_ = this.setStarLeftLit();
            _loc2_ = (§?Q§.getItemByName("MovieClip_StarLeft") as §'=§).x + (§?Q§.getItemByName("Container_LevelEndStripe") as §]!_§).x;
            _loc3_ = (§?Q§.getItemByName("MovieClip_StarLeft") as §'=§).y + (§?Q§.getItemByName("Container_LevelEndStripe") as §]!_§).y;
            this.§,$0§ = new §8-§(AngryBirdsBase.screenWidth,AngryBirdsBase.screenHeight,_loc2_,_loc3_,§8-§.§1"l§,§8-§.§=#M§,_loc7_);
            §?Q§.addChild(this.§,$0§);
            this.§&O§.push(this.§,$0§);
         }
         else if(this.§4S§.getValue() >= _loc5_ && (§?Q§.getItemByName("MovieClip_StarCenter") as §'=§).mClip.currentLabel == "UnLit")
         {
            _loc8_ = this.setStarCenterLit();
            _loc2_ = (§?Q§.getItemByName("MovieClip_StarCenter") as §'=§).x + (§?Q§.getItemByName("Container_LevelEndStripe") as §]!_§).x;
            _loc3_ = (§?Q§.getItemByName("MovieClip_StarCenter") as §'=§).y + (§?Q§.getItemByName("Container_LevelEndStripe") as §]!_§).y;
            this.§,$0§ = new §8-§(AngryBirdsBase.screenWidth,AngryBirdsBase.screenHeight,_loc2_,_loc3_,§8-§.§""2§,§8-§.§=#M§,_loc8_);
            §?Q§.addChild(this.§,$0§);
            this.§&O§.push(this.§,$0§);
         }
         else if(this.§4S§.getValue() >= _loc4_ && (§?Q§.getItemByName("MovieClip_StarRight") as §'=§).mClip.currentLabel == "UnLit")
         {
            this.§@"l§ = true;
            _loc9_ = this.setStarRightLit();
            _loc2_ = (§?Q§.getItemByName("MovieClip_StarRight") as §'=§).x + (§?Q§.getItemByName("Container_LevelEndStripe") as §]!_§).x;
            _loc3_ = (§?Q§.getItemByName("MovieClip_StarRight") as §'=§).y + (§?Q§.getItemByName("Container_LevelEndStripe") as §]!_§).y;
            this.§,$0§ = new §8-§(AngryBirdsBase.screenWidth,AngryBirdsBase.screenHeight,_loc2_,_loc3_,§8-§.§=#X§,§8-§.§=#M§,_loc9_);
            §?Q§.addChild(this.§,$0§);
            this.§&O§.push(this.§,$0§);
         }
         else if(!this.§ g§)
         {
            this.§ g§ = true;
         }
         else
         {
            this.§'$4§.stop();
            if(this.§<!v§ && !this.§6"G§)
            {
               (§?Q§.getItemByName("MovieClip_NewHighScoreBadge") as §'=§).setVisibility(true);
            }
            else
            {
               (§?Q§.getItemByName("MovieClip_NewHighScoreBadge") as §'=§).setVisibility(false);
            }
            this.§`!$§ = §6"w§.§ "D§.§""3§((§?Q§.getItemByName("MovieClip_NewHighScoreBadge") as §'=§).mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":7,
               "scaleY":7
            },0.1);
            this.§`!$§.onComplete = this.onBadgeLanded;
            this.§`!$§.play();
         }
         ++this.§""F§;
      }
      
      protected function setStarLeftLit() : String
      {
         §!#&§.playSound("star_1_coins",§<!"§);
         (§?Q§.getItemByName("MovieClip_StarLeft") as §'=§).mClip.gotoAndStop("Lit");
         return §>#&§.§'!4§;
      }
      
      protected function setStarCenterLit() : String
      {
         §!#&§.playSound("star_2_coins",§<!"§);
         (§?Q§.getItemByName("MovieClip_StarCenter") as §'=§).mClip.gotoAndStop("Lit");
         return §>#&§.§'!4§;
      }
      
      protected function setStarRightLit() : String
      {
         §!#&§.playSound("star_3_coins",§<!"§);
         (§?Q§.getItemByName("MovieClip_StarRight") as §'=§).mClip.gotoAndStop("Lit");
         return §>#&§.§'!4§;
      }
      
      private function §!"M§() : void
      {
         §!#&§.§4#J§(§ !o§);
      }
      
      override protected function update(param1:Number) : void
      {
         var _loc2_:§8-§ = null;
         super.update(param1);
         §?Q§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScore");
         §?Q§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScoreEffects");
         for each(_loc2_ in this.§&O§)
         {
            _loc2_.update(param1);
         }
         if(this.§1#N§ >= 0)
         {
            this.§,$1§(param1);
         }
         if(nextState.length > 0)
         {
            §!#A§.§#F§.clearLevel();
         }
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§#$&§();
         this.§1#N§ = 0;
         this.mNewScoreCounter = 0;
         if(this.§7$4§)
         {
            this.§7$4§.stop();
            this.§7$4§ = null;
         }
         if(this.§`!$§)
         {
            this.§`!$§.stop();
            this.§`!$§ = null;
         }
         §!#&§.§4#J§(§ !o§);
         this.setButtonStates(§@!N§.COMPONENT_STATE_ACTIVE_DEFAULT);
         §?Q§.setText("0","TextField_LevelEndScore");
         §?Q§.setText("0","TextField_LevelEndScoreEffects");
         this.§!!x§();
      }
      
      protected function §!!x§() : void
      {
         if(this.§`#Y§)
         {
            if(§?Q§.movieClip.contains(this.§`#Y§))
            {
               §?Q§.movieClip.removeChild(this.§`#Y§);
            }
            this.§`#Y§.§;!?§();
            this.§`#Y§ = null;
         }
      }
      
      protected function setButtonStates(param1:String) : void
      {
         (§?Q§.getItemByName("Button_Menu") as §,#w§).setComponentVisualState(param1);
         (§?Q§.getItemByName("Button_Replay") as §,#w§).setComponentVisualState(param1);
         (§?Q§.getItemByName("Button_NextLevel") as §,#w§).setComponentVisualState(param1);
         (§?Q§.getItemByName("Button_CutScene") as §,#w§).setComponentVisualState(param1);
      }
      
      private function §#$&§() : void
      {
         var splash:§8-§ = null;
         if(this.§'$4§)
         {
            this.§'$4§.stop();
            try
            {
               this.§'$4§.removeEventListener(TimerEvent.TIMER,this.§""W§);
            }
            catch(e:Error)
            {
            }
         }
         for each(splash in this.§&O§)
         {
            if(§?Q§.contains(splash))
            {
               §?Q§.removeChild(splash);
            }
            splash.§;!?§();
         }
         this.§&O§ = new Vector.<§8-§>();
         this.§1#1§();
      }
      
      protected function §1#1§() : void
      {
         (§?Q§.getItemByName("TextField_BestScore") as §^!4§).setVisibility(false);
         (§?Q§.getItemByName("MovieClip_BestScoreStars") as §'=§).setVisibility(false);
         (§?Q§.getItemByName("TextField_NewHighScore") as §^!4§).setVisibility(false);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      protected function loadNextLevel() : void
      {
         prepareToLoadNextClassicLevel();
         §5"p§(this.getCutSceneState());
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§'"S§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
               §!#&§.playSound("Menu_Confirm",§!#&§.§6#h§);
               this.loadNextLevel();
               break;
            case "REPLAY":
               §!#&§.playSound("Menu_Confirm",§!#&§.§6#h§);
               §5"p§(this.getStateLevelLoadState());
               break;
            case "MENU":
               §!#&§.§^!2§();
               §!#&§.playSound("Menu_Confirm",§!#&§.§6#h§);
               §5"p§(this.getMenuButtonTargetState());
               break;
            case "FULLSCREEN_BUTTON":
               §!#&§.playSound("Menu_Confirm",§!#&§.§6#h§);
               AngryBirdsBase.singleton.§6"0§();
         }
      }
      
      protected function getStateLevelLoadState() : String
      {
         return §9#P§.STATE_NAME;
      }
      
      protected function getCutSceneState() : String
      {
         return StateCutScene.STATE_NAME;
      }
      
      public function getMenuButtonTargetState() : String
      {
         return §7!c§.STATE_NAME;
      }
   }
}
