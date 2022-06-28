package §>!A§
{
   import §"!&§.§#!,§;
   import §-!F§.§^h§;
   import §-!F§.§`!&§;
   import §4!H§.§?_§;
   import §5H§.§[k§;
   import §6J§.§5j§;
   import §87§.§1a§;
   import §87§.§<8§;
   import §<!G§.§!I§;
   import §<!G§.§^3§;
   import §@D§.§6I§;
   import §`F§.§,B§;
   import §`F§.§?!3§;
   import §class§.§3C§;
   import §class§.§3D§;
   import §class§.§?q§;
   import §class§.§`!6§;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §"'§ extends §#!,§
   {
      
      public static const §?x§:String = "LevelEndStateRio";
      
      public static const §'[§:Number = 30;
      
      protected static const §6'§:String = "ScoreLoopCountChannel";
      
      protected static const §=W§:String = "EndScreenEffectChannel";
       
      
      private var §?y§:§?!3§;
      
      private var §9!F§:Number;
      
      private var §;Y§:Number = 0.0;
      
      private var §4L§:Number = 0.0;
      
      private var §+o§:Boolean = false;
      
      private var §=z§:Timer;
      
      private var §<!4§:§<8§;
      
      protected var §5!"§:Array;
      
      protected var §?!"§:§1a§;
      
      protected var §;m§:Vector.<§1a§>;
      
      public var mNewScoreCounter:int;
      
      private var §66§:int;
      
      private var §6h§:Boolean;
      
      protected var §0A§:Boolean;
      
      private var §3f§:§?_§;
      
      protected var §>!<§:Boolean;
      
      private var §8!?§:§?!3§;
      
      protected var §<j§:Boolean;
      
      protected var §,0§:int;
      
      public function §"'§(param1:Boolean = false, param2:String = "LevelEndStateRio")
      {
         this.§5!"§ = [];
         this.§3f§ = new §?_§();
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §[=§ = new §^3§(this);
         §[=§.init(this.getViewXML());
         this.initButtonDefaultPositions();
         this.§;m§ = new Vector.<§1a§>();
         §6I§.§"!'§(§6'§,1,1);
         §6I§.§"!'§(§=W§,3,1);
      }
      
      protected function initButtonDefaultPositions() : void
      {
         this.§5!"§.push((§[=§.getItemByName("Button_Menu") as §?q§).x);
         this.§5!"§.push((§[=§.getItemByName("Button_Replay") as §?q§).x);
         this.§5!"§.push((§[=§.getItemByName("Button_NextLevel") as §?q§).x);
         this.§5!"§.push((§[=§.getItemByName("Button_CutScene") as §?q§).x);
      }
      
      protected function getViewXML() : XML
      {
         return §!I§.§7y§.Views.View_LevelEndRio[0];
      }
      
      protected function showButtonsCutScene() : void
      {
         if(!AngryBirdsFP11.sUserProgress.isLevelPassed(§5j§.§%V§))
         {
            (§[=§.getItemByName("Button_Menu") as §?q§).setVisibility(false);
            (§[=§.getItemByName("Button_Replay") as §?q§).setVisibility(true);
            (§[=§.getItemByName("Button_NextLevel") as §?q§).setVisibility(false);
            (§[=§.getItemByName("Button_CutScene") as §?q§).setVisibility(true);
            (§[=§.getItemByName("Button_Replay") as §?q§).x = this.§5!"§[0] + Math.abs(this.§5!"§[1] - this.§5!"§[0]) / 2;
            (§[=§.getItemByName("Button_CutScene") as §?q§).x = this.§5!"§[1] + Math.abs(this.§5!"§[2] - this.§5!"§[1]) / 2;
         }
         else
         {
            (§[=§.getItemByName("Button_Menu") as §?q§).setVisibility(true);
            (§[=§.getItemByName("Button_Replay") as §?q§).setVisibility(true);
            (§[=§.getItemByName("Button_NextLevel") as §?q§).setVisibility(false);
            (§[=§.getItemByName("Button_CutScene") as §?q§).setVisibility(true);
            (§[=§.getItemByName("Button_Menu") as §?q§).x = this.§5!"§[0];
            (§[=§.getItemByName("Button_Replay") as §?q§).x = this.§5!"§[1];
            (§[=§.getItemByName("Button_CutScene") as §?q§).x = this.§5!"§[2];
         }
      }
      
      protected function showButtonsNormal() : void
      {
         (§[=§.getItemByName("Button_Menu") as §?q§).setVisibility(true);
         (§[=§.getItemByName("Button_Replay") as §?q§).setVisibility(true);
         (§[=§.getItemByName("Button_CutScene") as §?q§).setVisibility(false);
         if(§5j§.§&1§())
         {
            (§[=§.getItemByName("Button_NextLevel") as §?q§).setVisibility(true);
            (§[=§.getItemByName("Button_Menu") as §?q§).x = this.§5!"§[0];
            (§[=§.getItemByName("Button_Replay") as §?q§).x = this.§5!"§[1];
            (§[=§.getItemByName("Button_NextLevel") as §?q§).x = this.§5!"§[2];
         }
         else
         {
            (§[=§.getItemByName("Button_NextLevel") as §?q§).setVisibility(false);
            (§[=§.getItemByName("Button_Menu") as §?q§).x = this.§5!"§[0] + Math.abs(this.§5!"§[1] - this.§5!"§[0]) / 2;
            (§[=§.getItemByName("Button_Replay") as §?q§).x = this.§5!"§[1] + Math.abs(this.§5!"§[2] - this.§5!"§[1]) / 2;
         }
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§<j§ = false;
         §[k§.pause();
         this.§<!4§ = new §<8§(0,0,0,0);
         §[=§.movieClip.addChildAt(this.§<!4§,§[=§.movieClip.numChildren - 1);
         if(§5j§.§!d§())
         {
            this.showButtonsCutScene();
         }
         else
         {
            this.showButtonsNormal();
         }
         this.mNewScoreCounter = 0;
         this.§6h§ = false;
         §6I§.§ ;§("LevelCompletedTheme1");
         this.§<!4§.§4J§(0.7);
         this.§;Y§ = 0;
         this.§4L§ = 0;
         this.§7c§();
      }
      
      private function §7c§() : void
      {
         this.§0A§ = false;
         this.setScoreData();
         this.§=z§ = new Timer(500);
         this.§66§ = 0;
         this.§=z§.addEventListener(TimerEvent.TIMER,this.§?!'§);
         this.§=z§.start();
      }
      
      protected function setMightyEagleFeather() : void
      {
         if(AngryBirdsFP11.sUserProgress.§ !&§(§5j§.§%V§) == 100)
         {
            (§[=§.getItemByName("MovieClip_ResultMEFeather") as §`!6§).mClip.gotoAndStop("On");
         }
         else
         {
            (§[=§.getItemByName("MovieClip_ResultMEFeather") as §`!6§).mClip.gotoAndStop("Off");
         }
      }
      
      protected function setScoreStars(param1:int, param2:int) : void
      {
         if(this.§>!<§)
         {
            param2 = param1;
            AngryBirdsFP11.sUserProgress.§1!%§(§5j§.§%V§,param2);
            §[=§.setText("New Highscore!","TextField_BestScore");
         }
         else
         {
            §[=§.setText("Best " + param2.toString(),"TextField_BestScore");
            this.§,0§ = §5j§.§"n§(§5j§.§%V§,param2);
            switch(this.§,0§)
            {
               case 1:
                  (§[=§.getItemByName("MovieClip_BestScoreStars") as §`!6§).§]?§("OneStar");
                  break;
               case 2:
                  (§[=§.getItemByName("MovieClip_BestScoreStars") as §`!6§).§]?§("TwoStar");
                  break;
               case 3:
                  (§[=§.getItemByName("MovieClip_BestScoreStars") as §`!6§).§]?§("ThreeStar");
            }
         }
      }
      
      protected function setScoreData() : void
      {
         var _loc1_:int = AngryBirdsFP11.sUserProgress.§ X§(§5j§.§%V§);
         var _loc2_:int = §[k§.controller.getScore();
         this.§>!<§ = _loc2_ > _loc1_;
         this.setScoreStars(_loc2_,_loc1_);
         this.setMightyEagleFeather();
         var _loc3_:int = §[k§.controller.getEagleScore();
         var _loc4_:int = AngryBirdsFP11.sUserProgress.§ !&§(§5j§.§%V§);
         var _loc5_:*;
         if(_loc5_ = _loc3_ > _loc4_)
         {
            _loc4_ = _loc3_;
            AngryBirdsFP11.sUserProgress.§]!'§(§5j§.§%V§,_loc4_);
         }
         var _loc6_:int = AngryBirdsFP11.sUserProgress.§7!"§(§5j§.§%V§,_loc2_);
         (§[=§.getItemByName("MovieClip_NewHighScoreBadge") as §`!6§).setVisibility(false);
         (§[=§.getItemByName("MovieClip_StarLeft") as §`!6§).mClip.gotoAndStop("UnLit");
         (§[=§.getItemByName("MovieClip_StarCenter") as §`!6§).mClip.gotoAndStop("UnLit");
         (§[=§.getItemByName("MovieClip_StarRight") as §`!6§).mClip.gotoAndStop("UnLit");
      }
      
      protected function onBadgeLanded() : void
      {
         if(this.§>!<§)
         {
            §6I§.§ ;§("Hiscore_Badge",§=W§);
            §[=§.setText("New Highscore!","TextField_NewHighScore");
            (§[=§.getItemByName("TextField_NewHighScore") as §3D§).setVisibility(true);
            (§[=§.getItemByName("MovieClip_BestScoreStars") as §`!6§).setVisibility(false);
            this.§[D§();
         }
         else
         {
            (§[=§.getItemByName("TextField_BestScore") as §3D§).setVisibility(true);
            (§[=§.getItemByName("MovieClip_BestScoreStars") as §`!6§).setVisibility(true);
         }
      }
      
      protected function §[D§() : void
      {
         this.§;Y§ = 0;
         this.§4L§ = 0;
         this.§9!F§ = §'[§;
      }
      
      private function §!z§(param1:Number) : void
      {
         (§[=§.getItemByName("Container_LevelEndStripe") as §3C§).x = (§[=§.getItemByName("Container_LevelEndStripe") as §3C§).x - this.§;Y§;
         (§[=§.getItemByName("Container_LevelEndStripe") as §3C§).y = (§[=§.getItemByName("Container_LevelEndStripe") as §3C§).y - this.§4L§;
         if(this.§9!F§ > 0)
         {
            this.§;Y§ = (Math.random() - 0.5) * (this.§9!F§ / §'[§) * 20;
            this.§4L§ = (Math.random() - 0.5) * (this.§9!F§ / §'[§) * 20;
            (§[=§.getItemByName("Container_LevelEndStripe") as §3C§).x = (§[=§.getItemByName("Container_LevelEndStripe") as §3C§).x + this.§;Y§;
            (§[=§.getItemByName("Container_LevelEndStripe") as §3C§).y = (§[=§.getItemByName("Container_LevelEndStripe") as §3C§).y + this.§4L§;
         }
         else
         {
            this.§9!F§ = -1;
            this.§ !0§();
            this.§;Y§ = 0;
            this.§4L§ = 0;
         }
         this.§9!F§ -= param1 / 10;
      }
      
      protected function § !0§() : void
      {
      }
      
      private function §?!'§(param1:TimerEvent) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc4_:Number = §5j§.§%!I§(§5j§.§%V§).§'T§;
         var _loc5_:Number = §5j§.§%!I§(§5j§.§%V§).§=N§;
         if((§[=§.getItemByName("MovieClip_StarLeft") as §`!6§).mClip.currentLabel == "UnLit")
         {
            §6I§.§ ;§("Hiscore_Count",§6'§,100);
            §6I§.§ ;§("Hiscore_Star_Splash1",§=W§);
            this.§=z§.delay = 1000;
            this.§3f§.assign(§[k§.controller.getScore());
            _loc6_ = this.§3f§.getValue() / _loc4_ * 2;
            if(_loc4_ <= 0)
            {
               _loc6_ = 1;
            }
            this.§8!?§ = §,B§.§^n§.§2E§(this,{"mNewScoreCounter":this.§3f§.getValue()},{"mNewScoreCounter":0},_loc6_);
            this.§8!?§.onComplete = this.§5R§;
            this.§8!?§.play();
            (§[=§.getItemByName("MovieClip_StarLeft") as §`!6§).mClip.gotoAndStop("Lit");
            _loc2_ = (§[=§.getItemByName("MovieClip_StarLeft") as §`!6§).x + (§[=§.getItemByName("Container_LevelEndStripe") as §3C§).x;
            _loc3_ = (§[=§.getItemByName("MovieClip_StarLeft") as §`!6§).y + (§[=§.getItemByName("Container_LevelEndStripe") as §3C§).y;
            this.§?!"§ = new §1a§(AngryBirdsFP11.screenWidth,AngryBirdsFP11.screenHeight,_loc2_,_loc3_,§1a§.§&§);
            §[=§.addChild(this.§?!"§);
            this.§;m§.push(this.§?!"§);
         }
         else if(this.§3f§.getValue() >= _loc5_ && (§[=§.getItemByName("MovieClip_StarCenter") as §`!6§).mClip.currentLabel == "UnLit")
         {
            §6I§.§ ;§("Hiscore_Star_Splash2",§=W§);
            (§[=§.getItemByName("MovieClip_StarCenter") as §`!6§).mClip.gotoAndStop("Lit");
            _loc2_ = (§[=§.getItemByName("MovieClip_StarCenter") as §`!6§).x + (§[=§.getItemByName("Container_LevelEndStripe") as §3C§).x;
            _loc3_ = (§[=§.getItemByName("MovieClip_StarCenter") as §`!6§).y + (§[=§.getItemByName("Container_LevelEndStripe") as §3C§).y;
            this.§?!"§ = new §1a§(AngryBirdsFP11.screenWidth,AngryBirdsFP11.screenHeight,_loc2_,_loc3_,§1a§.§8U§);
            §[=§.addChild(this.§?!"§);
            this.§;m§.push(this.§?!"§);
         }
         else if(this.§3f§.getValue() >= _loc4_ && (§[=§.getItemByName("MovieClip_StarRight") as §`!6§).mClip.currentLabel == "UnLit")
         {
            this.§<j§ = true;
            §6I§.§ ;§("Hiscore_Star_Splash3",§=W§);
            (§[=§.getItemByName("MovieClip_StarRight") as §`!6§).mClip.gotoAndStop("Lit");
            _loc2_ = (§[=§.getItemByName("MovieClip_StarRight") as §`!6§).x + (§[=§.getItemByName("Container_LevelEndStripe") as §3C§).x;
            _loc3_ = (§[=§.getItemByName("MovieClip_StarRight") as §`!6§).y + (§[=§.getItemByName("Container_LevelEndStripe") as §3C§).y;
            this.§?!"§ = new §1a§(AngryBirdsFP11.screenWidth,AngryBirdsFP11.screenHeight,_loc2_,_loc3_,§1a§.§ ?§);
            §[=§.addChild(this.§?!"§);
            this.§;m§.push(this.§?!"§);
         }
         else if(!this.§6h§)
         {
            this.§6h§ = true;
         }
         else
         {
            this.§=z§.stop();
            if(this.§>!<§ && !this.§0A§)
            {
               (§[=§.getItemByName("MovieClip_NewHighScoreBadge") as §`!6§).setVisibility(true);
            }
            else
            {
               (§[=§.getItemByName("MovieClip_NewHighScoreBadge") as §`!6§).setVisibility(false);
            }
            this.§?y§ = §,B§.§^n§.§2E§((§[=§.getItemByName("MovieClip_NewHighScoreBadge") as §`!6§).mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":7,
               "scaleY":7
            },0.1);
            this.§?y§.onComplete = this.onBadgeLanded;
            this.§?y§.play();
         }
         ++this.§66§;
      }
      
      private function §5R§() : void
      {
         §6I§.§9w§(§6'§);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:§1a§ = null;
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §#!,§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         §[=§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScore");
         §[=§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScoreEffects");
         for each(_loc3_ in this.§;m§)
         {
            _loc3_.update(param1);
         }
         if(this.§9!F§ > -1)
         {
            this.§!z§(param1);
         }
         if(mNextState.length > 0)
         {
            §[k§.§&@§.clearLevel();
            return §#!,§.STATE_STATUS_COMPLETED;
         }
         return §#!,§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§21§();
         this.§9!F§ = 0;
         this.mNewScoreCounter = 0;
         if(this.§8!?§)
         {
            this.§8!?§.stop();
            this.§8!?§ = null;
         }
         if(this.§?y§)
         {
            this.§?y§.stop();
            this.§?y§ = null;
         }
         §6I§.§9w§(§6'§);
         this.setButtonStates(§`!&§.COMPONENT_STATE_ACTIVE_DEFAULT);
         §[=§.setText("0","TextField_LevelEndScore");
         §[=§.setText("0","TextField_LevelEndScoreEffects");
         if(this.§<!4§)
         {
            if(§[=§.movieClip.contains(this.§<!4§))
            {
               §[=§.movieClip.removeChild(this.§<!4§);
            }
            this.§<!4§.clean();
            this.§<!4§ = null;
         }
      }
      
      protected function setButtonStates(param1:String) : void
      {
         (§[=§.getItemByName("Button_Menu") as §?q§).setComponentVisualState(param1);
         (§[=§.getItemByName("Button_Replay") as §?q§).setComponentVisualState(param1);
         (§[=§.getItemByName("Button_NextLevel") as §?q§).setComponentVisualState(param1);
         (§[=§.getItemByName("Button_CutScene") as §?q§).setComponentVisualState(param1);
      }
      
      private function §21§() : void
      {
         var splash:§1a§ = null;
         if(this.§=z§)
         {
            this.§=z§.stop();
            try
            {
               this.§=z§.removeEventListener(TimerEvent.TIMER,this.§?!'§);
            }
            catch(e:Error)
            {
            }
         }
         for each(splash in this.§;m§)
         {
            if(§[=§.contains(splash))
            {
               §[=§.removeChild(splash);
            }
            splash.clean();
         }
         this.§;m§ = new Vector.<§1a§>();
         this.hideBestScoreTexts();
      }
      
      protected function hideBestScoreTexts() : void
      {
         (§[=§.getItemByName("TextField_BestScore") as §3D§).setVisibility(false);
         (§[=§.getItemByName("MovieClip_BestScoreStars") as §`!6§).setVisibility(false);
         (§[=§.getItemByName("TextField_NewHighScore") as §3D§).setVisibility(false);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      protected function §]s§() : void
      {
         §,w§.§^^§();
         mNextState = this.§9N§();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§^h§) : void
      {
         var _loc4_:String = null;
         switch(param2)
         {
            case "NEXT_LEVEL":
               this.§]s§();
               break;
            case "REPLAY":
               §,w§.§9!D§();
               mNextState = this.§&[§();
               break;
            case "WATCH_REPLAY":
               §,w§.§9!D§();
               mNextState = this.§&[§();
               if(_loc4_ = §[k§.§&@§.§+s§())
               {
                  §[k§.§&@§.§?!B§(_loc4_);
                  break;
               }
               break;
            case "MENU":
               §6I§.§%,§();
               mNextState = this.§1o§();
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§,s§.§8!1§();
         }
      }
      
      protected function §&[§() : String
      {
         return §,w§.§?x§;
      }
      
      protected function §9N§() : String
      {
         return StateCutScene.§?x§;
      }
      
      public function §1o§() : String
      {
         return §5O§.§?x§;
      }
   }
}
