package §8;§
{
   import §#!?§.§ !4§;
   import §#!?§.§49§;
   import §%!;§.§!L§;
   import §+y§.§3V§;
   import §2S§.§,!;§;
   import §2S§.§<!K§;
   import §7!!§.§,c§;
   import §7!!§.§<]§;
   import §9!0§.§3!2§;
   import §9c§.§,x§;
   import §9c§.§6P§;
   import §<!F§.§5!+§;
   import §=!H§.§9V§;
   import §=!H§.§=<§;
   import §=!H§.§[R§;
   import §=!H§.§`S§;
   import §?!;§.§6H§;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §9h§ extends §!L§
   {
      
      public static const §"Z§:String = "LevelEndStateRio";
      
      public static const §[?§:Number = 30;
      
      protected static const §&o§:String = "ScoreLoopCountChannel";
      
      protected static const §"!2§:String = "EndScreenEffectChannel";
       
      
      private var §@$§:§ !4§;
      
      private var §5!9§:Number;
      
      private var §?f§:Number = 0.0;
      
      private var §3p§:Number = 0.0;
      
      private var §6!,§:Boolean = false;
      
      private var §&!#§:Timer;
      
      private var §=]§:§,c§;
      
      protected var §[!1§:Array;
      
      protected var § !<§:§<]§;
      
      protected var §4x§:Vector.<§<]§>;
      
      public var mNewScoreCounter:int;
      
      private var §'&§:int;
      
      private var §[w§:Boolean;
      
      protected var §3m§:Boolean;
      
      private var §-r§:§3!2§;
      
      protected var §,!4§:Boolean;
      
      private var §@!'§:§ !4§;
      
      protected var §@!M§:Boolean;
      
      protected var §,R§:int;
      
      public function §9h§(param1:Boolean = false, param2:String = "LevelEndStateRio")
      {
         this.§[!1§ = [];
         this.§-r§ = new §3!2§();
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §>2§ = new §<!K§(this);
         §>2§.init(this.getViewXML());
         this.initButtonDefaultPositions();
         this.§4x§ = new Vector.<§<]§>();
         §3V§.§?L§(§&o§,1,1);
         §3V§.§?L§(§"!2§,3,1);
      }
      
      protected function initButtonDefaultPositions() : void
      {
         this.§[!1§.push((§>2§.getItemByName("Button_Menu") as §=<§).x);
         this.§[!1§.push((§>2§.getItemByName("Button_Replay") as §=<§).x);
         this.§[!1§.push((§>2§.getItemByName("Button_NextLevel") as §=<§).x);
         this.§[!1§.push((§>2§.getItemByName("Button_CutScene") as §=<§).x);
      }
      
      protected function getViewXML() : XML
      {
         return §,!;§.§2o§.Views.View_LevelEndRio[0];
      }
      
      protected function showButtonsCutScene() : void
      {
         if(!AngryBirdsFP11.§^O§.isLevelPassed(§6H§.§"Q§))
         {
            (§>2§.getItemByName("Button_Menu") as §=<§).setVisibility(false);
            (§>2§.getItemByName("Button_Replay") as §=<§).setVisibility(true);
            (§>2§.getItemByName("Button_NextLevel") as §=<§).setVisibility(false);
            (§>2§.getItemByName("Button_CutScene") as §=<§).setVisibility(true);
            (§>2§.getItemByName("Button_Replay") as §=<§).x = this.§[!1§[0] + Math.abs(this.§[!1§[1] - this.§[!1§[0]) / 2;
            (§>2§.getItemByName("Button_CutScene") as §=<§).x = this.§[!1§[1] + Math.abs(this.§[!1§[2] - this.§[!1§[1]) / 2;
         }
         else
         {
            (§>2§.getItemByName("Button_Menu") as §=<§).setVisibility(true);
            (§>2§.getItemByName("Button_Replay") as §=<§).setVisibility(true);
            (§>2§.getItemByName("Button_NextLevel") as §=<§).setVisibility(false);
            (§>2§.getItemByName("Button_CutScene") as §=<§).setVisibility(true);
            (§>2§.getItemByName("Button_Menu") as §=<§).x = this.§[!1§[0];
            (§>2§.getItemByName("Button_Replay") as §=<§).x = this.§[!1§[1];
            (§>2§.getItemByName("Button_CutScene") as §=<§).x = this.§[!1§[2];
         }
      }
      
      protected function showButtonsNormal() : void
      {
         (§>2§.getItemByName("Button_Menu") as §=<§).setVisibility(true);
         (§>2§.getItemByName("Button_Replay") as §=<§).setVisibility(true);
         (§>2§.getItemByName("Button_CutScene") as §=<§).setVisibility(false);
         if(§6H§.§ O§())
         {
            (§>2§.getItemByName("Button_NextLevel") as §=<§).setVisibility(true);
            (§>2§.getItemByName("Button_Menu") as §=<§).x = this.§[!1§[0];
            (§>2§.getItemByName("Button_Replay") as §=<§).x = this.§[!1§[1];
            (§>2§.getItemByName("Button_NextLevel") as §=<§).x = this.§[!1§[2];
         }
         else
         {
            (§>2§.getItemByName("Button_NextLevel") as §=<§).setVisibility(false);
            (§>2§.getItemByName("Button_Menu") as §=<§).x = this.§[!1§[0] + Math.abs(this.§[!1§[1] - this.§[!1§[0]) / 2;
            (§>2§.getItemByName("Button_Replay") as §=<§).x = this.§[!1§[1] + Math.abs(this.§[!1§[2] - this.§[!1§[1]) / 2;
         }
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§@!M§ = false;
         §5!+§.pause();
         this.§=]§ = new §,c§(0,0,0,0);
         §>2§.movieClip.addChildAt(this.§=]§,§>2§.movieClip.numChildren - 1);
         if(§6H§.§'T§())
         {
            this.showButtonsCutScene();
         }
         else
         {
            this.showButtonsNormal();
         }
         this.mNewScoreCounter = 0;
         this.§[w§ = false;
         §3V§.playSound("LevelCompletedTheme1");
         this.§=]§.fadeToAlpha(0.7);
         this.§?f§ = 0;
         this.§3p§ = 0;
         this.§^c§();
      }
      
      private function §^c§() : void
      {
         this.§3m§ = false;
         this.setScoreData();
         this.§&!#§ = new Timer(500);
         this.§'&§ = 0;
         this.§&!#§.addEventListener(TimerEvent.TIMER,this.§^]§);
         this.§&!#§.start();
      }
      
      protected function setMightyEagleFeather() : void
      {
         if(AngryBirdsFP11.§^O§.§#!@§(§6H§.§"Q§) == 100)
         {
            (§>2§.getItemByName("MovieClip_ResultMEFeather") as §[R§).mClip.gotoAndStop("On");
         }
         else
         {
            (§>2§.getItemByName("MovieClip_ResultMEFeather") as §[R§).mClip.gotoAndStop("Off");
         }
      }
      
      protected function setScoreStars(param1:int, param2:int) : void
      {
         if(this.§,!4§)
         {
            param2 = param1;
            AngryBirdsFP11.§^O§.§9!;§(§6H§.§"Q§,param2);
            §>2§.setText("New Highscore!","TextField_BestScore");
         }
         else
         {
            §>2§.setText("Best " + param2.toString(),"TextField_BestScore");
            this.§,R§ = §6H§.§ !J§(§6H§.§"Q§,param2);
            switch(this.§,R§)
            {
               case 1:
                  (§>2§.getItemByName("MovieClip_BestScoreStars") as §[R§).§3A§("OneStar");
                  break;
               case 2:
                  (§>2§.getItemByName("MovieClip_BestScoreStars") as §[R§).§3A§("TwoStar");
                  break;
               case 3:
                  (§>2§.getItemByName("MovieClip_BestScoreStars") as §[R§).§3A§("ThreeStar");
            }
         }
      }
      
      protected function setScoreData() : void
      {
         var _loc1_:int = AngryBirdsFP11.§^O§.§=%§(§6H§.§"Q§);
         var _loc2_:int = §5!+§.controller.getScore();
         this.§,!4§ = _loc2_ > _loc1_;
         this.setScoreStars(_loc2_,_loc1_);
         this.setMightyEagleFeather();
         var _loc3_:int = §5!+§.controller.getEagleScore();
         var _loc4_:int = AngryBirdsFP11.§^O§.§#!@§(§6H§.§"Q§);
         var _loc5_:*;
         if(_loc5_ = _loc3_ > _loc4_)
         {
            _loc4_ = _loc3_;
            AngryBirdsFP11.§^O§.§4`§(§6H§.§"Q§,_loc4_);
         }
         var _loc6_:int = AngryBirdsFP11.§^O§.§'7§(§6H§.§"Q§,_loc2_);
         (§>2§.getItemByName("MovieClip_NewHighScoreBadge") as §[R§).setVisibility(false);
         (§>2§.getItemByName("MovieClip_StarLeft") as §[R§).mClip.gotoAndStop("UnLit");
         (§>2§.getItemByName("MovieClip_StarCenter") as §[R§).mClip.gotoAndStop("UnLit");
         (§>2§.getItemByName("MovieClip_StarRight") as §[R§).mClip.gotoAndStop("UnLit");
      }
      
      protected function onBadgeLanded() : void
      {
         if(this.§,!4§)
         {
            §3V§.playSound("Hiscore_Badge",§"!2§);
            §>2§.setText("New Highscore!","TextField_NewHighScore");
            (§>2§.getItemByName("TextField_NewHighScore") as §`S§).setVisibility(true);
            (§>2§.getItemByName("MovieClip_BestScoreStars") as §[R§).setVisibility(false);
            this.§if §();
         }
         else
         {
            (§>2§.getItemByName("TextField_BestScore") as §`S§).setVisibility(true);
            (§>2§.getItemByName("MovieClip_BestScoreStars") as §[R§).setVisibility(true);
         }
      }
      
      protected function §if §() : void
      {
         this.§?f§ = 0;
         this.§3p§ = 0;
         this.§5!9§ = §[?§;
      }
      
      private function §"$§(param1:Number) : void
      {
         (§>2§.getItemByName("Container_LevelEndStripe") as §9V§).x = (§>2§.getItemByName("Container_LevelEndStripe") as §9V§).x - this.§?f§;
         (§>2§.getItemByName("Container_LevelEndStripe") as §9V§).y = (§>2§.getItemByName("Container_LevelEndStripe") as §9V§).y - this.§3p§;
         if(this.§5!9§ > 0)
         {
            this.§?f§ = (Math.random() - 0.5) * (this.§5!9§ / §[?§) * 20;
            this.§3p§ = (Math.random() - 0.5) * (this.§5!9§ / §[?§) * 20;
            (§>2§.getItemByName("Container_LevelEndStripe") as §9V§).x = (§>2§.getItemByName("Container_LevelEndStripe") as §9V§).x + this.§?f§;
            (§>2§.getItemByName("Container_LevelEndStripe") as §9V§).y = (§>2§.getItemByName("Container_LevelEndStripe") as §9V§).y + this.§3p§;
         }
         else
         {
            this.§5!9§ = -1;
            this.shakingOver();
            this.§?f§ = 0;
            this.§3p§ = 0;
         }
         this.§5!9§ -= param1 / 10;
      }
      
      protected function shakingOver() : void
      {
      }
      
      private function §^]§(param1:TimerEvent) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc4_:Number = §6H§.§,!C§(§6H§.§"Q§).§-!K§;
         var _loc5_:Number = §6H§.§,!C§(§6H§.§"Q§).§<!,§;
         if((§>2§.getItemByName("MovieClip_StarLeft") as §[R§).mClip.currentLabel == "UnLit")
         {
            §3V§.playSound("Hiscore_Count",§&o§,100);
            §3V§.playSound("Hiscore_Star_Splash1",§"!2§);
            this.§&!#§.delay = 1000;
            this.§-r§.assign(§5!+§.controller.getScore());
            _loc6_ = this.§-r§.getValue() / _loc4_ * 2;
            if(_loc4_ <= 0)
            {
               _loc6_ = 1;
            }
            this.§@!'§ = §49§.§&y§.§=!3§(this,{"mNewScoreCounter":this.§-r§.getValue()},{"mNewScoreCounter":0},_loc6_);
            this.§@!'§.onComplete = this.§`!6§;
            this.§@!'§.play();
            (§>2§.getItemByName("MovieClip_StarLeft") as §[R§).mClip.gotoAndStop("Lit");
            _loc2_ = (§>2§.getItemByName("MovieClip_StarLeft") as §[R§).x + (§>2§.getItemByName("Container_LevelEndStripe") as §9V§).x;
            _loc3_ = (§>2§.getItemByName("MovieClip_StarLeft") as §[R§).y + (§>2§.getItemByName("Container_LevelEndStripe") as §9V§).y;
            this.§ !<§ = new §<]§(AngryBirdsFP11.§<§,AngryBirdsFP11.§0O§,_loc2_,_loc3_,§<]§.§3P§);
            §>2§.addChild(this.§ !<§);
            this.§4x§.push(this.§ !<§);
         }
         else if(this.§-r§.getValue() >= _loc5_ && (§>2§.getItemByName("MovieClip_StarCenter") as §[R§).mClip.currentLabel == "UnLit")
         {
            §3V§.playSound("Hiscore_Star_Splash2",§"!2§);
            (§>2§.getItemByName("MovieClip_StarCenter") as §[R§).mClip.gotoAndStop("Lit");
            _loc2_ = (§>2§.getItemByName("MovieClip_StarCenter") as §[R§).x + (§>2§.getItemByName("Container_LevelEndStripe") as §9V§).x;
            _loc3_ = (§>2§.getItemByName("MovieClip_StarCenter") as §[R§).y + (§>2§.getItemByName("Container_LevelEndStripe") as §9V§).y;
            this.§ !<§ = new §<]§(AngryBirdsFP11.§<§,AngryBirdsFP11.§0O§,_loc2_,_loc3_,§<]§.§[p§);
            §>2§.addChild(this.§ !<§);
            this.§4x§.push(this.§ !<§);
         }
         else if(this.§-r§.getValue() >= _loc4_ && (§>2§.getItemByName("MovieClip_StarRight") as §[R§).mClip.currentLabel == "UnLit")
         {
            this.§@!M§ = true;
            §3V§.playSound("Hiscore_Star_Splash3",§"!2§);
            (§>2§.getItemByName("MovieClip_StarRight") as §[R§).mClip.gotoAndStop("Lit");
            _loc2_ = (§>2§.getItemByName("MovieClip_StarRight") as §[R§).x + (§>2§.getItemByName("Container_LevelEndStripe") as §9V§).x;
            _loc3_ = (§>2§.getItemByName("MovieClip_StarRight") as §[R§).y + (§>2§.getItemByName("Container_LevelEndStripe") as §9V§).y;
            this.§ !<§ = new §<]§(AngryBirdsFP11.§<§,AngryBirdsFP11.§0O§,_loc2_,_loc3_,§<]§.§]!!§);
            §>2§.addChild(this.§ !<§);
            this.§4x§.push(this.§ !<§);
         }
         else if(!this.§[w§)
         {
            this.§[w§ = true;
         }
         else
         {
            this.§&!#§.stop();
            if(this.§,!4§ && !this.§3m§)
            {
               (§>2§.getItemByName("MovieClip_NewHighScoreBadge") as §[R§).setVisibility(true);
            }
            else
            {
               (§>2§.getItemByName("MovieClip_NewHighScoreBadge") as §[R§).setVisibility(false);
            }
            this.§@$§ = §49§.§&y§.§=!3§((§>2§.getItemByName("MovieClip_NewHighScoreBadge") as §[R§).mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":7,
               "scaleY":7
            },0.1);
            this.§@$§.onComplete = this.onBadgeLanded;
            this.§@$§.play();
         }
         ++this.§'&§;
      }
      
      private function §`!6§() : void
      {
         §3V§.§5!A§(§&o§);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:§<]§ = null;
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §!L§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         §>2§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScore");
         §>2§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScoreEffects");
         for each(_loc3_ in this.§4x§)
         {
            _loc3_.update(param1);
         }
         if(this.§5!9§ > -1)
         {
            this.§"$§(param1);
         }
         if(mNextState.length > 0)
         {
            §5!+§.§6!§.clearLevel();
            return §!L§.STATE_STATUS_COMPLETED;
         }
         return §!L§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§]!>§();
         this.§5!9§ = 0;
         this.mNewScoreCounter = 0;
         if(this.§@!'§)
         {
            this.§@!'§.stop();
            this.§@!'§ = null;
         }
         if(this.§@$§)
         {
            this.§@$§.stop();
            this.§@$§ = null;
         }
         §3V§.§5!A§(§&o§);
         this.setButtonStates(§6P§.COMPONENT_STATE_ACTIVE_DEFAULT);
         §>2§.setText("0","TextField_LevelEndScore");
         §>2§.setText("0","TextField_LevelEndScoreEffects");
         if(this.§=]§)
         {
            if(§>2§.movieClip.contains(this.§=]§))
            {
               §>2§.movieClip.removeChild(this.§=]§);
            }
            this.§=]§.clean();
            this.§=]§ = null;
         }
      }
      
      protected function setButtonStates(param1:String) : void
      {
         (§>2§.getItemByName("Button_Menu") as §=<§).setComponentVisualState(param1);
         (§>2§.getItemByName("Button_Replay") as §=<§).setComponentVisualState(param1);
         (§>2§.getItemByName("Button_NextLevel") as §=<§).setComponentVisualState(param1);
         (§>2§.getItemByName("Button_CutScene") as §=<§).setComponentVisualState(param1);
      }
      
      private function §]!>§() : void
      {
         var splash:§<]§ = null;
         if(this.§&!#§)
         {
            this.§&!#§.stop();
            try
            {
               this.§&!#§.removeEventListener(TimerEvent.TIMER,this.§^]§);
            }
            catch(e:Error)
            {
            }
         }
         for each(splash in this.§4x§)
         {
            if(§>2§.contains(splash))
            {
               §>2§.removeChild(splash);
            }
            splash.clean();
         }
         this.§4x§ = new Vector.<§<]§>();
         this.hideBestScoreTexts();
      }
      
      protected function hideBestScoreTexts() : void
      {
         (§>2§.getItemByName("TextField_BestScore") as §`S§).setVisibility(false);
         (§>2§.getItemByName("MovieClip_BestScoreStars") as §[R§).setVisibility(false);
         (§>2§.getItemByName("TextField_NewHighScore") as §`S§).setVisibility(false);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      protected function §0z§() : void
      {
         §8^§.§&!O§();
         mNextState = this.§9A§();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§,x§) : void
      {
         var _loc4_:String = null;
         switch(param2)
         {
            case "NEXT_LEVEL":
               this.§0z§();
               break;
            case "REPLAY":
               §8^§.§1!"§();
               mNextState = this.§ !7§();
               break;
            case "WATCH_REPLAY":
               §8^§.§1!"§();
               mNextState = this.§ !7§();
               if(_loc4_ = §5!+§.§6!§.§;!§())
               {
                  §5!+§.§6!§.§[H§(_loc4_);
               }
               break;
            case "MENU":
               §3V§.§0x§();
               mNextState = this.§&!$§();
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§"Y§.§4%§();
         }
      }
      
      protected function § !7§() : String
      {
         return §8^§.§"Z§;
      }
      
      protected function §9A§() : String
      {
         return StateCutScene.§"Z§;
      }
      
      public function §&!$§() : String
      {
         return §!!6§.§"Z§;
      }
   }
}
