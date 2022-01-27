package §,!"§
{
   import § !B§.§-#§;
   import § !B§.§=!=§;
   import §"U§.§!o§;
   import §"U§.§@4§;
   import §"U§.§[Q§;
   import §"U§.§^'§;
   import §&^§.§[!7§;
   import §'!O§.§'!#§;
   import §'K§.§3C§;
   import §'K§.§[!9§;
   import §0!E§.§;!D§;
   import §6v§.§@V§;
   import §6v§.§`M§;
   import §8!B§.§#! §;
   import §]!-§.§`Z§;
   import §]!-§.§`o§;
   import §^]§.§`!K§;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §<z§ extends §'!#§
   {
      
      public static const §-A§:String = "LevelEndStateRio";
      
      public static const §`,§:Number = 30;
      
      protected static const §%8§:String = "ScoreLoopCountChannel";
      
      protected static const §?!M§:String = "EndScreenEffectChannel";
       
      
      private var §=r§:§[!9§;
      
      private var §2Q§:Number;
      
      private var §`!I§:Number = 0.0;
      
      private var §'^§:Number = 0.0;
      
      private var §"!$§:Boolean = false;
      
      private var §+<§:Timer;
      
      private var §!>§:§-#§;
      
      protected var §6!;§:Array;
      
      protected var §-!"§:§=!=§;
      
      protected var §`!1§:Vector.<§=!=§>;
      
      public var mNewScoreCounter:int;
      
      private var §;#§:int;
      
      private var §##§:Boolean;
      
      protected var §5z§:Boolean;
      
      private var §^!A§:§;!D§;
      
      protected var §-M§:Boolean;
      
      private var §@z§:§[!9§;
      
      protected var §6§:Boolean;
      
      protected var §6!K§:int;
      
      public function §<z§(param1:Boolean = false, param2:String = "LevelEndStateRio")
      {
         this.§6!;§ = [];
         this.§^!A§ = new §;!D§();
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §0q§ = new §`o§(this);
         §0q§.init(this.getViewXML());
         this.initButtonDefaultPositions();
         this.§`!1§ = new Vector.<§=!=§>();
         §[!7§.§'<§(§%8§,1,1);
         §[!7§.§'<§(§?!M§,3,1);
      }
      
      protected function initButtonDefaultPositions() : void
      {
         this.§6!;§.push((§0q§.getItemByName("Button_Menu") as §^'§).x);
         this.§6!;§.push((§0q§.getItemByName("Button_Replay") as §^'§).x);
         this.§6!;§.push((§0q§.getItemByName("Button_NextLevel") as §^'§).x);
         this.§6!;§.push((§0q§.getItemByName("Button_CutScene") as §^'§).x);
      }
      
      protected function getViewXML() : XML
      {
         return §`Z§.§5c§.Views.View_LevelEndRio[0];
      }
      
      protected function showButtonsCutScene() : void
      {
         if(!AngryBirdsFP11.§`I§.isLevelPassed(§`!K§.§5g§))
         {
            (§0q§.getItemByName("Button_Menu") as §^'§).setVisibility(false);
            (§0q§.getItemByName("Button_Replay") as §^'§).setVisibility(true);
            (§0q§.getItemByName("Button_NextLevel") as §^'§).setVisibility(false);
            (§0q§.getItemByName("Button_CutScene") as §^'§).setVisibility(true);
            (§0q§.getItemByName("Button_Replay") as §^'§).x = this.§6!;§[0] + Math.abs(this.§6!;§[1] - this.§6!;§[0]) / 2;
            (§0q§.getItemByName("Button_CutScene") as §^'§).x = this.§6!;§[1] + Math.abs(this.§6!;§[2] - this.§6!;§[1]) / 2;
         }
         else
         {
            (§0q§.getItemByName("Button_Menu") as §^'§).setVisibility(true);
            (§0q§.getItemByName("Button_Replay") as §^'§).setVisibility(true);
            (§0q§.getItemByName("Button_NextLevel") as §^'§).setVisibility(false);
            (§0q§.getItemByName("Button_CutScene") as §^'§).setVisibility(true);
            (§0q§.getItemByName("Button_Menu") as §^'§).x = this.§6!;§[0];
            (§0q§.getItemByName("Button_Replay") as §^'§).x = this.§6!;§[1];
            (§0q§.getItemByName("Button_CutScene") as §^'§).x = this.§6!;§[2];
         }
      }
      
      protected function showButtonsNormal() : void
      {
         (§0q§.getItemByName("Button_Menu") as §^'§).setVisibility(true);
         (§0q§.getItemByName("Button_Replay") as §^'§).setVisibility(true);
         (§0q§.getItemByName("Button_CutScene") as §^'§).setVisibility(false);
         if(§`!K§.§6J§())
         {
            (§0q§.getItemByName("Button_NextLevel") as §^'§).setVisibility(true);
            (§0q§.getItemByName("Button_Menu") as §^'§).x = this.§6!;§[0];
            (§0q§.getItemByName("Button_Replay") as §^'§).x = this.§6!;§[1];
            (§0q§.getItemByName("Button_NextLevel") as §^'§).x = this.§6!;§[2];
         }
         else
         {
            (§0q§.getItemByName("Button_NextLevel") as §^'§).setVisibility(false);
            (§0q§.getItemByName("Button_Menu") as §^'§).x = this.§6!;§[0] + Math.abs(this.§6!;§[1] - this.§6!;§[0]) / 2;
            (§0q§.getItemByName("Button_Replay") as §^'§).x = this.§6!;§[1] + Math.abs(this.§6!;§[2] - this.§6!;§[1]) / 2;
         }
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§6§ = false;
         §#! §.pause();
         this.§!>§ = new §-#§(0,0,0,0);
         §0q§.movieClip.addChildAt(this.§!>§,§0q§.movieClip.numChildren - 1);
         if(§`!K§.§ !;§())
         {
            this.showButtonsCutScene();
         }
         else
         {
            this.showButtonsNormal();
         }
         this.mNewScoreCounter = 0;
         this.§##§ = false;
         §[!7§.playSound("LevelCompletedTheme1");
         this.§!>§.fadeToAlpha(0.7);
         this.§`!I§ = 0;
         this.§'^§ = 0;
         this.§^k§();
      }
      
      private function §^k§() : void
      {
         this.§5z§ = false;
         this.setScoreData();
         this.§+<§ = new Timer(500);
         this.§;#§ = 0;
         this.§+<§.addEventListener(TimerEvent.TIMER,this.§+!N§);
         this.§+<§.start();
      }
      
      protected function setMightyEagleFeather() : void
      {
         if(AngryBirdsFP11.§`I§.§`!C§(§`!K§.§5g§) == 100)
         {
            (§0q§.getItemByName("MovieClip_ResultMEFeather") as §!o§).mClip.gotoAndStop("On");
         }
         else
         {
            (§0q§.getItemByName("MovieClip_ResultMEFeather") as §!o§).mClip.gotoAndStop("Off");
         }
      }
      
      protected function setScoreStars(param1:int, param2:int) : void
      {
         if(this.§-M§)
         {
            param2 = param1;
            AngryBirdsFP11.§`I§.§,!0§(§`!K§.§5g§,param2);
            §0q§.setText("New Highscore!","TextField_BestScore");
         }
         else
         {
            §0q§.setText("Best " + param2.toString(),"TextField_BestScore");
            this.§6!K§ = §`!K§.§;$§(§`!K§.§5g§,param2);
            switch(this.§6!K§)
            {
               case 1:
                  (§0q§.getItemByName("MovieClip_BestScoreStars") as §!o§).§4R§("OneStar");
                  break;
               case 2:
                  (§0q§.getItemByName("MovieClip_BestScoreStars") as §!o§).§4R§("TwoStar");
                  break;
               case 3:
                  (§0q§.getItemByName("MovieClip_BestScoreStars") as §!o§).§4R§("ThreeStar");
            }
         }
      }
      
      protected function setScoreData() : void
      {
         var _loc1_:int = AngryBirdsFP11.§`I§.§[u§(§`!K§.§5g§);
         var _loc2_:int = §#! §.controller.getScore();
         this.§-M§ = _loc2_ > _loc1_;
         this.setScoreStars(_loc2_,_loc1_);
         this.setMightyEagleFeather();
         var _loc3_:int = §#! §.controller.getEagleScore();
         var _loc4_:int = AngryBirdsFP11.§`I§.§`!C§(§`!K§.§5g§);
         var _loc5_:*;
         if(_loc5_ = _loc3_ > _loc4_)
         {
            _loc4_ = _loc3_;
            AngryBirdsFP11.§`I§.§6y§(§`!K§.§5g§,_loc4_);
         }
         var _loc6_:int = AngryBirdsFP11.§`I§.§7j§(§`!K§.§5g§,_loc2_);
         (§0q§.getItemByName("MovieClip_NewHighScoreBadge") as §!o§).setVisibility(false);
         (§0q§.getItemByName("MovieClip_StarLeft") as §!o§).mClip.gotoAndStop("UnLit");
         (§0q§.getItemByName("MovieClip_StarCenter") as §!o§).mClip.gotoAndStop("UnLit");
         (§0q§.getItemByName("MovieClip_StarRight") as §!o§).mClip.gotoAndStop("UnLit");
      }
      
      protected function onBadgeLanded() : void
      {
         if(this.§-M§)
         {
            §[!7§.playSound("Hiscore_Badge",§?!M§);
            §0q§.setText("New Highscore!","TextField_NewHighScore");
            (§0q§.getItemByName("TextField_NewHighScore") as §@4§).setVisibility(true);
            (§0q§.getItemByName("MovieClip_BestScoreStars") as §!o§).setVisibility(false);
            this.§#F§();
         }
         else
         {
            (§0q§.getItemByName("TextField_BestScore") as §@4§).setVisibility(true);
            (§0q§.getItemByName("MovieClip_BestScoreStars") as §!o§).setVisibility(true);
         }
      }
      
      protected function §#F§() : void
      {
         this.§`!I§ = 0;
         this.§'^§ = 0;
         this.§2Q§ = §`,§;
      }
      
      private function §@!,§(param1:Number) : void
      {
         (§0q§.getItemByName("Container_LevelEndStripe") as §[Q§).x = (§0q§.getItemByName("Container_LevelEndStripe") as §[Q§).x - this.§`!I§;
         (§0q§.getItemByName("Container_LevelEndStripe") as §[Q§).y = (§0q§.getItemByName("Container_LevelEndStripe") as §[Q§).y - this.§'^§;
         if(this.§2Q§ > 0)
         {
            this.§`!I§ = (Math.random() - 0.5) * (this.§2Q§ / §`,§) * 20;
            this.§'^§ = (Math.random() - 0.5) * (this.§2Q§ / §`,§) * 20;
            (§0q§.getItemByName("Container_LevelEndStripe") as §[Q§).x = (§0q§.getItemByName("Container_LevelEndStripe") as §[Q§).x + this.§`!I§;
            (§0q§.getItemByName("Container_LevelEndStripe") as §[Q§).y = (§0q§.getItemByName("Container_LevelEndStripe") as §[Q§).y + this.§'^§;
         }
         else
         {
            this.§2Q§ = -1;
            this.shakingOver();
            this.§`!I§ = 0;
            this.§'^§ = 0;
         }
         this.§2Q§ -= param1 / 10;
      }
      
      protected function shakingOver() : void
      {
      }
      
      private function §+!N§(param1:TimerEvent) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc4_:Number = §`!K§.§!I§(§`!K§.§5g§).§,!<§;
         var _loc5_:Number = §`!K§.§!I§(§`!K§.§5g§).§@w§;
         if((§0q§.getItemByName("MovieClip_StarLeft") as §!o§).mClip.currentLabel == "UnLit")
         {
            §[!7§.playSound("Hiscore_Count",§%8§,100);
            §[!7§.playSound("Hiscore_Star_Splash1",§?!M§);
            this.§+<§.delay = 1000;
            this.§^!A§.assign(§#! §.controller.getScore());
            _loc6_ = this.§^!A§.getValue() / _loc4_ * 2;
            if(_loc4_ <= 0)
            {
               _loc6_ = 1;
            }
            this.§@z§ = §3C§.§>o§.§<t§(this,{"mNewScoreCounter":this.§^!A§.getValue()},{"mNewScoreCounter":0},_loc6_);
            this.§@z§.onComplete = this.§#!!§;
            this.§@z§.play();
            (§0q§.getItemByName("MovieClip_StarLeft") as §!o§).mClip.gotoAndStop("Lit");
            _loc2_ = (§0q§.getItemByName("MovieClip_StarLeft") as §!o§).x + (§0q§.getItemByName("Container_LevelEndStripe") as §[Q§).x;
            _loc3_ = (§0q§.getItemByName("MovieClip_StarLeft") as §!o§).y + (§0q§.getItemByName("Container_LevelEndStripe") as §[Q§).y;
            this.§-!"§ = new §=!=§(AngryBirdsFP11.§3!<§,AngryBirdsFP11.§8!4§,_loc2_,_loc3_,§=!=§.§^!$§);
            §0q§.addChild(this.§-!"§);
            this.§`!1§.push(this.§-!"§);
         }
         else if(this.§^!A§.getValue() >= _loc5_ && (§0q§.getItemByName("MovieClip_StarCenter") as §!o§).mClip.currentLabel == "UnLit")
         {
            §[!7§.playSound("Hiscore_Star_Splash2",§?!M§);
            (§0q§.getItemByName("MovieClip_StarCenter") as §!o§).mClip.gotoAndStop("Lit");
            _loc2_ = (§0q§.getItemByName("MovieClip_StarCenter") as §!o§).x + (§0q§.getItemByName("Container_LevelEndStripe") as §[Q§).x;
            _loc3_ = (§0q§.getItemByName("MovieClip_StarCenter") as §!o§).y + (§0q§.getItemByName("Container_LevelEndStripe") as §[Q§).y;
            this.§-!"§ = new §=!=§(AngryBirdsFP11.§3!<§,AngryBirdsFP11.§8!4§,_loc2_,_loc3_,§=!=§.§;A§);
            §0q§.addChild(this.§-!"§);
            this.§`!1§.push(this.§-!"§);
         }
         else if(this.§^!A§.getValue() >= _loc4_ && (§0q§.getItemByName("MovieClip_StarRight") as §!o§).mClip.currentLabel == "UnLit")
         {
            this.§6§ = true;
            §[!7§.playSound("Hiscore_Star_Splash3",§?!M§);
            (§0q§.getItemByName("MovieClip_StarRight") as §!o§).mClip.gotoAndStop("Lit");
            _loc2_ = (§0q§.getItemByName("MovieClip_StarRight") as §!o§).x + (§0q§.getItemByName("Container_LevelEndStripe") as §[Q§).x;
            _loc3_ = (§0q§.getItemByName("MovieClip_StarRight") as §!o§).y + (§0q§.getItemByName("Container_LevelEndStripe") as §[Q§).y;
            this.§-!"§ = new §=!=§(AngryBirdsFP11.§3!<§,AngryBirdsFP11.§8!4§,_loc2_,_loc3_,§=!=§.§,F§);
            §0q§.addChild(this.§-!"§);
            this.§`!1§.push(this.§-!"§);
         }
         else if(!this.§##§)
         {
            this.§##§ = true;
         }
         else
         {
            this.§+<§.stop();
            if(this.§-M§ && !this.§5z§)
            {
               (§0q§.getItemByName("MovieClip_NewHighScoreBadge") as §!o§).setVisibility(true);
            }
            else
            {
               (§0q§.getItemByName("MovieClip_NewHighScoreBadge") as §!o§).setVisibility(false);
            }
            this.§=r§ = §3C§.§>o§.§<t§((§0q§.getItemByName("MovieClip_NewHighScoreBadge") as §!o§).mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":7,
               "scaleY":7
            },0.1);
            this.§=r§.onComplete = this.onBadgeLanded;
            this.§=r§.play();
         }
         ++this.§;#§;
      }
      
      private function §#!!§() : void
      {
         §[!7§.§9!K§(§%8§);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:§=!=§ = null;
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §'!#§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         §0q§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScore");
         §0q§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScoreEffects");
         for each(_loc3_ in this.§`!1§)
         {
            _loc3_.update(param1);
         }
         if(this.§2Q§ > -1)
         {
            this.§@!,§(param1);
         }
         if(mNextState.length > 0)
         {
            §#! §.§`'§.clearLevel();
            return §'!#§.STATE_STATUS_COMPLETED;
         }
         return §'!#§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§9<§();
         this.§2Q§ = 0;
         this.mNewScoreCounter = 0;
         if(this.§@z§)
         {
            this.§@z§.stop();
            this.§@z§ = null;
         }
         if(this.§=r§)
         {
            this.§=r§.stop();
            this.§=r§ = null;
         }
         §[!7§.§9!K§(§%8§);
         this.setButtonStates(§@V§.COMPONENT_STATE_ACTIVE_DEFAULT);
         §0q§.setText("0","TextField_LevelEndScore");
         §0q§.setText("0","TextField_LevelEndScoreEffects");
         if(this.§!>§)
         {
            if(§0q§.movieClip.contains(this.§!>§))
            {
               §0q§.movieClip.removeChild(this.§!>§);
            }
            this.§!>§.clean();
            this.§!>§ = null;
         }
      }
      
      protected function setButtonStates(param1:String) : void
      {
         (§0q§.getItemByName("Button_Menu") as §^'§).setComponentVisualState(param1);
         (§0q§.getItemByName("Button_Replay") as §^'§).setComponentVisualState(param1);
         (§0q§.getItemByName("Button_NextLevel") as §^'§).setComponentVisualState(param1);
         (§0q§.getItemByName("Button_CutScene") as §^'§).setComponentVisualState(param1);
      }
      
      private function §9<§() : void
      {
         var splash:§=!=§ = null;
         if(this.§+<§)
         {
            this.§+<§.stop();
            try
            {
               this.§+<§.removeEventListener(TimerEvent.TIMER,this.§+!N§);
            }
            catch(e:Error)
            {
            }
         }
         for each(splash in this.§`!1§)
         {
            if(§0q§.contains(splash))
            {
               §0q§.removeChild(splash);
            }
            splash.clean();
         }
         this.§`!1§ = new Vector.<§=!=§>();
         this.hideBestScoreTexts();
      }
      
      protected function hideBestScoreTexts() : void
      {
         (§0q§.getItemByName("TextField_BestScore") as §@4§).setVisibility(false);
         (§0q§.getItemByName("MovieClip_BestScoreStars") as §!o§).setVisibility(false);
         (§0q§.getItemByName("TextField_NewHighScore") as §@4§).setVisibility(false);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      protected function §=1§() : void
      {
         §-O§.§ b§();
         mNextState = this.§5!>§();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§`M§) : void
      {
         var _loc4_:String = null;
         switch(param2)
         {
            case "NEXT_LEVEL":
               this.§=1§();
               break;
            case "REPLAY":
               §-O§.§8!5§();
               mNextState = this.§#0§();
               break;
            case "WATCH_REPLAY":
               §-O§.§8!5§();
               mNextState = this.§#0§();
               if(_loc4_ = §#! §.§`'§.§2?§())
               {
                  §#! §.§`'§.§-j§(_loc4_);
               }
               break;
            case "MENU":
               §[!7§.§=0§();
               mNextState = this.§2V§();
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§`y§.§,,§();
         }
      }
      
      protected function §#0§() : String
      {
         return §-O§.§-A§;
      }
      
      protected function §5!>§() : String
      {
         return StateCutScene.§-A§;
      }
      
      public function §2V§() : String
      {
         return §0!5§.§-A§;
      }
   }
}
