package §>Y§
{
   import §"^§.§9=§;
   import §3!%§.§-k§;
   import §4!6§.§use§;
   import §5!<§.§@]§;
   import §5!<§.§^!$§;
   import §5f§.§=;§;
   import §5f§.§]_§;
   import §92§.§!J§;
   import §92§.§<'§;
   import §<!4§.§25§;
   import §=u§.§"x§;
   import §=u§.§1r§;
   import §=u§.§2"§;
   import §=u§.§>v§;
   import §?!=§.§<!>§;
   import §?!C§.§6q§;
   import §?!C§.§[!-§;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §!!1§ extends §<!>§
   {
      
      public static const §4!C§:String = "LevelEndStateRio";
      
      public static const §5!A§:Number = 30;
      
      protected static const §"!>§:String = "ScoreLoopCountChannel";
      
      protected static const §-r§:String = "EndScreenEffectChannel";
       
      
      private var §=n§:§6q§;
      
      private var §`!E§:Number;
      
      private var §3l§:Number = 0.0;
      
      private var §?x§:Number = 0.0;
      
      private var §;i§:Boolean = false;
      
      private var §[k§:Timer;
      
      private var §0!G§:§<'§;
      
      protected var §<f§:Array;
      
      protected var §9W§:§!J§;
      
      protected var §^6§:Vector.<§!J§>;
      
      public var mNewScoreCounter:int;
      
      private var §,k§:int;
      
      private var §<!H§:Boolean;
      
      protected var §!!E§:Boolean;
      
      private var §try§:§use§;
      
      protected var §1]§:Boolean;
      
      private var §5X§:§6q§;
      
      protected var §0"§:Boolean;
      
      protected var §'!@§:int;
      
      public function §!!1§(param1:Boolean = false, param2:String = "LevelEndStateRio")
      {
         this.§<f§ = [];
         this.§try§ = new §use§();
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §3g§ = new §@]§(this);
         §3g§.init(this.getViewXML());
         this.initButtonDefaultPositions();
         this.§^6§ = new Vector.<§!J§>();
         §25§.§5!G§(§"!>§,1,1);
         §25§.§5!G§(§-r§,3,1);
      }
      
      protected function initButtonDefaultPositions() : void
      {
         this.§<f§.push((§3g§.getItemByName("Button_Menu") as §1r§).x);
         this.§<f§.push((§3g§.getItemByName("Button_Replay") as §1r§).x);
         this.§<f§.push((§3g§.getItemByName("Button_NextLevel") as §1r§).x);
         this.§<f§.push((§3g§.getItemByName("Button_CutScene") as §1r§).x);
      }
      
      protected function getViewXML() : XML
      {
         return §^!$§.§"!9§.Views.View_LevelEndRio[0];
      }
      
      protected function showButtonsCutScene() : void
      {
         if(!AngryBirdsFP11.§3!?§.isLevelPassed(§-k§.§%D§))
         {
            (§3g§.getItemByName("Button_Menu") as §1r§).setVisibility(false);
            (§3g§.getItemByName("Button_Replay") as §1r§).setVisibility(true);
            (§3g§.getItemByName("Button_NextLevel") as §1r§).setVisibility(false);
            (§3g§.getItemByName("Button_CutScene") as §1r§).setVisibility(true);
            (§3g§.getItemByName("Button_Replay") as §1r§).x = this.§<f§[0] + Math.abs(this.§<f§[1] - this.§<f§[0]) / 2;
            (§3g§.getItemByName("Button_CutScene") as §1r§).x = this.§<f§[1] + Math.abs(this.§<f§[2] - this.§<f§[1]) / 2;
         }
         else
         {
            (§3g§.getItemByName("Button_Menu") as §1r§).setVisibility(true);
            (§3g§.getItemByName("Button_Replay") as §1r§).setVisibility(true);
            (§3g§.getItemByName("Button_NextLevel") as §1r§).setVisibility(false);
            (§3g§.getItemByName("Button_CutScene") as §1r§).setVisibility(true);
            (§3g§.getItemByName("Button_Menu") as §1r§).x = this.§<f§[0];
            (§3g§.getItemByName("Button_Replay") as §1r§).x = this.§<f§[1];
            (§3g§.getItemByName("Button_CutScene") as §1r§).x = this.§<f§[2];
         }
      }
      
      protected function showButtonsNormal() : void
      {
         (§3g§.getItemByName("Button_Menu") as §1r§).setVisibility(true);
         (§3g§.getItemByName("Button_Replay") as §1r§).setVisibility(true);
         (§3g§.getItemByName("Button_CutScene") as §1r§).setVisibility(false);
         if(§-k§.§7#§())
         {
            (§3g§.getItemByName("Button_NextLevel") as §1r§).setVisibility(true);
            (§3g§.getItemByName("Button_Menu") as §1r§).x = this.§<f§[0];
            (§3g§.getItemByName("Button_Replay") as §1r§).x = this.§<f§[1];
            (§3g§.getItemByName("Button_NextLevel") as §1r§).x = this.§<f§[2];
         }
         else
         {
            (§3g§.getItemByName("Button_NextLevel") as §1r§).setVisibility(false);
            (§3g§.getItemByName("Button_Menu") as §1r§).x = this.§<f§[0] + Math.abs(this.§<f§[1] - this.§<f§[0]) / 2;
            (§3g§.getItemByName("Button_Replay") as §1r§).x = this.§<f§[1] + Math.abs(this.§<f§[2] - this.§<f§[1]) / 2;
         }
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§0"§ = false;
         §9=§.pause();
         this.§0!G§ = new §<'§(0,0,0,0);
         §3g§.movieClip.addChildAt(this.§0!G§,§3g§.movieClip.numChildren - 1);
         if(§-k§.§>!%§())
         {
            this.showButtonsCutScene();
         }
         else
         {
            this.showButtonsNormal();
         }
         this.mNewScoreCounter = 0;
         this.§<!H§ = false;
         §25§.playSound("LevelCompletedTheme1");
         this.§0!G§.fadeToAlpha(0.7);
         this.§3l§ = 0;
         this.§?x§ = 0;
         this.§?!"§();
      }
      
      private function §?!"§() : void
      {
         this.§!!E§ = false;
         this.setScoreData();
         this.§[k§ = new Timer(500);
         this.§,k§ = 0;
         this.§[k§.addEventListener(TimerEvent.TIMER,this.§-H§);
         this.§[k§.start();
      }
      
      protected function setMightyEagleFeather() : void
      {
         if(AngryBirdsFP11.§3!?§.§#J§(§-k§.§%D§) == 100)
         {
            (§3g§.getItemByName("MovieClip_ResultMEFeather") as §"x§).mClip.gotoAndStop("On");
         }
         else
         {
            (§3g§.getItemByName("MovieClip_ResultMEFeather") as §"x§).mClip.gotoAndStop("Off");
         }
      }
      
      protected function setScoreStars(param1:int, param2:int) : void
      {
         if(this.§1]§)
         {
            param2 = param1;
            AngryBirdsFP11.§3!?§.§2!F§(§-k§.§%D§,param2);
            §3g§.setText("New Highscore!","TextField_BestScore");
         }
         else
         {
            §3g§.setText("Best " + param2.toString(),"TextField_BestScore");
            this.§'!@§ = §-k§.§!T§(§-k§.§%D§,param2);
            switch(this.§'!@§)
            {
               case 1:
                  (§3g§.getItemByName("MovieClip_BestScoreStars") as §"x§).§<!3§("OneStar");
                  break;
               case 2:
                  (§3g§.getItemByName("MovieClip_BestScoreStars") as §"x§).§<!3§("TwoStar");
                  break;
               case 3:
                  (§3g§.getItemByName("MovieClip_BestScoreStars") as §"x§).§<!3§("ThreeStar");
            }
         }
      }
      
      protected function setScoreData() : void
      {
         var _loc1_:int = AngryBirdsFP11.§3!?§.§@%§(§-k§.§%D§);
         var _loc2_:int = §9=§.controller.getScore();
         this.§1]§ = _loc2_ > _loc1_;
         this.setScoreStars(_loc2_,_loc1_);
         this.setMightyEagleFeather();
         var _loc3_:int = §9=§.controller.getEagleScore();
         var _loc4_:int = AngryBirdsFP11.§3!?§.§#J§(§-k§.§%D§);
         var _loc5_:*;
         if(_loc5_ = _loc3_ > _loc4_)
         {
            _loc4_ = _loc3_;
            AngryBirdsFP11.§3!?§.§6!4§(§-k§.§%D§,_loc4_);
         }
         var _loc6_:int = AngryBirdsFP11.§3!?§.§09§(§-k§.§%D§,_loc2_);
         (§3g§.getItemByName("MovieClip_NewHighScoreBadge") as §"x§).setVisibility(false);
         (§3g§.getItemByName("MovieClip_StarLeft") as §"x§).mClip.gotoAndStop("UnLit");
         (§3g§.getItemByName("MovieClip_StarCenter") as §"x§).mClip.gotoAndStop("UnLit");
         (§3g§.getItemByName("MovieClip_StarRight") as §"x§).mClip.gotoAndStop("UnLit");
      }
      
      protected function onBadgeLanded() : void
      {
         if(this.§1]§)
         {
            §25§.playSound("Hiscore_Badge",§-r§);
            §3g§.setText("New Highscore!","TextField_NewHighScore");
            (§3g§.getItemByName("TextField_NewHighScore") as §2"§).setVisibility(true);
            (§3g§.getItemByName("MovieClip_BestScoreStars") as §"x§).setVisibility(false);
            this.§2;§();
         }
         else
         {
            (§3g§.getItemByName("TextField_BestScore") as §2"§).setVisibility(true);
            (§3g§.getItemByName("MovieClip_BestScoreStars") as §"x§).setVisibility(true);
         }
      }
      
      protected function §2;§() : void
      {
         this.§3l§ = 0;
         this.§?x§ = 0;
         this.§`!E§ = §5!A§;
      }
      
      private function §++§(param1:Number) : void
      {
         (§3g§.getItemByName("Container_LevelEndStripe") as §>v§).x = (§3g§.getItemByName("Container_LevelEndStripe") as §>v§).x - this.§3l§;
         (§3g§.getItemByName("Container_LevelEndStripe") as §>v§).y = (§3g§.getItemByName("Container_LevelEndStripe") as §>v§).y - this.§?x§;
         if(this.§`!E§ > 0)
         {
            this.§3l§ = (Math.random() - 0.5) * (this.§`!E§ / §5!A§) * 20;
            this.§?x§ = (Math.random() - 0.5) * (this.§`!E§ / §5!A§) * 20;
            (§3g§.getItemByName("Container_LevelEndStripe") as §>v§).x = (§3g§.getItemByName("Container_LevelEndStripe") as §>v§).x + this.§3l§;
            (§3g§.getItemByName("Container_LevelEndStripe") as §>v§).y = (§3g§.getItemByName("Container_LevelEndStripe") as §>v§).y + this.§?x§;
         }
         else
         {
            this.§`!E§ = -1;
            this.shakingOver();
            this.§3l§ = 0;
            this.§?x§ = 0;
         }
         this.§`!E§ -= param1 / 10;
      }
      
      protected function shakingOver() : void
      {
      }
      
      private function §-H§(param1:TimerEvent) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc4_:Number = §-k§.§>!5§(§-k§.§%D§).§+!<§;
         var _loc5_:Number = §-k§.§>!5§(§-k§.§%D§).§]!H§;
         if((§3g§.getItemByName("MovieClip_StarLeft") as §"x§).mClip.currentLabel == "UnLit")
         {
            §25§.playSound("Hiscore_Count",§"!>§,100);
            §25§.playSound("Hiscore_Star_Splash1",§-r§);
            this.§[k§.delay = 1000;
            this.§try§.assign(§9=§.controller.getScore());
            _loc6_ = this.§try§.getValue() / _loc4_ * 2;
            if(_loc4_ <= 0)
            {
               _loc6_ = 1;
            }
            this.§5X§ = §[!-§.§ set§.§6B§(this,{"mNewScoreCounter":this.§try§.getValue()},{"mNewScoreCounter":0},_loc6_);
            this.§5X§.onComplete = this.§6a§;
            this.§5X§.play();
            (§3g§.getItemByName("MovieClip_StarLeft") as §"x§).mClip.gotoAndStop("Lit");
            _loc2_ = (§3g§.getItemByName("MovieClip_StarLeft") as §"x§).x + (§3g§.getItemByName("Container_LevelEndStripe") as §>v§).x;
            _loc3_ = (§3g§.getItemByName("MovieClip_StarLeft") as §"x§).y + (§3g§.getItemByName("Container_LevelEndStripe") as §>v§).y;
            this.§9W§ = new §!J§(AngryBirdsFP11.§4!D§,AngryBirdsFP11.§,§,_loc2_,_loc3_,§!J§.§]!5§);
            §3g§.addChild(this.§9W§);
            this.§^6§.push(this.§9W§);
         }
         else if(this.§try§.getValue() >= _loc5_ && (§3g§.getItemByName("MovieClip_StarCenter") as §"x§).mClip.currentLabel == "UnLit")
         {
            §25§.playSound("Hiscore_Star_Splash2",§-r§);
            (§3g§.getItemByName("MovieClip_StarCenter") as §"x§).mClip.gotoAndStop("Lit");
            _loc2_ = (§3g§.getItemByName("MovieClip_StarCenter") as §"x§).x + (§3g§.getItemByName("Container_LevelEndStripe") as §>v§).x;
            _loc3_ = (§3g§.getItemByName("MovieClip_StarCenter") as §"x§).y + (§3g§.getItemByName("Container_LevelEndStripe") as §>v§).y;
            this.§9W§ = new §!J§(AngryBirdsFP11.§4!D§,AngryBirdsFP11.§,§,_loc2_,_loc3_,§!J§.§[!&§);
            §3g§.addChild(this.§9W§);
            this.§^6§.push(this.§9W§);
         }
         else if(this.§try§.getValue() >= _loc4_ && (§3g§.getItemByName("MovieClip_StarRight") as §"x§).mClip.currentLabel == "UnLit")
         {
            this.§0"§ = true;
            §25§.playSound("Hiscore_Star_Splash3",§-r§);
            (§3g§.getItemByName("MovieClip_StarRight") as §"x§).mClip.gotoAndStop("Lit");
            _loc2_ = (§3g§.getItemByName("MovieClip_StarRight") as §"x§).x + (§3g§.getItemByName("Container_LevelEndStripe") as §>v§).x;
            _loc3_ = (§3g§.getItemByName("MovieClip_StarRight") as §"x§).y + (§3g§.getItemByName("Container_LevelEndStripe") as §>v§).y;
            this.§9W§ = new §!J§(AngryBirdsFP11.§4!D§,AngryBirdsFP11.§,§,_loc2_,_loc3_,§!J§.§ !5§);
            §3g§.addChild(this.§9W§);
            this.§^6§.push(this.§9W§);
         }
         else if(!this.§<!H§)
         {
            this.§<!H§ = true;
         }
         else
         {
            this.§[k§.stop();
            if(this.§1]§ && !this.§!!E§)
            {
               (§3g§.getItemByName("MovieClip_NewHighScoreBadge") as §"x§).setVisibility(true);
            }
            else
            {
               (§3g§.getItemByName("MovieClip_NewHighScoreBadge") as §"x§).setVisibility(false);
            }
            this.§=n§ = §[!-§.§ set§.§6B§((§3g§.getItemByName("MovieClip_NewHighScoreBadge") as §"x§).mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":7,
               "scaleY":7
            },0.1);
            this.§=n§.onComplete = this.onBadgeLanded;
            this.§=n§.play();
         }
         ++this.§,k§;
      }
      
      private function §6a§() : void
      {
         §25§.§0!5§(§"!>§);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:§!J§ = null;
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §<!>§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         §3g§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScore");
         §3g§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScoreEffects");
         for each(_loc3_ in this.§^6§)
         {
            _loc3_.update(param1);
         }
         if(this.§`!E§ > -1)
         {
            this.§++§(param1);
         }
         if(mNextState.length > 0)
         {
            §9=§.§<!@§.clearLevel();
            return §<!>§.STATE_STATUS_COMPLETED;
         }
         return §<!>§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§?J§();
         this.§`!E§ = 0;
         this.mNewScoreCounter = 0;
         if(this.§5X§)
         {
            this.§5X§.stop();
            this.§5X§ = null;
         }
         if(this.§=n§)
         {
            this.§=n§.stop();
            this.§=n§ = null;
         }
         §25§.§0!5§(§"!>§);
         this.setButtonStates(§=;§.COMPONENT_STATE_ACTIVE_DEFAULT);
         §3g§.setText("0","TextField_LevelEndScore");
         §3g§.setText("0","TextField_LevelEndScoreEffects");
         if(this.§0!G§)
         {
            if(§3g§.movieClip.contains(this.§0!G§))
            {
               §3g§.movieClip.removeChild(this.§0!G§);
            }
            this.§0!G§.clean();
            this.§0!G§ = null;
         }
      }
      
      protected function setButtonStates(param1:String) : void
      {
         (§3g§.getItemByName("Button_Menu") as §1r§).setComponentVisualState(param1);
         (§3g§.getItemByName("Button_Replay") as §1r§).setComponentVisualState(param1);
         (§3g§.getItemByName("Button_NextLevel") as §1r§).setComponentVisualState(param1);
         (§3g§.getItemByName("Button_CutScene") as §1r§).setComponentVisualState(param1);
      }
      
      private function §?J§() : void
      {
         var splash:§!J§ = null;
         if(this.§[k§)
         {
            this.§[k§.stop();
            try
            {
               this.§[k§.removeEventListener(TimerEvent.TIMER,this.§-H§);
            }
            catch(e:Error)
            {
            }
         }
         for each(splash in this.§^6§)
         {
            if(§3g§.contains(splash))
            {
               §3g§.removeChild(splash);
            }
            splash.clean();
         }
         this.§^6§ = new Vector.<§!J§>();
         this.hideBestScoreTexts();
      }
      
      protected function hideBestScoreTexts() : void
      {
         (§3g§.getItemByName("TextField_BestScore") as §2"§).setVisibility(false);
         (§3g§.getItemByName("MovieClip_BestScoreStars") as §"x§).setVisibility(false);
         (§3g§.getItemByName("TextField_NewHighScore") as §2"§).setVisibility(false);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      protected function §`2§() : void
      {
         §;O§.§ true§();
         mNextState = this.§1s§();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§]_§) : void
      {
         var _loc4_:String = null;
         switch(param2)
         {
            case "NEXT_LEVEL":
               this.§`2§();
               break;
            case "REPLAY":
               §;O§.§%e§();
               mNextState = this.§<3§();
               break;
            case "WATCH_REPLAY":
               §;O§.§%e§();
               mNextState = this.§<3§();
               if(_loc4_ = §9=§.§<!@§.§;!9§())
               {
                  §9=§.§<!@§.§1!1§(_loc4_);
               }
               break;
            case "MENU":
               §25§.§=!7§();
               mNextState = this.§9C§();
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§ j§.§@[§();
         }
      }
      
      protected function §<3§() : String
      {
         return §;O§.§4!C§;
      }
      
      protected function §1s§() : String
      {
         return StateCutScene.§4!C§;
      }
      
      public function §9C§() : String
      {
         return §8!F§.§4!C§;
      }
   }
}
