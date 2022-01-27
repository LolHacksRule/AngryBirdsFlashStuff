package §=!0§
{
   import §!t§.§5b§;
   import §!t§.§;1§;
   import §!t§.§>B§;
   import §!t§.§?g§;
   import §#@§.§,k§;
   import §#@§.§9Y§;
   import §,!1§.§]e§;
   import §5F§.§+!O§;
   import §5F§.§3^§;
   import §6!L§.§&u§;
   import §=z§.§0!E§;
   import §>!7§.§"Q§;
   import §>!7§.§`d§;
   import §@!M§.§!l§;
   import §@!M§.§5!&§;
   import §^w§.§-!,§;
   import §`!8§.§7!G§;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §5O§ extends §-!,§
   {
      
      public static const §@§:String = "LevelEndStateRio";
      
      public static const §[!@§:Number = 30;
      
      protected static const §<!O§:String = "ScoreLoopCountChannel";
      
      protected static const §>%§:String = "EndScreenEffectChannel";
       
      
      private var §6!&§:§!l§;
      
      private var §6e§:Number;
      
      private var §%4§:Number = 0.0;
      
      private var §+6§:Number = 0.0;
      
      private var §[!F§:Boolean = false;
      
      private var §`p§:Timer;
      
      private var §9!L§:§,k§;
      
      protected var §]§:Array;
      
      protected var §0w§:§9Y§;
      
      protected var §#!1§:Vector.<§9Y§>;
      
      public var mNewScoreCounter:int;
      
      private var §?8§:int;
      
      private var §@W§:Boolean;
      
      protected var §#!9§:Boolean;
      
      private var §60§:§7!G§;
      
      protected var §-p§:Boolean;
      
      private var §3!O§:§!l§;
      
      protected var §7%§:Boolean;
      
      protected var §&S§:int;
      
      public function §5O§(param1:Boolean = false, param2:String = "LevelEndStateRio")
      {
         this.§]§ = [];
         this.§60§ = new §7!G§();
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §;I§ = new §"Q§(this);
         §;I§.init(this.getViewXML());
         this.initButtonDefaultPositions();
         this.§#!1§ = new Vector.<§9Y§>();
         §]e§.§#x§(§<!O§,1,1);
         §]e§.§#x§(§>%§,3,1);
      }
      
      protected function initButtonDefaultPositions() : void
      {
         this.§]§.push((§;I§.getItemByName("Button_Menu") as §5b§).x);
         this.§]§.push((§;I§.getItemByName("Button_Replay") as §5b§).x);
         this.§]§.push((§;I§.getItemByName("Button_NextLevel") as §5b§).x);
         this.§]§.push((§;I§.getItemByName("Button_CutScene") as §5b§).x);
      }
      
      protected function getViewXML() : XML
      {
         return §`d§.§8?§.Views.View_LevelEndRio[0];
      }
      
      protected function showButtonsCutScene() : void
      {
         if(!AngryBirdsFP11.§5@§.isLevelPassed(§&u§.§ !+§))
         {
            (§;I§.getItemByName("Button_Menu") as §5b§).setVisibility(false);
            (§;I§.getItemByName("Button_Replay") as §5b§).setVisibility(true);
            (§;I§.getItemByName("Button_NextLevel") as §5b§).setVisibility(false);
            (§;I§.getItemByName("Button_CutScene") as §5b§).setVisibility(true);
            (§;I§.getItemByName("Button_Replay") as §5b§).x = this.§]§[0] + Math.abs(this.§]§[1] - this.§]§[0]) / 2;
            (§;I§.getItemByName("Button_CutScene") as §5b§).x = this.§]§[1] + Math.abs(this.§]§[2] - this.§]§[1]) / 2;
         }
         else
         {
            (§;I§.getItemByName("Button_Menu") as §5b§).setVisibility(true);
            (§;I§.getItemByName("Button_Replay") as §5b§).setVisibility(true);
            (§;I§.getItemByName("Button_NextLevel") as §5b§).setVisibility(false);
            (§;I§.getItemByName("Button_CutScene") as §5b§).setVisibility(true);
            (§;I§.getItemByName("Button_Menu") as §5b§).x = this.§]§[0];
            (§;I§.getItemByName("Button_Replay") as §5b§).x = this.§]§[1];
            (§;I§.getItemByName("Button_CutScene") as §5b§).x = this.§]§[2];
         }
      }
      
      protected function showButtonsNormal() : void
      {
         (§;I§.getItemByName("Button_Menu") as §5b§).setVisibility(true);
         (§;I§.getItemByName("Button_Replay") as §5b§).setVisibility(true);
         (§;I§.getItemByName("Button_CutScene") as §5b§).setVisibility(false);
         if(§&u§.§7E§())
         {
            (§;I§.getItemByName("Button_NextLevel") as §5b§).setVisibility(true);
            (§;I§.getItemByName("Button_Menu") as §5b§).x = this.§]§[0];
            (§;I§.getItemByName("Button_Replay") as §5b§).x = this.§]§[1];
            (§;I§.getItemByName("Button_NextLevel") as §5b§).x = this.§]§[2];
         }
         else
         {
            (§;I§.getItemByName("Button_NextLevel") as §5b§).setVisibility(false);
            (§;I§.getItemByName("Button_Menu") as §5b§).x = this.§]§[0] + Math.abs(this.§]§[1] - this.§]§[0]) / 2;
            (§;I§.getItemByName("Button_Replay") as §5b§).x = this.§]§[1] + Math.abs(this.§]§[2] - this.§]§[1]) / 2;
         }
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§7%§ = false;
         §0!E§.pause();
         this.§9!L§ = new §,k§(0,0,0,0);
         §;I§.movieClip.addChildAt(this.§9!L§,§;I§.movieClip.numChildren - 1);
         if(§&u§.§0!@§())
         {
            this.showButtonsCutScene();
         }
         else
         {
            this.showButtonsNormal();
         }
         this.mNewScoreCounter = 0;
         this.§@W§ = false;
         §]e§.playSound("LevelCompletedTheme1");
         this.§9!L§.fadeToAlpha(0.7);
         this.§%4§ = 0;
         this.§+6§ = 0;
         this.§9s§();
      }
      
      private function §9s§() : void
      {
         this.§#!9§ = false;
         this.setScoreData();
         this.§`p§ = new Timer(500);
         this.§?8§ = 0;
         this.§`p§.addEventListener(TimerEvent.TIMER,this.§4!8§);
         this.§`p§.start();
      }
      
      protected function setMightyEagleFeather() : void
      {
         if(AngryBirdsFP11.§5@§.§!W§(§&u§.§ !+§) == 100)
         {
            (§;I§.getItemByName("MovieClip_ResultMEFeather") as §?g§).mClip.gotoAndStop("On");
         }
         else
         {
            (§;I§.getItemByName("MovieClip_ResultMEFeather") as §?g§).mClip.gotoAndStop("Off");
         }
      }
      
      protected function setScoreStars(param1:int, param2:int) : void
      {
         if(this.§-p§)
         {
            param2 = param1;
            AngryBirdsFP11.§5@§.§,!7§(§&u§.§ !+§,param2);
            §;I§.setText("New Highscore!","TextField_BestScore");
         }
         else
         {
            §;I§.setText("Best " + param2.toString(),"TextField_BestScore");
            this.§&S§ = §&u§.§"h§(§&u§.§ !+§,param2);
            switch(this.§&S§)
            {
               case 1:
                  (§;I§.getItemByName("MovieClip_BestScoreStars") as §?g§).§+!L§("OneStar");
                  break;
               case 2:
                  (§;I§.getItemByName("MovieClip_BestScoreStars") as §?g§).§+!L§("TwoStar");
                  break;
               case 3:
                  (§;I§.getItemByName("MovieClip_BestScoreStars") as §?g§).§+!L§("ThreeStar");
            }
         }
      }
      
      protected function setScoreData() : void
      {
         var _loc1_:int = AngryBirdsFP11.§5@§.§<Q§(§&u§.§ !+§);
         var _loc2_:int = §0!E§.controller.getScore();
         this.§-p§ = _loc2_ > _loc1_;
         this.setScoreStars(_loc2_,_loc1_);
         this.setMightyEagleFeather();
         var _loc3_:int = §0!E§.controller.getEagleScore();
         var _loc4_:int = AngryBirdsFP11.§5@§.§!W§(§&u§.§ !+§);
         var _loc5_:*;
         if(_loc5_ = _loc3_ > _loc4_)
         {
            _loc4_ = _loc3_;
            AngryBirdsFP11.§5@§.§2,§(§&u§.§ !+§,_loc4_);
         }
         var _loc6_:int = AngryBirdsFP11.§5@§.§!T§(§&u§.§ !+§,_loc2_);
         (§;I§.getItemByName("MovieClip_NewHighScoreBadge") as §?g§).setVisibility(false);
         (§;I§.getItemByName("MovieClip_StarLeft") as §?g§).mClip.gotoAndStop("UnLit");
         (§;I§.getItemByName("MovieClip_StarCenter") as §?g§).mClip.gotoAndStop("UnLit");
         (§;I§.getItemByName("MovieClip_StarRight") as §?g§).mClip.gotoAndStop("UnLit");
      }
      
      protected function onBadgeLanded() : void
      {
         if(this.§-p§)
         {
            §]e§.playSound("Hiscore_Badge",§>%§);
            §;I§.setText("New Highscore!","TextField_NewHighScore");
            (§;I§.getItemByName("TextField_NewHighScore") as §>B§).setVisibility(true);
            (§;I§.getItemByName("MovieClip_BestScoreStars") as §?g§).setVisibility(false);
            this.§`2§();
         }
         else
         {
            (§;I§.getItemByName("TextField_BestScore") as §>B§).setVisibility(true);
            (§;I§.getItemByName("MovieClip_BestScoreStars") as §?g§).setVisibility(true);
         }
      }
      
      protected function §`2§() : void
      {
         this.§%4§ = 0;
         this.§+6§ = 0;
         this.§6e§ = §[!@§;
      }
      
      private function §0!"§(param1:Number) : void
      {
         (§;I§.getItemByName("Container_LevelEndStripe") as §;1§).x = (§;I§.getItemByName("Container_LevelEndStripe") as §;1§).x - this.§%4§;
         (§;I§.getItemByName("Container_LevelEndStripe") as §;1§).y = (§;I§.getItemByName("Container_LevelEndStripe") as §;1§).y - this.§+6§;
         if(this.§6e§ > 0)
         {
            this.§%4§ = (Math.random() - 0.5) * (this.§6e§ / §[!@§) * 20;
            this.§+6§ = (Math.random() - 0.5) * (this.§6e§ / §[!@§) * 20;
            (§;I§.getItemByName("Container_LevelEndStripe") as §;1§).x = (§;I§.getItemByName("Container_LevelEndStripe") as §;1§).x + this.§%4§;
            (§;I§.getItemByName("Container_LevelEndStripe") as §;1§).y = (§;I§.getItemByName("Container_LevelEndStripe") as §;1§).y + this.§+6§;
         }
         else
         {
            this.§6e§ = -1;
            this.shakingOver();
            this.§%4§ = 0;
            this.§+6§ = 0;
         }
         this.§6e§ -= param1 / 10;
      }
      
      protected function shakingOver() : void
      {
      }
      
      private function §4!8§(param1:TimerEvent) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc4_:Number = §&u§.§`!0§(§&u§.§ !+§).§#6§;
         var _loc5_:Number = §&u§.§`!0§(§&u§.§ !+§).§!p§;
         if((§;I§.getItemByName("MovieClip_StarLeft") as §?g§).mClip.currentLabel == "UnLit")
         {
            §]e§.playSound("Hiscore_Count",§<!O§,100);
            §]e§.playSound("Hiscore_Star_Splash1",§>%§);
            this.§`p§.delay = 1000;
            this.§60§.assign(§0!E§.controller.getScore());
            _loc6_ = this.§60§.getValue() / _loc4_ * 2;
            if(_loc4_ <= 0)
            {
               _loc6_ = 1;
            }
            this.§3!O§ = §5!&§.§@!&§.§9!4§(this,{"mNewScoreCounter":this.§60§.getValue()},{"mNewScoreCounter":0},_loc6_);
            this.§3!O§.onComplete = this.§,!%§;
            this.§3!O§.play();
            (§;I§.getItemByName("MovieClip_StarLeft") as §?g§).mClip.gotoAndStop("Lit");
            _loc2_ = (§;I§.getItemByName("MovieClip_StarLeft") as §?g§).x + (§;I§.getItemByName("Container_LevelEndStripe") as §;1§).x;
            _loc3_ = (§;I§.getItemByName("MovieClip_StarLeft") as §?g§).y + (§;I§.getItemByName("Container_LevelEndStripe") as §;1§).y;
            this.§0w§ = new §9Y§(AngryBirdsFP11.§1C§,AngryBirdsFP11.§3!§,_loc2_,_loc3_,§9Y§.§6[§);
            §;I§.addChild(this.§0w§);
            this.§#!1§.push(this.§0w§);
         }
         else if(this.§60§.getValue() >= _loc5_ && (§;I§.getItemByName("MovieClip_StarCenter") as §?g§).mClip.currentLabel == "UnLit")
         {
            §]e§.playSound("Hiscore_Star_Splash2",§>%§);
            (§;I§.getItemByName("MovieClip_StarCenter") as §?g§).mClip.gotoAndStop("Lit");
            _loc2_ = (§;I§.getItemByName("MovieClip_StarCenter") as §?g§).x + (§;I§.getItemByName("Container_LevelEndStripe") as §;1§).x;
            _loc3_ = (§;I§.getItemByName("MovieClip_StarCenter") as §?g§).y + (§;I§.getItemByName("Container_LevelEndStripe") as §;1§).y;
            this.§0w§ = new §9Y§(AngryBirdsFP11.§1C§,AngryBirdsFP11.§3!§,_loc2_,_loc3_,§9Y§.§>?§);
            §;I§.addChild(this.§0w§);
            this.§#!1§.push(this.§0w§);
         }
         else if(this.§60§.getValue() >= _loc4_ && (§;I§.getItemByName("MovieClip_StarRight") as §?g§).mClip.currentLabel == "UnLit")
         {
            this.§7%§ = true;
            §]e§.playSound("Hiscore_Star_Splash3",§>%§);
            (§;I§.getItemByName("MovieClip_StarRight") as §?g§).mClip.gotoAndStop("Lit");
            _loc2_ = (§;I§.getItemByName("MovieClip_StarRight") as §?g§).x + (§;I§.getItemByName("Container_LevelEndStripe") as §;1§).x;
            _loc3_ = (§;I§.getItemByName("MovieClip_StarRight") as §?g§).y + (§;I§.getItemByName("Container_LevelEndStripe") as §;1§).y;
            this.§0w§ = new §9Y§(AngryBirdsFP11.§1C§,AngryBirdsFP11.§3!§,_loc2_,_loc3_,§9Y§.§@!=§);
            §;I§.addChild(this.§0w§);
            this.§#!1§.push(this.§0w§);
         }
         else if(!this.§@W§)
         {
            this.§@W§ = true;
         }
         else
         {
            this.§`p§.stop();
            if(this.§-p§ && !this.§#!9§)
            {
               (§;I§.getItemByName("MovieClip_NewHighScoreBadge") as §?g§).setVisibility(true);
            }
            else
            {
               (§;I§.getItemByName("MovieClip_NewHighScoreBadge") as §?g§).setVisibility(false);
            }
            this.§6!&§ = §5!&§.§@!&§.§9!4§((§;I§.getItemByName("MovieClip_NewHighScoreBadge") as §?g§).mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":7,
               "scaleY":7
            },0.1);
            this.§6!&§.onComplete = this.onBadgeLanded;
            this.§6!&§.play();
         }
         ++this.§?8§;
      }
      
      private function §,!%§() : void
      {
         §]e§.§7&§(§<!O§);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:§9Y§ = null;
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §-!,§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         §;I§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScore");
         §;I§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScoreEffects");
         for each(_loc3_ in this.§#!1§)
         {
            _loc3_.update(param1);
         }
         if(this.§6e§ > -1)
         {
            this.§0!"§(param1);
         }
         if(mNextState.length > 0)
         {
            §0!E§.§9!B§.clearLevel();
            return §-!,§.STATE_STATUS_COMPLETED;
         }
         return §-!,§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§>U§();
         this.§6e§ = 0;
         this.mNewScoreCounter = 0;
         if(this.§3!O§)
         {
            this.§3!O§.stop();
            this.§3!O§ = null;
         }
         if(this.§6!&§)
         {
            this.§6!&§.stop();
            this.§6!&§ = null;
         }
         §]e§.§7&§(§<!O§);
         this.setButtonStates(§3^§.COMPONENT_STATE_ACTIVE_DEFAULT);
         §;I§.setText("0","TextField_LevelEndScore");
         §;I§.setText("0","TextField_LevelEndScoreEffects");
         if(this.§9!L§)
         {
            if(§;I§.movieClip.contains(this.§9!L§))
            {
               §;I§.movieClip.removeChild(this.§9!L§);
            }
            this.§9!L§.clean();
            this.§9!L§ = null;
         }
      }
      
      protected function setButtonStates(param1:String) : void
      {
         (§;I§.getItemByName("Button_Menu") as §5b§).setComponentVisualState(param1);
         (§;I§.getItemByName("Button_Replay") as §5b§).setComponentVisualState(param1);
         (§;I§.getItemByName("Button_NextLevel") as §5b§).setComponentVisualState(param1);
         (§;I§.getItemByName("Button_CutScene") as §5b§).setComponentVisualState(param1);
      }
      
      private function §>U§() : void
      {
         var splash:§9Y§ = null;
         if(this.§`p§)
         {
            this.§`p§.stop();
            try
            {
               this.§`p§.removeEventListener(TimerEvent.TIMER,this.§4!8§);
            }
            catch(e:Error)
            {
            }
         }
         for each(splash in this.§#!1§)
         {
            if(§;I§.contains(splash))
            {
               §;I§.removeChild(splash);
            }
            splash.clean();
         }
         this.§#!1§ = new Vector.<§9Y§>();
         this.hideBestScoreTexts();
      }
      
      protected function hideBestScoreTexts() : void
      {
         (§;I§.getItemByName("TextField_BestScore") as §>B§).setVisibility(false);
         (§;I§.getItemByName("MovieClip_BestScoreStars") as §?g§).setVisibility(false);
         (§;I§.getItemByName("TextField_NewHighScore") as §>B§).setVisibility(false);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      protected function §!G§() : void
      {
         §1!F§.§!<§();
         mNextState = this.§@Y§();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§+!O§) : void
      {
         var _loc4_:String = null;
         switch(param2)
         {
            case "NEXT_LEVEL":
               this.§!G§();
               break;
            case "REPLAY":
               §1!F§.§4W§();
               mNextState = this.§?!O§();
               break;
            case "WATCH_REPLAY":
               §1!F§.§4W§();
               mNextState = this.§?!O§();
               if(_loc4_ = §0!E§.§9!B§.§4"§())
               {
                  §0!E§.§9!B§.§"G§(_loc4_);
               }
               break;
            case "MENU":
               §]e§.§>$§();
               mNextState = this.§#!D§();
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§;!@§.§8N§();
         }
      }
      
      protected function §?!O§() : String
      {
         return §1!F§.§@§;
      }
      
      protected function §@Y§() : String
      {
         return StateCutScene.§@§;
      }
      
      public function §#!D§() : String
      {
         return §?!G§.§@§;
      }
   }
}
