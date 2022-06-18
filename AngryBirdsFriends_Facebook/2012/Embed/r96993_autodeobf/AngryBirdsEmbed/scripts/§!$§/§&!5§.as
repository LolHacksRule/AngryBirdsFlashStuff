package §!$§
{
   import §!^§.§"%§;
   import §!^§.§+!5§;
   import §'N§.§^]§;
   import §,!$§.§8O§;
   import §,!$§.§=y§;
   import §-!'§.§&!H§;
   import §-!'§.§;f§;
   import §-!'§.§@D§;
   import §-!'§.§in §;
   import §-!C§.§#!G§;
   import §4!'§.§#,§;
   import §6[§.§;q§;
   import §6[§.§`!-§;
   import §>%§.§]3§;
   import §[A§.§3!'§;
   import §^s§.§&"§;
   import §^s§.§?O§;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §&!5§ extends §3!'§
   {
      
      public static const §9"§:String = "LevelEndStateRio";
      
      public static const §<0§:Number = 30;
      
      protected static const §&!@§:String = "ScoreLoopCountChannel";
      
      protected static const §7Q§:String = "EndScreenEffectChannel";
       
      
      private var §8!6§:§`!-§;
      
      private var §;R§:Number;
      
      private var §8o§:Number = 0.0;
      
      private var §<I§:Number = 0.0;
      
      private var §%!<§:Boolean = false;
      
      private var §]D§:Timer;
      
      private var §,!>§:§8O§;
      
      protected var §?r§:Array;
      
      protected var §9! §:§=y§;
      
      protected var §6d§:Vector.<§=y§>;
      
      public var mNewScoreCounter:int;
      
      private var §?!,§:int;
      
      private var §-#§:Boolean;
      
      protected var §[b§:Boolean;
      
      private var §`a§:§#,§;
      
      protected var §"!<§:Boolean;
      
      private var §2!C§:§`!-§;
      
      protected var §;!0§:Boolean;
      
      protected var §#^§:int;
      
      public function §&!5§(param1:Boolean = false, param2:String = "LevelEndStateRio")
      {
         this.§?r§ = [];
         this.§`a§ = new §#,§();
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §+!2§ = new §&"§(this);
         §+!2§.init(this.getViewXML());
         this.initButtonDefaultPositions();
         this.§6d§ = new Vector.<§=y§>();
         §^]§.§#r§(§&!@§,1,1);
         §^]§.§#r§(§7Q§,3,1);
      }
      
      protected function initButtonDefaultPositions() : void
      {
         this.§?r§.push((§+!2§.getItemByName("Button_Menu") as §;f§).x);
         this.§?r§.push((§+!2§.getItemByName("Button_Replay") as §;f§).x);
         this.§?r§.push((§+!2§.getItemByName("Button_NextLevel") as §;f§).x);
         this.§?r§.push((§+!2§.getItemByName("Button_CutScene") as §;f§).x);
      }
      
      protected function getViewXML() : XML
      {
         return §?O§.§@!<§.Views.View_LevelEndRio[0];
      }
      
      protected function showButtonsCutScene() : void
      {
         if(!AngryBirdsFP11.sUserProgress.isLevelPassed(§#!G§.§9C§))
         {
            (§+!2§.getItemByName("Button_Menu") as §;f§).setVisibility(false);
            (§+!2§.getItemByName("Button_Replay") as §;f§).setVisibility(true);
            (§+!2§.getItemByName("Button_NextLevel") as §;f§).setVisibility(false);
            (§+!2§.getItemByName("Button_CutScene") as §;f§).setVisibility(true);
            (§+!2§.getItemByName("Button_Replay") as §;f§).x = this.§?r§[0] + Math.abs(this.§?r§[1] - this.§?r§[0]) / 2;
            (§+!2§.getItemByName("Button_CutScene") as §;f§).x = this.§?r§[1] + Math.abs(this.§?r§[2] - this.§?r§[1]) / 2;
         }
         else
         {
            (§+!2§.getItemByName("Button_Menu") as §;f§).setVisibility(true);
            (§+!2§.getItemByName("Button_Replay") as §;f§).setVisibility(true);
            (§+!2§.getItemByName("Button_NextLevel") as §;f§).setVisibility(false);
            (§+!2§.getItemByName("Button_CutScene") as §;f§).setVisibility(true);
            (§+!2§.getItemByName("Button_Menu") as §;f§).x = this.§?r§[0];
            (§+!2§.getItemByName("Button_Replay") as §;f§).x = this.§?r§[1];
            (§+!2§.getItemByName("Button_CutScene") as §;f§).x = this.§?r§[2];
         }
      }
      
      protected function showButtonsNormal() : void
      {
         (§+!2§.getItemByName("Button_Menu") as §;f§).setVisibility(true);
         (§+!2§.getItemByName("Button_Replay") as §;f§).setVisibility(true);
         (§+!2§.getItemByName("Button_CutScene") as §;f§).setVisibility(false);
         if(§#!G§.§5N§())
         {
            (§+!2§.getItemByName("Button_NextLevel") as §;f§).setVisibility(true);
            (§+!2§.getItemByName("Button_Menu") as §;f§).x = this.§?r§[0];
            (§+!2§.getItemByName("Button_Replay") as §;f§).x = this.§?r§[1];
            (§+!2§.getItemByName("Button_NextLevel") as §;f§).x = this.§?r§[2];
         }
         else
         {
            (§+!2§.getItemByName("Button_NextLevel") as §;f§).setVisibility(false);
            (§+!2§.getItemByName("Button_Menu") as §;f§).x = this.§?r§[0] + Math.abs(this.§?r§[1] - this.§?r§[0]) / 2;
            (§+!2§.getItemByName("Button_Replay") as §;f§).x = this.§?r§[1] + Math.abs(this.§?r§[2] - this.§?r§[1]) / 2;
         }
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§;!0§ = false;
         §]3§.pause();
         this.§,!>§ = new §8O§(0,0,0,0);
         §+!2§.movieClip.addChildAt(this.§,!>§,§+!2§.movieClip.numChildren - 1);
         if(§#!G§.§7V§())
         {
            this.showButtonsCutScene();
         }
         else
         {
            this.showButtonsNormal();
         }
         this.mNewScoreCounter = 0;
         this.§-#§ = false;
         §^]§.§1g§("LevelCompletedTheme1");
         this.§,!>§.§'l§(0.7);
         this.§8o§ = 0;
         this.§<I§ = 0;
         this.§const§();
      }
      
      private function §const§() : void
      {
         this.§[b§ = false;
         this.setScoreData();
         this.§]D§ = new Timer(500);
         this.§?!,§ = 0;
         this.§]D§.addEventListener(TimerEvent.TIMER,this.§1!6§);
         this.§]D§.start();
      }
      
      protected function setMightyEagleFeather() : void
      {
         if(AngryBirdsFP11.sUserProgress.§4f§(§#!G§.§9C§) == 100)
         {
            (§+!2§.getItemByName("MovieClip_ResultMEFeather") as §@D§).mClip.gotoAndStop("On");
         }
         else
         {
            (§+!2§.getItemByName("MovieClip_ResultMEFeather") as §@D§).mClip.gotoAndStop("Off");
         }
      }
      
      protected function setScoreStars(param1:int, param2:int) : void
      {
         if(this.§"!<§)
         {
            param2 = param1;
            AngryBirdsFP11.sUserProgress.§&J§(§#!G§.§9C§,param2);
            §+!2§.setText("New Highscore!","TextField_BestScore");
         }
         else
         {
            §+!2§.setText("Best " + param2.toString(),"TextField_BestScore");
            this.§#^§ = §#!G§.§!%§(§#!G§.§9C§,param2);
            switch(this.§#^§)
            {
               case 1:
                  (§+!2§.getItemByName("MovieClip_BestScoreStars") as §@D§).§=!;§("OneStar");
                  break;
               case 2:
                  (§+!2§.getItemByName("MovieClip_BestScoreStars") as §@D§).§=!;§("TwoStar");
                  break;
               case 3:
                  (§+!2§.getItemByName("MovieClip_BestScoreStars") as §@D§).§=!;§("ThreeStar");
            }
         }
      }
      
      protected function setScoreData() : void
      {
         var _loc1_:int = AngryBirdsFP11.sUserProgress.§%D§(§#!G§.§9C§);
         var _loc2_:int = §]3§.controller.getScore();
         this.§"!<§ = _loc2_ > _loc1_;
         this.setScoreStars(_loc2_,_loc1_);
         this.setMightyEagleFeather();
         var _loc3_:int = §]3§.controller.getEagleScore();
         var _loc4_:int = AngryBirdsFP11.sUserProgress.§4f§(§#!G§.§9C§);
         var _loc5_:*;
         if(_loc5_ = _loc3_ > _loc4_)
         {
            _loc4_ = _loc3_;
            AngryBirdsFP11.sUserProgress.§"s§(§#!G§.§9C§,_loc4_);
         }
         var _loc6_:int = AngryBirdsFP11.sUserProgress.§1W§(§#!G§.§9C§,_loc2_);
         (§+!2§.getItemByName("MovieClip_NewHighScoreBadge") as §@D§).setVisibility(false);
         (§+!2§.getItemByName("MovieClip_StarLeft") as §@D§).mClip.gotoAndStop("UnLit");
         (§+!2§.getItemByName("MovieClip_StarCenter") as §@D§).mClip.gotoAndStop("UnLit");
         (§+!2§.getItemByName("MovieClip_StarRight") as §@D§).mClip.gotoAndStop("UnLit");
      }
      
      protected function onBadgeLanded() : void
      {
         if(this.§"!<§)
         {
            §^]§.§1g§("Hiscore_Badge",§7Q§);
            §+!2§.setText("New Highscore!","TextField_NewHighScore");
            (§+!2§.getItemByName("TextField_NewHighScore") as §&!H§).setVisibility(true);
            (§+!2§.getItemByName("MovieClip_BestScoreStars") as §@D§).setVisibility(false);
            this.§%T§();
         }
         else
         {
            (§+!2§.getItemByName("TextField_BestScore") as §&!H§).setVisibility(true);
            (§+!2§.getItemByName("MovieClip_BestScoreStars") as §@D§).setVisibility(true);
         }
      }
      
      protected function §%T§() : void
      {
         this.§8o§ = 0;
         this.§<I§ = 0;
         this.§;R§ = §<0§;
      }
      
      private function §37§(param1:Number) : void
      {
         (§+!2§.getItemByName("Container_LevelEndStripe") as §in §).x = (§+!2§.getItemByName("Container_LevelEndStripe") as §in §).x - this.§8o§;
         (§+!2§.getItemByName("Container_LevelEndStripe") as §in §).y = (§+!2§.getItemByName("Container_LevelEndStripe") as §in §).y - this.§<I§;
         if(this.§;R§ > 0)
         {
            this.§8o§ = (Math.random() - 0.5) * (this.§;R§ / §<0§) * 20;
            this.§<I§ = (Math.random() - 0.5) * (this.§;R§ / §<0§) * 20;
            (§+!2§.getItemByName("Container_LevelEndStripe") as §in §).x = (§+!2§.getItemByName("Container_LevelEndStripe") as §in §).x + this.§8o§;
            (§+!2§.getItemByName("Container_LevelEndStripe") as §in §).y = (§+!2§.getItemByName("Container_LevelEndStripe") as §in §).y + this.§<I§;
         }
         else
         {
            this.§8o§ = 0;
            this.§<I§ = 0;
         }
         this.§;R§ -= param1 / 10;
      }
      
      private function §1!6§(param1:TimerEvent) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc4_:Number = §#!G§.§2!0§(§#!G§.§9C§).§"=§;
         var _loc5_:Number = §#!G§.§2!0§(§#!G§.§9C§).§,4§;
         if((§+!2§.getItemByName("MovieClip_StarLeft") as §@D§).mClip.currentLabel == "UnLit")
         {
            §^]§.§1g§("Hiscore_Count",§&!@§,100);
            §^]§.§1g§("Hiscore_Star_Splash1",§7Q§);
            this.§]D§.delay = 1000;
            this.§`a§.assign(§]3§.controller.getScore());
            _loc6_ = this.§`a§.getValue() / _loc4_ * 2;
            if(_loc4_ <= 0)
            {
               _loc6_ = 1;
            }
            this.§2!C§ = §;q§.§9r§.§%!#§(this,{"mNewScoreCounter":this.§`a§.getValue()},{"mNewScoreCounter":0},_loc6_);
            this.§2!C§.onComplete = this.§,!&§;
            this.§2!C§.play();
            (§+!2§.getItemByName("MovieClip_StarLeft") as §@D§).mClip.gotoAndStop("Lit");
            _loc2_ = (§+!2§.getItemByName("MovieClip_StarLeft") as §@D§).x + (§+!2§.getItemByName("Container_LevelEndStripe") as §in §).x;
            _loc3_ = (§+!2§.getItemByName("MovieClip_StarLeft") as §@D§).y + (§+!2§.getItemByName("Container_LevelEndStripe") as §in §).y;
            this.§9! § = new §=y§(AngryBirdsFP11.screenWidth,AngryBirdsFP11.screenHeight,_loc2_,_loc3_,§=y§.§%!?§);
            §+!2§.addChild(this.§9! §);
            this.§6d§.push(this.§9! §);
         }
         else if(this.§`a§.getValue() >= _loc5_ && (§+!2§.getItemByName("MovieClip_StarCenter") as §@D§).mClip.currentLabel == "UnLit")
         {
            §^]§.§1g§("Hiscore_Star_Splash2",§7Q§);
            (§+!2§.getItemByName("MovieClip_StarCenter") as §@D§).mClip.gotoAndStop("Lit");
            _loc2_ = (§+!2§.getItemByName("MovieClip_StarCenter") as §@D§).x + (§+!2§.getItemByName("Container_LevelEndStripe") as §in §).x;
            _loc3_ = (§+!2§.getItemByName("MovieClip_StarCenter") as §@D§).y + (§+!2§.getItemByName("Container_LevelEndStripe") as §in §).y;
            this.§9! § = new §=y§(AngryBirdsFP11.screenWidth,AngryBirdsFP11.screenHeight,_loc2_,_loc3_,§=y§.§9B§);
            §+!2§.addChild(this.§9! §);
            this.§6d§.push(this.§9! §);
         }
         else if(this.§`a§.getValue() >= _loc4_ && (§+!2§.getItemByName("MovieClip_StarRight") as §@D§).mClip.currentLabel == "UnLit")
         {
            this.§;!0§ = true;
            §^]§.§1g§("Hiscore_Star_Splash3",§7Q§);
            (§+!2§.getItemByName("MovieClip_StarRight") as §@D§).mClip.gotoAndStop("Lit");
            _loc2_ = (§+!2§.getItemByName("MovieClip_StarRight") as §@D§).x + (§+!2§.getItemByName("Container_LevelEndStripe") as §in §).x;
            _loc3_ = (§+!2§.getItemByName("MovieClip_StarRight") as §@D§).y + (§+!2§.getItemByName("Container_LevelEndStripe") as §in §).y;
            this.§9! § = new §=y§(AngryBirdsFP11.screenWidth,AngryBirdsFP11.screenHeight,_loc2_,_loc3_,§=y§.§3;§);
            §+!2§.addChild(this.§9! §);
            this.§6d§.push(this.§9! §);
         }
         else if(!this.§-#§)
         {
            this.§-#§ = true;
         }
         else
         {
            this.§]D§.stop();
            if(this.§"!<§ && !this.§[b§)
            {
               (§+!2§.getItemByName("MovieClip_NewHighScoreBadge") as §@D§).setVisibility(true);
            }
            else
            {
               (§+!2§.getItemByName("MovieClip_NewHighScoreBadge") as §@D§).setVisibility(false);
            }
            this.§8!6§ = §;q§.§9r§.§%!#§((§+!2§.getItemByName("MovieClip_NewHighScoreBadge") as §@D§).mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":7,
               "scaleY":7
            },0.1);
            this.§8!6§.onComplete = this.onBadgeLanded;
            this.§8!6§.play();
         }
         ++this.§?!,§;
      }
      
      private function §,!&§() : void
      {
         §^]§.§ _§(§&!@§);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:§=y§ = null;
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §3!'§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         §+!2§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScore");
         §+!2§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScoreEffects");
         for each(_loc3_ in this.§6d§)
         {
            _loc3_.update(param1);
         }
         if(this.§;R§ >= 0)
         {
            this.§37§(param1);
         }
         if(mNextState.length > 0)
         {
            §]3§.§;v§.clearLevel();
            return §3!'§.STATE_STATUS_COMPLETED;
         }
         return §3!'§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§;!D§();
         this.§;R§ = 0;
         this.mNewScoreCounter = 0;
         if(this.§2!C§)
         {
            this.§2!C§.stop();
            this.§2!C§ = null;
         }
         if(this.§8!6§)
         {
            this.§8!6§.stop();
            this.§8!6§ = null;
         }
         §^]§.§ _§(§&!@§);
         this.setButtonStates(§+!5§.COMPONENT_STATE_ACTIVE_DEFAULT);
         §+!2§.setText("0","TextField_LevelEndScore");
         §+!2§.setText("0","TextField_LevelEndScoreEffects");
         if(this.§,!>§)
         {
            if(§+!2§.movieClip.contains(this.§,!>§))
            {
               §+!2§.movieClip.removeChild(this.§,!>§);
            }
            this.§,!>§.clean();
            this.§,!>§ = null;
         }
      }
      
      protected function setButtonStates(param1:String) : void
      {
         (§+!2§.getItemByName("Button_Menu") as §;f§).setComponentVisualState(param1);
         (§+!2§.getItemByName("Button_Replay") as §;f§).setComponentVisualState(param1);
         (§+!2§.getItemByName("Button_NextLevel") as §;f§).setComponentVisualState(param1);
         (§+!2§.getItemByName("Button_CutScene") as §;f§).setComponentVisualState(param1);
      }
      
      private function §;!D§() : void
      {
         var splash:§=y§ = null;
         if(this.§]D§)
         {
            this.§]D§.stop();
            try
            {
               this.§]D§.removeEventListener(TimerEvent.TIMER,this.§1!6§);
            }
            catch(e:Error)
            {
            }
         }
         for each(splash in this.§6d§)
         {
            if(§+!2§.contains(splash))
            {
               §+!2§.removeChild(splash);
            }
            splash.clean();
         }
         this.§6d§ = new Vector.<§=y§>();
         this.hideBestScoreTexts();
      }
      
      protected function hideBestScoreTexts() : void
      {
         (§+!2§.getItemByName("TextField_BestScore") as §&!H§).setVisibility(false);
         (§+!2§.getItemByName("MovieClip_BestScoreStars") as §@D§).setVisibility(false);
         (§+!2§.getItemByName("TextField_NewHighScore") as §&!H§).setVisibility(false);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      protected function §!z§() : void
      {
         § W§.§<m§();
         mNextState = this.§]-§();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§"%§) : void
      {
         var _loc4_:String = null;
         switch(param2)
         {
            case "NEXT_LEVEL":
               this.§!z§();
               break;
            case "REPLAY":
               § W§.§ =§();
               mNextState = this.§02§();
               break;
            case "WATCH_REPLAY":
               § W§.§ =§();
               mNextState = this.§02§();
               if(_loc4_ = §]3§.§;v§.§'!F§())
               {
                  §]3§.§;v§.§[!0§(_loc4_);
                  break;
               }
               break;
            case "MENU":
               §^]§.§@n§();
               mNextState = this.§ true§();
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§"h§.§>B§();
         }
      }
      
      protected function §02§() : String
      {
         return § W§.§9"§;
      }
      
      protected function §]-§() : String
      {
         return StateCutScene.§9"§;
      }
      
      public function § true§() : String
      {
         return §#u§.§9"§;
      }
   }
}
