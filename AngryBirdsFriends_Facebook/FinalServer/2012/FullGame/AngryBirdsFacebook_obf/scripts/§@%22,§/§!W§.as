package §@",§
{
   import §#M§.§%^§;
   import §#M§.§^0§;
   import §%!'§.§-§;
   import §-B§.§#p§;
   import §-B§.§="0§;
   import §-B§.§?!j§;
   import §-B§.§]!<§;
   import §2E§.§!"&§;
   import §2E§.§&p§;
   import §5!G§.§&2§;
   import §;n§.§^!;§;
   import §;n§.§^q§;
   import §=#§.§5!S§;
   import §>s§.§+m§;
   import §@!4§.§^C§;
   import §@!4§.§with§;
   import §`!n§.LevelManager;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §!W§ extends §5!S§
   {
      
      public static const STATE_NAME:String = "LevelEndStateRio";
      
      public static const §!!#§:Number = 30;
      
      protected static const §6!V§:String = "ScoreLoopCountChannel";
      
      protected static const §?&§:String = "EndScreenEffectChannel";
       
      
      private var §1!Y§:§!"&§;
      
      private var §;8§:Number;
      
      private var §6!W§:Number = 0.0;
      
      private var §6!q§:Number = 0.0;
      
      private var §2h§:Boolean = false;
      
      private var §'!#§:Timer;
      
      private var §!F§:§^C§;
      
      protected var §2">§:Array;
      
      protected var §=!U§:§with§;
      
      protected var §%">§:Vector.<§with§>;
      
      public var mNewScoreCounter:int;
      
      private var §#">§:int;
      
      private var §-]§:Boolean;
      
      protected var §["?§:Boolean;
      
      private var §,!_§:§-§;
      
      protected var §]"1§:Boolean;
      
      private var §[!A§:§!"&§;
      
      protected var §2!3§:Boolean;
      
      protected var §""§:int;
      
      public function §!W§(param1:Boolean = false, param2:String = "LevelEndStateRio")
      {
         this.§2">§ = [];
         this.§,!_§ = new §-§();
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §2!K§ = new §^0§(this);
         §2!K§.init(this.§;!7§());
         this.§9!^§();
         this.§%">§ = new Vector.<§with§>();
         §+m§.§9!g§(§6!V§,1,1);
         §+m§.§9!g§(§?&§,3,1);
      }
      
      protected function §9!^§() : void
      {
         this.§2">§.push((§2!K§.getItemByName("Button_Menu") as §]!<§).x);
         this.§2">§.push((§2!K§.getItemByName("Button_Replay") as §]!<§).x);
         this.§2">§.push((§2!K§.getItemByName("Button_NextLevel") as §]!<§).x);
         this.§2">§.push((§2!K§.getItemByName("Button_CutScene") as §]!<§).x);
      }
      
      protected function §;!7§() : XML
      {
         return §%^§.§?>§.Views.View_LevelEndRio[0];
      }
      
      protected function §!!O§() : void
      {
         if(!AngryBirdsFP11.sUserProgress.§=!W§(LevelManager.§`-§))
         {
            (§2!K§.getItemByName("Button_Menu") as §]!<§).setVisibility(false);
            (§2!K§.getItemByName("Button_Replay") as §]!<§).setVisibility(true);
            (§2!K§.getItemByName("Button_NextLevel") as §]!<§).setVisibility(false);
            (§2!K§.getItemByName("Button_CutScene") as §]!<§).setVisibility(true);
            (§2!K§.getItemByName("Button_Replay") as §]!<§).x = this.§2">§[0] + Math.abs(this.§2">§[1] - this.§2">§[0]) / 2;
            (§2!K§.getItemByName("Button_CutScene") as §]!<§).x = this.§2">§[1] + Math.abs(this.§2">§[2] - this.§2">§[1]) / 2;
         }
         else
         {
            (§2!K§.getItemByName("Button_Menu") as §]!<§).setVisibility(true);
            (§2!K§.getItemByName("Button_Replay") as §]!<§).setVisibility(true);
            (§2!K§.getItemByName("Button_NextLevel") as §]!<§).setVisibility(false);
            (§2!K§.getItemByName("Button_CutScene") as §]!<§).setVisibility(true);
            (§2!K§.getItemByName("Button_Menu") as §]!<§).x = this.§2">§[0];
            (§2!K§.getItemByName("Button_Replay") as §]!<§).x = this.§2">§[1];
            (§2!K§.getItemByName("Button_CutScene") as §]!<§).x = this.§2">§[2];
         }
      }
      
      protected function showButtonsNormal() : void
      {
         (§2!K§.getItemByName("Button_Menu") as §]!<§).setVisibility(true);
         (§2!K§.getItemByName("Button_Replay") as §]!<§).setVisibility(true);
         (§2!K§.getItemByName("Button_CutScene") as §]!<§).setVisibility(false);
         if(LevelManager.§&4§())
         {
            (§2!K§.getItemByName("Button_NextLevel") as §]!<§).setVisibility(true);
            (§2!K§.getItemByName("Button_Menu") as §]!<§).x = this.§2">§[0];
            (§2!K§.getItemByName("Button_Replay") as §]!<§).x = this.§2">§[1];
            (§2!K§.getItemByName("Button_NextLevel") as §]!<§).x = this.§2">§[2];
         }
         else
         {
            (§2!K§.getItemByName("Button_NextLevel") as §]!<§).setVisibility(false);
            (§2!K§.getItemByName("Button_Menu") as §]!<§).x = this.§2">§[0] + Math.abs(this.§2">§[1] - this.§2">§[0]) / 2;
            (§2!K§.getItemByName("Button_Replay") as §]!<§).x = this.§2">§[1] + Math.abs(this.§2">§[2] - this.§2">§[1]) / 2;
         }
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§2!3§ = false;
         §&2§.pause();
         this.§!F§ = new §^C§(0,0,0,0);
         §2!K§.movieClip.addChildAt(this.§!F§,§2!K§.movieClip.numChildren - 1);
         if(LevelManager.§;"@§())
         {
            this.§!!O§();
         }
         else
         {
            this.showButtonsNormal();
         }
         this.mNewScoreCounter = 0;
         this.§-]§ = false;
         §+m§.§]!N§(this.§=!d§);
         this.§!F§.§%"K§(0.7);
         this.§6!W§ = 0;
         this.§6!q§ = 0;
         this.§?!R§();
      }
      
      protected function get §=!d§() : String
      {
         return "LevelCompletedTheme1";
      }
      
      private function §?!R§() : void
      {
         this.§["?§ = false;
         this.setScoreData();
         this.§'!#§ = new Timer(500);
         this.§#">§ = 0;
         this.§'!#§.addEventListener(TimerEvent.TIMER,this.§]!,§);
         this.§'!#§.start();
      }
      
      protected function §^!+§() : void
      {
         if(AngryBirdsFP11.sUserProgress.getEagleScoreForLevel(LevelManager.§`-§) == 100)
         {
            (§2!K§.getItemByName("MovieClip_ResultMEFeather") as §="0§).mClip.gotoAndStop("On");
         }
         else
         {
            (§2!K§.getItemByName("MovieClip_ResultMEFeather") as §="0§).mClip.gotoAndStop("Off");
         }
      }
      
      protected function §?`§(param1:int, param2:int) : void
      {
         if(this.§]"1§)
         {
            param2 = param1;
            AngryBirdsFP11.sUserProgress.§"!P§(LevelManager.§`-§,param2);
            §2!K§.setText("New Highscore!","TextField_BestScore");
         }
         else
         {
            §2!K§.setText("Best " + param2.toString(),"TextField_BestScore");
            this.§""§ = LevelManager.§-!w§(LevelManager.§`-§,param2);
            switch(this.§""§)
            {
               case 1:
                  (§2!K§.getItemByName("MovieClip_BestScoreStars") as §="0§).§!!s§("OneStar");
                  break;
               case 2:
                  (§2!K§.getItemByName("MovieClip_BestScoreStars") as §="0§).§!!s§("TwoStar");
                  break;
               case 3:
                  (§2!K§.getItemByName("MovieClip_BestScoreStars") as §="0§).§!!s§("ThreeStar");
            }
         }
      }
      
      protected function setScoreData() : void
      {
         var _loc1_:int = AngryBirdsFP11.sUserProgress.getScoreForLevel(LevelManager.§`-§);
         var _loc2_:int = §&2§.§,!x§.getScore();
         this.§]"1§ = _loc2_ > _loc1_;
         this.§?`§(_loc2_,_loc1_);
         this.§^!+§();
         var _loc3_:int = §&2§.§,!x§.getEagleScore();
         var _loc4_:int = AngryBirdsFP11.sUserProgress.getEagleScoreForLevel(LevelManager.§`-§);
         var _loc5_:*;
         if(_loc5_ = _loc3_ > _loc4_)
         {
            _loc4_ = _loc3_;
            AngryBirdsFP11.sUserProgress.§""C§(LevelManager.§`-§,_loc4_);
         }
         var _loc6_:int = AngryBirdsFP11.sUserProgress.getStarsForLevel(LevelManager.§`-§,_loc2_);
         (§2!K§.getItemByName("MovieClip_NewHighScoreBadge") as §="0§).setVisibility(false);
         (§2!K§.getItemByName("MovieClip_StarLeft") as §="0§).mClip.gotoAndStop("UnLit");
         (§2!K§.getItemByName("MovieClip_StarCenter") as §="0§).mClip.gotoAndStop("UnLit");
         (§2!K§.getItemByName("MovieClip_StarRight") as §="0§).mClip.gotoAndStop("UnLit");
      }
      
      protected function onBadgeLanded() : void
      {
         if(this.§]"1§)
         {
            §+m§.§]!N§("Hiscore_Badge",§?&§);
            §2!K§.setText("New Highscore!","TextField_NewHighScore");
            (§2!K§.getItemByName("TextField_NewHighScore") as §#p§).setVisibility(true);
            (§2!K§.getItemByName("MovieClip_BestScoreStars") as §="0§).setVisibility(false);
            this.§]!P§();
         }
         else
         {
            (§2!K§.getItemByName("TextField_BestScore") as §#p§).setVisibility(true);
            (§2!K§.getItemByName("MovieClip_BestScoreStars") as §="0§).setVisibility(true);
         }
      }
      
      protected function §]!P§() : void
      {
         this.§6!W§ = 0;
         this.§6!q§ = 0;
         this.§;8§ = §!!#§;
      }
      
      private function §&R§(param1:Number) : void
      {
         (§2!K§.getItemByName("Container_LevelEndStripe") as §?!j§).x = (§2!K§.getItemByName("Container_LevelEndStripe") as §?!j§).x - this.§6!W§;
         (§2!K§.getItemByName("Container_LevelEndStripe") as §?!j§).y = (§2!K§.getItemByName("Container_LevelEndStripe") as §?!j§).y - this.§6!q§;
         if(this.§;8§ > 0)
         {
            this.§6!W§ = (Math.random() - 0.5) * (this.§;8§ / §!!#§) * 20;
            this.§6!q§ = (Math.random() - 0.5) * (this.§;8§ / §!!#§) * 20;
            (§2!K§.getItemByName("Container_LevelEndStripe") as §?!j§).x = (§2!K§.getItemByName("Container_LevelEndStripe") as §?!j§).x + this.§6!W§;
            (§2!K§.getItemByName("Container_LevelEndStripe") as §?!j§).y = (§2!K§.getItemByName("Container_LevelEndStripe") as §?!j§).y + this.§6!q§;
         }
         else
         {
            this.§;8§ = -1;
            this.§;,§();
            this.§6!W§ = 0;
            this.§6!q§ = 0;
         }
         this.§;8§ -= param1 / 10;
      }
      
      protected function §;,§() : void
      {
      }
      
      private function §]!,§(param1:TimerEvent) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = false;
         var _loc4_:Number = LevelManager.§>! §(LevelManager.§`-§).§`!O§;
         var _loc5_:Number = LevelManager.§>! §(LevelManager.§`-§).§8!&§;
         if((§2!K§.getItemByName("MovieClip_StarLeft") as §="0§).mClip.currentLabel == "UnLit")
         {
            §+m§.§]!N§("Hiscore_Count",§6!V§,100);
            §+m§.§]!N§("Hiscore_Star_Splash1",§?&§);
            this.§'!#§.delay = 1000;
            this.§,!_§.assign(§&2§.§,!x§.getScore());
            _loc6_ = this.§,!_§.getValue() / _loc4_ * 2;
            if(_loc4_ <= 0)
            {
               _loc6_ = 1;
            }
            this.§[!A§ = §&p§.§1[§.§7!3§(this,{"mNewScoreCounter":this.§,!_§.getValue()},{"mNewScoreCounter":0},_loc6_);
            this.§[!A§.onComplete = this.§3X§;
            this.§[!A§.play();
            _loc7_ = this.§@"J§();
            _loc2_ = (§2!K§.getItemByName("MovieClip_StarLeft") as §="0§).x + (§2!K§.getItemByName("Container_LevelEndStripe") as §?!j§).x;
            _loc3_ = (§2!K§.getItemByName("MovieClip_StarLeft") as §="0§).y + (§2!K§.getItemByName("Container_LevelEndStripe") as §?!j§).y;
            this.§=!U§ = new §with§(AngryBirdsFP11.§`",§,AngryBirdsFP11.§[!f§,_loc2_,_loc3_,§with§.§<!W§,§with§.§]0§,_loc7_);
            §2!K§.addChild(this.§=!U§);
            this.§%">§.push(this.§=!U§);
         }
         else if(this.§,!_§.getValue() >= _loc5_ && (§2!K§.getItemByName("MovieClip_StarCenter") as §="0§).mClip.currentLabel == "UnLit")
         {
            §+m§.§]!N§("Hiscore_Star_Splash2",§?&§);
            _loc8_ = this.§7"B§();
            _loc2_ = (§2!K§.getItemByName("MovieClip_StarCenter") as §="0§).x + (§2!K§.getItemByName("Container_LevelEndStripe") as §?!j§).x;
            _loc3_ = (§2!K§.getItemByName("MovieClip_StarCenter") as §="0§).y + (§2!K§.getItemByName("Container_LevelEndStripe") as §?!j§).y;
            this.§=!U§ = new §with§(AngryBirdsFP11.§`",§,AngryBirdsFP11.§[!f§,_loc2_,_loc3_,§with§.§;K§,§with§.§]0§,_loc8_);
            §2!K§.addChild(this.§=!U§);
            this.§%">§.push(this.§=!U§);
         }
         else if(this.§,!_§.getValue() >= _loc4_ && (§2!K§.getItemByName("MovieClip_StarRight") as §="0§).mClip.currentLabel == "UnLit")
         {
            this.§2!3§ = true;
            §+m§.§]!N§("Hiscore_Star_Splash3",§?&§);
            _loc9_ = this.§9!"§();
            _loc2_ = (§2!K§.getItemByName("MovieClip_StarRight") as §="0§).x + (§2!K§.getItemByName("Container_LevelEndStripe") as §?!j§).x;
            _loc3_ = (§2!K§.getItemByName("MovieClip_StarRight") as §="0§).y + (§2!K§.getItemByName("Container_LevelEndStripe") as §?!j§).y;
            this.§=!U§ = new §with§(AngryBirdsFP11.§`",§,AngryBirdsFP11.§[!f§,_loc2_,_loc3_,§with§.§7",§,§with§.§]0§,_loc9_);
            §2!K§.addChild(this.§=!U§);
            this.§%">§.push(this.§=!U§);
         }
         else if(!this.§-]§)
         {
            this.§-]§ = true;
         }
         else
         {
            this.§'!#§.stop();
            if(this.§]"1§ && !this.§["?§)
            {
               (§2!K§.getItemByName("MovieClip_NewHighScoreBadge") as §="0§).setVisibility(true);
            }
            else
            {
               (§2!K§.getItemByName("MovieClip_NewHighScoreBadge") as §="0§).setVisibility(false);
            }
            this.§1!Y§ = §&p§.§1[§.§7!3§((§2!K§.getItemByName("MovieClip_NewHighScoreBadge") as §="0§).mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":7,
               "scaleY":7
            },0.1);
            this.§1!Y§.onComplete = this.onBadgeLanded;
            this.§1!Y§.play();
         }
         ++this.§#">§;
      }
      
      protected function §@"J§() : Boolean
      {
         (§2!K§.getItemByName("MovieClip_StarLeft") as §="0§).mClip.gotoAndStop("Lit");
         return false;
      }
      
      protected function §7"B§() : Boolean
      {
         (§2!K§.getItemByName("MovieClip_StarCenter") as §="0§).mClip.gotoAndStop("Lit");
         return false;
      }
      
      protected function §9!"§() : Boolean
      {
         (§2!K§.getItemByName("MovieClip_StarRight") as §="0§).mClip.gotoAndStop("Lit");
         return false;
      }
      
      private function §3X§() : void
      {
         §+m§.§5!P§(§6!V§);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:§with§ = null;
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §5!S§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         §2!K§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScore");
         §2!K§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScoreEffects");
         for each(_loc3_ in this.§%">§)
         {
            _loc3_.update(param1);
         }
         if(this.§;8§ > -1)
         {
            this.§&R§(param1);
         }
         if(mNextState.length > 0)
         {
            §&2§.§],§.clearLevel();
            return §5!S§.STATE_STATUS_COMPLETED;
         }
         return §5!S§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§9">§();
         this.§;8§ = 0;
         this.mNewScoreCounter = 0;
         if(this.§[!A§)
         {
            this.§[!A§.stop();
            this.§[!A§ = null;
         }
         if(this.§1!Y§)
         {
            this.§1!Y§.stop();
            this.§1!Y§ = null;
         }
         §+m§.§5!P§(§6!V§);
         this.§9"4§(§^q§.COMPONENT_STATE_ACTIVE_DEFAULT);
         §2!K§.setText("0","TextField_LevelEndScore");
         §2!K§.setText("0","TextField_LevelEndScoreEffects");
         if(this.§!F§)
         {
            if(§2!K§.movieClip.contains(this.§!F§))
            {
               §2!K§.movieClip.removeChild(this.§!F§);
            }
            this.§!F§.clean();
            this.§!F§ = null;
         }
      }
      
      protected function §9"4§(param1:String) : void
      {
         (§2!K§.getItemByName("Button_Menu") as §]!<§).setComponentVisualState(param1);
         (§2!K§.getItemByName("Button_Replay") as §]!<§).setComponentVisualState(param1);
         (§2!K§.getItemByName("Button_NextLevel") as §]!<§).setComponentVisualState(param1);
         (§2!K§.getItemByName("Button_CutScene") as §]!<§).setComponentVisualState(param1);
      }
      
      private function §9">§() : void
      {
         var splash:§with§ = null;
         if(this.§'!#§)
         {
            this.§'!#§.stop();
            try
            {
               this.§'!#§.removeEventListener(TimerEvent.TIMER,this.§]!,§);
            }
            catch(e:Error)
            {
            }
         }
         for each(splash in this.§%">§)
         {
            if(§2!K§.contains(splash))
            {
               §2!K§.removeChild(splash);
            }
            splash.clean();
         }
         this.§%">§ = new Vector.<§with§>();
         this.§<" §();
      }
      
      protected function §<" §() : void
      {
         (§2!K§.getItemByName("TextField_BestScore") as §#p§).setVisibility(false);
         (§2!K§.getItemByName("MovieClip_BestScoreStars") as §="0§).setVisibility(false);
         (§2!K§.getItemByName("TextField_NewHighScore") as §#p§).setVisibility(false);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      protected function loadNextLevel() : void
      {
         §'!N§.§7!Z§();
         mNextState = this.getCutSceneState();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§^!;§) : void
      {
         var _loc4_:String = null;
         switch(param2)
         {
            case "NEXT_LEVEL":
               this.loadNextLevel();
               break;
            case "REPLAY":
               §'!N§.§^R§();
               mNextState = this.getStateLevelLoadState();
               break;
            case "WATCH_REPLAY":
               §'!N§.§^R§();
               mNextState = this.getStateLevelLoadState();
               if(_loc4_ = §&2§.§],§.§5S§())
               {
                  §&2§.§],§.§3!c§(_loc4_);
               }
               break;
            case "MENU":
               §+m§.§2!2§();
               mNextState = this.getMenuButtonTargetState();
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§#!4§.§-"F§();
         }
      }
      
      protected function getStateLevelLoadState() : String
      {
         return §'!N§.STATE_NAME;
      }
      
      protected function getCutSceneState() : String
      {
         return StateCutScene.STATE_NAME;
      }
      
      public function getMenuButtonTargetState() : String
      {
         return §[2§.STATE_NAME;
      }
   }
}
