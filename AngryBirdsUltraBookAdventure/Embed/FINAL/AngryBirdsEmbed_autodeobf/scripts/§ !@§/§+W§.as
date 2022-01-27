package § !@§
{
   import §#P§.§ !=§;
   import §#P§.§@7§;
   import §#X§.§,!F§;
   import §%4§.§4!=§;
   import §%4§.§7-§;
   import §%4§.§9O§;
   import §%4§.§`a§;
   import §+!B§.§<!M§;
   import §-!D§.§4!,§;
   import §-!D§.§5A§;
   import §0!#§.§-P§;
   import §0!#§.§0K§;
   import §0,§.§4V§;
   import §0,§.§9!C§;
   import §1!-§.§[4§;
   import §5!L§.§=w§;
   import §7g§.§1Q§;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §+W§ extends §1Q§
   {
      
      public static const §>9§:String = "LevelEndStateRio";
      
      public static const §!w§:Number = 30;
      
      protected static const §4]§:String = "ScoreLoopCountChannel";
      
      protected static const §`!@§:String = "EndScreenEffectChannel";
       
      
      private var §0a§:§ !=§;
      
      private var §1!"§:Number;
      
      private var §[§:Number = 0.0;
      
      private var §#!H§:Number = 0.0;
      
      private var §5!5§:Boolean = false;
      
      private var §1_§:Timer;
      
      private var §+f§:§4V§;
      
      protected var §'!9§:Array;
      
      protected var §2i§:§9!C§;
      
      protected var §]6§:Vector.<§9!C§>;
      
      public var mNewScoreCounter:int;
      
      private var §>!5§:int;
      
      private var §7!9§:Boolean;
      
      protected var §%!>§:Boolean;
      
      private var §<!K§:§<!M§;
      
      protected var §6g§:Boolean;
      
      private var § I§:§ !=§;
      
      protected var §^!%§:Boolean;
      
      protected var §;d§:int;
      
      public function §+W§(param1:Boolean = false, param2:String = "LevelEndStateRio")
      {
         this.§'!9§ = [];
         this.§<!K§ = new §<!M§();
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §]F§ = new §4!,§(this);
         §]F§.init(this.getViewXML());
         this.initButtonDefaultPositions();
         this.§]6§ = new Vector.<§9!C§>();
         §,!F§.§@o§(§4]§,1,1);
         §,!F§.§@o§(§`!@§,3,1);
      }
      
      protected function initButtonDefaultPositions() : void
      {
         this.§'!9§.push((§]F§.getItemByName("Button_Menu") as §7-§).x);
         this.§'!9§.push((§]F§.getItemByName("Button_Replay") as §7-§).x);
         this.§'!9§.push((§]F§.getItemByName("Button_NextLevel") as §7-§).x);
         this.§'!9§.push((§]F§.getItemByName("Button_CutScene") as §7-§).x);
      }
      
      protected function getViewXML() : XML
      {
         return §5A§.§;L§.Views.View_LevelEndRio[0];
      }
      
      protected function showButtonsCutScene() : void
      {
         if(!AngryBirdsFP11.sUserProgress.isLevelPassed(§[4§.§"!>§))
         {
            (§]F§.getItemByName("Button_Menu") as §7-§).setVisibility(false);
            (§]F§.getItemByName("Button_Replay") as §7-§).setVisibility(true);
            (§]F§.getItemByName("Button_NextLevel") as §7-§).setVisibility(false);
            (§]F§.getItemByName("Button_CutScene") as §7-§).setVisibility(true);
            (§]F§.getItemByName("Button_Replay") as §7-§).x = this.§'!9§[0] + Math.abs(this.§'!9§[1] - this.§'!9§[0]) / 2;
            (§]F§.getItemByName("Button_CutScene") as §7-§).x = this.§'!9§[1] + Math.abs(this.§'!9§[2] - this.§'!9§[1]) / 2;
         }
         else
         {
            (§]F§.getItemByName("Button_Menu") as §7-§).setVisibility(true);
            (§]F§.getItemByName("Button_Replay") as §7-§).setVisibility(true);
            (§]F§.getItemByName("Button_NextLevel") as §7-§).setVisibility(false);
            (§]F§.getItemByName("Button_CutScene") as §7-§).setVisibility(true);
            (§]F§.getItemByName("Button_Menu") as §7-§).x = this.§'!9§[0];
            (§]F§.getItemByName("Button_Replay") as §7-§).x = this.§'!9§[1];
            (§]F§.getItemByName("Button_CutScene") as §7-§).x = this.§'!9§[2];
         }
      }
      
      protected function showButtonsNormal() : void
      {
         (§]F§.getItemByName("Button_Menu") as §7-§).setVisibility(true);
         (§]F§.getItemByName("Button_Replay") as §7-§).setVisibility(true);
         (§]F§.getItemByName("Button_CutScene") as §7-§).setVisibility(false);
         if(§[4§.§4E§())
         {
            (§]F§.getItemByName("Button_NextLevel") as §7-§).setVisibility(true);
            (§]F§.getItemByName("Button_Menu") as §7-§).x = this.§'!9§[0];
            (§]F§.getItemByName("Button_Replay") as §7-§).x = this.§'!9§[1];
            (§]F§.getItemByName("Button_NextLevel") as §7-§).x = this.§'!9§[2];
         }
         else
         {
            (§]F§.getItemByName("Button_NextLevel") as §7-§).setVisibility(false);
            (§]F§.getItemByName("Button_Menu") as §7-§).x = this.§'!9§[0] + Math.abs(this.§'!9§[1] - this.§'!9§[0]) / 2;
            (§]F§.getItemByName("Button_Replay") as §7-§).x = this.§'!9§[1] + Math.abs(this.§'!9§[2] - this.§'!9§[1]) / 2;
         }
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§^!%§ = false;
         §=w§.pause();
         this.§+f§ = new §4V§(0,0,0,0);
         §]F§.movieClip.addChildAt(this.§+f§,§]F§.movieClip.numChildren - 1);
         if(§[4§.§`v§())
         {
            this.showButtonsCutScene();
         }
         else
         {
            this.showButtonsNormal();
         }
         this.mNewScoreCounter = 0;
         this.§7!9§ = false;
         §,!F§.§;v§(this.§6Y§);
         this.§+f§.§[!'§(0.7);
         this.§[§ = 0;
         this.§#!H§ = 0;
         this.§,'§();
      }
      
      protected function get §6Y§() : String
      {
         return "LevelCompletedTheme1";
      }
      
      private function §,'§() : void
      {
         this.§%!>§ = false;
         this.setScoreData();
         this.§1_§ = new Timer(500);
         this.§>!5§ = 0;
         this.§1_§.addEventListener(TimerEvent.TIMER,this.§0!!§);
         this.§1_§.start();
      }
      
      protected function setMightyEagleFeather() : void
      {
         if(AngryBirdsFP11.sUserProgress.§3I§(§[4§.§"!>§) == 100)
         {
            (§]F§.getItemByName("MovieClip_ResultMEFeather") as §9O§).mClip.gotoAndStop("On");
         }
         else
         {
            (§]F§.getItemByName("MovieClip_ResultMEFeather") as §9O§).mClip.gotoAndStop("Off");
         }
      }
      
      protected function setScoreStars(param1:int, param2:int) : void
      {
         if(this.§6g§)
         {
            param2 = param1;
            AngryBirdsFP11.sUserProgress.§'`§(§[4§.§"!>§,param2);
            §]F§.setText("New Highscore!","TextField_BestScore");
         }
         else
         {
            §]F§.setText("Best " + param2.toString(),"TextField_BestScore");
            this.§;d§ = §[4§.§"r§(§[4§.§"!>§,param2);
            switch(this.§;d§)
            {
               case 1:
                  (§]F§.getItemByName("MovieClip_BestScoreStars") as §9O§).§3!;§("OneStar");
                  break;
               case 2:
                  (§]F§.getItemByName("MovieClip_BestScoreStars") as §9O§).§3!;§("TwoStar");
                  break;
               case 3:
                  (§]F§.getItemByName("MovieClip_BestScoreStars") as §9O§).§3!;§("ThreeStar");
            }
         }
      }
      
      protected function setScoreData() : void
      {
         var _loc1_:int = AngryBirdsFP11.sUserProgress.§0!3§(§[4§.§"!>§);
         var _loc2_:int = §=w§.controller.getScore();
         this.§6g§ = _loc2_ > _loc1_;
         this.setScoreStars(_loc2_,_loc1_);
         this.setMightyEagleFeather();
         var _loc3_:int = §=w§.controller.getEagleScore();
         var _loc4_:int = AngryBirdsFP11.sUserProgress.§3I§(§[4§.§"!>§);
         var _loc5_:*;
         if(_loc5_ = _loc3_ > _loc4_)
         {
            _loc4_ = _loc3_;
            AngryBirdsFP11.sUserProgress.§7z§(§[4§.§"!>§,_loc4_);
         }
         var _loc6_:int = AngryBirdsFP11.sUserProgress.§%i§(§[4§.§"!>§,_loc2_);
         (§]F§.getItemByName("MovieClip_NewHighScoreBadge") as §9O§).setVisibility(false);
         (§]F§.getItemByName("MovieClip_StarLeft") as §9O§).mClip.gotoAndStop("UnLit");
         (§]F§.getItemByName("MovieClip_StarCenter") as §9O§).mClip.gotoAndStop("UnLit");
         (§]F§.getItemByName("MovieClip_StarRight") as §9O§).mClip.gotoAndStop("UnLit");
      }
      
      protected function onBadgeLanded() : void
      {
         if(this.§6g§)
         {
            §,!F§.§;v§("Hiscore_Badge",§`!@§);
            §]F§.setText("New Highscore!","TextField_NewHighScore");
            (§]F§.getItemByName("TextField_NewHighScore") as §`a§).setVisibility(true);
            (§]F§.getItemByName("MovieClip_BestScoreStars") as §9O§).setVisibility(false);
            this.§0L§();
         }
         else
         {
            (§]F§.getItemByName("TextField_BestScore") as §`a§).setVisibility(true);
            (§]F§.getItemByName("MovieClip_BestScoreStars") as §9O§).setVisibility(true);
         }
      }
      
      protected function §0L§() : void
      {
         this.§[§ = 0;
         this.§#!H§ = 0;
         this.§1!"§ = §!w§;
      }
      
      private function §1C§(param1:Number) : void
      {
         (§]F§.getItemByName("Container_LevelEndStripe") as §4!=§).x = (§]F§.getItemByName("Container_LevelEndStripe") as §4!=§).x - this.§[§;
         (§]F§.getItemByName("Container_LevelEndStripe") as §4!=§).y = (§]F§.getItemByName("Container_LevelEndStripe") as §4!=§).y - this.§#!H§;
         if(this.§1!"§ > 0)
         {
            this.§[§ = (Math.random() - 0.5) * (this.§1!"§ / §!w§) * 20;
            this.§#!H§ = (Math.random() - 0.5) * (this.§1!"§ / §!w§) * 20;
            (§]F§.getItemByName("Container_LevelEndStripe") as §4!=§).x = (§]F§.getItemByName("Container_LevelEndStripe") as §4!=§).x + this.§[§;
            (§]F§.getItemByName("Container_LevelEndStripe") as §4!=§).y = (§]F§.getItemByName("Container_LevelEndStripe") as §4!=§).y + this.§#!H§;
         }
         else
         {
            this.§1!"§ = -1;
            this.§ !G§();
            this.§[§ = 0;
            this.§#!H§ = 0;
         }
         this.§1!"§ -= param1 / 10;
      }
      
      protected function § !G§() : void
      {
      }
      
      private function §0!!§(param1:TimerEvent) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = false;
         var _loc4_:Number = §[4§.§!_§(§[4§.§"!>§).§4!6§;
         var _loc5_:Number = §[4§.§!_§(§[4§.§"!>§).§!x§;
         if((§]F§.getItemByName("MovieClip_StarLeft") as §9O§).mClip.currentLabel == "UnLit")
         {
            §,!F§.§;v§("Hiscore_Count",§4]§,100);
            this.§1_§.delay = 1000;
            this.§<!K§.assign(§=w§.controller.getScore());
            _loc6_ = this.§<!K§.getValue() / _loc4_ * 2;
            if(_loc4_ <= 0)
            {
               _loc6_ = 1;
            }
            this.§ I§ = §@7§.§@6§.§3!%§(this,{"mNewScoreCounter":this.§<!K§.getValue()},{"mNewScoreCounter":0},_loc6_);
            this.§ I§.onComplete = this.§<!F§;
            this.§ I§.play();
            _loc7_ = this.§"!M§();
            _loc2_ = (§]F§.getItemByName("MovieClip_StarLeft") as §9O§).x + (§]F§.getItemByName("Container_LevelEndStripe") as §4!=§).x;
            _loc3_ = (§]F§.getItemByName("MovieClip_StarLeft") as §9O§).y + (§]F§.getItemByName("Container_LevelEndStripe") as §4!=§).y;
            this.§2i§ = new §9!C§(AngryBirdsFP11.screenWidth,AngryBirdsFP11.screenHeight,_loc2_,_loc3_,§9!C§.§0T§,§9!C§.§9!H§,_loc7_);
            §]F§.addChild(this.§2i§);
            this.§]6§.push(this.§2i§);
         }
         else if(this.§<!K§.getValue() >= _loc5_ && (§]F§.getItemByName("MovieClip_StarCenter") as §9O§).mClip.currentLabel == "UnLit")
         {
            _loc8_ = this.§#!"§();
            _loc2_ = (§]F§.getItemByName("MovieClip_StarCenter") as §9O§).x + (§]F§.getItemByName("Container_LevelEndStripe") as §4!=§).x;
            _loc3_ = (§]F§.getItemByName("MovieClip_StarCenter") as §9O§).y + (§]F§.getItemByName("Container_LevelEndStripe") as §4!=§).y;
            this.§2i§ = new §9!C§(AngryBirdsFP11.screenWidth,AngryBirdsFP11.screenHeight,_loc2_,_loc3_,§9!C§.§>!9§,§9!C§.§9!H§,_loc8_);
            §]F§.addChild(this.§2i§);
            this.§]6§.push(this.§2i§);
         }
         else if(this.§<!K§.getValue() >= _loc4_ && (§]F§.getItemByName("MovieClip_StarRight") as §9O§).mClip.currentLabel == "UnLit")
         {
            this.§^!%§ = true;
            _loc9_ = this.§%!2§();
            _loc2_ = (§]F§.getItemByName("MovieClip_StarRight") as §9O§).x + (§]F§.getItemByName("Container_LevelEndStripe") as §4!=§).x;
            _loc3_ = (§]F§.getItemByName("MovieClip_StarRight") as §9O§).y + (§]F§.getItemByName("Container_LevelEndStripe") as §4!=§).y;
            this.§2i§ = new §9!C§(AngryBirdsFP11.screenWidth,AngryBirdsFP11.screenHeight,_loc2_,_loc3_,§9!C§.§=0§,§9!C§.§9!H§,_loc9_);
            §]F§.addChild(this.§2i§);
            this.§]6§.push(this.§2i§);
         }
         else if(!this.§7!9§)
         {
            this.§7!9§ = true;
         }
         else
         {
            this.§1_§.stop();
            if(this.§6g§ && !this.§%!>§)
            {
               (§]F§.getItemByName("MovieClip_NewHighScoreBadge") as §9O§).setVisibility(true);
            }
            else
            {
               (§]F§.getItemByName("MovieClip_NewHighScoreBadge") as §9O§).setVisibility(false);
            }
            this.§0a§ = §@7§.§@6§.§3!%§((§]F§.getItemByName("MovieClip_NewHighScoreBadge") as §9O§).mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":7,
               "scaleY":7
            },0.1);
            this.§0a§.onComplete = this.onBadgeLanded;
            this.§0a§.play();
         }
         ++this.§>!5§;
      }
      
      protected function §"!M§() : Boolean
      {
         §,!F§.§;v§("Hiscore_Star_Splash1",§`!@§);
         (§]F§.getItemByName("MovieClip_StarLeft") as §9O§).mClip.gotoAndStop("Lit");
         return false;
      }
      
      protected function §#!"§() : Boolean
      {
         §,!F§.§;v§("Hiscore_Star_Splash2",§`!@§);
         (§]F§.getItemByName("MovieClip_StarCenter") as §9O§).mClip.gotoAndStop("Lit");
         return false;
      }
      
      protected function §%!2§() : Boolean
      {
         §,!F§.§;v§("Hiscore_Star_Splash3",§`!@§);
         (§]F§.getItemByName("MovieClip_StarRight") as §9O§).mClip.gotoAndStop("Lit");
         return false;
      }
      
      private function §<!F§() : void
      {
         §,!F§.§@!9§(§4]§);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:§9!C§ = null;
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §1Q§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         §]F§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScore");
         §]F§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScoreEffects");
         for each(_loc3_ in this.§]6§)
         {
            _loc3_.update(param1);
         }
         if(this.§1!"§ > -1)
         {
            this.§1C§(param1);
         }
         if(mNextState.length > 0)
         {
            §=w§.§ o§.clearLevel();
            return §1Q§.STATE_STATUS_COMPLETED;
         }
         return §1Q§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§`U§();
         this.§1!"§ = 0;
         this.mNewScoreCounter = 0;
         if(this.§ I§)
         {
            this.§ I§.stop();
            this.§ I§ = null;
         }
         if(this.§0a§)
         {
            this.§0a§.stop();
            this.§0a§ = null;
         }
         §,!F§.§@!9§(§4]§);
         this.setButtonStates(§0K§.COMPONENT_STATE_ACTIVE_DEFAULT);
         §]F§.setText("0","TextField_LevelEndScore");
         §]F§.setText("0","TextField_LevelEndScoreEffects");
         if(this.§+f§)
         {
            if(§]F§.movieClip.contains(this.§+f§))
            {
               §]F§.movieClip.removeChild(this.§+f§);
            }
            this.§+f§.clean();
            this.§+f§ = null;
         }
      }
      
      protected function setButtonStates(param1:String) : void
      {
         (§]F§.getItemByName("Button_Menu") as §7-§).setComponentVisualState(param1);
         (§]F§.getItemByName("Button_Replay") as §7-§).setComponentVisualState(param1);
         (§]F§.getItemByName("Button_NextLevel") as §7-§).setComponentVisualState(param1);
         (§]F§.getItemByName("Button_CutScene") as §7-§).setComponentVisualState(param1);
      }
      
      private function §`U§() : void
      {
         var splash:§9!C§ = null;
         if(this.§1_§)
         {
            this.§1_§.stop();
            try
            {
               this.§1_§.removeEventListener(TimerEvent.TIMER,this.§0!!§);
            }
            catch(e:Error)
            {
            }
         }
         for each(splash in this.§]6§)
         {
            if(§]F§.contains(splash))
            {
               §]F§.removeChild(splash);
            }
            splash.clean();
         }
         this.§]6§ = new Vector.<§9!C§>();
         this.hideBestScoreTexts();
      }
      
      protected function hideBestScoreTexts() : void
      {
         (§]F§.getItemByName("TextField_BestScore") as §`a§).setVisibility(false);
         (§]F§.getItemByName("MovieClip_BestScoreStars") as §9O§).setVisibility(false);
         (§]F§.getItemByName("TextField_NewHighScore") as §`a§).setVisibility(false);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      protected function §@a§() : void
      {
         §^!K§.§+!4§();
         mNextState = this.§`!A§();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§-P§) : void
      {
         var _loc4_:String = null;
         switch(param2)
         {
            case "NEXT_LEVEL":
               this.§@a§();
               break;
            case "REPLAY":
               §^!K§.§@!<§();
               mNextState = this.§@!5§();
               break;
            case "WATCH_REPLAY":
               §^!K§.§@!<§();
               mNextState = this.§@!5§();
               if(_loc4_ = §=w§.§ o§.§>y§())
               {
                  §=w§.§ o§.§8U§(_loc4_);
                  break;
               }
               break;
            case "MENU":
               §,!F§.§?X§();
               mNextState = this.§6!9§();
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§ y§.§-!$§();
         }
      }
      
      protected function §@!5§() : String
      {
         return §^!K§.§>9§;
      }
      
      protected function §`!A§() : String
      {
         return StateCutScene.§>9§;
      }
      
      public function §6!9§() : String
      {
         return §6!@§.§>9§;
      }
   }
}
