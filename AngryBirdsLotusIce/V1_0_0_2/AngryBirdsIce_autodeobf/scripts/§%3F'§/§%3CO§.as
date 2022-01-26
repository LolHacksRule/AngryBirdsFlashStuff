package §?'§
{
   import §%S§.§%X§;
   import §%S§.§,1§;
   import §%S§.§7g§;
   import §%S§.§;!5§;
   import §+N§.§!j§;
   import §+N§.§]G§;
   import §2U§.§'0§;
   import §2U§.§0H§;
   import §87§.§2-§;
   import §87§.§]T§;
   import §;f§.§&#§;
   import §;j§.§8[§;
   import §>Z§.§2;§;
   import §`<§.§,!6§;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   import §in§.§%K§;
   import §in§.§9c§;
   import §try§.§8!;§;
   
   public class §<O§ extends §,!6§
   {
      
      public static const §`%§:String = "LevelEndStateRio";
      
      public static const §9!<§:Number = 30;
      
      protected static const §#9§:String = "ScoreLoopCountChannel";
      
      protected static const §[!6§:String = "EndScreenEffectChannel";
       
      
      private var §7r§:§]G§;
      
      private var § !9§:Number;
      
      private var §%i§:Number = 0.0;
      
      private var §!!;§:Number = 0.0;
      
      private var §=x§:Boolean = false;
      
      private var §,!7§:Timer;
      
      private var §30§:§'0§;
      
      private var §<D§:Array;
      
      protected var §do §:§0H§;
      
      protected var §%!<§:Vector.<§0H§>;
      
      public var mNewScoreCounter:int;
      
      private var § !2§:int;
      
      private var §>W§:Boolean;
      
      protected var §@!4§:Boolean;
      
      private var §'k§:§8!;§;
      
      protected var §^W§:Boolean;
      
      private var §`!2§:§]G§;
      
      protected var §63§:Boolean;
      
      protected var §%z§:int;
      
      public function §<O§(param1:Boolean = false, param2:String = "LevelEndStateRio")
      {
         this.§<D§ = [];
         this.§'k§ = new §8!;§();
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §<o§ = new §]T§(this);
         §<o§.init(this.getViewXML());
         this.initButtonDefaultPositions();
         this.§%!<§ = new Vector.<§0H§>();
         §2;§.§^=§(§#9§,1,1);
         §2;§.§^=§(§[!6§,3,1);
      }
      
      protected function initButtonDefaultPositions() : void
      {
         this.§<D§.push((§<o§.getItemByName("Button_Menu") as §%X§).x);
         this.§<D§.push((§<o§.getItemByName("Button_Replay") as §%X§).x);
         this.§<D§.push((§<o§.getItemByName("Button_NextLevel") as §%X§).x);
         this.§<D§.push((§<o§.getItemByName("Button_CutScene") as §%X§).x);
      }
      
      protected function getViewXML() : XML
      {
         return §2-§.§+J§.Views.View_LevelEndRio[0];
      }
      
      protected function showButtonsCutScene() : void
      {
         if(!AngryBirdsFP11.§[l§.isLevelPassed(§&#§.§<Y§))
         {
            (§<o§.getItemByName("Button_Menu") as §%X§).setVisibility(false);
            (§<o§.getItemByName("Button_Replay") as §%X§).setVisibility(true);
            (§<o§.getItemByName("Button_NextLevel") as §%X§).setVisibility(false);
            (§<o§.getItemByName("Button_CutScene") as §%X§).setVisibility(true);
            (§<o§.getItemByName("Button_Replay") as §%X§).x = this.§<D§[0] + Math.abs(this.§<D§[1] - this.§<D§[0]) / 2;
            (§<o§.getItemByName("Button_CutScene") as §%X§).x = this.§<D§[1] + Math.abs(this.§<D§[2] - this.§<D§[1]) / 2;
         }
         else
         {
            (§<o§.getItemByName("Button_Menu") as §%X§).setVisibility(true);
            (§<o§.getItemByName("Button_Replay") as §%X§).setVisibility(true);
            (§<o§.getItemByName("Button_NextLevel") as §%X§).setVisibility(false);
            (§<o§.getItemByName("Button_CutScene") as §%X§).setVisibility(true);
            (§<o§.getItemByName("Button_Menu") as §%X§).x = this.§<D§[0];
            (§<o§.getItemByName("Button_Replay") as §%X§).x = this.§<D§[1];
            (§<o§.getItemByName("Button_CutScene") as §%X§).x = this.§<D§[2];
         }
      }
      
      protected function showButtonsNormal() : void
      {
         (§<o§.getItemByName("Button_Menu") as §%X§).setVisibility(true);
         (§<o§.getItemByName("Button_Replay") as §%X§).setVisibility(true);
         (§<o§.getItemByName("Button_CutScene") as §%X§).setVisibility(false);
         if(§&#§.§6!§())
         {
            (§<o§.getItemByName("Button_NextLevel") as §%X§).setVisibility(true);
            (§<o§.getItemByName("Button_Menu") as §%X§).x = this.§<D§[0];
            (§<o§.getItemByName("Button_Replay") as §%X§).x = this.§<D§[1];
            (§<o§.getItemByName("Button_NextLevel") as §%X§).x = this.§<D§[2];
         }
         else
         {
            (§<o§.getItemByName("Button_NextLevel") as §%X§).setVisibility(false);
            (§<o§.getItemByName("Button_Menu") as §%X§).x = this.§<D§[0] + Math.abs(this.§<D§[1] - this.§<D§[0]) / 2;
            (§<o§.getItemByName("Button_Replay") as §%X§).x = this.§<D§[1] + Math.abs(this.§<D§[2] - this.§<D§[1]) / 2;
         }
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§63§ = false;
         §8[§.pause();
         this.§30§ = new §'0§(0,0,0,0);
         §<o§.movieClip.addChildAt(this.§30§,§<o§.movieClip.numChildren - 1);
         if(§&#§.§7!E§())
         {
            this.showButtonsCutScene();
         }
         else
         {
            this.showButtonsNormal();
         }
         this.mNewScoreCounter = 0;
         this.§>W§ = false;
         §2;§.playSound("LevelCompletedTheme1");
         this.§30§.§!y§(0.7);
         this.§%i§ = 0;
         this.§!!;§ = 0;
         this.§2K§();
      }
      
      private function §2K§() : void
      {
         this.§@!4§ = false;
         this.setScoreData();
         this.§,!7§ = new Timer(500);
         this.§ !2§ = 0;
         this.§,!7§.addEventListener(TimerEvent.TIMER,this.§'!E§);
         this.§,!7§.start();
      }
      
      protected function setMightyEagleFeather() : void
      {
         if(AngryBirdsFP11.§[l§.§7!;§(§&#§.§<Y§) == 100)
         {
            (§<o§.getItemByName("MovieClip_ResultMEFeather") as §;!5§).mClip.gotoAndStop("On");
         }
         else
         {
            (§<o§.getItemByName("MovieClip_ResultMEFeather") as §;!5§).mClip.gotoAndStop("Off");
         }
      }
      
      protected function setScoreStars(param1:int, param2:int) : void
      {
         if(this.§^W§)
         {
            param2 = param1;
            AngryBirdsFP11.§[l§.§;!7§(§&#§.§<Y§,param2);
            §<o§.setText("New Highscore!","TextField_BestScore");
         }
         else
         {
            §<o§.setText("Best " + param2.toString(),"TextField_BestScore");
            this.§%z§ = §&#§.§3I§(§&#§.§<Y§,param2);
            switch(this.§%z§)
            {
               case 1:
                  (§<o§.getItemByName("MovieClip_BestScoreStars") as §;!5§).§@O§("OneStar");
                  break;
               case 2:
                  (§<o§.getItemByName("MovieClip_BestScoreStars") as §;!5§).§@O§("TwoStar");
                  break;
               case 3:
                  (§<o§.getItemByName("MovieClip_BestScoreStars") as §;!5§).§@O§("ThreeStar");
            }
         }
      }
      
      protected function setScoreData() : void
      {
         var _loc1_:int = AngryBirdsFP11.§[l§.§?p§(§&#§.§<Y§);
         var _loc2_:int = §8[§.controller.getScore();
         this.§^W§ = _loc2_ > _loc1_;
         this.setScoreStars(_loc2_,_loc1_);
         this.setMightyEagleFeather();
         var _loc3_:int = §8[§.controller.getEagleScore();
         var _loc4_:int = AngryBirdsFP11.§[l§.§7!;§(§&#§.§<Y§);
         var _loc5_:*;
         if(_loc5_ = _loc3_ > _loc4_)
         {
            _loc4_ = _loc3_;
            AngryBirdsFP11.§[l§.§%W§(§&#§.§<Y§,_loc4_);
         }
         var _loc6_:int = AngryBirdsFP11.§[l§.§9!F§(§&#§.§<Y§,_loc2_);
         (§<o§.getItemByName("MovieClip_NewHighScoreBadge") as §;!5§).setVisibility(false);
         (§<o§.getItemByName("MovieClip_StarLeft") as §;!5§).mClip.gotoAndStop("UnLit");
         (§<o§.getItemByName("MovieClip_StarCenter") as §;!5§).mClip.gotoAndStop("UnLit");
         (§<o§.getItemByName("MovieClip_StarRight") as §;!5§).mClip.gotoAndStop("UnLit");
      }
      
      protected function onBadgeLanded() : void
      {
         if(this.§^W§)
         {
            §2;§.playSound("Hiscore_Badge",§[!6§);
            §<o§.setText("New Highscore!","TextField_NewHighScore");
            (§<o§.getItemByName("TextField_NewHighScore") as §7g§).setVisibility(true);
            (§<o§.getItemByName("MovieClip_BestScoreStars") as §;!5§).setVisibility(false);
            this.§2!>§();
         }
         else
         {
            (§<o§.getItemByName("TextField_BestScore") as §7g§).setVisibility(true);
            (§<o§.getItemByName("MovieClip_BestScoreStars") as §;!5§).setVisibility(true);
         }
      }
      
      protected function §2!>§() : void
      {
         this.§%i§ = 0;
         this.§!!;§ = 0;
         this.§ !9§ = §9!<§;
      }
      
      private function §71§(param1:Number) : void
      {
         (§<o§.getItemByName("Container_LevelEndStripe") as §,1§).x = (§<o§.getItemByName("Container_LevelEndStripe") as §,1§).x - this.§%i§;
         (§<o§.getItemByName("Container_LevelEndStripe") as §,1§).y = (§<o§.getItemByName("Container_LevelEndStripe") as §,1§).y - this.§!!;§;
         if(this.§ !9§ > 0)
         {
            this.§%i§ = (Math.random() - 0.5) * (this.§ !9§ / §9!<§) * 20;
            this.§!!;§ = (Math.random() - 0.5) * (this.§ !9§ / §9!<§) * 20;
            (§<o§.getItemByName("Container_LevelEndStripe") as §,1§).x = (§<o§.getItemByName("Container_LevelEndStripe") as §,1§).x + this.§%i§;
            (§<o§.getItemByName("Container_LevelEndStripe") as §,1§).y = (§<o§.getItemByName("Container_LevelEndStripe") as §,1§).y + this.§!!;§;
         }
         else
         {
            this.§%i§ = 0;
            this.§!!;§ = 0;
         }
         this.§ !9§ -= param1 / 10;
      }
      
      private function §'!E§(param1:TimerEvent) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc4_:Number = §&#§.§@y§(§&#§.§<Y§).§>V§;
         var _loc5_:Number = §&#§.§@y§(§&#§.§<Y§).§7!B§;
         if((§<o§.getItemByName("MovieClip_StarLeft") as §;!5§).mClip.currentLabel == "UnLit")
         {
            §2;§.playSound("Hiscore_Count",§#9§,100);
            §2;§.playSound("Hiscore_Star_Splash1",§[!6§);
            this.§,!7§.delay = 1000;
            this.§'k§.assign(§8[§.controller.getScore());
            _loc6_ = this.§'k§.getValue() / _loc4_ * 2;
            if(_loc4_ <= 0)
            {
               _loc6_ = 1;
            }
            this.§`!2§ = §!j§.§5!B§.§+I§(this,{"mNewScoreCounter":this.§'k§.getValue()},{"mNewScoreCounter":0},_loc6_);
            this.§`!2§.onComplete = this.§3!,§;
            this.§`!2§.play();
            (§<o§.getItemByName("MovieClip_StarLeft") as §;!5§).mClip.gotoAndStop("Lit");
            _loc2_ = (§<o§.getItemByName("MovieClip_StarLeft") as §;!5§).x + (§<o§.getItemByName("Container_LevelEndStripe") as §,1§).x;
            _loc3_ = (§<o§.getItemByName("MovieClip_StarLeft") as §;!5§).y + (§<o§.getItemByName("Container_LevelEndStripe") as §,1§).y;
            this.§do § = new §0H§(AngryBirdsFP11.screenWidth,AngryBirdsFP11.screenHeight,_loc2_,_loc3_,§0H§.§+-§);
            §<o§.addChild(this.§do §);
            this.§%!<§.push(this.§do §);
         }
         else if(this.§'k§.getValue() >= _loc5_ && (§<o§.getItemByName("MovieClip_StarCenter") as §;!5§).mClip.currentLabel == "UnLit")
         {
            §2;§.playSound("Hiscore_Star_Splash2",§[!6§);
            (§<o§.getItemByName("MovieClip_StarCenter") as §;!5§).mClip.gotoAndStop("Lit");
            _loc2_ = (§<o§.getItemByName("MovieClip_StarCenter") as §;!5§).x + (§<o§.getItemByName("Container_LevelEndStripe") as §,1§).x;
            _loc3_ = (§<o§.getItemByName("MovieClip_StarCenter") as §;!5§).y + (§<o§.getItemByName("Container_LevelEndStripe") as §,1§).y;
            this.§do § = new §0H§(AngryBirdsFP11.screenWidth,AngryBirdsFP11.screenHeight,_loc2_,_loc3_,§0H§.§@4§);
            §<o§.addChild(this.§do §);
            this.§%!<§.push(this.§do §);
         }
         else if(this.§'k§.getValue() >= _loc4_ && (§<o§.getItemByName("MovieClip_StarRight") as §;!5§).mClip.currentLabel == "UnLit")
         {
            this.§63§ = true;
            §2;§.playSound("Hiscore_Star_Splash3",§[!6§);
            (§<o§.getItemByName("MovieClip_StarRight") as §;!5§).mClip.gotoAndStop("Lit");
            _loc2_ = (§<o§.getItemByName("MovieClip_StarRight") as §;!5§).x + (§<o§.getItemByName("Container_LevelEndStripe") as §,1§).x;
            _loc3_ = (§<o§.getItemByName("MovieClip_StarRight") as §;!5§).y + (§<o§.getItemByName("Container_LevelEndStripe") as §,1§).y;
            this.§do § = new §0H§(AngryBirdsFP11.screenWidth,AngryBirdsFP11.screenHeight,_loc2_,_loc3_,§0H§.§7!$§);
            §<o§.addChild(this.§do §);
            this.§%!<§.push(this.§do §);
         }
         else if(!this.§>W§)
         {
            this.§>W§ = true;
         }
         else
         {
            this.§,!7§.stop();
            if(this.§^W§ && !this.§@!4§)
            {
               (§<o§.getItemByName("MovieClip_NewHighScoreBadge") as §;!5§).setVisibility(true);
            }
            else
            {
               (§<o§.getItemByName("MovieClip_NewHighScoreBadge") as §;!5§).setVisibility(false);
            }
            this.§7r§ = §!j§.§5!B§.§+I§((§<o§.getItemByName("MovieClip_NewHighScoreBadge") as §;!5§).mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":7,
               "scaleY":7
            },0.1);
            this.§7r§.onComplete = this.onBadgeLanded;
            this.§7r§.play();
         }
         ++this.§ !2§;
      }
      
      private function §3!,§() : void
      {
         §2;§.§%j§(§#9§);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:§0H§ = null;
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §,!6§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         §<o§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScore");
         §<o§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScoreEffects");
         for each(_loc3_ in this.§%!<§)
         {
            _loc3_.update(param1);
         }
         if(this.§ !9§ >= 0)
         {
            this.§71§(param1);
         }
         if(mNextState.length > 0)
         {
            §8[§.§import§.clearLevel();
            return §,!6§.STATE_STATUS_COMPLETED;
         }
         return §,!6§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§'!D§();
         this.§ !9§ = 0;
         this.mNewScoreCounter = 0;
         if(this.§`!2§)
         {
            this.§`!2§.stop();
            this.§`!2§ = null;
         }
         if(this.§7r§)
         {
            this.§7r§.stop();
            this.§7r§ = null;
         }
         §2;§.§%j§(§#9§);
         this.setButtonStates(§9c§.COMPONENT_STATE_ACTIVE_DEFAULT);
         §<o§.setText("0","TextField_LevelEndScore");
         §<o§.setText("0","TextField_LevelEndScoreEffects");
         if(this.§30§)
         {
            if(§<o§.movieClip.contains(this.§30§))
            {
               §<o§.movieClip.removeChild(this.§30§);
            }
            this.§30§.clean();
            this.§30§ = null;
         }
      }
      
      protected function setButtonStates(param1:String) : void
      {
         (§<o§.getItemByName("Button_Menu") as §%X§).setComponentVisualState(param1);
         (§<o§.getItemByName("Button_Replay") as §%X§).setComponentVisualState(param1);
         (§<o§.getItemByName("Button_NextLevel") as §%X§).setComponentVisualState(param1);
         (§<o§.getItemByName("Button_CutScene") as §%X§).setComponentVisualState(param1);
      }
      
      private function §'!D§() : void
      {
         var splash:§0H§ = null;
         if(this.§,!7§)
         {
            this.§,!7§.stop();
            try
            {
               this.§,!7§.removeEventListener(TimerEvent.TIMER,this.§'!E§);
            }
            catch(e:Error)
            {
            }
         }
         for each(splash in this.§%!<§)
         {
            if(§<o§.contains(splash))
            {
               §<o§.removeChild(splash);
            }
            splash.clean();
         }
         this.§%!<§ = new Vector.<§0H§>();
         this.hideBestScoreTexts();
      }
      
      protected function hideBestScoreTexts() : void
      {
         (§<o§.getItemByName("TextField_BestScore") as §7g§).setVisibility(false);
         (§<o§.getItemByName("MovieClip_BestScoreStars") as §;!5§).setVisibility(false);
         (§<o§.getItemByName("TextField_NewHighScore") as §7g§).setVisibility(false);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      protected function §&!-§() : void
      {
         §`0§.§6p§();
         mNextState = this.§`9§();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§%K§) : void
      {
         var _loc4_:String = null;
         switch(param2)
         {
            case "NEXT_LEVEL":
               this.§&!-§();
               break;
            case "REPLAY":
               §`0§.§#T§();
               mNextState = this.§,I§();
               break;
            case "WATCH_REPLAY":
               §`0§.§#T§();
               mNextState = this.§,I§();
               if(_loc4_ = §8[§.§import§.§2!D§())
               {
                  §8[§.§import§.§[6§(_loc4_);
               }
               break;
            case "MENU":
               §2;§.§'T§();
               mNextState = this.§"!!§();
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§`H§.§>&§();
         }
      }
      
      protected function §,I§() : String
      {
         return §`0§.§`%§;
      }
      
      protected function §`9§() : String
      {
         return StateCutScene.§`%§;
      }
      
      public function §"!!§() : String
      {
         return §8m§.§`%§;
      }
   }
}
