package §;H§
{
   import §#!H§.§#p§;
   import §#!H§.§^I§;
   import §+0§.§,!E§;
   import §1!E§.§#?§;
   import §1!E§.§1!=§;
   import §1!E§.§==§;
   import §1!E§.§?!x§;
   import §2!H§.§!q§;
   import §2!H§.§-!,§;
   import §3!G§.LevelManager;
   import §5!c§.§9'§;
   import §>! §.§^!c§;
   import §>7§.§,!c§;
   import §>7§.§4+§;
   import §[!+§.§ !I§;
   import §[!+§.§4`§;
   import §]+§.§=E§;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §%!D§ extends §,!E§
   {
      
      public static const §"!s§:String = "LevelEndStateRio";
      
      public static const §!!<§:Number = 30;
      
      protected static const §[!m§:String = "ScoreLoopCountChannel";
      
      protected static const §!!>§:String = "EndScreenEffectChannel";
       
      
      private var §5!f§:§!q§;
      
      private var §`,§:Number;
      
      private var §+G§:Number = 0.0;
      
      private var §;!n§:Number = 0.0;
      
      private var §%T§:Boolean = false;
      
      private var §-@§:Timer;
      
      private var §4!E§:§^I§;
      
      protected var §=U§:Array;
      
      protected var §4!y§:§#p§;
      
      protected var §=K§:Vector.<§#p§>;
      
      public var mNewScoreCounter:int;
      
      private var §?!R§:int;
      
      private var §[;§:Boolean;
      
      protected var §`A§:Boolean;
      
      private var § d§:§=E§;
      
      protected var §%!#§:Boolean;
      
      private var §9!W§:§!q§;
      
      protected var §3!h§:Boolean;
      
      protected var § !X§:int;
      
      public function §%!D§(param1:Boolean = false, param2:String = "LevelEndStateRio")
      {
         this.§=U§ = [];
         this.§ d§ = new §=E§();
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §&!m§ = new §4`§(this);
         §&!m§.init(this.getViewXML());
         this.initButtonDefaultPositions();
         this.§=K§ = new Vector.<§#p§>();
         §9'§.§+!S§(§[!m§,1,1);
         §9'§.§+!S§(§!!>§,3,1);
      }
      
      protected function initButtonDefaultPositions() : void
      {
         this.§=U§.push((§&!m§.getItemByName("Button_Menu") as §==§).x);
         this.§=U§.push((§&!m§.getItemByName("Button_Replay") as §==§).x);
         this.§=U§.push((§&!m§.getItemByName("Button_NextLevel") as §==§).x);
         this.§=U§.push((§&!m§.getItemByName("Button_CutScene") as §==§).x);
      }
      
      protected function getViewXML() : XML
      {
         return § !I§.§3!a§.Views.View_LevelEndRio[0];
      }
      
      protected function showButtonsCutScene() : void
      {
         if(!AngryBirdsFP11.sUserProgress.§9!,§(LevelManager.§%n§))
         {
            (§&!m§.getItemByName("Button_Menu") as §==§).setVisibility(false);
            (§&!m§.getItemByName("Button_Replay") as §==§).setVisibility(true);
            (§&!m§.getItemByName("Button_NextLevel") as §==§).setVisibility(false);
            (§&!m§.getItemByName("Button_CutScene") as §==§).setVisibility(true);
            (§&!m§.getItemByName("Button_Replay") as §==§).x = this.§=U§[0] + Math.abs(this.§=U§[1] - this.§=U§[0]) / 2;
            (§&!m§.getItemByName("Button_CutScene") as §==§).x = this.§=U§[1] + Math.abs(this.§=U§[2] - this.§=U§[1]) / 2;
         }
         else
         {
            (§&!m§.getItemByName("Button_Menu") as §==§).setVisibility(true);
            (§&!m§.getItemByName("Button_Replay") as §==§).setVisibility(true);
            (§&!m§.getItemByName("Button_NextLevel") as §==§).setVisibility(false);
            (§&!m§.getItemByName("Button_CutScene") as §==§).setVisibility(true);
            (§&!m§.getItemByName("Button_Menu") as §==§).x = this.§=U§[0];
            (§&!m§.getItemByName("Button_Replay") as §==§).x = this.§=U§[1];
            (§&!m§.getItemByName("Button_CutScene") as §==§).x = this.§=U§[2];
         }
      }
      
      protected function showButtonsNormal() : void
      {
         (§&!m§.getItemByName("Button_Menu") as §==§).setVisibility(true);
         (§&!m§.getItemByName("Button_Replay") as §==§).setVisibility(true);
         (§&!m§.getItemByName("Button_CutScene") as §==§).setVisibility(false);
         if(LevelManager.§7!X§())
         {
            (§&!m§.getItemByName("Button_NextLevel") as §==§).setVisibility(true);
            (§&!m§.getItemByName("Button_Menu") as §==§).x = this.§=U§[0];
            (§&!m§.getItemByName("Button_Replay") as §==§).x = this.§=U§[1];
            (§&!m§.getItemByName("Button_NextLevel") as §==§).x = this.§=U§[2];
         }
         else
         {
            (§&!m§.getItemByName("Button_NextLevel") as §==§).setVisibility(false);
            (§&!m§.getItemByName("Button_Menu") as §==§).x = this.§=U§[0] + Math.abs(this.§=U§[1] - this.§=U§[0]) / 2;
            (§&!m§.getItemByName("Button_Replay") as §==§).x = this.§=U§[1] + Math.abs(this.§=U§[2] - this.§=U§[1]) / 2;
         }
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§3!h§ = false;
         §^!c§.pause();
         this.§4!E§ = new §^I§(0,0,0,0);
         §&!m§.movieClip.addChildAt(this.§4!E§,§&!m§.movieClip.numChildren - 1);
         if(LevelManager.§7!J§())
         {
            this.showButtonsCutScene();
         }
         else
         {
            this.showButtonsNormal();
         }
         this.mNewScoreCounter = 0;
         this.§[;§ = false;
         §9'§.playSound("LevelCompletedTheme1");
         this.§4!E§.§;'§(0.7);
         this.§+G§ = 0;
         this.§;!n§ = 0;
         this.§''§();
      }
      
      private function §''§() : void
      {
         this.§`A§ = false;
         this.setScoreData();
         this.§-@§ = new Timer(500);
         this.§?!R§ = 0;
         this.§-@§.addEventListener(TimerEvent.TIMER,this.§!!3§);
         this.§-@§.start();
      }
      
      protected function §2H§() : void
      {
         if(AngryBirdsFP11.sUserProgress.getEagleScoreForLevel(LevelManager.§%n§) == 100)
         {
            (§&!m§.getItemByName("MovieClip_ResultMEFeather") as §1!=§).mClip.gotoAndStop("On");
         }
         else
         {
            (§&!m§.getItemByName("MovieClip_ResultMEFeather") as §1!=§).mClip.gotoAndStop("Off");
         }
      }
      
      protected function §[!3§(param1:int, param2:int) : void
      {
         if(this.§%!#§)
         {
            param2 = param1;
            AngryBirdsFP11.sUserProgress.§!!O§(LevelManager.§%n§,param2);
            §&!m§.setText("New Highscore!","TextField_BestScore");
         }
         else
         {
            §&!m§.setText("Best " + param2.toString(),"TextField_BestScore");
            this.§ !X§ = LevelManager.§1z§(LevelManager.§%n§,param2);
            switch(this.§ !X§)
            {
               case 1:
                  (§&!m§.getItemByName("MovieClip_BestScoreStars") as §1!=§).§&!3§("OneStar");
                  break;
               case 2:
                  (§&!m§.getItemByName("MovieClip_BestScoreStars") as §1!=§).§&!3§("TwoStar");
                  break;
               case 3:
                  (§&!m§.getItemByName("MovieClip_BestScoreStars") as §1!=§).§&!3§("ThreeStar");
            }
         }
      }
      
      protected function setScoreData() : void
      {
         var _loc1_:int = AngryBirdsFP11.sUserProgress.getScoreForLevel(LevelManager.§%n§);
         var _loc2_:int = §^!c§.§-U§.getScore();
         this.§%!#§ = _loc2_ > _loc1_;
         this.§[!3§(_loc2_,_loc1_);
         this.§2H§();
         var _loc3_:int = §^!c§.§-U§.getEagleScore();
         var _loc4_:int = AngryBirdsFP11.sUserProgress.getEagleScoreForLevel(LevelManager.§%n§);
         var _loc5_:*;
         if(_loc5_ = _loc3_ > _loc4_)
         {
            _loc4_ = _loc3_;
            AngryBirdsFP11.sUserProgress.§-!N§(LevelManager.§%n§,_loc4_);
         }
         var _loc6_:int = AngryBirdsFP11.sUserProgress.getStarsForLevel(LevelManager.§%n§,_loc2_);
         (§&!m§.getItemByName("MovieClip_NewHighScoreBadge") as §1!=§).setVisibility(false);
         (§&!m§.getItemByName("MovieClip_StarLeft") as §1!=§).mClip.gotoAndStop("UnLit");
         (§&!m§.getItemByName("MovieClip_StarCenter") as §1!=§).mClip.gotoAndStop("UnLit");
         (§&!m§.getItemByName("MovieClip_StarRight") as §1!=§).mClip.gotoAndStop("UnLit");
      }
      
      protected function onBadgeLanded() : void
      {
         if(this.§%!#§)
         {
            §9'§.playSound("Hiscore_Badge",§!!>§);
            §&!m§.setText("New Highscore!","TextField_NewHighScore");
            (§&!m§.getItemByName("TextField_NewHighScore") as §?!x§).setVisibility(true);
            (§&!m§.getItemByName("MovieClip_BestScoreStars") as §1!=§).setVisibility(false);
            this.§>h§();
         }
         else
         {
            (§&!m§.getItemByName("TextField_BestScore") as §?!x§).setVisibility(true);
            (§&!m§.getItemByName("MovieClip_BestScoreStars") as §1!=§).setVisibility(true);
         }
      }
      
      protected function §>h§() : void
      {
         this.§+G§ = 0;
         this.§;!n§ = 0;
         this.§`,§ = §!!<§;
      }
      
      private function §8!v§(param1:Number) : void
      {
         (§&!m§.getItemByName("Container_LevelEndStripe") as §#?§).x = (§&!m§.getItemByName("Container_LevelEndStripe") as §#?§).x - this.§+G§;
         (§&!m§.getItemByName("Container_LevelEndStripe") as §#?§).y = (§&!m§.getItemByName("Container_LevelEndStripe") as §#?§).y - this.§;!n§;
         if(this.§`,§ > 0)
         {
            this.§+G§ = (Math.random() - 0.5) * (this.§`,§ / §!!<§) * 20;
            this.§;!n§ = (Math.random() - 0.5) * (this.§`,§ / §!!<§) * 20;
            (§&!m§.getItemByName("Container_LevelEndStripe") as §#?§).x = (§&!m§.getItemByName("Container_LevelEndStripe") as §#?§).x + this.§+G§;
            (§&!m§.getItemByName("Container_LevelEndStripe") as §#?§).y = (§&!m§.getItemByName("Container_LevelEndStripe") as §#?§).y + this.§;!n§;
         }
         else
         {
            this.§`,§ = -1;
            this.§-e§();
            this.§+G§ = 0;
            this.§;!n§ = 0;
         }
         this.§`,§ -= param1 / 10;
      }
      
      protected function §-e§() : void
      {
      }
      
      private function §!!3§(param1:TimerEvent) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc4_:Number = LevelManager.§7z§(LevelManager.§%n§).§+h§;
         var _loc5_:Number = LevelManager.§7z§(LevelManager.§%n§).§3!4§;
         if((§&!m§.getItemByName("MovieClip_StarLeft") as §1!=§).mClip.currentLabel == "UnLit")
         {
            §9'§.playSound("Hiscore_Count",§[!m§,100);
            §9'§.playSound("Hiscore_Star_Splash1",§!!>§);
            this.§-@§.delay = 1000;
            this.§ d§.assign(§^!c§.§-U§.getScore());
            _loc6_ = this.§ d§.getValue() / _loc4_ * 2;
            if(_loc4_ <= 0)
            {
               _loc6_ = 1;
            }
            this.§9!W§ = §-!,§.§7!j§.§,!`§(this,{"mNewScoreCounter":this.§ d§.getValue()},{"mNewScoreCounter":0},_loc6_);
            this.§9!W§.onComplete = this.§>;§;
            this.§9!W§.play();
            (§&!m§.getItemByName("MovieClip_StarLeft") as §1!=§).mClip.gotoAndStop("Lit");
            _loc2_ = (§&!m§.getItemByName("MovieClip_StarLeft") as §1!=§).x + (§&!m§.getItemByName("Container_LevelEndStripe") as §#?§).x;
            _loc3_ = (§&!m§.getItemByName("MovieClip_StarLeft") as §1!=§).y + (§&!m§.getItemByName("Container_LevelEndStripe") as §#?§).y;
            this.§4!y§ = new §#p§(AngryBirdsFP11.§3!5§,AngryBirdsFP11.§]!m§,_loc2_,_loc3_,§#p§.§%!G§);
            §&!m§.addChild(this.§4!y§);
            this.§=K§.push(this.§4!y§);
         }
         else if(this.§ d§.getValue() >= _loc5_ && (§&!m§.getItemByName("MovieClip_StarCenter") as §1!=§).mClip.currentLabel == "UnLit")
         {
            §9'§.playSound("Hiscore_Star_Splash2",§!!>§);
            (§&!m§.getItemByName("MovieClip_StarCenter") as §1!=§).mClip.gotoAndStop("Lit");
            _loc2_ = (§&!m§.getItemByName("MovieClip_StarCenter") as §1!=§).x + (§&!m§.getItemByName("Container_LevelEndStripe") as §#?§).x;
            _loc3_ = (§&!m§.getItemByName("MovieClip_StarCenter") as §1!=§).y + (§&!m§.getItemByName("Container_LevelEndStripe") as §#?§).y;
            this.§4!y§ = new §#p§(AngryBirdsFP11.§3!5§,AngryBirdsFP11.§]!m§,_loc2_,_loc3_,§#p§.§#r§);
            §&!m§.addChild(this.§4!y§);
            this.§=K§.push(this.§4!y§);
         }
         else if(this.§ d§.getValue() >= _loc4_ && (§&!m§.getItemByName("MovieClip_StarRight") as §1!=§).mClip.currentLabel == "UnLit")
         {
            this.§3!h§ = true;
            §9'§.playSound("Hiscore_Star_Splash3",§!!>§);
            (§&!m§.getItemByName("MovieClip_StarRight") as §1!=§).mClip.gotoAndStop("Lit");
            _loc2_ = (§&!m§.getItemByName("MovieClip_StarRight") as §1!=§).x + (§&!m§.getItemByName("Container_LevelEndStripe") as §#?§).x;
            _loc3_ = (§&!m§.getItemByName("MovieClip_StarRight") as §1!=§).y + (§&!m§.getItemByName("Container_LevelEndStripe") as §#?§).y;
            this.§4!y§ = new §#p§(AngryBirdsFP11.§3!5§,AngryBirdsFP11.§]!m§,_loc2_,_loc3_,§#p§.§3s§);
            §&!m§.addChild(this.§4!y§);
            this.§=K§.push(this.§4!y§);
         }
         else if(!this.§[;§)
         {
            this.§[;§ = true;
         }
         else
         {
            this.§-@§.stop();
            if(this.§%!#§ && !this.§`A§)
            {
               (§&!m§.getItemByName("MovieClip_NewHighScoreBadge") as §1!=§).setVisibility(true);
            }
            else
            {
               (§&!m§.getItemByName("MovieClip_NewHighScoreBadge") as §1!=§).setVisibility(false);
            }
            this.§5!f§ = §-!,§.§7!j§.§,!`§((§&!m§.getItemByName("MovieClip_NewHighScoreBadge") as §1!=§).mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":7,
               "scaleY":7
            },0.1);
            this.§5!f§.onComplete = this.onBadgeLanded;
            this.§5!f§.play();
         }
         ++this.§?!R§;
      }
      
      private function §>;§() : void
      {
         §9'§.§7!,§(§[!m§);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:§#p§ = null;
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §,!E§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         §&!m§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScore");
         §&!m§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScoreEffects");
         for each(_loc3_ in this.§=K§)
         {
            _loc3_.update(param1);
         }
         if(this.§`,§ > -1)
         {
            this.§8!v§(param1);
         }
         if(mNextState.length > 0)
         {
            §^!c§.§5!Y§.clearLevel();
            return §,!E§.STATE_STATUS_COMPLETED;
         }
         return §,!E§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§?`§();
         this.§`,§ = 0;
         this.mNewScoreCounter = 0;
         if(this.§9!W§)
         {
            this.§9!W§.stop();
            this.§9!W§ = null;
         }
         if(this.§5!f§)
         {
            this.§5!f§.stop();
            this.§5!f§ = null;
         }
         §9'§.§7!,§(§[!m§);
         this.setButtonStates(§4+§.COMPONENT_STATE_ACTIVE_DEFAULT);
         §&!m§.setText("0","TextField_LevelEndScore");
         §&!m§.setText("0","TextField_LevelEndScoreEffects");
         if(this.§4!E§)
         {
            if(§&!m§.movieClip.contains(this.§4!E§))
            {
               §&!m§.movieClip.removeChild(this.§4!E§);
            }
            this.§4!E§.clean();
            this.§4!E§ = null;
         }
      }
      
      protected function setButtonStates(param1:String) : void
      {
         (§&!m§.getItemByName("Button_Menu") as §==§).setComponentVisualState(param1);
         (§&!m§.getItemByName("Button_Replay") as §==§).setComponentVisualState(param1);
         (§&!m§.getItemByName("Button_NextLevel") as §==§).setComponentVisualState(param1);
         (§&!m§.getItemByName("Button_CutScene") as §==§).setComponentVisualState(param1);
      }
      
      private function §?`§() : void
      {
         var splash:§#p§ = null;
         if(this.§-@§)
         {
            this.§-@§.stop();
            try
            {
               this.§-@§.removeEventListener(TimerEvent.TIMER,this.§!!3§);
            }
            catch(e:Error)
            {
            }
         }
         for each(splash in this.§=K§)
         {
            if(§&!m§.contains(splash))
            {
               §&!m§.removeChild(splash);
            }
            splash.clean();
         }
         this.§=K§ = new Vector.<§#p§>();
         this.§+!m§();
      }
      
      protected function §+!m§() : void
      {
         (§&!m§.getItemByName("TextField_BestScore") as §?!x§).setVisibility(false);
         (§&!m§.getItemByName("MovieClip_BestScoreStars") as §1!=§).setVisibility(false);
         (§&!m§.getItemByName("TextField_NewHighScore") as §?!x§).setVisibility(false);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      protected function §'!^§() : void
      {
         §;W§.§&p§();
         mNextState = this.§=!n§();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§,!c§) : void
      {
         var _loc4_:String = null;
         switch(param2)
         {
            case "NEXT_LEVEL":
               this.§'!^§();
               break;
            case "REPLAY":
               §;W§.§&!5§();
               mNextState = this.§@!!§();
               break;
            case "WATCH_REPLAY":
               §;W§.§&!5§();
               mNextState = this.§@!!§();
               if(_loc4_ = §^!c§.§5!Y§.§4!=§())
               {
                  §^!c§.§5!Y§.§8!2§(_loc4_);
               }
               break;
            case "MENU":
               §9'§.§0D§();
               mNextState = this.§<!m§();
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§3l§.§1T§();
         }
      }
      
      protected function §@!!§() : String
      {
         return §;W§.§"!s§;
      }
      
      protected function §=!n§() : String
      {
         return StateCutScene.§"!s§;
      }
      
      public function §<!m§() : String
      {
         return §!y§.§"!s§;
      }
   }
}
