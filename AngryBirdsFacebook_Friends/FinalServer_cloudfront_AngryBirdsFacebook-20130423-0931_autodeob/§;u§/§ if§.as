package §;u§
{
   import §%i§.§0!Y§;
   import §%i§.§4"9§;
   import §%i§.§7"0§;
   import §%i§.§^n§;
   import §1!t§.§!!G§;
   import §1!t§.§""B§;
   import §2"'§.§0W§;
   import §2"'§.§6!K§;
   import §8";§.§+d§;
   import §8m§.§@"M§;
   import §9!n§.LevelManager;
   import §9@§.§9!D§;
   import §>0§.§-!x§;
   import §>0§.§3"K§;
   import §@!"§.§?l§;
   import §`"%§.§ "<§;
   import §`"%§.§`_§;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class § if§ extends §+d§
   {
      
      public static const STATE_NAME:String = "LevelEndStateRio";
      
      public static const §^"A§:Number = 30;
      
      protected static const §>!V§:String = "ScoreLoopCountChannel";
      
      protected static const §+"1§:String = "EndScreenEffectChannel";
       
      
      private var §+1§:§6!K§;
      
      private var §0!U§:Number;
      
      private var §@!8§:Number = 0.0;
      
      private var §&!a§:Number = 0.0;
      
      private var §8!w§:Boolean = false;
      
      private var §!r§:Timer;
      
      private var §;!@§:§3"K§;
      
      protected var §'!U§:Array;
      
      protected var §3Z§:§-!x§;
      
      protected var §%q§:Vector.<§-!x§>;
      
      public var mNewScoreCounter:int;
      
      private var §[2§:int;
      
      private var §-!L§:Boolean;
      
      protected var §4!C§:Boolean;
      
      private var §7"U§:§9!D§;
      
      protected var §1!u§:Boolean;
      
      private var §-I§:§6!K§;
      
      protected var §-U§:Boolean;
      
      protected var §=!G§:int;
      
      public function § if§(param1:Boolean = false, param2:String = "LevelEndStateRio")
      {
         this.§'!U§ = [];
         this.§7"U§ = new §9!D§();
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §2"@§ = new §`_§(this);
         §2"@§.init(this.§+!"§());
         this.§4"S§();
         this.§%q§ = new Vector.<§-!x§>();
         §@"M§.§set §(§>!V§,1,1);
         §@"M§.§set §(§+"1§,3,1);
      }
      
      protected function §4"S§() : void
      {
         this.§'!U§.push((§2"@§.getItemByName("Button_Menu") as §7"0§).x);
         this.§'!U§.push((§2"@§.getItemByName("Button_Replay") as §7"0§).x);
         this.§'!U§.push((§2"@§.getItemByName("Button_NextLevel") as §7"0§).x);
         this.§'!U§.push((§2"@§.getItemByName("Button_CutScene") as §7"0§).x);
      }
      
      protected function §+!"§() : XML
      {
         return § "<§.§%I§.Views.View_LevelEndRio[0];
      }
      
      protected function §-F§() : void
      {
         if(!AngryBirdsFP11.sUserProgress.§>!<§(LevelManager.§ T§))
         {
            (§2"@§.getItemByName("Button_Menu") as §7"0§).setVisibility(false);
            (§2"@§.getItemByName("Button_Replay") as §7"0§).setVisibility(true);
            (§2"@§.getItemByName("Button_NextLevel") as §7"0§).setVisibility(false);
            (§2"@§.getItemByName("Button_CutScene") as §7"0§).setVisibility(true);
            (§2"@§.getItemByName("Button_Replay") as §7"0§).x = this.§'!U§[0] + Math.abs(this.§'!U§[1] - this.§'!U§[0]) / 2;
            (§2"@§.getItemByName("Button_CutScene") as §7"0§).x = this.§'!U§[1] + Math.abs(this.§'!U§[2] - this.§'!U§[1]) / 2;
         }
         else
         {
            (§2"@§.getItemByName("Button_Menu") as §7"0§).setVisibility(true);
            (§2"@§.getItemByName("Button_Replay") as §7"0§).setVisibility(true);
            (§2"@§.getItemByName("Button_NextLevel") as §7"0§).setVisibility(false);
            (§2"@§.getItemByName("Button_CutScene") as §7"0§).setVisibility(true);
            (§2"@§.getItemByName("Button_Menu") as §7"0§).x = this.§'!U§[0];
            (§2"@§.getItemByName("Button_Replay") as §7"0§).x = this.§'!U§[1];
            (§2"@§.getItemByName("Button_CutScene") as §7"0§).x = this.§'!U§[2];
         }
      }
      
      protected function showButtonsNormal() : void
      {
         (§2"@§.getItemByName("Button_Menu") as §7"0§).setVisibility(true);
         (§2"@§.getItemByName("Button_Replay") as §7"0§).setVisibility(true);
         (§2"@§.getItemByName("Button_CutScene") as §7"0§).setVisibility(false);
         if(LevelManager.§8t§())
         {
            (§2"@§.getItemByName("Button_NextLevel") as §7"0§).setVisibility(true);
            (§2"@§.getItemByName("Button_Menu") as §7"0§).x = this.§'!U§[0];
            (§2"@§.getItemByName("Button_Replay") as §7"0§).x = this.§'!U§[1];
            (§2"@§.getItemByName("Button_NextLevel") as §7"0§).x = this.§'!U§[2];
         }
         else
         {
            (§2"@§.getItemByName("Button_NextLevel") as §7"0§).setVisibility(false);
            (§2"@§.getItemByName("Button_Menu") as §7"0§).x = this.§'!U§[0] + Math.abs(this.§'!U§[1] - this.§'!U§[0]) / 2;
            (§2"@§.getItemByName("Button_Replay") as §7"0§).x = this.§'!U§[1] + Math.abs(this.§'!U§[2] - this.§'!U§[1]) / 2;
         }
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§-U§ = false;
         §?l§.pause();
         this.§;!@§ = new §3"K§(0,0,0,0);
         §2"@§.movieClip.addChildAt(this.§;!@§,§2"@§.movieClip.numChildren - 1);
         if(LevelManager.§%!8§())
         {
            this.§-F§();
         }
         else
         {
            this.showButtonsNormal();
         }
         this.mNewScoreCounter = 0;
         this.§-!L§ = false;
         §@"M§.§3"C§(this.§=!v§);
         this.§;!@§.§!!4§(0.7);
         this.§@!8§ = 0;
         this.§&!a§ = 0;
         this.§#!?§();
      }
      
      protected function get §=!v§() : String
      {
         return "LevelCompletedTheme1";
      }
      
      private function §#!?§() : void
      {
         this.§4!C§ = false;
         this.setScoreData();
         this.§!r§ = new Timer(500);
         this.§[2§ = 0;
         this.§!r§.addEventListener(TimerEvent.TIMER,this.§7!9§);
         this.§!r§.start();
      }
      
      protected function §2!X§() : void
      {
         if(AngryBirdsFP11.sUserProgress.getEagleScoreForLevel(LevelManager.§ T§) == 100)
         {
            (§2"@§.getItemByName("MovieClip_ResultMEFeather") as §^n§).mClip.gotoAndStop("On");
         }
         else
         {
            (§2"@§.getItemByName("MovieClip_ResultMEFeather") as §^n§).mClip.gotoAndStop("Off");
         }
      }
      
      protected function §;;§(param1:int, param2:int) : void
      {
         if(this.§1!u§)
         {
            param2 = param1;
            AngryBirdsFP11.sUserProgress.§!y§(LevelManager.§ T§,param2);
            §2"@§.setText("New Highscore!","TextField_BestScore");
         }
         else
         {
            §2"@§.setText("Best " + param2.toString(),"TextField_BestScore");
            this.§=!G§ = LevelManager.§=S§(LevelManager.§ T§,param2);
            switch(this.§=!G§)
            {
               case 1:
                  (§2"@§.getItemByName("MovieClip_BestScoreStars") as §^n§).§!!a§("OneStar");
                  break;
               case 2:
                  (§2"@§.getItemByName("MovieClip_BestScoreStars") as §^n§).§!!a§("TwoStar");
                  break;
               case 3:
                  (§2"@§.getItemByName("MovieClip_BestScoreStars") as §^n§).§!!a§("ThreeStar");
            }
         }
      }
      
      protected function setScoreData() : void
      {
         var _loc1_:int = AngryBirdsFP11.sUserProgress.getScoreForLevel(LevelManager.§ T§);
         var _loc2_:int = §?l§.§5-§.getScore();
         this.§1!u§ = _loc2_ > _loc1_;
         this.§;;§(_loc2_,_loc1_);
         this.§2!X§();
         var _loc3_:int = §?l§.§5-§.getEagleScore();
         var _loc4_:int = AngryBirdsFP11.sUserProgress.getEagleScoreForLevel(LevelManager.§ T§);
         var _loc5_:*;
         if(_loc5_ = _loc3_ > _loc4_)
         {
            _loc4_ = _loc3_;
            AngryBirdsFP11.sUserProgress.§3!Z§(LevelManager.§ T§,_loc4_);
         }
         var _loc6_:int = AngryBirdsFP11.sUserProgress.getStarsForLevel(LevelManager.§ T§,_loc2_);
         (§2"@§.getItemByName("MovieClip_NewHighScoreBadge") as §^n§).setVisibility(false);
         (§2"@§.getItemByName("MovieClip_StarLeft") as §^n§).mClip.gotoAndStop("UnLit");
         (§2"@§.getItemByName("MovieClip_StarCenter") as §^n§).mClip.gotoAndStop("UnLit");
         (§2"@§.getItemByName("MovieClip_StarRight") as §^n§).mClip.gotoAndStop("UnLit");
      }
      
      protected function onBadgeLanded() : void
      {
         if(this.§1!u§)
         {
            §@"M§.§3"C§("Hiscore_Badge",§+"1§);
            §2"@§.setText("New Highscore!","TextField_NewHighScore");
            (§2"@§.getItemByName("TextField_NewHighScore") as §4"9§).setVisibility(true);
            (§2"@§.getItemByName("MovieClip_BestScoreStars") as §^n§).setVisibility(false);
            this.§2r§();
         }
         else
         {
            (§2"@§.getItemByName("TextField_BestScore") as §4"9§).setVisibility(true);
            (§2"@§.getItemByName("MovieClip_BestScoreStars") as §^n§).setVisibility(true);
         }
      }
      
      protected function §2r§() : void
      {
         this.§@!8§ = 0;
         this.§&!a§ = 0;
         this.§0!U§ = §^"A§;
      }
      
      private function § "4§(param1:Number) : void
      {
         (§2"@§.getItemByName("Container_LevelEndStripe") as §0!Y§).x = (§2"@§.getItemByName("Container_LevelEndStripe") as §0!Y§).x - this.§@!8§;
         (§2"@§.getItemByName("Container_LevelEndStripe") as §0!Y§).y = (§2"@§.getItemByName("Container_LevelEndStripe") as §0!Y§).y - this.§&!a§;
         if(this.§0!U§ > 0)
         {
            this.§@!8§ = (Math.random() - 0.5) * (this.§0!U§ / §^"A§) * 20;
            this.§&!a§ = (Math.random() - 0.5) * (this.§0!U§ / §^"A§) * 20;
            (§2"@§.getItemByName("Container_LevelEndStripe") as §0!Y§).x = (§2"@§.getItemByName("Container_LevelEndStripe") as §0!Y§).x + this.§@!8§;
            (§2"@§.getItemByName("Container_LevelEndStripe") as §0!Y§).y = (§2"@§.getItemByName("Container_LevelEndStripe") as §0!Y§).y + this.§&!a§;
         }
         else
         {
            this.§0!U§ = -1;
            this.§^!q§();
            this.§@!8§ = 0;
            this.§&!a§ = 0;
         }
         this.§0!U§ -= param1 / 10;
      }
      
      protected function §^!q§() : void
      {
      }
      
      private function §7!9§(param1:TimerEvent) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = false;
         var _loc4_:Number = LevelManager.§ "§(LevelManager.§ T§).§8"G§;
         var _loc5_:Number = LevelManager.§ "§(LevelManager.§ T§).§;!?§;
         if((§2"@§.getItemByName("MovieClip_StarLeft") as §^n§).mClip.currentLabel == "UnLit")
         {
            §@"M§.§3"C§("Hiscore_Count",§>!V§,100);
            this.§!r§.delay = 1000;
            this.§7"U§.assign(§?l§.§5-§.getScore());
            _loc6_ = this.§7"U§.getValue() / _loc4_ * 2;
            if(_loc4_ <= 0)
            {
               _loc6_ = 1;
            }
            this.§-I§ = §0W§.§&"5§.§]!r§(this,{"mNewScoreCounter":this.§7"U§.getValue()},{"mNewScoreCounter":0},_loc6_);
            this.§-I§.onComplete = this.§#!h§;
            this.§-I§.play();
            _loc7_ = this.setStarLeftLit();
            _loc2_ = (§2"@§.getItemByName("MovieClip_StarLeft") as §^n§).x + (§2"@§.getItemByName("Container_LevelEndStripe") as §0!Y§).x;
            _loc3_ = (§2"@§.getItemByName("MovieClip_StarLeft") as §^n§).y + (§2"@§.getItemByName("Container_LevelEndStripe") as §0!Y§).y;
            this.§3Z§ = new §-!x§(AngryBirdsFP11.§'!m§,AngryBirdsFP11.§?s§,_loc2_,_loc3_,§-!x§.§,Q§,§-!x§.§!!U§,_loc7_);
            §2"@§.addChild(this.§3Z§);
            this.§%q§.push(this.§3Z§);
         }
         else if(this.§7"U§.getValue() >= _loc5_ && (§2"@§.getItemByName("MovieClip_StarCenter") as §^n§).mClip.currentLabel == "UnLit")
         {
            _loc8_ = this.setStarCenterLit();
            _loc2_ = (§2"@§.getItemByName("MovieClip_StarCenter") as §^n§).x + (§2"@§.getItemByName("Container_LevelEndStripe") as §0!Y§).x;
            _loc3_ = (§2"@§.getItemByName("MovieClip_StarCenter") as §^n§).y + (§2"@§.getItemByName("Container_LevelEndStripe") as §0!Y§).y;
            this.§3Z§ = new §-!x§(AngryBirdsFP11.§'!m§,AngryBirdsFP11.§?s§,_loc2_,_loc3_,§-!x§.§8!;§,§-!x§.§!!U§,_loc8_);
            §2"@§.addChild(this.§3Z§);
            this.§%q§.push(this.§3Z§);
         }
         else if(this.§7"U§.getValue() >= _loc4_ && (§2"@§.getItemByName("MovieClip_StarRight") as §^n§).mClip.currentLabel == "UnLit")
         {
            this.§-U§ = true;
            _loc9_ = this.setStarRightLit();
            _loc2_ = (§2"@§.getItemByName("MovieClip_StarRight") as §^n§).x + (§2"@§.getItemByName("Container_LevelEndStripe") as §0!Y§).x;
            _loc3_ = (§2"@§.getItemByName("MovieClip_StarRight") as §^n§).y + (§2"@§.getItemByName("Container_LevelEndStripe") as §0!Y§).y;
            this.§3Z§ = new §-!x§(AngryBirdsFP11.§'!m§,AngryBirdsFP11.§?s§,_loc2_,_loc3_,§-!x§.§3#§,§-!x§.§!!U§,_loc9_);
            §2"@§.addChild(this.§3Z§);
            this.§%q§.push(this.§3Z§);
         }
         else if(!this.§-!L§)
         {
            this.§-!L§ = true;
         }
         else
         {
            this.§!r§.stop();
            if(this.§1!u§ && !this.§4!C§)
            {
               (§2"@§.getItemByName("MovieClip_NewHighScoreBadge") as §^n§).setVisibility(true);
            }
            else
            {
               (§2"@§.getItemByName("MovieClip_NewHighScoreBadge") as §^n§).setVisibility(false);
            }
            this.§+1§ = §0W§.§&"5§.§]!r§((§2"@§.getItemByName("MovieClip_NewHighScoreBadge") as §^n§).mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":7,
               "scaleY":7
            },0.1);
            this.§+1§.onComplete = this.onBadgeLanded;
            this.§+1§.play();
         }
         ++this.§[2§;
      }
      
      protected function setStarLeftLit() : Boolean
      {
         §@"M§.§3"C§("Hiscore_Star_Splash1",§+"1§);
         (§2"@§.getItemByName("MovieClip_StarLeft") as §^n§).mClip.gotoAndStop("Lit");
         return false;
      }
      
      protected function setStarCenterLit() : Boolean
      {
         §@"M§.§3"C§("Hiscore_Star_Splash2",§+"1§);
         (§2"@§.getItemByName("MovieClip_StarCenter") as §^n§).mClip.gotoAndStop("Lit");
         return false;
      }
      
      protected function setStarRightLit() : Boolean
      {
         §@"M§.§3"C§("Hiscore_Star_Splash3",§+"1§);
         (§2"@§.getItemByName("MovieClip_StarRight") as §^n§).mClip.gotoAndStop("Lit");
         return false;
      }
      
      private function §#!h§() : void
      {
         §@"M§.§]!n§(§>!V§);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:§-!x§ = null;
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §+d§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         §2"@§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScore");
         §2"@§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScoreEffects");
         for each(_loc3_ in this.§%q§)
         {
            _loc3_.update(param1);
         }
         if(this.§0!U§ > -1)
         {
            this.§ "4§(param1);
         }
         if(mNextState.length > 0)
         {
            §?l§.§'h§.clearLevel();
            return §+d§.STATE_STATUS_COMPLETED;
         }
         return §+d§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§?!z§();
         this.§0!U§ = 0;
         this.mNewScoreCounter = 0;
         if(this.§-I§)
         {
            this.§-I§.stop();
            this.§-I§ = null;
         }
         if(this.§+1§)
         {
            this.§+1§.stop();
            this.§+1§ = null;
         }
         §@"M§.§]!n§(§>!V§);
         this.§-!$§(§!!G§.COMPONENT_STATE_ACTIVE_DEFAULT);
         §2"@§.setText("0","TextField_LevelEndScore");
         §2"@§.setText("0","TextField_LevelEndScoreEffects");
         if(this.§;!@§)
         {
            if(§2"@§.movieClip.contains(this.§;!@§))
            {
               §2"@§.movieClip.removeChild(this.§;!@§);
            }
            this.§;!@§.clean();
            this.§;!@§ = null;
         }
      }
      
      protected function §-!$§(param1:String) : void
      {
         (§2"@§.getItemByName("Button_Menu") as §7"0§).setComponentVisualState(param1);
         (§2"@§.getItemByName("Button_Replay") as §7"0§).setComponentVisualState(param1);
         (§2"@§.getItemByName("Button_NextLevel") as §7"0§).setComponentVisualState(param1);
         (§2"@§.getItemByName("Button_CutScene") as §7"0§).setComponentVisualState(param1);
      }
      
      private function §?!z§() : void
      {
         var splash:§-!x§ = null;
         if(this.§!r§)
         {
            this.§!r§.stop();
            try
            {
               this.§!r§.removeEventListener(TimerEvent.TIMER,this.§7!9§);
            }
            catch(e:Error)
            {
            }
         }
         for each(splash in this.§%q§)
         {
            if(§2"@§.contains(splash))
            {
               §2"@§.removeChild(splash);
            }
            splash.clean();
         }
         this.§%q§ = new Vector.<§-!x§>();
         this.§,!d§();
      }
      
      protected function §,!d§() : void
      {
         (§2"@§.getItemByName("TextField_BestScore") as §4"9§).setVisibility(false);
         (§2"@§.getItemByName("MovieClip_BestScoreStars") as §^n§).setVisibility(false);
         (§2"@§.getItemByName("TextField_NewHighScore") as §4"9§).setVisibility(false);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      protected function loadNextLevel() : void
      {
         §-!v§.§>"@§();
         mNextState = this.getCutSceneState();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§""B§) : void
      {
         var _loc4_:String = null;
         switch(param2)
         {
            case "NEXT_LEVEL":
               this.loadNextLevel();
               break;
            case "REPLAY":
               §-!v§.§^!$§();
               mNextState = this.getStateLevelLoadState();
               break;
            case "WATCH_REPLAY":
               §-!v§.§^!$§();
               mNextState = this.getStateLevelLoadState();
               if(_loc4_ = §?l§.§'h§.§=!O§())
               {
                  §?l§.§'h§.§;!;§(_loc4_);
               }
               break;
            case "MENU":
               §@"M§.§3!s§();
               mNextState = this.getMenuButtonTargetState();
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§>m§.§=-§();
         }
      }
      
      protected function getStateLevelLoadState() : String
      {
         return §-!v§.STATE_NAME;
      }
      
      protected function getCutSceneState() : String
      {
         return StateCutScene.STATE_NAME;
      }
      
      public function getMenuButtonTargetState() : String
      {
         return §9"@§.STATE_NAME;
      }
   }
}
