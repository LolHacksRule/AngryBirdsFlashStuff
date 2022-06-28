package §;m§
{
   import §#h§.§ !H§;
   import §%!6§.§'[§;
   import §'o§.§7!%§;
   import §'o§.§`K§;
   import §+!?§.§"h§;
   import §0w§.§0#§;
   import §0w§.§06§;
   import §4C§.§"m§;
   import §4C§.§1!=§;
   import §4C§.§6<§;
   import §4C§.§<k§;
   import §6H§.§>3§;
   import §=!B§.§59§;
   import §?!+§.§,!G§;
   import §?!+§.§3_§;
   import §`!0§.§"?§;
   import §`!0§.§[4§;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class § !F§ extends §>3§
   {
      
      public static const §-!A§:String = "LevelEndStateRio";
      
      public static const § !?§:Number = 30;
      
      protected static const §+!$§:String = "ScoreLoopCountChannel";
      
      protected static const §+p§:String = "EndScreenEffectChannel";
       
      
      private var §?g§:§3_§;
      
      private var §7!G§:Number;
      
      private var §&!,§:Number = 0.0;
      
      private var §6!1§:Number = 0.0;
      
      private var §4=§:Boolean = false;
      
      private var §!r§:Timer;
      
      private var §=@§:§`K§;
      
      protected var §,-§:Array;
      
      protected var §4o§:§7!%§;
      
      protected var §<l§:Vector.<§7!%§>;
      
      public var mNewScoreCounter:int;
      
      private var §-;§:int;
      
      private var §3Q§:Boolean;
      
      protected var §[m§:Boolean;
      
      private var §&<§:§'[§;
      
      protected var §#>§:Boolean;
      
      private var §>o§:§3_§;
      
      protected var §3!C§:Boolean;
      
      protected var §[e§:int;
      
      public function § !F§(param1:Boolean = false, param2:String = "LevelEndStateRio")
      {
         this.§,-§ = [];
         this.§&<§ = new §'[§();
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §-f§ = new §0#§(this);
         §-f§.init(this.getViewXML());
         this.initButtonDefaultPositions();
         this.§<l§ = new Vector.<§7!%§>();
         § !H§.§+z§(§+!$§,1,1);
         § !H§.§+z§(§+p§,3,1);
      }
      
      protected function initButtonDefaultPositions() : void
      {
         this.§,-§.push((§-f§.getItemByName("Button_Menu") as §6<§).x);
         this.§,-§.push((§-f§.getItemByName("Button_Replay") as §6<§).x);
         this.§,-§.push((§-f§.getItemByName("Button_NextLevel") as §6<§).x);
         this.§,-§.push((§-f§.getItemByName("Button_CutScene") as §6<§).x);
      }
      
      protected function getViewXML() : XML
      {
         return §06§.§-`§.Views.View_LevelEndRio[0];
      }
      
      protected function showButtonsCutScene() : void
      {
         if(!AngryBirdsFP11.sUserProgress.isLevelPassed(§59§.§%j§))
         {
            (§-f§.getItemByName("Button_Menu") as §6<§).setVisibility(false);
            (§-f§.getItemByName("Button_Replay") as §6<§).setVisibility(true);
            (§-f§.getItemByName("Button_NextLevel") as §6<§).setVisibility(false);
            (§-f§.getItemByName("Button_CutScene") as §6<§).setVisibility(true);
            (§-f§.getItemByName("Button_Replay") as §6<§).x = this.§,-§[0] + Math.abs(this.§,-§[1] - this.§,-§[0]) / 2;
            (§-f§.getItemByName("Button_CutScene") as §6<§).x = this.§,-§[1] + Math.abs(this.§,-§[2] - this.§,-§[1]) / 2;
         }
         else
         {
            (§-f§.getItemByName("Button_Menu") as §6<§).setVisibility(true);
            (§-f§.getItemByName("Button_Replay") as §6<§).setVisibility(true);
            (§-f§.getItemByName("Button_NextLevel") as §6<§).setVisibility(false);
            (§-f§.getItemByName("Button_CutScene") as §6<§).setVisibility(true);
            (§-f§.getItemByName("Button_Menu") as §6<§).x = this.§,-§[0];
            (§-f§.getItemByName("Button_Replay") as §6<§).x = this.§,-§[1];
            (§-f§.getItemByName("Button_CutScene") as §6<§).x = this.§,-§[2];
         }
      }
      
      protected function showButtonsNormal() : void
      {
         (§-f§.getItemByName("Button_Menu") as §6<§).setVisibility(true);
         (§-f§.getItemByName("Button_Replay") as §6<§).setVisibility(true);
         (§-f§.getItemByName("Button_CutScene") as §6<§).setVisibility(false);
         if(§59§.§+-§())
         {
            (§-f§.getItemByName("Button_NextLevel") as §6<§).setVisibility(true);
            (§-f§.getItemByName("Button_Menu") as §6<§).x = this.§,-§[0];
            (§-f§.getItemByName("Button_Replay") as §6<§).x = this.§,-§[1];
            (§-f§.getItemByName("Button_NextLevel") as §6<§).x = this.§,-§[2];
         }
         else
         {
            (§-f§.getItemByName("Button_NextLevel") as §6<§).setVisibility(false);
            (§-f§.getItemByName("Button_Menu") as §6<§).x = this.§,-§[0] + Math.abs(this.§,-§[1] - this.§,-§[0]) / 2;
            (§-f§.getItemByName("Button_Replay") as §6<§).x = this.§,-§[1] + Math.abs(this.§,-§[2] - this.§,-§[1]) / 2;
         }
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§3!C§ = false;
         §"h§.pause();
         this.§=@§ = new §`K§(0,0,0,0);
         §-f§.movieClip.addChildAt(this.§=@§,§-f§.movieClip.numChildren - 1);
         if(§59§.§^G§())
         {
            this.showButtonsCutScene();
         }
         else
         {
            this.showButtonsNormal();
         }
         this.mNewScoreCounter = 0;
         this.§3Q§ = false;
         § !H§.§ !%§("LevelCompletedTheme1");
         this.§=@§.§?`§(0.7);
         this.§&!,§ = 0;
         this.§6!1§ = 0;
         this.§-!"§();
      }
      
      private function §-!"§() : void
      {
         this.§[m§ = false;
         this.setScoreData();
         this.§!r§ = new Timer(500);
         this.§-;§ = 0;
         this.§!r§.addEventListener(TimerEvent.TIMER,this.§`e§);
         this.§!r§.start();
      }
      
      protected function setMightyEagleFeather() : void
      {
         if(AngryBirdsFP11.sUserProgress.§4a§(§59§.§%j§) == 100)
         {
            (§-f§.getItemByName("MovieClip_ResultMEFeather") as §"m§).mClip.gotoAndStop("On");
         }
         else
         {
            (§-f§.getItemByName("MovieClip_ResultMEFeather") as §"m§).mClip.gotoAndStop("Off");
         }
      }
      
      protected function setScoreStars(param1:int, param2:int) : void
      {
         if(this.§#>§)
         {
            param2 = param1;
            AngryBirdsFP11.sUserProgress.§9h§(§59§.§%j§,param2);
            §-f§.setText("New Highscore!","TextField_BestScore");
         }
         else
         {
            §-f§.setText("Best " + param2.toString(),"TextField_BestScore");
            this.§[e§ = §59§.§1;§(§59§.§%j§,param2);
            switch(this.§[e§)
            {
               case 1:
                  (§-f§.getItemByName("MovieClip_BestScoreStars") as §"m§).§[!I§("OneStar");
                  break;
               case 2:
                  (§-f§.getItemByName("MovieClip_BestScoreStars") as §"m§).§[!I§("TwoStar");
                  break;
               case 3:
                  (§-f§.getItemByName("MovieClip_BestScoreStars") as §"m§).§[!I§("ThreeStar");
            }
         }
      }
      
      protected function setScoreData() : void
      {
         var _loc1_:int = AngryBirdsFP11.sUserProgress.§#!H§(§59§.§%j§);
         var _loc2_:int = §"h§.controller.getScore();
         this.§#>§ = _loc2_ > _loc1_;
         this.setScoreStars(_loc2_,_loc1_);
         this.setMightyEagleFeather();
         var _loc3_:int = §"h§.controller.getEagleScore();
         var _loc4_:int = AngryBirdsFP11.sUserProgress.§4a§(§59§.§%j§);
         var _loc5_:*;
         if(_loc5_ = _loc3_ > _loc4_)
         {
            _loc4_ = _loc3_;
            AngryBirdsFP11.sUserProgress.§9!3§(§59§.§%j§,_loc4_);
         }
         var _loc6_:int = AngryBirdsFP11.sUserProgress.§1!,§(§59§.§%j§,_loc2_);
         (§-f§.getItemByName("MovieClip_NewHighScoreBadge") as §"m§).setVisibility(false);
         (§-f§.getItemByName("MovieClip_StarLeft") as §"m§).mClip.gotoAndStop("UnLit");
         (§-f§.getItemByName("MovieClip_StarCenter") as §"m§).mClip.gotoAndStop("UnLit");
         (§-f§.getItemByName("MovieClip_StarRight") as §"m§).mClip.gotoAndStop("UnLit");
      }
      
      protected function onBadgeLanded() : void
      {
         if(this.§#>§)
         {
            § !H§.§ !%§("Hiscore_Badge",§+p§);
            §-f§.setText("New Highscore!","TextField_NewHighScore");
            (§-f§.getItemByName("TextField_NewHighScore") as §<k§).setVisibility(true);
            (§-f§.getItemByName("MovieClip_BestScoreStars") as §"m§).setVisibility(false);
            this.§"<§();
         }
         else
         {
            (§-f§.getItemByName("TextField_BestScore") as §<k§).setVisibility(true);
            (§-f§.getItemByName("MovieClip_BestScoreStars") as §"m§).setVisibility(true);
         }
      }
      
      protected function §"<§() : void
      {
         this.§&!,§ = 0;
         this.§6!1§ = 0;
         this.§7!G§ = § !?§;
      }
      
      private function §!!=§(param1:Number) : void
      {
         (§-f§.getItemByName("Container_LevelEndStripe") as §1!=§).x = (§-f§.getItemByName("Container_LevelEndStripe") as §1!=§).x - this.§&!,§;
         (§-f§.getItemByName("Container_LevelEndStripe") as §1!=§).y = (§-f§.getItemByName("Container_LevelEndStripe") as §1!=§).y - this.§6!1§;
         if(this.§7!G§ > 0)
         {
            this.§&!,§ = (Math.random() - 0.5) * (this.§7!G§ / § !?§) * 20;
            this.§6!1§ = (Math.random() - 0.5) * (this.§7!G§ / § !?§) * 20;
            (§-f§.getItemByName("Container_LevelEndStripe") as §1!=§).x = (§-f§.getItemByName("Container_LevelEndStripe") as §1!=§).x + this.§&!,§;
            (§-f§.getItemByName("Container_LevelEndStripe") as §1!=§).y = (§-f§.getItemByName("Container_LevelEndStripe") as §1!=§).y + this.§6!1§;
         }
         else
         {
            this.§7!G§ = -1;
            this.§^u§();
            this.§&!,§ = 0;
            this.§6!1§ = 0;
         }
         this.§7!G§ -= param1 / 10;
      }
      
      protected function §^u§() : void
      {
      }
      
      private function §`e§(param1:TimerEvent) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc4_:Number = §59§.§'Y§(§59§.§%j§).§`0§;
         var _loc5_:Number = §59§.§'Y§(§59§.§%j§).§7G§;
         if((§-f§.getItemByName("MovieClip_StarLeft") as §"m§).mClip.currentLabel == "UnLit")
         {
            § !H§.§ !%§("Hiscore_Count",§+!$§,100);
            § !H§.§ !%§("Hiscore_Star_Splash1",§+p§);
            this.§!r§.delay = 1000;
            this.§&<§.assign(§"h§.controller.getScore());
            _loc6_ = this.§&<§.getValue() / _loc4_ * 2;
            if(_loc4_ <= 0)
            {
               _loc6_ = 1;
            }
            this.§>o§ = §,!G§.§@j§.§47§(this,{"mNewScoreCounter":this.§&<§.getValue()},{"mNewScoreCounter":0},_loc6_);
            this.§>o§.onComplete = this.§0!@§;
            this.§>o§.play();
            (§-f§.getItemByName("MovieClip_StarLeft") as §"m§).mClip.gotoAndStop("Lit");
            _loc2_ = (§-f§.getItemByName("MovieClip_StarLeft") as §"m§).x + (§-f§.getItemByName("Container_LevelEndStripe") as §1!=§).x;
            _loc3_ = (§-f§.getItemByName("MovieClip_StarLeft") as §"m§).y + (§-f§.getItemByName("Container_LevelEndStripe") as §1!=§).y;
            this.§4o§ = new §7!%§(AngryBirdsFP11.screenWidth,AngryBirdsFP11.screenHeight,_loc2_,_loc3_,§7!%§.§`!A§);
            §-f§.addChild(this.§4o§);
            this.§<l§.push(this.§4o§);
         }
         else if(this.§&<§.getValue() >= _loc5_ && (§-f§.getItemByName("MovieClip_StarCenter") as §"m§).mClip.currentLabel == "UnLit")
         {
            § !H§.§ !%§("Hiscore_Star_Splash2",§+p§);
            (§-f§.getItemByName("MovieClip_StarCenter") as §"m§).mClip.gotoAndStop("Lit");
            _loc2_ = (§-f§.getItemByName("MovieClip_StarCenter") as §"m§).x + (§-f§.getItemByName("Container_LevelEndStripe") as §1!=§).x;
            _loc3_ = (§-f§.getItemByName("MovieClip_StarCenter") as §"m§).y + (§-f§.getItemByName("Container_LevelEndStripe") as §1!=§).y;
            this.§4o§ = new §7!%§(AngryBirdsFP11.screenWidth,AngryBirdsFP11.screenHeight,_loc2_,_loc3_,§7!%§.§ !7§);
            §-f§.addChild(this.§4o§);
            this.§<l§.push(this.§4o§);
         }
         else if(this.§&<§.getValue() >= _loc4_ && (§-f§.getItemByName("MovieClip_StarRight") as §"m§).mClip.currentLabel == "UnLit")
         {
            this.§3!C§ = true;
            § !H§.§ !%§("Hiscore_Star_Splash3",§+p§);
            (§-f§.getItemByName("MovieClip_StarRight") as §"m§).mClip.gotoAndStop("Lit");
            _loc2_ = (§-f§.getItemByName("MovieClip_StarRight") as §"m§).x + (§-f§.getItemByName("Container_LevelEndStripe") as §1!=§).x;
            _loc3_ = (§-f§.getItemByName("MovieClip_StarRight") as §"m§).y + (§-f§.getItemByName("Container_LevelEndStripe") as §1!=§).y;
            this.§4o§ = new §7!%§(AngryBirdsFP11.screenWidth,AngryBirdsFP11.screenHeight,_loc2_,_loc3_,§7!%§.§"B§);
            §-f§.addChild(this.§4o§);
            this.§<l§.push(this.§4o§);
         }
         else if(!this.§3Q§)
         {
            this.§3Q§ = true;
         }
         else
         {
            this.§!r§.stop();
            if(this.§#>§ && !this.§[m§)
            {
               (§-f§.getItemByName("MovieClip_NewHighScoreBadge") as §"m§).setVisibility(true);
            }
            else
            {
               (§-f§.getItemByName("MovieClip_NewHighScoreBadge") as §"m§).setVisibility(false);
            }
            this.§?g§ = §,!G§.§@j§.§47§((§-f§.getItemByName("MovieClip_NewHighScoreBadge") as §"m§).mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":7,
               "scaleY":7
            },0.1);
            this.§?g§.onComplete = this.onBadgeLanded;
            this.§?g§.play();
         }
         ++this.§-;§;
      }
      
      private function §0!@§() : void
      {
         § !H§.§]%§(§+!$§);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:§7!%§ = null;
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §>3§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         §-f§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScore");
         §-f§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScoreEffects");
         for each(_loc3_ in this.§<l§)
         {
            _loc3_.update(param1);
         }
         if(this.§7!G§ > -1)
         {
            this.§!!=§(param1);
         }
         if(mNextState.length > 0)
         {
            §"h§.§1C§.clearLevel();
            return §>3§.STATE_STATUS_COMPLETED;
         }
         return §>3§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§]_§();
         this.§7!G§ = 0;
         this.mNewScoreCounter = 0;
         if(this.§>o§)
         {
            this.§>o§.stop();
            this.§>o§ = null;
         }
         if(this.§?g§)
         {
            this.§?g§.stop();
            this.§?g§ = null;
         }
         § !H§.§]%§(§+!$§);
         this.setButtonStates(§[4§.COMPONENT_STATE_ACTIVE_DEFAULT);
         §-f§.setText("0","TextField_LevelEndScore");
         §-f§.setText("0","TextField_LevelEndScoreEffects");
         if(this.§=@§)
         {
            if(§-f§.movieClip.contains(this.§=@§))
            {
               §-f§.movieClip.removeChild(this.§=@§);
            }
            this.§=@§.clean();
            this.§=@§ = null;
         }
      }
      
      protected function setButtonStates(param1:String) : void
      {
         (§-f§.getItemByName("Button_Menu") as §6<§).setComponentVisualState(param1);
         (§-f§.getItemByName("Button_Replay") as §6<§).setComponentVisualState(param1);
         (§-f§.getItemByName("Button_NextLevel") as §6<§).setComponentVisualState(param1);
         (§-f§.getItemByName("Button_CutScene") as §6<§).setComponentVisualState(param1);
      }
      
      private function §]_§() : void
      {
         var splash:§7!%§ = null;
         if(this.§!r§)
         {
            this.§!r§.stop();
            try
            {
               this.§!r§.removeEventListener(TimerEvent.TIMER,this.§`e§);
            }
            catch(e:Error)
            {
            }
         }
         for each(splash in this.§<l§)
         {
            if(§-f§.contains(splash))
            {
               §-f§.removeChild(splash);
            }
            splash.clean();
         }
         this.§<l§ = new Vector.<§7!%§>();
         this.hideBestScoreTexts();
      }
      
      protected function hideBestScoreTexts() : void
      {
         (§-f§.getItemByName("TextField_BestScore") as §<k§).setVisibility(false);
         (§-f§.getItemByName("MovieClip_BestScoreStars") as §"m§).setVisibility(false);
         (§-f§.getItemByName("TextField_NewHighScore") as §<k§).setVisibility(false);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      protected function §@!0§() : void
      {
         §3'§.§+^§();
         mNextState = this.§]y§();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§"?§) : void
      {
         var _loc4_:String = null;
         switch(param2)
         {
            case "NEXT_LEVEL":
               this.§@!0§();
               break;
            case "REPLAY":
               §3'§.§;3§();
               mNextState = this.§@3§();
               break;
            case "WATCH_REPLAY":
               §3'§.§;3§();
               mNextState = this.§@3§();
               if(_loc4_ = §"h§.§1C§.§2=§())
               {
                  §"h§.§1C§.§-!B§(_loc4_);
                  break;
               }
               break;
            case "MENU":
               § !H§.§[!<§();
               mNextState = this.§52§();
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§0P§.§<h§();
         }
      }
      
      protected function §@3§() : String
      {
         return §3'§.§-!A§;
      }
      
      protected function §]y§() : String
      {
         return StateCutScene.§-!A§;
      }
      
      public function §52§() : String
      {
         return §>!B§.§-!A§;
      }
   }
}
