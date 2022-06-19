package §[!K§
{
   import §!!t§.§,-§;
   import §"",§.§"Z§;
   import §"",§.§+§;
   import §"",§.§<+§;
   import §"",§.§<?§;
   import §#""§.§+!J§;
   import §#""§.§4!_§;
   import §+I§.§9!%§;
   import §0r§.§-!F§;
   import §0r§.§7!b§;
   import §1"2§.§ F§;
   import §1"2§.§,!]§;
   import §1k§.§%4§;
   import §<!<§.§,V§;
   import §[!z§.LevelManager;
   import §]!F§.§"!j§;
   import §]!F§.§1"-§;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §!!x§ extends §,-§
   {
      
      public static const STATE_NAME:String = "LevelEndStateRio";
      
      public static const §;R§:Number = 30;
      
      protected static const §^A§:String = "ScoreLoopCountChannel";
      
      protected static const §83§:String = "EndScreenEffectChannel";
       
      
      private var §2"6§:§-!F§;
      
      private var §<§:Number;
      
      private var §]`§:Number = 0.0;
      
      private var §!G§:Number = 0.0;
      
      private var §5z§:Boolean = false;
      
      private var §;"A§:Timer;
      
      private var §#!i§:§+!J§;
      
      protected var §#v§:Array;
      
      protected var §&!l§:§4!_§;
      
      protected var § -§:Vector.<§4!_§>;
      
      public var mNewScoreCounter:int;
      
      private var §@!C§:int;
      
      private var §5"4§:Boolean;
      
      protected var §+`§:Boolean;
      
      private var §<!d§:§,V§;
      
      protected var §>!^§:Boolean;
      
      private var § "0§:§-!F§;
      
      protected var §>r§:Boolean;
      
      protected var §^!3§:int;
      
      public function §!!x§(param1:Boolean = false, param2:String = "LevelEndStateRio")
      {
         this.§#v§ = [];
         this.§<!d§ = new §,V§();
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §2"-§ = new §"!j§(this);
         §2"-§.init(this.§8!z§());
         this.§`!I§();
         this.§ -§ = new Vector.<§4!_§>();
         §%4§.§>$§(§^A§,1,1);
         §%4§.§>$§(§83§,3,1);
      }
      
      protected function §`!I§() : void
      {
         this.§#v§.push((§2"-§.getItemByName("Button_Menu") as §<?§).x);
         this.§#v§.push((§2"-§.getItemByName("Button_Replay") as §<?§).x);
         this.§#v§.push((§2"-§.getItemByName("Button_NextLevel") as §<?§).x);
         this.§#v§.push((§2"-§.getItemByName("Button_CutScene") as §<?§).x);
      }
      
      protected function §8!z§() : XML
      {
         return §1"-§.§ !>§.Views.View_LevelEndRio[0];
      }
      
      protected function §%M§() : void
      {
         if(!AngryBirdsFP11.sUserProgress.§8r§(LevelManager.§[!<§))
         {
            (§2"-§.getItemByName("Button_Menu") as §<?§).setVisibility(false);
            (§2"-§.getItemByName("Button_Replay") as §<?§).setVisibility(true);
            (§2"-§.getItemByName("Button_NextLevel") as §<?§).setVisibility(false);
            (§2"-§.getItemByName("Button_CutScene") as §<?§).setVisibility(true);
            (§2"-§.getItemByName("Button_Replay") as §<?§).x = this.§#v§[0] + Math.abs(this.§#v§[1] - this.§#v§[0]) / 2;
            (§2"-§.getItemByName("Button_CutScene") as §<?§).x = this.§#v§[1] + Math.abs(this.§#v§[2] - this.§#v§[1]) / 2;
         }
         else
         {
            (§2"-§.getItemByName("Button_Menu") as §<?§).setVisibility(true);
            (§2"-§.getItemByName("Button_Replay") as §<?§).setVisibility(true);
            (§2"-§.getItemByName("Button_NextLevel") as §<?§).setVisibility(false);
            (§2"-§.getItemByName("Button_CutScene") as §<?§).setVisibility(true);
            (§2"-§.getItemByName("Button_Menu") as §<?§).x = this.§#v§[0];
            (§2"-§.getItemByName("Button_Replay") as §<?§).x = this.§#v§[1];
            (§2"-§.getItemByName("Button_CutScene") as §<?§).x = this.§#v§[2];
         }
      }
      
      protected function §8!x§() : void
      {
         (§2"-§.getItemByName("Button_Menu") as §<?§).setVisibility(true);
         (§2"-§.getItemByName("Button_Replay") as §<?§).setVisibility(true);
         (§2"-§.getItemByName("Button_CutScene") as §<?§).setVisibility(false);
         if(LevelManager.§3$§())
         {
            (§2"-§.getItemByName("Button_NextLevel") as §<?§).setVisibility(true);
            (§2"-§.getItemByName("Button_Menu") as §<?§).x = this.§#v§[0];
            (§2"-§.getItemByName("Button_Replay") as §<?§).x = this.§#v§[1];
            (§2"-§.getItemByName("Button_NextLevel") as §<?§).x = this.§#v§[2];
         }
         else
         {
            (§2"-§.getItemByName("Button_NextLevel") as §<?§).setVisibility(false);
            (§2"-§.getItemByName("Button_Menu") as §<?§).x = this.§#v§[0] + Math.abs(this.§#v§[1] - this.§#v§[0]) / 2;
            (§2"-§.getItemByName("Button_Replay") as §<?§).x = this.§#v§[1] + Math.abs(this.§#v§[2] - this.§#v§[1]) / 2;
         }
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§>r§ = false;
         §9!%§.pause();
         this.§#!i§ = new §+!J§(0,0,0,0);
         §2"-§.movieClip.addChildAt(this.§#!i§,§2"-§.movieClip.numChildren - 1);
         if(LevelManager.§0f§())
         {
            this.§%M§();
         }
         else
         {
            this.§8!x§();
         }
         this.mNewScoreCounter = 0;
         this.§5"4§ = false;
         §%4§.§>f§("LevelCompletedTheme1");
         this.§#!i§.§ !2§(0.7);
         this.§]`§ = 0;
         this.§!G§ = 0;
         this.§5v§();
      }
      
      private function §5v§() : void
      {
         this.§+`§ = false;
         this.setScoreData();
         this.§;"A§ = new Timer(500);
         this.§@!C§ = 0;
         this.§;"A§.addEventListener(TimerEvent.TIMER,this.§7L§);
         this.§;"A§.start();
      }
      
      protected function §?"6§() : void
      {
         if(AngryBirdsFP11.sUserProgress.getEagleScoreForLevel(LevelManager.§[!<§) == 100)
         {
            (§2"-§.getItemByName("MovieClip_ResultMEFeather") as §"Z§).mClip.gotoAndStop("On");
         }
         else
         {
            (§2"-§.getItemByName("MovieClip_ResultMEFeather") as §"Z§).mClip.gotoAndStop("Off");
         }
      }
      
      protected function §1L§(param1:int, param2:int) : void
      {
         if(this.§>!^§)
         {
            param2 = param1;
            AngryBirdsFP11.sUserProgress.§'!X§(LevelManager.§[!<§,param2);
            §2"-§.setText("New Highscore!","TextField_BestScore");
         }
         else
         {
            §2"-§.setText("Best " + param2.toString(),"TextField_BestScore");
            this.§^!3§ = LevelManager.§6K§(LevelManager.§[!<§,param2);
            switch(this.§^!3§)
            {
               case 1:
                  (§2"-§.getItemByName("MovieClip_BestScoreStars") as §"Z§).§;!B§("OneStar");
                  break;
               case 2:
                  (§2"-§.getItemByName("MovieClip_BestScoreStars") as §"Z§).§;!B§("TwoStar");
                  break;
               case 3:
                  (§2"-§.getItemByName("MovieClip_BestScoreStars") as §"Z§).§;!B§("ThreeStar");
            }
         }
      }
      
      protected function setScoreData() : void
      {
         var _loc1_:int = AngryBirdsFP11.sUserProgress.getScoreForLevel(LevelManager.§[!<§);
         var _loc2_:int = §9!%§.§&N§.getScore();
         this.§>!^§ = _loc2_ > _loc1_;
         this.§1L§(_loc2_,_loc1_);
         this.§?"6§();
         var _loc3_:int = §9!%§.§&N§.getEagleScore();
         var _loc4_:int = AngryBirdsFP11.sUserProgress.getEagleScoreForLevel(LevelManager.§[!<§);
         var _loc5_:*;
         if(_loc5_ = _loc3_ > _loc4_)
         {
            _loc4_ = _loc3_;
            AngryBirdsFP11.sUserProgress.§[y§(LevelManager.§[!<§,_loc4_);
         }
         var _loc6_:int = AngryBirdsFP11.sUserProgress.getStarsForLevel(LevelManager.§[!<§,_loc2_);
         (§2"-§.getItemByName("MovieClip_NewHighScoreBadge") as §"Z§).setVisibility(false);
         (§2"-§.getItemByName("MovieClip_StarLeft") as §"Z§).mClip.gotoAndStop("UnLit");
         (§2"-§.getItemByName("MovieClip_StarCenter") as §"Z§).mClip.gotoAndStop("UnLit");
         (§2"-§.getItemByName("MovieClip_StarRight") as §"Z§).mClip.gotoAndStop("UnLit");
      }
      
      protected function onBadgeLanded() : void
      {
         if(this.§>!^§)
         {
            §%4§.§>f§("Hiscore_Badge",§83§);
            §2"-§.setText("New Highscore!","TextField_NewHighScore");
            (§2"-§.getItemByName("TextField_NewHighScore") as §+§).setVisibility(true);
            (§2"-§.getItemByName("MovieClip_BestScoreStars") as §"Z§).setVisibility(false);
            this.§?"=§();
         }
         else
         {
            (§2"-§.getItemByName("TextField_BestScore") as §+§).setVisibility(true);
            (§2"-§.getItemByName("MovieClip_BestScoreStars") as §"Z§).setVisibility(true);
         }
      }
      
      protected function §?"=§() : void
      {
         this.§]`§ = 0;
         this.§!G§ = 0;
         this.§<§ = §;R§;
      }
      
      private function §]"=§(param1:Number) : void
      {
         (§2"-§.getItemByName("Container_LevelEndStripe") as §<+§).x = (§2"-§.getItemByName("Container_LevelEndStripe") as §<+§).x - this.§]`§;
         (§2"-§.getItemByName("Container_LevelEndStripe") as §<+§).y = (§2"-§.getItemByName("Container_LevelEndStripe") as §<+§).y - this.§!G§;
         if(this.§<§ > 0)
         {
            this.§]`§ = (Math.random() - 0.5) * (this.§<§ / §;R§) * 20;
            this.§!G§ = (Math.random() - 0.5) * (this.§<§ / §;R§) * 20;
            (§2"-§.getItemByName("Container_LevelEndStripe") as §<+§).x = (§2"-§.getItemByName("Container_LevelEndStripe") as §<+§).x + this.§]`§;
            (§2"-§.getItemByName("Container_LevelEndStripe") as §<+§).y = (§2"-§.getItemByName("Container_LevelEndStripe") as §<+§).y + this.§!G§;
         }
         else
         {
            this.§<§ = -1;
            this.§>"$§();
            this.§]`§ = 0;
            this.§!G§ = 0;
         }
         this.§<§ -= param1 / 10;
      }
      
      protected function §>"$§() : void
      {
      }
      
      private function §7L§(param1:TimerEvent) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc4_:Number = LevelManager.§]!W§(LevelManager.§[!<§).§ "3§;
         var _loc5_:Number = LevelManager.§]!W§(LevelManager.§[!<§).§5!V§;
         if((§2"-§.getItemByName("MovieClip_StarLeft") as §"Z§).mClip.currentLabel == "UnLit")
         {
            §%4§.§>f§("Hiscore_Count",§^A§,100);
            §%4§.§>f§("Hiscore_Star_Splash1",§83§);
            this.§;"A§.delay = 1000;
            this.§<!d§.assign(§9!%§.§&N§.getScore());
            _loc6_ = this.§<!d§.getValue() / _loc4_ * 2;
            if(_loc4_ <= 0)
            {
               _loc6_ = 1;
            }
            this.§ "0§ = §7!b§.§8c§.§4&§(this,{"mNewScoreCounter":this.§<!d§.getValue()},{"mNewScoreCounter":0},_loc6_);
            this.§ "0§.onComplete = this.§9!S§;
            this.§ "0§.play();
            (§2"-§.getItemByName("MovieClip_StarLeft") as §"Z§).mClip.gotoAndStop("Lit");
            _loc2_ = (§2"-§.getItemByName("MovieClip_StarLeft") as §"Z§).x + (§2"-§.getItemByName("Container_LevelEndStripe") as §<+§).x;
            _loc3_ = (§2"-§.getItemByName("MovieClip_StarLeft") as §"Z§).y + (§2"-§.getItemByName("Container_LevelEndStripe") as §<+§).y;
            this.§&!l§ = new §4!_§(AngryBirdsFP11.§#!T§,AngryBirdsFP11.§+!e§,_loc2_,_loc3_,§4!_§.§9w§);
            §2"-§.addChild(this.§&!l§);
            this.§ -§.push(this.§&!l§);
         }
         else if(this.§<!d§.getValue() >= _loc5_ && (§2"-§.getItemByName("MovieClip_StarCenter") as §"Z§).mClip.currentLabel == "UnLit")
         {
            §%4§.§>f§("Hiscore_Star_Splash2",§83§);
            (§2"-§.getItemByName("MovieClip_StarCenter") as §"Z§).mClip.gotoAndStop("Lit");
            _loc2_ = (§2"-§.getItemByName("MovieClip_StarCenter") as §"Z§).x + (§2"-§.getItemByName("Container_LevelEndStripe") as §<+§).x;
            _loc3_ = (§2"-§.getItemByName("MovieClip_StarCenter") as §"Z§).y + (§2"-§.getItemByName("Container_LevelEndStripe") as §<+§).y;
            this.§&!l§ = new §4!_§(AngryBirdsFP11.§#!T§,AngryBirdsFP11.§+!e§,_loc2_,_loc3_,§4!_§.§9!B§);
            §2"-§.addChild(this.§&!l§);
            this.§ -§.push(this.§&!l§);
         }
         else if(this.§<!d§.getValue() >= _loc4_ && (§2"-§.getItemByName("MovieClip_StarRight") as §"Z§).mClip.currentLabel == "UnLit")
         {
            this.§>r§ = true;
            §%4§.§>f§("Hiscore_Star_Splash3",§83§);
            (§2"-§.getItemByName("MovieClip_StarRight") as §"Z§).mClip.gotoAndStop("Lit");
            _loc2_ = (§2"-§.getItemByName("MovieClip_StarRight") as §"Z§).x + (§2"-§.getItemByName("Container_LevelEndStripe") as §<+§).x;
            _loc3_ = (§2"-§.getItemByName("MovieClip_StarRight") as §"Z§).y + (§2"-§.getItemByName("Container_LevelEndStripe") as §<+§).y;
            this.§&!l§ = new §4!_§(AngryBirdsFP11.§#!T§,AngryBirdsFP11.§+!e§,_loc2_,_loc3_,§4!_§.§;!-§);
            §2"-§.addChild(this.§&!l§);
            this.§ -§.push(this.§&!l§);
         }
         else if(!this.§5"4§)
         {
            this.§5"4§ = true;
         }
         else
         {
            this.§;"A§.stop();
            if(this.§>!^§ && !this.§+`§)
            {
               (§2"-§.getItemByName("MovieClip_NewHighScoreBadge") as §"Z§).setVisibility(true);
            }
            else
            {
               (§2"-§.getItemByName("MovieClip_NewHighScoreBadge") as §"Z§).setVisibility(false);
            }
            this.§2"6§ = §7!b§.§8c§.§4&§((§2"-§.getItemByName("MovieClip_NewHighScoreBadge") as §"Z§).mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":7,
               "scaleY":7
            },0.1);
            this.§2"6§.onComplete = this.onBadgeLanded;
            this.§2"6§.play();
         }
         ++this.§@!C§;
      }
      
      private function §9!S§() : void
      {
         §%4§.§&"@§(§^A§);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:§4!_§ = null;
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §,-§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         §2"-§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScore");
         §2"-§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScoreEffects");
         for each(_loc3_ in this.§ -§)
         {
            _loc3_.update(param1);
         }
         if(this.§<§ > -1)
         {
            this.§]"=§(param1);
         }
         if(mNextState.length > 0)
         {
            §9!%§.§!!M§.clearLevel();
            return §,-§.STATE_STATUS_COMPLETED;
         }
         return §,-§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§<!_§();
         this.§<§ = 0;
         this.mNewScoreCounter = 0;
         if(this.§ "0§)
         {
            this.§ "0§.stop();
            this.§ "0§ = null;
         }
         if(this.§2"6§)
         {
            this.§2"6§.stop();
            this.§2"6§ = null;
         }
         §%4§.§&"@§(§^A§);
         this.§&"<§(§ F§.COMPONENT_STATE_ACTIVE_DEFAULT);
         §2"-§.setText("0","TextField_LevelEndScore");
         §2"-§.setText("0","TextField_LevelEndScoreEffects");
         if(this.§#!i§)
         {
            if(§2"-§.movieClip.contains(this.§#!i§))
            {
               §2"-§.movieClip.removeChild(this.§#!i§);
            }
            this.§#!i§.clean();
            this.§#!i§ = null;
         }
      }
      
      protected function §&"<§(param1:String) : void
      {
         (§2"-§.getItemByName("Button_Menu") as §<?§).setComponentVisualState(param1);
         (§2"-§.getItemByName("Button_Replay") as §<?§).setComponentVisualState(param1);
         (§2"-§.getItemByName("Button_NextLevel") as §<?§).setComponentVisualState(param1);
         (§2"-§.getItemByName("Button_CutScene") as §<?§).setComponentVisualState(param1);
      }
      
      private function §<!_§() : void
      {
         var splash:§4!_§ = null;
         if(this.§;"A§)
         {
            this.§;"A§.stop();
            try
            {
               this.§;"A§.removeEventListener(TimerEvent.TIMER,this.§7L§);
            }
            catch(e:Error)
            {
            }
         }
         for each(splash in this.§ -§)
         {
            if(§2"-§.contains(splash))
            {
               §2"-§.removeChild(splash);
            }
            splash.clean();
         }
         this.§ -§ = new Vector.<§4!_§>();
         this.§7"5§();
      }
      
      protected function §7"5§() : void
      {
         (§2"-§.getItemByName("TextField_BestScore") as §+§).setVisibility(false);
         (§2"-§.getItemByName("MovieClip_BestScoreStars") as §"Z§).setVisibility(false);
         (§2"-§.getItemByName("TextField_NewHighScore") as §+§).setVisibility(false);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      protected function loadNextLevel() : void
      {
         §"c§.§^!8§();
         mNextState = this.getCutSceneState();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§,!]§) : void
      {
         var _loc4_:String = null;
         switch(param2)
         {
            case "NEXT_LEVEL":
               this.loadNextLevel();
               break;
            case "REPLAY":
               §"c§.§@!z§();
               mNextState = this.getStateLevelLoadState();
               break;
            case "WATCH_REPLAY":
               §"c§.§@!z§();
               mNextState = this.getStateLevelLoadState();
               if(_loc4_ = §9!%§.§!!M§.§@!K§())
               {
                  §9!%§.§!!M§.§2!U§(_loc4_);
               }
               break;
            case "MENU":
               §%4§.§9!0§();
               mNextState = this.getMenuButtonTargetState();
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§`"B§.§>!-§();
         }
      }
      
      protected function getStateLevelLoadState() : String
      {
         return §"c§.STATE_NAME;
      }
      
      protected function getCutSceneState() : String
      {
         return StateCutScene.STATE_NAME;
      }
      
      public function getMenuButtonTargetState() : String
      {
         return §=B§.STATE_NAME;
      }
   }
}
