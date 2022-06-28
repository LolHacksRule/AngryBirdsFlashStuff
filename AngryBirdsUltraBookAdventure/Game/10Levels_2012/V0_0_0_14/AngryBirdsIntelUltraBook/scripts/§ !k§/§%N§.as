package § !k§
{
   import § !x§.§4F§;
   import § !x§.§5+§;
   import §!!§.LevelManager;
   import §&!h§.§?!K§;
   import §06§.§#_§;
   import §06§.§9!b§;
   import §1!T§.§6!H§;
   import §1n§.§ C§;
   import §1n§.dynamic;
   import §5i§.§4!]§;
   import §8,§.§+_§;
   import §=R§.§5!a§;
   import §=R§.§7!"§;
   import §`M§.§&!G§;
   import §`M§.§,c§;
   import §`M§.§3!@§;
   import §`M§.§9!#§;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §%N§ extends §+_§
   {
      
      public static const §3F§:String = "LevelEndStateRio";
      
      public static const §>!x§:Number = 30;
      
      protected static const §5!^§:String = "ScoreLoopCountChannel";
      
      protected static const §5!o§:String = "EndScreenEffectChannel";
       
      
      private var §&!`§:§4F§;
      
      private var §4y§:Number;
      
      private var §9!n§:Number = 0.0;
      
      private var §5![§:Number = 0.0;
      
      private var §>!0§:Boolean = false;
      
      private var §#P§:Timer;
      
      private var §++§:§9!b§;
      
      protected var §#A§:Array;
      
      protected var §7<§:§#_§;
      
      protected var §5!4§:Vector.<§#_§>;
      
      public var mNewScoreCounter:int;
      
      private var §!!@§:int;
      
      private var §0!m§:Boolean;
      
      protected var §&"§:Boolean;
      
      private var §-!_§:§?!K§;
      
      protected var §3_§:Boolean;
      
      private var §9!7§:§4F§;
      
      protected var §[G§:Boolean;
      
      protected var §`E§:int;
      
      public function §%N§(param1:Boolean = false, param2:String = "LevelEndStateRio")
      {
         this.§#A§ = [];
         this.§-!_§ = new §?!K§();
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §`-§ = new § C§(this);
         §`-§.init(this.getViewXML());
         this.initButtonDefaultPositions();
         this.§5!4§ = new Vector.<§#_§>();
         §6!H§.§^!s§(§5!^§,1,1);
         §6!H§.§^!s§(§5!o§,3,1);
      }
      
      protected function initButtonDefaultPositions() : void
      {
         this.§#A§.push((§`-§.getItemByName("Button_Menu") as §,c§).x);
         this.§#A§.push((§`-§.getItemByName("Button_Replay") as §,c§).x);
         this.§#A§.push((§`-§.getItemByName("Button_NextLevel") as §,c§).x);
         this.§#A§.push((§`-§.getItemByName("Button_CutScene") as §,c§).x);
      }
      
      protected function getViewXML() : XML
      {
         return dynamic.§[6§.Views.View_LevelEndRio[0];
      }
      
      protected function showButtonsCutScene() : void
      {
         if(!AngryBirdsFP11.sUserProgress.§+G§(LevelManager.§^!F§))
         {
            (§`-§.getItemByName("Button_Menu") as §,c§).setVisibility(false);
            (§`-§.getItemByName("Button_Replay") as §,c§).setVisibility(true);
            (§`-§.getItemByName("Button_NextLevel") as §,c§).setVisibility(false);
            (§`-§.getItemByName("Button_CutScene") as §,c§).setVisibility(true);
            (§`-§.getItemByName("Button_Replay") as §,c§).x = this.§#A§[0] + Math.abs(this.§#A§[1] - this.§#A§[0]) / 2;
            (§`-§.getItemByName("Button_CutScene") as §,c§).x = this.§#A§[1] + Math.abs(this.§#A§[2] - this.§#A§[1]) / 2;
         }
         else
         {
            (§`-§.getItemByName("Button_Menu") as §,c§).setVisibility(true);
            (§`-§.getItemByName("Button_Replay") as §,c§).setVisibility(true);
            (§`-§.getItemByName("Button_NextLevel") as §,c§).setVisibility(false);
            (§`-§.getItemByName("Button_CutScene") as §,c§).setVisibility(true);
            (§`-§.getItemByName("Button_Menu") as §,c§).x = this.§#A§[0];
            (§`-§.getItemByName("Button_Replay") as §,c§).x = this.§#A§[1];
            (§`-§.getItemByName("Button_CutScene") as §,c§).x = this.§#A§[2];
         }
      }
      
      protected function showButtonsNormal() : void
      {
         (§`-§.getItemByName("Button_Menu") as §,c§).setVisibility(true);
         (§`-§.getItemByName("Button_Replay") as §,c§).setVisibility(true);
         (§`-§.getItemByName("Button_CutScene") as §,c§).setVisibility(false);
         if(LevelManager.§=L§())
         {
            (§`-§.getItemByName("Button_NextLevel") as §,c§).setVisibility(true);
            (§`-§.getItemByName("Button_Menu") as §,c§).x = this.§#A§[0];
            (§`-§.getItemByName("Button_Replay") as §,c§).x = this.§#A§[1];
            (§`-§.getItemByName("Button_NextLevel") as §,c§).x = this.§#A§[2];
         }
         else
         {
            (§`-§.getItemByName("Button_NextLevel") as §,c§).setVisibility(false);
            (§`-§.getItemByName("Button_Menu") as §,c§).x = this.§#A§[0] + Math.abs(this.§#A§[1] - this.§#A§[0]) / 2;
            (§`-§.getItemByName("Button_Replay") as §,c§).x = this.§#A§[1] + Math.abs(this.§#A§[2] - this.§#A§[1]) / 2;
         }
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§[G§ = false;
         §4!]§.pause();
         this.§++§ = new §9!b§(0,0,0,0);
         §`-§.movieClip.addChildAt(this.§++§,§`-§.movieClip.numChildren - 1);
         if(LevelManager.§-!q§())
         {
            this.showButtonsCutScene();
         }
         else
         {
            this.showButtonsNormal();
         }
         this.mNewScoreCounter = 0;
         this.§0!m§ = false;
         §6!H§.playSound("LevelCompletedTheme1");
         this.§++§.§&!f§(0.7);
         this.§9!n§ = 0;
         this.§5![§ = 0;
         this.§3,§();
      }
      
      private function §3,§() : void
      {
         this.§&"§ = false;
         this.setScoreData();
         this.§#P§ = new Timer(500);
         this.§!!@§ = 0;
         this.§#P§.addEventListener(TimerEvent.TIMER,this.§3$§);
         this.§#P§.start();
      }
      
      protected function §;!Y§() : void
      {
         if(AngryBirdsFP11.sUserProgress.getEagleScoreForLevel(LevelManager.§^!F§) == 100)
         {
            (§`-§.getItemByName("MovieClip_ResultMEFeather") as §&!G§).mClip.gotoAndStop("On");
         }
         else
         {
            (§`-§.getItemByName("MovieClip_ResultMEFeather") as §&!G§).mClip.gotoAndStop("Off");
         }
      }
      
      protected function §2z§(param1:int, param2:int) : void
      {
         if(this.§3_§)
         {
            param2 = param1;
            AngryBirdsFP11.sUserProgress.§,x§(LevelManager.§^!F§,param2);
            §`-§.setText("New Highscore!","TextField_BestScore");
         }
         else
         {
            §`-§.setText("Best " + param2.toString(),"TextField_BestScore");
            this.§`E§ = LevelManager.§'!J§(LevelManager.§^!F§,param2);
            switch(this.§`E§)
            {
               case 1:
                  (§`-§.getItemByName("MovieClip_BestScoreStars") as §&!G§).§#!q§("OneStar");
                  break;
               case 2:
                  (§`-§.getItemByName("MovieClip_BestScoreStars") as §&!G§).§#!q§("TwoStar");
                  break;
               case 3:
                  (§`-§.getItemByName("MovieClip_BestScoreStars") as §&!G§).§#!q§("ThreeStar");
            }
         }
      }
      
      protected function setScoreData() : void
      {
         var _loc1_:int = AngryBirdsFP11.sUserProgress.getScoreForLevel(LevelManager.§^!F§);
         var _loc2_:int = §4!]§.§=`§.getScore();
         this.§3_§ = _loc2_ > _loc1_;
         this.§2z§(_loc2_,_loc1_);
         this.§;!Y§();
         var _loc3_:int = §4!]§.§=`§.getEagleScore();
         var _loc4_:int = AngryBirdsFP11.sUserProgress.getEagleScoreForLevel(LevelManager.§^!F§);
         var _loc5_:*;
         if(_loc5_ = _loc3_ > _loc4_)
         {
            _loc4_ = _loc3_;
            AngryBirdsFP11.sUserProgress.§#]§(LevelManager.§^!F§,_loc4_);
         }
         var _loc6_:int = AngryBirdsFP11.sUserProgress.getStarsForLevel(LevelManager.§^!F§,_loc2_);
         (§`-§.getItemByName("MovieClip_NewHighScoreBadge") as §&!G§).setVisibility(false);
         (§`-§.getItemByName("MovieClip_StarLeft") as §&!G§).mClip.gotoAndStop("UnLit");
         (§`-§.getItemByName("MovieClip_StarCenter") as §&!G§).mClip.gotoAndStop("UnLit");
         (§`-§.getItemByName("MovieClip_StarRight") as §&!G§).mClip.gotoAndStop("UnLit");
      }
      
      protected function onBadgeLanded() : void
      {
         if(this.§3_§)
         {
            §6!H§.playSound("Hiscore_Badge",§5!o§);
            §`-§.setText("New Highscore!","TextField_NewHighScore");
            (§`-§.getItemByName("TextField_NewHighScore") as §3!@§).setVisibility(true);
            (§`-§.getItemByName("MovieClip_BestScoreStars") as §&!G§).setVisibility(false);
            this.§6!a§();
         }
         else
         {
            (§`-§.getItemByName("TextField_BestScore") as §3!@§).setVisibility(true);
            (§`-§.getItemByName("MovieClip_BestScoreStars") as §&!G§).setVisibility(true);
         }
      }
      
      protected function §6!a§() : void
      {
         this.§9!n§ = 0;
         this.§5![§ = 0;
         this.§4y§ = §>!x§;
      }
      
      private function §?V§(param1:Number) : void
      {
         (§`-§.getItemByName("Container_LevelEndStripe") as §9!#§).x = (§`-§.getItemByName("Container_LevelEndStripe") as §9!#§).x - this.§9!n§;
         (§`-§.getItemByName("Container_LevelEndStripe") as §9!#§).y = (§`-§.getItemByName("Container_LevelEndStripe") as §9!#§).y - this.§5![§;
         if(this.§4y§ > 0)
         {
            this.§9!n§ = (Math.random() - 0.5) * (this.§4y§ / §>!x§) * 20;
            this.§5![§ = (Math.random() - 0.5) * (this.§4y§ / §>!x§) * 20;
            (§`-§.getItemByName("Container_LevelEndStripe") as §9!#§).x = (§`-§.getItemByName("Container_LevelEndStripe") as §9!#§).x + this.§9!n§;
            (§`-§.getItemByName("Container_LevelEndStripe") as §9!#§).y = (§`-§.getItemByName("Container_LevelEndStripe") as §9!#§).y + this.§5![§;
         }
         else
         {
            this.§4y§ = -1;
            this.§,!!§();
            this.§9!n§ = 0;
            this.§5![§ = 0;
         }
         this.§4y§ -= param1 / 10;
      }
      
      protected function §,!!§() : void
      {
      }
      
      private function §3$§(param1:TimerEvent) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc4_:Number = LevelManager.§5!c§(LevelManager.§^!F§).§6t§;
         var _loc5_:Number = LevelManager.§5!c§(LevelManager.§^!F§).§^T§;
         if((§`-§.getItemByName("MovieClip_StarLeft") as §&!G§).mClip.currentLabel == "UnLit")
         {
            §6!H§.playSound("Hiscore_Count",§5!^§,100);
            §6!H§.playSound("Hiscore_Star_Splash1",§5!o§);
            this.§#P§.delay = 1000;
            this.§-!_§.assign(§4!]§.§=`§.getScore());
            _loc6_ = this.§-!_§.getValue() / _loc4_ * 2;
            if(_loc4_ <= 0)
            {
               _loc6_ = 1;
            }
            this.§9!7§ = §5+§.§^Z§.§=!a§(this,{"mNewScoreCounter":this.§-!_§.getValue()},{"mNewScoreCounter":0},_loc6_);
            this.§9!7§.onComplete = this.§%j§;
            this.§9!7§.play();
            (§`-§.getItemByName("MovieClip_StarLeft") as §&!G§).mClip.gotoAndStop("Lit");
            _loc2_ = (§`-§.getItemByName("MovieClip_StarLeft") as §&!G§).x + (§`-§.getItemByName("Container_LevelEndStripe") as §9!#§).x;
            _loc3_ = (§`-§.getItemByName("MovieClip_StarLeft") as §&!G§).y + (§`-§.getItemByName("Container_LevelEndStripe") as §9!#§).y;
            this.§7<§ = new §#_§(AngryBirdsFP11.§;!Z§,AngryBirdsFP11.§7P§,_loc2_,_loc3_,§#_§.§switch§);
            §`-§.addChild(this.§7<§);
            this.§5!4§.push(this.§7<§);
         }
         else if(this.§-!_§.getValue() >= _loc5_ && (§`-§.getItemByName("MovieClip_StarCenter") as §&!G§).mClip.currentLabel == "UnLit")
         {
            §6!H§.playSound("Hiscore_Star_Splash2",§5!o§);
            (§`-§.getItemByName("MovieClip_StarCenter") as §&!G§).mClip.gotoAndStop("Lit");
            _loc2_ = (§`-§.getItemByName("MovieClip_StarCenter") as §&!G§).x + (§`-§.getItemByName("Container_LevelEndStripe") as §9!#§).x;
            _loc3_ = (§`-§.getItemByName("MovieClip_StarCenter") as §&!G§).y + (§`-§.getItemByName("Container_LevelEndStripe") as §9!#§).y;
            this.§7<§ = new §#_§(AngryBirdsFP11.§;!Z§,AngryBirdsFP11.§7P§,_loc2_,_loc3_,§#_§.§6!?§);
            §`-§.addChild(this.§7<§);
            this.§5!4§.push(this.§7<§);
         }
         else if(this.§-!_§.getValue() >= _loc4_ && (§`-§.getItemByName("MovieClip_StarRight") as §&!G§).mClip.currentLabel == "UnLit")
         {
            this.§[G§ = true;
            §6!H§.playSound("Hiscore_Star_Splash3",§5!o§);
            (§`-§.getItemByName("MovieClip_StarRight") as §&!G§).mClip.gotoAndStop("Lit");
            _loc2_ = (§`-§.getItemByName("MovieClip_StarRight") as §&!G§).x + (§`-§.getItemByName("Container_LevelEndStripe") as §9!#§).x;
            _loc3_ = (§`-§.getItemByName("MovieClip_StarRight") as §&!G§).y + (§`-§.getItemByName("Container_LevelEndStripe") as §9!#§).y;
            this.§7<§ = new §#_§(AngryBirdsFP11.§;!Z§,AngryBirdsFP11.§7P§,_loc2_,_loc3_,§#_§.§2`§);
            §`-§.addChild(this.§7<§);
            this.§5!4§.push(this.§7<§);
         }
         else if(!this.§0!m§)
         {
            this.§0!m§ = true;
         }
         else
         {
            this.§#P§.stop();
            if(this.§3_§ && !this.§&"§)
            {
               (§`-§.getItemByName("MovieClip_NewHighScoreBadge") as §&!G§).setVisibility(true);
            }
            else
            {
               (§`-§.getItemByName("MovieClip_NewHighScoreBadge") as §&!G§).setVisibility(false);
            }
            this.§&!`§ = §5+§.§^Z§.§=!a§((§`-§.getItemByName("MovieClip_NewHighScoreBadge") as §&!G§).mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":7,
               "scaleY":7
            },0.1);
            this.§&!`§.onComplete = this.onBadgeLanded;
            this.§&!`§.play();
         }
         ++this.§!!@§;
      }
      
      private function §%j§() : void
      {
         §6!H§.§1x§(§5!^§);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:§#_§ = null;
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §+_§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         §`-§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScore");
         §`-§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScoreEffects");
         for each(_loc3_ in this.§5!4§)
         {
            _loc3_.update(param1);
         }
         if(this.§4y§ > -1)
         {
            this.§?V§(param1);
         }
         if(mNextState.length > 0)
         {
            §4!]§.§8C§.clearLevel();
            return §+_§.STATE_STATUS_COMPLETED;
         }
         return §+_§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§]!e§();
         this.§4y§ = 0;
         this.mNewScoreCounter = 0;
         if(this.§9!7§)
         {
            this.§9!7§.stop();
            this.§9!7§ = null;
         }
         if(this.§&!`§)
         {
            this.§&!`§.stop();
            this.§&!`§ = null;
         }
         §6!H§.§1x§(§5!^§);
         this.setButtonStates(§5!a§.COMPONENT_STATE_ACTIVE_DEFAULT);
         §`-§.setText("0","TextField_LevelEndScore");
         §`-§.setText("0","TextField_LevelEndScoreEffects");
         if(this.§++§)
         {
            if(§`-§.movieClip.contains(this.§++§))
            {
               §`-§.movieClip.removeChild(this.§++§);
            }
            this.§++§.clean();
            this.§++§ = null;
         }
      }
      
      protected function setButtonStates(param1:String) : void
      {
         (§`-§.getItemByName("Button_Menu") as §,c§).setComponentVisualState(param1);
         (§`-§.getItemByName("Button_Replay") as §,c§).setComponentVisualState(param1);
         (§`-§.getItemByName("Button_NextLevel") as §,c§).setComponentVisualState(param1);
         (§`-§.getItemByName("Button_CutScene") as §,c§).setComponentVisualState(param1);
      }
      
      private function §]!e§() : void
      {
         var splash:§#_§ = null;
         if(this.§#P§)
         {
            this.§#P§.stop();
            try
            {
               this.§#P§.removeEventListener(TimerEvent.TIMER,this.§3$§);
            }
            catch(e:Error)
            {
            }
         }
         for each(splash in this.§5!4§)
         {
            if(§`-§.contains(splash))
            {
               §`-§.removeChild(splash);
            }
            splash.clean();
         }
         this.§5!4§ = new Vector.<§#_§>();
         this.§"![§();
      }
      
      protected function §"![§() : void
      {
         (§`-§.getItemByName("TextField_BestScore") as §3!@§).setVisibility(false);
         (§`-§.getItemByName("MovieClip_BestScoreStars") as §&!G§).setVisibility(false);
         (§`-§.getItemByName("TextField_NewHighScore") as §3!@§).setVisibility(false);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      protected function §`!o§() : void
      {
         §%]§.§]!b§();
         mNextState = this.§9!1§();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§7!"§) : void
      {
         var _loc4_:String = null;
         switch(param2)
         {
            case "NEXT_LEVEL":
               this.§`!o§();
               break;
            case "REPLAY":
               §%]§.§=>§();
               mNextState = this.§&!m§();
               break;
            case "WATCH_REPLAY":
               §%]§.§=>§();
               mNextState = this.§&!m§();
               if(_loc4_ = §4!]§.§8C§.§"!u§())
               {
                  §4!]§.§8C§.§9%§(_loc4_);
               }
               break;
            case "MENU":
               §6!H§.§[!W§();
               mNextState = this.§?1§();
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§`!c§.§catch§();
         }
      }
      
      protected function §&!m§() : String
      {
         return §%]§.§3F§;
      }
      
      protected function §9!1§() : String
      {
         return StateCutScene.§3F§;
      }
      
      public function §?1§() : String
      {
         return §6!U§.§3F§;
      }
   }
}
