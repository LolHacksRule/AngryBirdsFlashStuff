package §8!A§
{
   import §!!0§.§ true§;
   import §!!0§.§2§;
   import §#!0§.§#-§;
   import §&b§.§[F§;
   import §1E§.§2h§;
   import §4M§.;
   import §4M§.§^'§;
   import §8]§.§+a§;
   import §8]§.§-u§;
   import §8]§.§93§;
   import §8]§.§?N§;
   import §;!!§.§0H§;
   import §;!B§.§;f§;
   import §>g§.§-!H§;
   import §>g§.§3p§;
   import §]$§.§5^§;
   import §]$§.§<Q§;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §!n§ extends §0H§
   {
      
      public static const §2`§:String = "LevelEndStateRio";
      
      public static const § !C§:Number = 30;
      
      protected static const §8Q§:String = "ScoreLoopCountChannel";
      
      protected static const §]0§:String = "EndScreenEffectChannel";
       
      
      private var §#! §:§<Q§;
      
      private var §2b§:Number;
      
      private var §=!?§:Number = 0.0;
      
      private var §1!B§:Number = 0.0;
      
      private var §4@§:Boolean = false;
      
      private var §3!$§:Timer;
      
      private var §26§:§-!H§;
      
      protected var §0s§:Array;
      
      protected var §@!O§:§3p§;
      
      protected var §9U§:Vector.<§3p§>;
      
      public var mNewScoreCounter:int;
      
      private var §8!O§:int;
      
      private var §9f§:Boolean;
      
      protected var §%V§:Boolean;
      
      private var §^!E§:§;f§;
      
      protected var §4!M§:Boolean;
      
      private var § j§:§<Q§;
      
      protected var §^!§:Boolean;
      
      protected var §7!D§:int;
      
      public function §!n§(param1:Boolean = false, param2:String = "LevelEndStateRio")
      {
         this.§0s§ = [];
         this.§^!E§ = new §;f§();
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §<A§ = new §^'§(this);
         §<A§.init(this.getViewXML());
         this.initButtonDefaultPositions();
         this.§9U§ = new Vector.<§3p§>();
         §#-§.§[R§(§8Q§,1,1);
         §#-§.§[R§(§]0§,3,1);
      }
      
      protected function initButtonDefaultPositions() : void
      {
         this.§0s§.push((§<A§.getItemByName("Button_Menu") as §-u§).x);
         this.§0s§.push((§<A§.getItemByName("Button_Replay") as §-u§).x);
         this.§0s§.push((§<A§.getItemByName("Button_NextLevel") as §-u§).x);
         this.§0s§.push((§<A§.getItemByName("Button_CutScene") as §-u§).x);
      }
      
      protected function getViewXML() : XML
      {
         return §#4§.§]X§.Views.View_LevelEndRio[0];
      }
      
      protected function showButtonsCutScene() : void
      {
         if(!AngryBirdsFP11.§ !-§.isLevelPassed(§2h§.§,!P§))
         {
            (§<A§.getItemByName("Button_Menu") as §-u§).setVisibility(false);
            (§<A§.getItemByName("Button_Replay") as §-u§).setVisibility(true);
            (§<A§.getItemByName("Button_NextLevel") as §-u§).setVisibility(false);
            (§<A§.getItemByName("Button_CutScene") as §-u§).setVisibility(true);
            (§<A§.getItemByName("Button_Replay") as §-u§).x = this.§0s§[0] + Math.abs(this.§0s§[1] - this.§0s§[0]) / 2;
            (§<A§.getItemByName("Button_CutScene") as §-u§).x = this.§0s§[1] + Math.abs(this.§0s§[2] - this.§0s§[1]) / 2;
         }
         else
         {
            (§<A§.getItemByName("Button_Menu") as §-u§).setVisibility(true);
            (§<A§.getItemByName("Button_Replay") as §-u§).setVisibility(true);
            (§<A§.getItemByName("Button_NextLevel") as §-u§).setVisibility(false);
            (§<A§.getItemByName("Button_CutScene") as §-u§).setVisibility(true);
            (§<A§.getItemByName("Button_Menu") as §-u§).x = this.§0s§[0];
            (§<A§.getItemByName("Button_Replay") as §-u§).x = this.§0s§[1];
            (§<A§.getItemByName("Button_CutScene") as §-u§).x = this.§0s§[2];
         }
      }
      
      protected function showButtonsNormal() : void
      {
         (§<A§.getItemByName("Button_Menu") as §-u§).setVisibility(true);
         (§<A§.getItemByName("Button_Replay") as §-u§).setVisibility(true);
         (§<A§.getItemByName("Button_CutScene") as §-u§).setVisibility(false);
         if(§2h§.§@!8§())
         {
            (§<A§.getItemByName("Button_NextLevel") as §-u§).setVisibility(true);
            (§<A§.getItemByName("Button_Menu") as §-u§).x = this.§0s§[0];
            (§<A§.getItemByName("Button_Replay") as §-u§).x = this.§0s§[1];
            (§<A§.getItemByName("Button_NextLevel") as §-u§).x = this.§0s§[2];
         }
         else
         {
            (§<A§.getItemByName("Button_NextLevel") as §-u§).setVisibility(false);
            (§<A§.getItemByName("Button_Menu") as §-u§).x = this.§0s§[0] + Math.abs(this.§0s§[1] - this.§0s§[0]) / 2;
            (§<A§.getItemByName("Button_Replay") as §-u§).x = this.§0s§[1] + Math.abs(this.§0s§[2] - this.§0s§[1]) / 2;
         }
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§^!§ = false;
         §[F§.pause();
         this.§26§ = new §-!H§(0,0,0,0);
         §<A§.movieClip.addChildAt(this.§26§,§<A§.movieClip.numChildren - 1);
         if(§2h§.§<&§())
         {
            this.showButtonsCutScene();
         }
         else
         {
            this.showButtonsNormal();
         }
         this.mNewScoreCounter = 0;
         this.§9f§ = false;
         §#-§.playSound("LevelCompletedTheme1");
         this.§26§.fadeToAlpha(0.7);
         this.§=!?§ = 0;
         this.§1!B§ = 0;
         this.§<!4§();
      }
      
      private function §<!4§() : void
      {
         this.§%V§ = false;
         this.setScoreData();
         this.§3!$§ = new Timer(500);
         this.§8!O§ = 0;
         this.§3!$§.addEventListener(TimerEvent.TIMER,this.§<!@§);
         this.§3!$§.start();
      }
      
      protected function setMightyEagleFeather() : void
      {
         if(AngryBirdsFP11.§ !-§.§,h§(§2h§.§,!P§) == 100)
         {
            (§<A§.getItemByName("MovieClip_ResultMEFeather") as §93§).mClip.gotoAndStop("On");
         }
         else
         {
            (§<A§.getItemByName("MovieClip_ResultMEFeather") as §93§).mClip.gotoAndStop("Off");
         }
      }
      
      protected function setScoreStars(param1:int, param2:int) : void
      {
         if(this.§4!M§)
         {
            param2 = param1;
            AngryBirdsFP11.§ !-§.§@v§(§2h§.§,!P§,param2);
            §<A§.setText("New Highscore!","TextField_BestScore");
         }
         else
         {
            §<A§.setText("Best " + param2.toString(),"TextField_BestScore");
            this.§7!D§ = §2h§.§;W§(§2h§.§,!P§,param2);
            switch(this.§7!D§)
            {
               case 1:
                  (§<A§.getItemByName("MovieClip_BestScoreStars") as §93§).§#!&§("OneStar");
                  break;
               case 2:
                  (§<A§.getItemByName("MovieClip_BestScoreStars") as §93§).§#!&§("TwoStar");
                  break;
               case 3:
                  (§<A§.getItemByName("MovieClip_BestScoreStars") as §93§).§#!&§("ThreeStar");
            }
         }
      }
      
      protected function setScoreData() : void
      {
         var _loc1_:int = AngryBirdsFP11.§ !-§.§&[§(§2h§.§,!P§);
         var _loc2_:int = §[F§.controller.getScore();
         this.§4!M§ = _loc2_ > _loc1_;
         this.setScoreStars(_loc2_,_loc1_);
         this.setMightyEagleFeather();
         var _loc3_:int = §[F§.controller.getEagleScore();
         var _loc4_:int = AngryBirdsFP11.§ !-§.§,h§(§2h§.§,!P§);
         var _loc5_:*;
         if(_loc5_ = _loc3_ > _loc4_)
         {
            _loc4_ = _loc3_;
            AngryBirdsFP11.§ !-§.§'!6§(§2h§.§,!P§,_loc4_);
         }
         var _loc6_:int = AngryBirdsFP11.§ !-§.§^!3§(§2h§.§,!P§,_loc2_);
         (§<A§.getItemByName("MovieClip_NewHighScoreBadge") as §93§).setVisibility(false);
         (§<A§.getItemByName("MovieClip_StarLeft") as §93§).mClip.gotoAndStop("UnLit");
         (§<A§.getItemByName("MovieClip_StarCenter") as §93§).mClip.gotoAndStop("UnLit");
         (§<A§.getItemByName("MovieClip_StarRight") as §93§).mClip.gotoAndStop("UnLit");
      }
      
      protected function onBadgeLanded() : void
      {
         if(this.§4!M§)
         {
            §#-§.playSound("Hiscore_Badge",§]0§);
            §<A§.setText("New Highscore!","TextField_NewHighScore");
            (§<A§.getItemByName("TextField_NewHighScore") as §?N§).setVisibility(true);
            (§<A§.getItemByName("MovieClip_BestScoreStars") as §93§).setVisibility(false);
            this.§5!2§();
         }
         else
         {
            (§<A§.getItemByName("TextField_BestScore") as §?N§).setVisibility(true);
            (§<A§.getItemByName("MovieClip_BestScoreStars") as §93§).setVisibility(true);
         }
      }
      
      protected function §5!2§() : void
      {
         this.§=!?§ = 0;
         this.§1!B§ = 0;
         this.§2b§ = § !C§;
      }
      
      private function §%!4§(param1:Number) : void
      {
         (§<A§.getItemByName("Container_LevelEndStripe") as §+a§).x = (§<A§.getItemByName("Container_LevelEndStripe") as §+a§).x - this.§=!?§;
         (§<A§.getItemByName("Container_LevelEndStripe") as §+a§).y = (§<A§.getItemByName("Container_LevelEndStripe") as §+a§).y - this.§1!B§;
         if(this.§2b§ > 0)
         {
            this.§=!?§ = (Math.random() - 0.5) * (this.§2b§ / § !C§) * 20;
            this.§1!B§ = (Math.random() - 0.5) * (this.§2b§ / § !C§) * 20;
            (§<A§.getItemByName("Container_LevelEndStripe") as §+a§).x = (§<A§.getItemByName("Container_LevelEndStripe") as §+a§).x + this.§=!?§;
            (§<A§.getItemByName("Container_LevelEndStripe") as §+a§).y = (§<A§.getItemByName("Container_LevelEndStripe") as §+a§).y + this.§1!B§;
         }
         else
         {
            this.§2b§ = -1;
            this.shakingOver();
            this.§=!?§ = 0;
            this.§1!B§ = 0;
         }
         this.§2b§ -= param1 / 10;
      }
      
      protected function shakingOver() : void
      {
      }
      
      private function §<!@§(param1:TimerEvent) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc4_:Number = §2h§.§?J§(§2h§.§,!P§).§3!3§;
         var _loc5_:Number = §2h§.§?J§(§2h§.§,!P§).§-!#§;
         if((§<A§.getItemByName("MovieClip_StarLeft") as §93§).mClip.currentLabel == "UnLit")
         {
            §#-§.playSound("Hiscore_Count",§8Q§,100);
            §#-§.playSound("Hiscore_Star_Splash1",§]0§);
            this.§3!$§.delay = 1000;
            this.§^!E§.assign(§[F§.controller.getScore());
            _loc6_ = this.§^!E§.getValue() / _loc4_ * 2;
            if(_loc4_ <= 0)
            {
               _loc6_ = 1;
            }
            this.§ j§ = §5^§.§<"§.§^g§(this,{"mNewScoreCounter":this.§^!E§.getValue()},{"mNewScoreCounter":0},_loc6_);
            this.§ j§.onComplete = this.§5g§;
            this.§ j§.play();
            (§<A§.getItemByName("MovieClip_StarLeft") as §93§).mClip.gotoAndStop("Lit");
            _loc2_ = (§<A§.getItemByName("MovieClip_StarLeft") as §93§).x + (§<A§.getItemByName("Container_LevelEndStripe") as §+a§).x;
            _loc3_ = (§<A§.getItemByName("MovieClip_StarLeft") as §93§).y + (§<A§.getItemByName("Container_LevelEndStripe") as §+a§).y;
            this.§@!O§ = new §3p§(AngryBirdsFP11.§^@§,AngryBirdsFP11.§#,§,_loc2_,_loc3_,§3p§.§%t§);
            §<A§.addChild(this.§@!O§);
            this.§9U§.push(this.§@!O§);
         }
         else if(this.§^!E§.getValue() >= _loc5_ && (§<A§.getItemByName("MovieClip_StarCenter") as §93§).mClip.currentLabel == "UnLit")
         {
            §#-§.playSound("Hiscore_Star_Splash2",§]0§);
            (§<A§.getItemByName("MovieClip_StarCenter") as §93§).mClip.gotoAndStop("Lit");
            _loc2_ = (§<A§.getItemByName("MovieClip_StarCenter") as §93§).x + (§<A§.getItemByName("Container_LevelEndStripe") as §+a§).x;
            _loc3_ = (§<A§.getItemByName("MovieClip_StarCenter") as §93§).y + (§<A§.getItemByName("Container_LevelEndStripe") as §+a§).y;
            this.§@!O§ = new §3p§(AngryBirdsFP11.§^@§,AngryBirdsFP11.§#,§,_loc2_,_loc3_,§3p§.§4!N§);
            §<A§.addChild(this.§@!O§);
            this.§9U§.push(this.§@!O§);
         }
         else if(this.§^!E§.getValue() >= _loc4_ && (§<A§.getItemByName("MovieClip_StarRight") as §93§).mClip.currentLabel == "UnLit")
         {
            this.§^!§ = true;
            §#-§.playSound("Hiscore_Star_Splash3",§]0§);
            (§<A§.getItemByName("MovieClip_StarRight") as §93§).mClip.gotoAndStop("Lit");
            _loc2_ = (§<A§.getItemByName("MovieClip_StarRight") as §93§).x + (§<A§.getItemByName("Container_LevelEndStripe") as §+a§).x;
            _loc3_ = (§<A§.getItemByName("MovieClip_StarRight") as §93§).y + (§<A§.getItemByName("Container_LevelEndStripe") as §+a§).y;
            this.§@!O§ = new §3p§(AngryBirdsFP11.§^@§,AngryBirdsFP11.§#,§,_loc2_,_loc3_,§3p§.§ !G§);
            §<A§.addChild(this.§@!O§);
            this.§9U§.push(this.§@!O§);
         }
         else if(!this.§9f§)
         {
            this.§9f§ = true;
         }
         else
         {
            this.§3!$§.stop();
            if(this.§4!M§ && !this.§%V§)
            {
               (§<A§.getItemByName("MovieClip_NewHighScoreBadge") as §93§).setVisibility(true);
            }
            else
            {
               (§<A§.getItemByName("MovieClip_NewHighScoreBadge") as §93§).setVisibility(false);
            }
            this.§#! § = §5^§.§<"§.§^g§((§<A§.getItemByName("MovieClip_NewHighScoreBadge") as §93§).mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":7,
               "scaleY":7
            },0.1);
            this.§#! §.onComplete = this.onBadgeLanded;
            this.§#! §.play();
         }
         ++this.§8!O§;
      }
      
      private function §5g§() : void
      {
         §#-§.§`s§(§8Q§);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:§3p§ = null;
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §0H§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         §<A§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScore");
         §<A§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScoreEffects");
         for each(_loc3_ in this.§9U§)
         {
            _loc3_.update(param1);
         }
         if(this.§2b§ > -1)
         {
            this.§%!4§(param1);
         }
         if(mNextState.length > 0)
         {
            §[F§.§9u§.clearLevel();
            return §0H§.STATE_STATUS_COMPLETED;
         }
         return §0H§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§#y§();
         this.§2b§ = 0;
         this.mNewScoreCounter = 0;
         if(this.§ j§)
         {
            this.§ j§.stop();
            this.§ j§ = null;
         }
         if(this.§#! §)
         {
            this.§#! §.stop();
            this.§#! § = null;
         }
         §#-§.§`s§(§8Q§);
         this.setButtonStates(§2§.COMPONENT_STATE_ACTIVE_DEFAULT);
         §<A§.setText("0","TextField_LevelEndScore");
         §<A§.setText("0","TextField_LevelEndScoreEffects");
         if(this.§26§)
         {
            if(§<A§.movieClip.contains(this.§26§))
            {
               §<A§.movieClip.removeChild(this.§26§);
            }
            this.§26§.clean();
            this.§26§ = null;
         }
      }
      
      protected function setButtonStates(param1:String) : void
      {
         (§<A§.getItemByName("Button_Menu") as §-u§).setComponentVisualState(param1);
         (§<A§.getItemByName("Button_Replay") as §-u§).setComponentVisualState(param1);
         (§<A§.getItemByName("Button_NextLevel") as §-u§).setComponentVisualState(param1);
         (§<A§.getItemByName("Button_CutScene") as §-u§).setComponentVisualState(param1);
      }
      
      private function §#y§() : void
      {
         var splash:§3p§ = null;
         if(this.§3!$§)
         {
            this.§3!$§.stop();
            try
            {
               this.§3!$§.removeEventListener(TimerEvent.TIMER,this.§<!@§);
            }
            catch(e:Error)
            {
            }
         }
         for each(splash in this.§9U§)
         {
            if(§<A§.contains(splash))
            {
               §<A§.removeChild(splash);
            }
            splash.clean();
         }
         this.§9U§ = new Vector.<§3p§>();
         this.hideBestScoreTexts();
      }
      
      protected function hideBestScoreTexts() : void
      {
         (§<A§.getItemByName("TextField_BestScore") as §?N§).setVisibility(false);
         (§<A§.getItemByName("MovieClip_BestScoreStars") as §93§).setVisibility(false);
         (§<A§.getItemByName("TextField_NewHighScore") as §?N§).setVisibility(false);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      protected function §-2§() : void
      {
         §#u§.§<k§();
         mNextState = this.§-!N§();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§ true§) : void
      {
         var _loc4_:String = null;
         switch(param2)
         {
            case "NEXT_LEVEL":
               this.§-2§();
               break;
            case "REPLAY":
               §#u§.§<q§();
               mNextState = this.§`!=§();
               break;
            case "WATCH_REPLAY":
               §#u§.§<q§();
               mNextState = this.§`!=§();
               if(_loc4_ = §[F§.§9u§.§;R§())
               {
                  §[F§.§9u§.§1=§(_loc4_);
               }
               break;
            case "MENU":
               §#-§.§[!>§();
               mNextState = this.§"!"§();
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§^F§.§>!M§();
         }
      }
      
      protected function §`!=§() : String
      {
         return §#u§.§2`§;
      }
      
      protected function §-!N§() : String
      {
         return StateCutScene.§2`§;
      }
      
      public function §"!"§() : String
      {
         return §6!C§.§2`§;
      }
   }
}
