package §9!5§
{
   import §"R§.§ !Q§;
   import §0!N§.LevelManager;
   import §0X§.§&'§;
   import §2h§.§'!^§;
   import §2h§.§[!'§;
   import §4L§.§,!_§;
   import §4L§.§3!J§;
   import §57§.§,!b§;
   import §57§.§4!Z§;
   import §9Y§.§+!!§;
   import §9Y§.§6!8§;
   import §<!>§.§?Y§;
   import §?!7§.§"j§;
   import §?!7§.§5!I§;
   import §?!7§.§8;§;
   import §?!7§.§[I§;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   import §true§.§ _§;
   
   public class §'!>§ extends §?Y§
   {
      
      public static const §?h§:String = "LevelEndStateRio";
      
      public static const §+!5§:Number = 30;
      
      protected static const §+%§:String = "ScoreLoopCountChannel";
      
      protected static const §catch§:String = "EndScreenEffectChannel";
       
      
      private var §,M§:§4!Z§;
      
      private var § n§:Number;
      
      private var §-!h§:Number = 0.0;
      
      private var §#`§:Number = 0.0;
      
      private var §]!X§:Boolean = false;
      
      private var §>!j§:Timer;
      
      private var §#x§:§,!_§;
      
      protected var §+!s§:Array;
      
      protected var include:§3!J§;
      
      protected var §0!7§:Vector.<§3!J§>;
      
      public var mNewScoreCounter:int;
      
      private var §"!`§:int;
      
      private var §-Z§:Boolean;
      
      protected var §>!V§:Boolean;
      
      private var §+t§:§&'§;
      
      protected var §[!a§:Boolean;
      
      private var §1!1§:§4!Z§;
      
      protected var §3"§:Boolean;
      
      protected var §#!k§:int;
      
      public function §'!>§(param1:Boolean = false, param2:String = "LevelEndStateRio")
      {
         this.§+!s§ = [];
         this.§+t§ = new §&'§();
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §5!P§ = new §'!^§(this);
         §5!P§.init(this.getViewXML());
         this.initButtonDefaultPositions();
         this.§0!7§ = new Vector.<§3!J§>();
         § !Q§.§]!h§(§+%§,1,1);
         § !Q§.§]!h§(§catch§,3,1);
      }
      
      protected function initButtonDefaultPositions() : void
      {
         this.§+!s§.push((§5!P§.getItemByName("Button_Menu") as §5!I§).x);
         this.§+!s§.push((§5!P§.getItemByName("Button_Replay") as §5!I§).x);
         this.§+!s§.push((§5!P§.getItemByName("Button_NextLevel") as §5!I§).x);
         this.§+!s§.push((§5!P§.getItemByName("Button_CutScene") as §5!I§).x);
      }
      
      protected function getViewXML() : XML
      {
         return §[!'§.§+@§.Views.View_LevelEndRio[0];
      }
      
      protected function showButtonsCutScene() : void
      {
         if(!AngryBirdsFP11.sUserProgress.§%H§(LevelManager.§4Y§))
         {
            (§5!P§.getItemByName("Button_Menu") as §5!I§).setVisibility(false);
            (§5!P§.getItemByName("Button_Replay") as §5!I§).setVisibility(true);
            (§5!P§.getItemByName("Button_NextLevel") as §5!I§).setVisibility(false);
            (§5!P§.getItemByName("Button_CutScene") as §5!I§).setVisibility(true);
            (§5!P§.getItemByName("Button_Replay") as §5!I§).x = this.§+!s§[0] + Math.abs(this.§+!s§[1] - this.§+!s§[0]) / 2;
            (§5!P§.getItemByName("Button_CutScene") as §5!I§).x = this.§+!s§[1] + Math.abs(this.§+!s§[2] - this.§+!s§[1]) / 2;
         }
         else
         {
            (§5!P§.getItemByName("Button_Menu") as §5!I§).setVisibility(true);
            (§5!P§.getItemByName("Button_Replay") as §5!I§).setVisibility(true);
            (§5!P§.getItemByName("Button_NextLevel") as §5!I§).setVisibility(false);
            (§5!P§.getItemByName("Button_CutScene") as §5!I§).setVisibility(true);
            (§5!P§.getItemByName("Button_Menu") as §5!I§).x = this.§+!s§[0];
            (§5!P§.getItemByName("Button_Replay") as §5!I§).x = this.§+!s§[1];
            (§5!P§.getItemByName("Button_CutScene") as §5!I§).x = this.§+!s§[2];
         }
      }
      
      protected function showButtonsNormal() : void
      {
         (§5!P§.getItemByName("Button_Menu") as §5!I§).setVisibility(true);
         (§5!P§.getItemByName("Button_Replay") as §5!I§).setVisibility(true);
         (§5!P§.getItemByName("Button_CutScene") as §5!I§).setVisibility(false);
         if(LevelManager.§9!j§())
         {
            (§5!P§.getItemByName("Button_NextLevel") as §5!I§).setVisibility(true);
            (§5!P§.getItemByName("Button_Menu") as §5!I§).x = this.§+!s§[0];
            (§5!P§.getItemByName("Button_Replay") as §5!I§).x = this.§+!s§[1];
            (§5!P§.getItemByName("Button_NextLevel") as §5!I§).x = this.§+!s§[2];
         }
         else
         {
            (§5!P§.getItemByName("Button_NextLevel") as §5!I§).setVisibility(false);
            (§5!P§.getItemByName("Button_Menu") as §5!I§).x = this.§+!s§[0] + Math.abs(this.§+!s§[1] - this.§+!s§[0]) / 2;
            (§5!P§.getItemByName("Button_Replay") as §5!I§).x = this.§+!s§[1] + Math.abs(this.§+!s§[2] - this.§+!s§[1]) / 2;
         }
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§3"§ = false;
         § _§.pause();
         this.§#x§ = new §,!_§(0,0,0,0);
         §5!P§.movieClip.addChildAt(this.§#x§,§5!P§.movieClip.numChildren - 1);
         if(LevelManager.§8!<§())
         {
            this.showButtonsCutScene();
         }
         else
         {
            this.showButtonsNormal();
         }
         this.mNewScoreCounter = 0;
         this.§-Z§ = false;
         § !Q§.playSound("LevelCompletedTheme1");
         this.§#x§.§7!+§(0.7);
         this.§-!h§ = 0;
         this.§#`§ = 0;
         this.§'!&§();
      }
      
      private function §'!&§() : void
      {
         this.§>!V§ = false;
         this.setScoreData();
         this.§>!j§ = new Timer(500);
         this.§"!`§ = 0;
         this.§>!j§.addEventListener(TimerEvent.TIMER,this.§]!V§);
         this.§>!j§.start();
      }
      
      protected function §6b§() : void
      {
         if(AngryBirdsFP11.sUserProgress.getEagleScoreForLevel(LevelManager.§4Y§) == 100)
         {
            (§5!P§.getItemByName("MovieClip_ResultMEFeather") as §[I§).mClip.gotoAndStop("On");
         }
         else
         {
            (§5!P§.getItemByName("MovieClip_ResultMEFeather") as §[I§).mClip.gotoAndStop("Off");
         }
      }
      
      protected function §<U§(param1:int, param2:int) : void
      {
         if(this.§[!a§)
         {
            param2 = param1;
            AngryBirdsFP11.sUserProgress.§,!i§(LevelManager.§4Y§,param2);
            §5!P§.setText("New Highscore!","TextField_BestScore");
         }
         else
         {
            §5!P§.setText("Best " + param2.toString(),"TextField_BestScore");
            this.§#!k§ = LevelManager.§@!Z§(LevelManager.§4Y§,param2);
            switch(this.§#!k§)
            {
               case 1:
                  (§5!P§.getItemByName("MovieClip_BestScoreStars") as §[I§).§2!?§("OneStar");
                  break;
               case 2:
                  (§5!P§.getItemByName("MovieClip_BestScoreStars") as §[I§).§2!?§("TwoStar");
                  break;
               case 3:
                  (§5!P§.getItemByName("MovieClip_BestScoreStars") as §[I§).§2!?§("ThreeStar");
            }
         }
      }
      
      protected function setScoreData() : void
      {
         var _loc1_:int = AngryBirdsFP11.sUserProgress.getScoreForLevel(LevelManager.§4Y§);
         var _loc2_:int = § _§.§?!]§.getScore();
         this.§[!a§ = _loc2_ > _loc1_;
         this.§<U§(_loc2_,_loc1_);
         this.§6b§();
         var _loc3_:int = § _§.§?!]§.getEagleScore();
         var _loc4_:int = AngryBirdsFP11.sUserProgress.getEagleScoreForLevel(LevelManager.§4Y§);
         var _loc5_:*;
         if(_loc5_ = _loc3_ > _loc4_)
         {
            _loc4_ = _loc3_;
            AngryBirdsFP11.sUserProgress.§5U§(LevelManager.§4Y§,_loc4_);
         }
         var _loc6_:int = AngryBirdsFP11.sUserProgress.getStarsForLevel(LevelManager.§4Y§,_loc2_);
         (§5!P§.getItemByName("MovieClip_NewHighScoreBadge") as §[I§).setVisibility(false);
         (§5!P§.getItemByName("MovieClip_StarLeft") as §[I§).mClip.gotoAndStop("UnLit");
         (§5!P§.getItemByName("MovieClip_StarCenter") as §[I§).mClip.gotoAndStop("UnLit");
         (§5!P§.getItemByName("MovieClip_StarRight") as §[I§).mClip.gotoAndStop("UnLit");
      }
      
      protected function onBadgeLanded() : void
      {
         if(this.§[!a§)
         {
            § !Q§.playSound("Hiscore_Badge",§catch§);
            §5!P§.setText("New Highscore!","TextField_NewHighScore");
            (§5!P§.getItemByName("TextField_NewHighScore") as §"j§).setVisibility(true);
            (§5!P§.getItemByName("MovieClip_BestScoreStars") as §[I§).setVisibility(false);
            this.§5!§();
         }
         else
         {
            (§5!P§.getItemByName("TextField_BestScore") as §"j§).setVisibility(true);
            (§5!P§.getItemByName("MovieClip_BestScoreStars") as §[I§).setVisibility(true);
         }
      }
      
      protected function §5!§() : void
      {
         this.§-!h§ = 0;
         this.§#`§ = 0;
         this.§ n§ = §+!5§;
      }
      
      private function §[!f§(param1:Number) : void
      {
         (§5!P§.getItemByName("Container_LevelEndStripe") as §8;§).x = (§5!P§.getItemByName("Container_LevelEndStripe") as §8;§).x - this.§-!h§;
         (§5!P§.getItemByName("Container_LevelEndStripe") as §8;§).y = (§5!P§.getItemByName("Container_LevelEndStripe") as §8;§).y - this.§#`§;
         if(this.§ n§ > 0)
         {
            this.§-!h§ = (Math.random() - 0.5) * (this.§ n§ / §+!5§) * 20;
            this.§#`§ = (Math.random() - 0.5) * (this.§ n§ / §+!5§) * 20;
            (§5!P§.getItemByName("Container_LevelEndStripe") as §8;§).x = (§5!P§.getItemByName("Container_LevelEndStripe") as §8;§).x + this.§-!h§;
            (§5!P§.getItemByName("Container_LevelEndStripe") as §8;§).y = (§5!P§.getItemByName("Container_LevelEndStripe") as §8;§).y + this.§#`§;
         }
         else
         {
            this.§ n§ = -1;
            this.§%!&§();
            this.§-!h§ = 0;
            this.§#`§ = 0;
         }
         this.§ n§ -= param1 / 10;
      }
      
      protected function §%!&§() : void
      {
      }
      
      private function §]!V§(param1:TimerEvent) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc4_:Number = LevelManager.§-V§(LevelManager.§4Y§).§>!o§;
         var _loc5_:Number = LevelManager.§-V§(LevelManager.§4Y§).§8!l§;
         if((§5!P§.getItemByName("MovieClip_StarLeft") as §[I§).mClip.currentLabel == "UnLit")
         {
            § !Q§.playSound("Hiscore_Count",§+%§,100);
            § !Q§.playSound("Hiscore_Star_Splash1",§catch§);
            this.§>!j§.delay = 1000;
            this.§+t§.assign(§ _§.§?!]§.getScore());
            _loc6_ = this.§+t§.getValue() / _loc4_ * 2;
            if(_loc4_ <= 0)
            {
               _loc6_ = 1;
            }
            this.§1!1§ = §,!b§.§<d§.§>a§(this,{"mNewScoreCounter":this.§+t§.getValue()},{"mNewScoreCounter":0},_loc6_);
            this.§1!1§.onComplete = this.§4^§;
            this.§1!1§.play();
            (§5!P§.getItemByName("MovieClip_StarLeft") as §[I§).mClip.gotoAndStop("Lit");
            _loc2_ = (§5!P§.getItemByName("MovieClip_StarLeft") as §[I§).x + (§5!P§.getItemByName("Container_LevelEndStripe") as §8;§).x;
            _loc3_ = (§5!P§.getItemByName("MovieClip_StarLeft") as §[I§).y + (§5!P§.getItemByName("Container_LevelEndStripe") as §8;§).y;
            this.include = new §3!J§(AngryBirdsFP11.§>!2§,AngryBirdsFP11.§@U§,_loc2_,_loc3_,§3!J§.§=?§);
            §5!P§.addChild(this.include);
            this.§0!7§.push(this.include);
         }
         else if(this.§+t§.getValue() >= _loc5_ && (§5!P§.getItemByName("MovieClip_StarCenter") as §[I§).mClip.currentLabel == "UnLit")
         {
            § !Q§.playSound("Hiscore_Star_Splash2",§catch§);
            (§5!P§.getItemByName("MovieClip_StarCenter") as §[I§).mClip.gotoAndStop("Lit");
            _loc2_ = (§5!P§.getItemByName("MovieClip_StarCenter") as §[I§).x + (§5!P§.getItemByName("Container_LevelEndStripe") as §8;§).x;
            _loc3_ = (§5!P§.getItemByName("MovieClip_StarCenter") as §[I§).y + (§5!P§.getItemByName("Container_LevelEndStripe") as §8;§).y;
            this.include = new §3!J§(AngryBirdsFP11.§>!2§,AngryBirdsFP11.§@U§,_loc2_,_loc3_,§3!J§.§#!-§);
            §5!P§.addChild(this.include);
            this.§0!7§.push(this.include);
         }
         else if(this.§+t§.getValue() >= _loc4_ && (§5!P§.getItemByName("MovieClip_StarRight") as §[I§).mClip.currentLabel == "UnLit")
         {
            this.§3"§ = true;
            § !Q§.playSound("Hiscore_Star_Splash3",§catch§);
            (§5!P§.getItemByName("MovieClip_StarRight") as §[I§).mClip.gotoAndStop("Lit");
            _loc2_ = (§5!P§.getItemByName("MovieClip_StarRight") as §[I§).x + (§5!P§.getItemByName("Container_LevelEndStripe") as §8;§).x;
            _loc3_ = (§5!P§.getItemByName("MovieClip_StarRight") as §[I§).y + (§5!P§.getItemByName("Container_LevelEndStripe") as §8;§).y;
            this.include = new §3!J§(AngryBirdsFP11.§>!2§,AngryBirdsFP11.§@U§,_loc2_,_loc3_,§3!J§.§]T§);
            §5!P§.addChild(this.include);
            this.§0!7§.push(this.include);
         }
         else if(!this.§-Z§)
         {
            this.§-Z§ = true;
         }
         else
         {
            this.§>!j§.stop();
            if(this.§[!a§ && !this.§>!V§)
            {
               (§5!P§.getItemByName("MovieClip_NewHighScoreBadge") as §[I§).setVisibility(true);
            }
            else
            {
               (§5!P§.getItemByName("MovieClip_NewHighScoreBadge") as §[I§).setVisibility(false);
            }
            this.§,M§ = §,!b§.§<d§.§>a§((§5!P§.getItemByName("MovieClip_NewHighScoreBadge") as §[I§).mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":7,
               "scaleY":7
            },0.1);
            this.§,M§.onComplete = this.onBadgeLanded;
            this.§,M§.play();
         }
         ++this.§"!`§;
      }
      
      private function §4^§() : void
      {
         § !Q§.§9!t§(§+%§);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:§3!J§ = null;
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §?Y§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         §5!P§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScore");
         §5!P§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScoreEffects");
         for each(_loc3_ in this.§0!7§)
         {
            _loc3_.update(param1);
         }
         if(this.§ n§ > -1)
         {
            this.§[!f§(param1);
         }
         if(mNextState.length > 0)
         {
            § _§.§!6§.clearLevel();
            return §?Y§.STATE_STATUS_COMPLETED;
         }
         return §?Y§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§7!`§();
         this.§ n§ = 0;
         this.mNewScoreCounter = 0;
         if(this.§1!1§)
         {
            this.§1!1§.stop();
            this.§1!1§ = null;
         }
         if(this.§,M§)
         {
            this.§,M§.stop();
            this.§,M§ = null;
         }
         § !Q§.§9!t§(§+%§);
         this.setButtonStates(§+!!§.COMPONENT_STATE_ACTIVE_DEFAULT);
         §5!P§.setText("0","TextField_LevelEndScore");
         §5!P§.setText("0","TextField_LevelEndScoreEffects");
         if(this.§#x§)
         {
            if(§5!P§.movieClip.contains(this.§#x§))
            {
               §5!P§.movieClip.removeChild(this.§#x§);
            }
            this.§#x§.clean();
            this.§#x§ = null;
         }
      }
      
      protected function setButtonStates(param1:String) : void
      {
         (§5!P§.getItemByName("Button_Menu") as §5!I§).setComponentVisualState(param1);
         (§5!P§.getItemByName("Button_Replay") as §5!I§).setComponentVisualState(param1);
         (§5!P§.getItemByName("Button_NextLevel") as §5!I§).setComponentVisualState(param1);
         (§5!P§.getItemByName("Button_CutScene") as §5!I§).setComponentVisualState(param1);
      }
      
      private function §7!`§() : void
      {
         var splash:§3!J§ = null;
         if(this.§>!j§)
         {
            this.§>!j§.stop();
            try
            {
               this.§>!j§.removeEventListener(TimerEvent.TIMER,this.§]!V§);
            }
            catch(e:Error)
            {
            }
         }
         for each(splash in this.§0!7§)
         {
            if(§5!P§.contains(splash))
            {
               §5!P§.removeChild(splash);
            }
            splash.clean();
         }
         this.§0!7§ = new Vector.<§3!J§>();
         this.§-!Q§();
      }
      
      protected function §-!Q§() : void
      {
         (§5!P§.getItemByName("TextField_BestScore") as §"j§).setVisibility(false);
         (§5!P§.getItemByName("MovieClip_BestScoreStars") as §[I§).setVisibility(false);
         (§5!P§.getItemByName("TextField_NewHighScore") as §"j§).setVisibility(false);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      protected function §>!O§() : void
      {
         §#!c§.§ !0§();
         mNextState = this.§>!_§();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§6!8§) : void
      {
         var _loc4_:String = null;
         switch(param2)
         {
            case "NEXT_LEVEL":
               this.§>!O§();
               break;
            case "REPLAY":
               §#!c§.§6d§();
               mNextState = this.§<!9§();
               break;
            case "WATCH_REPLAY":
               §#!c§.§6d§();
               mNextState = this.§<!9§();
               if(_loc4_ = § _§.§!6§.§7!G§())
               {
                  § _§.§!6§.§#=§(_loc4_);
               }
               break;
            case "MENU":
               § !Q§.§"!"§();
               mNextState = this.§5!-§();
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§3!a§.§8!d§();
         }
      }
      
      protected function §<!9§() : String
      {
         return §#!c§.§?h§;
      }
      
      protected function §>!_§() : String
      {
         return StateCutScene.§?h§;
      }
      
      public function §5!-§() : String
      {
         return § B§.§?h§;
      }
   }
}
