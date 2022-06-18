package §?7§
{
   import §"V§.§true§;
   import §-l§.§?'§;
   import §1!8§.§;!>§;
   import §5Y§.§"!4§;
   import §5Y§.§1!$§;
   import §8B§.§+;§;
   import §8B§.§6!9§;
   import §<!@§.§!P§;
   import §?!%§.§ l§;
   import §?!%§.§?!7§;
   import §?u§.§9&§;
   import §?u§.§^P§;
   import §[V§.§02§;
   import §[V§.§1;§;
   import §[V§.§=!'§;
   import §[V§.§`@§;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   import §while§.§03§;
   
   public class §@!-§ extends §true§
   {
      
      public static const §4!&§:String = "LevelEndStateRio";
      
      public static const §+h§:Number = 30;
      
      protected static const §-<§:String = "ScoreLoopCountChannel";
      
      protected static const §[2§:String = "EndScreenEffectChannel";
       
      
      private var §,!0§:§ l§;
      
      private var §?$§:Number;
      
      private var §4H§:Number = 0.0;
      
      private var §8f§:Number = 0.0;
      
      private var §%6§:Boolean = false;
      
      private var §[e§:Timer;
      
      private var §@"§:§9&§;
      
      private var §+J§:Array;
      
      protected var §6!!§:§^P§;
      
      protected var §7V§:Vector.<§^P§>;
      
      public var mNewScoreCounter:int;
      
      private var §=m§:int;
      
      private var §=[§:Boolean;
      
      protected var §]L§:Boolean;
      
      private var §;h§:§03§;
      
      protected var §9§:Boolean;
      
      private var §;S§:§ l§;
      
      protected var §61§:Boolean;
      
      protected var §8K§:int;
      
      public function §@!-§(param1:Boolean = false, param2:String = "LevelEndStateRio")
      {
         this.§+J§ = [];
         this.§;h§ = new §03§();
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §6!$§ = new §"!4§(this);
         §6!$§.init(this.getViewXML());
         this.initButtonDefaultPositions();
         this.§7V§ = new Vector.<§^P§>();
         §;!>§.§]t§(§-<§,1,1);
         §;!>§.§]t§(§[2§,3,1);
      }
      
      protected function initButtonDefaultPositions() : void
      {
         this.§+J§.push((§6!$§.getItemByName("Button_Menu") as §1;§).x);
         this.§+J§.push((§6!$§.getItemByName("Button_Replay") as §1;§).x);
         this.§+J§.push((§6!$§.getItemByName("Button_NextLevel") as §1;§).x);
         this.§+J§.push((§6!$§.getItemByName("Button_CutScene") as §1;§).x);
      }
      
      protected function getViewXML() : XML
      {
         return §1!$§.§7e§.Views.View_LevelEndRio[0];
      }
      
      protected function showButtonsCutScene() : void
      {
         if(!AngryBirdsFP11.sUserProgress.isLevelPassed(§!P§.§4R§))
         {
            (§6!$§.getItemByName("Button_Menu") as §1;§).setVisibility(false);
            (§6!$§.getItemByName("Button_Replay") as §1;§).setVisibility(true);
            (§6!$§.getItemByName("Button_NextLevel") as §1;§).setVisibility(false);
            (§6!$§.getItemByName("Button_CutScene") as §1;§).setVisibility(true);
            (§6!$§.getItemByName("Button_Replay") as §1;§).x = this.§+J§[0] + Math.abs(this.§+J§[1] - this.§+J§[0]) / 2;
            (§6!$§.getItemByName("Button_CutScene") as §1;§).x = this.§+J§[1] + Math.abs(this.§+J§[2] - this.§+J§[1]) / 2;
         }
         else
         {
            (§6!$§.getItemByName("Button_Menu") as §1;§).setVisibility(true);
            (§6!$§.getItemByName("Button_Replay") as §1;§).setVisibility(true);
            (§6!$§.getItemByName("Button_NextLevel") as §1;§).setVisibility(false);
            (§6!$§.getItemByName("Button_CutScene") as §1;§).setVisibility(true);
            (§6!$§.getItemByName("Button_Menu") as §1;§).x = this.§+J§[0];
            (§6!$§.getItemByName("Button_Replay") as §1;§).x = this.§+J§[1];
            (§6!$§.getItemByName("Button_CutScene") as §1;§).x = this.§+J§[2];
         }
      }
      
      protected function showButtonsNormal() : void
      {
         (§6!$§.getItemByName("Button_Menu") as §1;§).setVisibility(true);
         (§6!$§.getItemByName("Button_Replay") as §1;§).setVisibility(true);
         (§6!$§.getItemByName("Button_CutScene") as §1;§).setVisibility(false);
         if(§!P§.§]y§())
         {
            (§6!$§.getItemByName("Button_NextLevel") as §1;§).setVisibility(true);
            (§6!$§.getItemByName("Button_Menu") as §1;§).x = this.§+J§[0];
            (§6!$§.getItemByName("Button_Replay") as §1;§).x = this.§+J§[1];
            (§6!$§.getItemByName("Button_NextLevel") as §1;§).x = this.§+J§[2];
         }
         else
         {
            (§6!$§.getItemByName("Button_NextLevel") as §1;§).setVisibility(false);
            (§6!$§.getItemByName("Button_Menu") as §1;§).x = this.§+J§[0] + Math.abs(this.§+J§[1] - this.§+J§[0]) / 2;
            (§6!$§.getItemByName("Button_Replay") as §1;§).x = this.§+J§[1] + Math.abs(this.§+J§[2] - this.§+J§[1]) / 2;
         }
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§61§ = false;
         §?'§.pause();
         this.§@"§ = new §9&§(0,0,0,0);
         §6!$§.movieClip.addChildAt(this.§@"§,§6!$§.movieClip.numChildren - 1);
         if(§!P§.§1!§())
         {
            this.showButtonsCutScene();
         }
         else
         {
            this.showButtonsNormal();
         }
         this.mNewScoreCounter = 0;
         this.§=[§ = false;
         §;!>§.§>t§("LevelCompletedTheme1");
         this.§@"§.§%4§(0.7);
         this.§4H§ = 0;
         this.§8f§ = 0;
         this.§`E§();
      }
      
      private function §`E§() : void
      {
         this.§]L§ = false;
         this.setScoreData();
         this.§[e§ = new Timer(500);
         this.§=m§ = 0;
         this.§[e§.addEventListener(TimerEvent.TIMER,this.§2A§);
         this.§[e§.start();
      }
      
      protected function setMightyEagleFeather() : void
      {
         if(AngryBirdsFP11.sUserProgress.§8!4§(§!P§.§4R§) == 100)
         {
            (§6!$§.getItemByName("MovieClip_ResultMEFeather") as §02§).mClip.gotoAndStop("On");
         }
         else
         {
            (§6!$§.getItemByName("MovieClip_ResultMEFeather") as §02§).mClip.gotoAndStop("Off");
         }
      }
      
      protected function setScoreStars(param1:int, param2:int) : void
      {
         if(this.§9§)
         {
            param2 = param1;
            AngryBirdsFP11.sUserProgress.§?I§(§!P§.§4R§,param2);
            §6!$§.setText("New Highscore!","TextField_BestScore");
         }
         else
         {
            §6!$§.setText("Best " + param2.toString(),"TextField_BestScore");
            this.§8K§ = §!P§.§3!H§(§!P§.§4R§,param2);
            switch(this.§8K§)
            {
               case 1:
                  (§6!$§.getItemByName("MovieClip_BestScoreStars") as §02§).§[Z§("OneStar");
                  break;
               case 2:
                  (§6!$§.getItemByName("MovieClip_BestScoreStars") as §02§).§[Z§("TwoStar");
                  break;
               case 3:
                  (§6!$§.getItemByName("MovieClip_BestScoreStars") as §02§).§[Z§("ThreeStar");
            }
         }
      }
      
      protected function setScoreData() : void
      {
         var _loc1_:int = AngryBirdsFP11.sUserProgress.§10§(§!P§.§4R§);
         var _loc2_:int = §?'§.controller.getScore();
         this.§9§ = _loc2_ > _loc1_;
         this.setScoreStars(_loc2_,_loc1_);
         this.setMightyEagleFeather();
         var _loc3_:int = §?'§.controller.getEagleScore();
         var _loc4_:int = AngryBirdsFP11.sUserProgress.§8!4§(§!P§.§4R§);
         var _loc5_:*;
         if(_loc5_ = _loc3_ > _loc4_)
         {
            _loc4_ = _loc3_;
            AngryBirdsFP11.sUserProgress.§-H§(§!P§.§4R§,_loc4_);
         }
         var _loc6_:int = AngryBirdsFP11.sUserProgress.§<!?§(§!P§.§4R§,_loc2_);
         (§6!$§.getItemByName("MovieClip_NewHighScoreBadge") as §02§).setVisibility(false);
         (§6!$§.getItemByName("MovieClip_StarLeft") as §02§).mClip.gotoAndStop("UnLit");
         (§6!$§.getItemByName("MovieClip_StarCenter") as §02§).mClip.gotoAndStop("UnLit");
         (§6!$§.getItemByName("MovieClip_StarRight") as §02§).mClip.gotoAndStop("UnLit");
      }
      
      protected function onBadgeLanded() : void
      {
         if(this.§9§)
         {
            §;!>§.§>t§("Hiscore_Badge",§[2§);
            §6!$§.setText("New Highscore!","TextField_NewHighScore");
            (§6!$§.getItemByName("TextField_NewHighScore") as §`@§).setVisibility(true);
            (§6!$§.getItemByName("MovieClip_BestScoreStars") as §02§).setVisibility(false);
            this.§>!G§();
         }
         else
         {
            (§6!$§.getItemByName("TextField_BestScore") as §`@§).setVisibility(true);
            (§6!$§.getItemByName("MovieClip_BestScoreStars") as §02§).setVisibility(true);
         }
      }
      
      protected function §>!G§() : void
      {
         this.§4H§ = 0;
         this.§8f§ = 0;
         this.§?$§ = §+h§;
      }
      
      private function §5H§(param1:Number) : void
      {
         (§6!$§.getItemByName("Container_LevelEndStripe") as §=!'§).x = (§6!$§.getItemByName("Container_LevelEndStripe") as §=!'§).x - this.§4H§;
         (§6!$§.getItemByName("Container_LevelEndStripe") as §=!'§).y = (§6!$§.getItemByName("Container_LevelEndStripe") as §=!'§).y - this.§8f§;
         if(this.§?$§ > 0)
         {
            this.§4H§ = (Math.random() - 0.5) * (this.§?$§ / §+h§) * 20;
            this.§8f§ = (Math.random() - 0.5) * (this.§?$§ / §+h§) * 20;
            (§6!$§.getItemByName("Container_LevelEndStripe") as §=!'§).x = (§6!$§.getItemByName("Container_LevelEndStripe") as §=!'§).x + this.§4H§;
            (§6!$§.getItemByName("Container_LevelEndStripe") as §=!'§).y = (§6!$§.getItemByName("Container_LevelEndStripe") as §=!'§).y + this.§8f§;
         }
         else
         {
            this.§4H§ = 0;
            this.§8f§ = 0;
         }
         this.§?$§ -= param1 / 10;
      }
      
      private function §2A§(param1:TimerEvent) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc4_:Number = §!P§.§1'§(§!P§.§4R§).§2!E§;
         var _loc5_:Number = §!P§.§1'§(§!P§.§4R§).§6,§;
         if((§6!$§.getItemByName("MovieClip_StarLeft") as §02§).mClip.currentLabel == "UnLit")
         {
            §;!>§.§>t§("Hiscore_Count",§-<§,100);
            §;!>§.§>t§("Hiscore_Star_Splash1",§[2§);
            this.§[e§.delay = 1000;
            this.§;h§.assign(§?'§.controller.getScore());
            _loc6_ = this.§;h§.getValue() / _loc4_ * 2;
            if(_loc4_ <= 0)
            {
               _loc6_ = 1;
            }
            this.§;S§ = §?!7§.§^7§.§^!0§(this,{"mNewScoreCounter":this.§;h§.getValue()},{"mNewScoreCounter":0},_loc6_);
            this.§;S§.onComplete = this.§@!F§;
            this.§;S§.play();
            (§6!$§.getItemByName("MovieClip_StarLeft") as §02§).mClip.gotoAndStop("Lit");
            _loc2_ = (§6!$§.getItemByName("MovieClip_StarLeft") as §02§).x + (§6!$§.getItemByName("Container_LevelEndStripe") as §=!'§).x;
            _loc3_ = (§6!$§.getItemByName("MovieClip_StarLeft") as §02§).y + (§6!$§.getItemByName("Container_LevelEndStripe") as §=!'§).y;
            this.§6!!§ = new §^P§(AngryBirdsFP11.screenWidth,AngryBirdsFP11.screenHeight,_loc2_,_loc3_,§^P§.§6?§);
            §6!$§.addChild(this.§6!!§);
            this.§7V§.push(this.§6!!§);
         }
         else if(this.§;h§.getValue() >= _loc5_ && (§6!$§.getItemByName("MovieClip_StarCenter") as §02§).mClip.currentLabel == "UnLit")
         {
            §;!>§.§>t§("Hiscore_Star_Splash2",§[2§);
            (§6!$§.getItemByName("MovieClip_StarCenter") as §02§).mClip.gotoAndStop("Lit");
            _loc2_ = (§6!$§.getItemByName("MovieClip_StarCenter") as §02§).x + (§6!$§.getItemByName("Container_LevelEndStripe") as §=!'§).x;
            _loc3_ = (§6!$§.getItemByName("MovieClip_StarCenter") as §02§).y + (§6!$§.getItemByName("Container_LevelEndStripe") as §=!'§).y;
            this.§6!!§ = new §^P§(AngryBirdsFP11.screenWidth,AngryBirdsFP11.screenHeight,_loc2_,_loc3_,§^P§.§9V§);
            §6!$§.addChild(this.§6!!§);
            this.§7V§.push(this.§6!!§);
         }
         else if(this.§;h§.getValue() >= _loc4_ && (§6!$§.getItemByName("MovieClip_StarRight") as §02§).mClip.currentLabel == "UnLit")
         {
            this.§61§ = true;
            §;!>§.§>t§("Hiscore_Star_Splash3",§[2§);
            (§6!$§.getItemByName("MovieClip_StarRight") as §02§).mClip.gotoAndStop("Lit");
            _loc2_ = (§6!$§.getItemByName("MovieClip_StarRight") as §02§).x + (§6!$§.getItemByName("Container_LevelEndStripe") as §=!'§).x;
            _loc3_ = (§6!$§.getItemByName("MovieClip_StarRight") as §02§).y + (§6!$§.getItemByName("Container_LevelEndStripe") as §=!'§).y;
            this.§6!!§ = new §^P§(AngryBirdsFP11.screenWidth,AngryBirdsFP11.screenHeight,_loc2_,_loc3_,§^P§.§`X§);
            §6!$§.addChild(this.§6!!§);
            this.§7V§.push(this.§6!!§);
         }
         else if(!this.§=[§)
         {
            this.§=[§ = true;
         }
         else
         {
            this.§[e§.stop();
            if(this.§9§ && !this.§]L§)
            {
               (§6!$§.getItemByName("MovieClip_NewHighScoreBadge") as §02§).setVisibility(true);
            }
            else
            {
               (§6!$§.getItemByName("MovieClip_NewHighScoreBadge") as §02§).setVisibility(false);
            }
            this.§,!0§ = §?!7§.§^7§.§^!0§((§6!$§.getItemByName("MovieClip_NewHighScoreBadge") as §02§).mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":7,
               "scaleY":7
            },0.1);
            this.§,!0§.onComplete = this.onBadgeLanded;
            this.§,!0§.play();
         }
         ++this.§=m§;
      }
      
      private function §@!F§() : void
      {
         §;!>§.§8!"§(§-<§);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:§^P§ = null;
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §true§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         §6!$§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScore");
         §6!$§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScoreEffects");
         for each(_loc3_ in this.§7V§)
         {
            _loc3_.update(param1);
         }
         if(this.§?$§ >= 0)
         {
            this.§5H§(param1);
         }
         if(mNextState.length > 0)
         {
            §?'§.§5!§.clearLevel();
            return §true§.STATE_STATUS_COMPLETED;
         }
         return §true§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§?8§();
         this.§?$§ = 0;
         this.mNewScoreCounter = 0;
         if(this.§;S§)
         {
            this.§;S§.stop();
            this.§;S§ = null;
         }
         if(this.§,!0§)
         {
            this.§,!0§.stop();
            this.§,!0§ = null;
         }
         §;!>§.§8!"§(§-<§);
         this.setButtonStates(§+;§.COMPONENT_STATE_ACTIVE_DEFAULT);
         §6!$§.setText("0","TextField_LevelEndScore");
         §6!$§.setText("0","TextField_LevelEndScoreEffects");
         if(this.§@"§)
         {
            if(§6!$§.movieClip.contains(this.§@"§))
            {
               §6!$§.movieClip.removeChild(this.§@"§);
            }
            this.§@"§.clean();
            this.§@"§ = null;
         }
      }
      
      protected function setButtonStates(param1:String) : void
      {
         (§6!$§.getItemByName("Button_Menu") as §1;§).setComponentVisualState(param1);
         (§6!$§.getItemByName("Button_Replay") as §1;§).setComponentVisualState(param1);
         (§6!$§.getItemByName("Button_NextLevel") as §1;§).setComponentVisualState(param1);
         (§6!$§.getItemByName("Button_CutScene") as §1;§).setComponentVisualState(param1);
      }
      
      private function §?8§() : void
      {
         var splash:§^P§ = null;
         if(this.§[e§)
         {
            this.§[e§.stop();
            try
            {
               this.§[e§.removeEventListener(TimerEvent.TIMER,this.§2A§);
            }
            catch(e:Error)
            {
            }
         }
         for each(splash in this.§7V§)
         {
            if(§6!$§.contains(splash))
            {
               §6!$§.removeChild(splash);
            }
            splash.clean();
         }
         this.§7V§ = new Vector.<§^P§>();
         this.hideBestScoreTexts();
      }
      
      protected function hideBestScoreTexts() : void
      {
         (§6!$§.getItemByName("TextField_BestScore") as §`@§).setVisibility(false);
         (§6!$§.getItemByName("MovieClip_BestScoreStars") as §02§).setVisibility(false);
         (§6!$§.getItemByName("TextField_NewHighScore") as §`@§).setVisibility(false);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      protected function §5"§() : void
      {
         §'!6§.§'X§();
         mNextState = this.§,z§();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§6!9§) : void
      {
         var _loc4_:String = null;
         switch(param2)
         {
            case "NEXT_LEVEL":
               this.§5"§();
               break;
            case "REPLAY":
               §'!6§.§ !F§();
               mNextState = this.§ !A§();
               break;
            case "WATCH_REPLAY":
               §'!6§.§ !F§();
               mNextState = this.§ !A§();
               if(_loc4_ = §?'§.§5!§.§`?§())
               {
                  §?'§.§5!§.§-n§(_loc4_);
                  break;
               }
               break;
            case "MENU":
               §;!>§.§&;§();
               mNextState = this.§<0§();
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§ for§.§>§();
         }
      }
      
      protected function § !A§() : String
      {
         return §'!6§.§4!&§;
      }
      
      protected function §,z§() : String
      {
         return StateCutScene.§4!&§;
      }
      
      public function §<0§() : String
      {
         return §<!D§.§4!&§;
      }
   }
}
