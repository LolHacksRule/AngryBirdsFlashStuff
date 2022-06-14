package §7"@§
{
   import §#!e§.LevelManager;
   import §#^§.§ "A§;
   import §#^§.§7!A§;
   import §&q§.§%1§;
   import §&q§.§'!T§;
   import §0!G§.§1-§;
   import §2!i§.§'M§;
   import §2!i§.§=!&§;
   import §4!e§.§-"E§;
   import §4!e§.§08§;
   import §4!e§.§7"-§;
   import §4!e§.§^!D§;
   import §6!B§.§>!E§;
   import §8!v§.§"m§;
   import §8!v§.§>!+§;
   import §<a§.§9U§;
   import §]!A§.;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §&!>§ extends §1-§
   {
      
      public static const STATE_NAME:String = "LevelEndStateRio";
      
      public static const §,x§:Number = 30;
      
      protected static const §^e§:String = "ScoreLoopCountChannel";
      
      protected static const § A§:String = "EndScreenEffectChannel";
       
      
      private var §<!-§:§"m§;
      
      private var §<!K§:Number;
      
      private var §3"@§:Number = 0.0;
      
      private var §-!B§:Number = 0.0;
      
      private var §>"&§:Boolean = false;
      
      private var §'!b§:Timer;
      
      private var §-9§:§%1§;
      
      protected var §]4§:Array;
      
      protected var §1!r§:§'!T§;
      
      protected var §;"F§:Vector.<§'!T§>;
      
      public var mNewScoreCounter:int;
      
      private var §3!Y§:int;
      
      private var §2">§:Boolean;
      
      protected var §[!3§:Boolean;
      
      private var §?!v§:§9U§;
      
      protected var §%"1§:Boolean;
      
      private var §?"F§:§"m§;
      
      protected var §^z§:Boolean;
      
      protected var §9!=§:int;
      
      public function §&!>§(param1:Boolean = false, param2:String = "LevelEndStateRio")
      {
         this.§]4§ = [];
         this.§?!v§ = new §9U§();
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §6w§ = new §7!A§(this);
         §6w§.init(this.§8!f§());
         this.§2r§();
         this.§;"F§ = new Vector.<§'!T§>();
         §>!E§.§0I§(§^e§,1,1);
         §>!E§.§0I§(§ A§,3,1);
      }
      
      protected function §2r§() : void
      {
         this.§]4§.push((§6w§.getItemByName("Button_Menu") as §^!D§).x);
         this.§]4§.push((§6w§.getItemByName("Button_Replay") as §^!D§).x);
         this.§]4§.push((§6w§.getItemByName("Button_NextLevel") as §^!D§).x);
         this.§]4§.push((§6w§.getItemByName("Button_CutScene") as §^!D§).x);
      }
      
      protected function §8!f§() : XML
      {
         return § "A§.§4[§.Views.View_LevelEndRio[0];
      }
      
      protected function §^7§() : void
      {
         if(!AngryBirdsFP11.sUserProgress.§%6§(LevelManager.§'!O§))
         {
            (§6w§.getItemByName("Button_Menu") as §^!D§).setVisibility(false);
            (§6w§.getItemByName("Button_Replay") as §^!D§).setVisibility(true);
            (§6w§.getItemByName("Button_NextLevel") as §^!D§).setVisibility(false);
            (§6w§.getItemByName("Button_CutScene") as §^!D§).setVisibility(true);
            (§6w§.getItemByName("Button_Replay") as §^!D§).x = this.§]4§[0] + Math.abs(this.§]4§[1] - this.§]4§[0]) / 2;
            (§6w§.getItemByName("Button_CutScene") as §^!D§).x = this.§]4§[1] + Math.abs(this.§]4§[2] - this.§]4§[1]) / 2;
         }
         else
         {
            (§6w§.getItemByName("Button_Menu") as §^!D§).setVisibility(true);
            (§6w§.getItemByName("Button_Replay") as §^!D§).setVisibility(true);
            (§6w§.getItemByName("Button_NextLevel") as §^!D§).setVisibility(false);
            (§6w§.getItemByName("Button_CutScene") as §^!D§).setVisibility(true);
            (§6w§.getItemByName("Button_Menu") as §^!D§).x = this.§]4§[0];
            (§6w§.getItemByName("Button_Replay") as §^!D§).x = this.§]4§[1];
            (§6w§.getItemByName("Button_CutScene") as §^!D§).x = this.§]4§[2];
         }
      }
      
      protected function showButtonsNormal() : void
      {
         (§6w§.getItemByName("Button_Menu") as §^!D§).setVisibility(true);
         (§6w§.getItemByName("Button_Replay") as §^!D§).setVisibility(true);
         (§6w§.getItemByName("Button_CutScene") as §^!D§).setVisibility(false);
         if(LevelManager.§6!M§())
         {
            (§6w§.getItemByName("Button_NextLevel") as §^!D§).setVisibility(true);
            (§6w§.getItemByName("Button_Menu") as §^!D§).x = this.§]4§[0];
            (§6w§.getItemByName("Button_Replay") as §^!D§).x = this.§]4§[1];
            (§6w§.getItemByName("Button_NextLevel") as §^!D§).x = this.§]4§[2];
         }
         else
         {
            (§6w§.getItemByName("Button_NextLevel") as §^!D§).setVisibility(false);
            (§6w§.getItemByName("Button_Menu") as §^!D§).x = this.§]4§[0] + Math.abs(this.§]4§[1] - this.§]4§[0]) / 2;
            (§6w§.getItemByName("Button_Replay") as §^!D§).x = this.§]4§[1] + Math.abs(this.§]4§[2] - this.§]4§[1]) / 2;
         }
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§^z§ = false;
         §#6§.pause();
         this.§-9§ = new §%1§(0,0,0,0);
         §6w§.movieClip.addChildAt(this.§-9§,§6w§.movieClip.numChildren - 1);
         if(LevelManager.§%^§())
         {
            this.§^7§();
         }
         else
         {
            this.showButtonsNormal();
         }
         this.mNewScoreCounter = 0;
         this.§2">§ = false;
         §>!E§.§7N§(this.§3"5§);
         this.§-9§.§?!,§(0.7);
         this.§3"@§ = 0;
         this.§-!B§ = 0;
         this.§;5§();
      }
      
      protected function get §3"5§() : String
      {
         return "LevelCompletedTheme1";
      }
      
      private function §;5§() : void
      {
         this.§[!3§ = false;
         this.setScoreData();
         this.§'!b§ = new Timer(500);
         this.§3!Y§ = 0;
         this.§'!b§.addEventListener(TimerEvent.TIMER,this.§6!!§);
         this.§'!b§.start();
      }
      
      protected function § w§() : void
      {
         if(AngryBirdsFP11.sUserProgress.getEagleScoreForLevel(LevelManager.§'!O§) == 100)
         {
            (§6w§.getItemByName("MovieClip_ResultMEFeather") as §7"-§).mClip.gotoAndStop("On");
         }
         else
         {
            (§6w§.getItemByName("MovieClip_ResultMEFeather") as §7"-§).mClip.gotoAndStop("Off");
         }
      }
      
      protected function §[=§(param1:int, param2:int) : void
      {
         if(this.§%"1§)
         {
            param2 = param1;
            AngryBirdsFP11.sUserProgress.§["$§(LevelManager.§'!O§,param2);
            §6w§.setText("New Highscore!","TextField_BestScore");
         }
         else
         {
            §6w§.setText("Best " + param2.toString(),"TextField_BestScore");
            this.§9!=§ = LevelManager.§`!^§(LevelManager.§'!O§,param2);
            switch(this.§9!=§)
            {
               case 1:
                  (§6w§.getItemByName("MovieClip_BestScoreStars") as §7"-§).§2!H§("OneStar");
                  break;
               case 2:
                  (§6w§.getItemByName("MovieClip_BestScoreStars") as §7"-§).§2!H§("TwoStar");
                  break;
               case 3:
                  (§6w§.getItemByName("MovieClip_BestScoreStars") as §7"-§).§2!H§("ThreeStar");
            }
         }
      }
      
      protected function setScoreData() : void
      {
         var _loc1_:int = AngryBirdsFP11.sUserProgress.getScoreForLevel(LevelManager.§'!O§);
         var _loc2_:int = §#6§.§'" §.getScore();
         this.§%"1§ = _loc2_ > _loc1_;
         this.§[=§(_loc2_,_loc1_);
         this.§ w§();
         var _loc3_:int = §#6§.§'" §.getEagleScore();
         var _loc4_:int = AngryBirdsFP11.sUserProgress.getEagleScoreForLevel(LevelManager.§'!O§);
         var _loc5_:*;
         if(_loc5_ = _loc3_ > _loc4_)
         {
            _loc4_ = _loc3_;
            AngryBirdsFP11.sUserProgress.§<!,§(LevelManager.§'!O§,_loc4_);
         }
         var _loc6_:int = AngryBirdsFP11.sUserProgress.getStarsForLevel(LevelManager.§'!O§,_loc2_);
         (§6w§.getItemByName("MovieClip_NewHighScoreBadge") as §7"-§).setVisibility(false);
         (§6w§.getItemByName("MovieClip_StarLeft") as §7"-§).mClip.gotoAndStop("UnLit");
         (§6w§.getItemByName("MovieClip_StarCenter") as §7"-§).mClip.gotoAndStop("UnLit");
         (§6w§.getItemByName("MovieClip_StarRight") as §7"-§).mClip.gotoAndStop("UnLit");
      }
      
      protected function onBadgeLanded() : void
      {
         if(this.§%"1§)
         {
            §>!E§.§7N§("Hiscore_Badge",§ A§);
            §6w§.setText("New Highscore!","TextField_NewHighScore");
            (§6w§.getItemByName("TextField_NewHighScore") as §-"E§).setVisibility(true);
            (§6w§.getItemByName("MovieClip_BestScoreStars") as §7"-§).setVisibility(false);
            this.§@1§();
         }
         else
         {
            (§6w§.getItemByName("TextField_BestScore") as §-"E§).setVisibility(true);
            (§6w§.getItemByName("MovieClip_BestScoreStars") as §7"-§).setVisibility(true);
         }
      }
      
      protected function §@1§() : void
      {
         this.§3"@§ = 0;
         this.§-!B§ = 0;
         this.§<!K§ = §,x§;
      }
      
      private function §6!o§(param1:Number) : void
      {
         (§6w§.getItemByName("Container_LevelEndStripe") as §08§).x = (§6w§.getItemByName("Container_LevelEndStripe") as §08§).x - this.§3"@§;
         (§6w§.getItemByName("Container_LevelEndStripe") as §08§).y = (§6w§.getItemByName("Container_LevelEndStripe") as §08§).y - this.§-!B§;
         if(this.§<!K§ > 0)
         {
            this.§3"@§ = (Math.random() - 0.5) * (this.§<!K§ / §,x§) * 20;
            this.§-!B§ = (Math.random() - 0.5) * (this.§<!K§ / §,x§) * 20;
            (§6w§.getItemByName("Container_LevelEndStripe") as §08§).x = (§6w§.getItemByName("Container_LevelEndStripe") as §08§).x + this.§3"@§;
            (§6w§.getItemByName("Container_LevelEndStripe") as §08§).y = (§6w§.getItemByName("Container_LevelEndStripe") as §08§).y + this.§-!B§;
         }
         else
         {
            this.§<!K§ = -1;
            this.§;!b§();
            this.§3"@§ = 0;
            this.§-!B§ = 0;
         }
         this.§<!K§ -= param1 / 10;
      }
      
      protected function §;!b§() : void
      {
      }
      
      private function §6!!§(param1:TimerEvent) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc4_:Number = LevelManager.§1A§(LevelManager.§'!O§).§-z§;
         var _loc5_:Number = LevelManager.§1A§(LevelManager.§'!O§).§4Z§;
         if((§6w§.getItemByName("MovieClip_StarLeft") as §7"-§).mClip.currentLabel == "UnLit")
         {
            §>!E§.§7N§("Hiscore_Count",§^e§,100);
            §>!E§.§7N§("Hiscore_Star_Splash1",§ A§);
            this.§'!b§.delay = 1000;
            this.§?!v§.assign(§#6§.§'" §.getScore());
            _loc6_ = this.§?!v§.getValue() / _loc4_ * 2;
            if(_loc4_ <= 0)
            {
               _loc6_ = 1;
            }
            this.§?"F§ = §>!+§.§;"§.§^!K§(this,{"mNewScoreCounter":this.§?!v§.getValue()},{"mNewScoreCounter":0},_loc6_);
            this.§?"F§.onComplete = this.§2!w§;
            this.§?"F§.play();
            (§6w§.getItemByName("MovieClip_StarLeft") as §7"-§).mClip.gotoAndStop("Lit");
            _loc2_ = (§6w§.getItemByName("MovieClip_StarLeft") as §7"-§).x + (§6w§.getItemByName("Container_LevelEndStripe") as §08§).x;
            _loc3_ = (§6w§.getItemByName("MovieClip_StarLeft") as §7"-§).y + (§6w§.getItemByName("Container_LevelEndStripe") as §08§).y;
            this.§1!r§ = new §'!T§(AngryBirdsFP11.§=!u§,AngryBirdsFP11.§^!7§,_loc2_,_loc3_,§'!T§.§7!J§);
            §6w§.addChild(this.§1!r§);
            this.§;"F§.push(this.§1!r§);
         }
         else if(this.§?!v§.getValue() >= _loc5_ && (§6w§.getItemByName("MovieClip_StarCenter") as §7"-§).mClip.currentLabel == "UnLit")
         {
            §>!E§.§7N§("Hiscore_Star_Splash2",§ A§);
            (§6w§.getItemByName("MovieClip_StarCenter") as §7"-§).mClip.gotoAndStop("Lit");
            _loc2_ = (§6w§.getItemByName("MovieClip_StarCenter") as §7"-§).x + (§6w§.getItemByName("Container_LevelEndStripe") as §08§).x;
            _loc3_ = (§6w§.getItemByName("MovieClip_StarCenter") as §7"-§).y + (§6w§.getItemByName("Container_LevelEndStripe") as §08§).y;
            this.§1!r§ = new §'!T§(AngryBirdsFP11.§=!u§,AngryBirdsFP11.§^!7§,_loc2_,_loc3_,§'!T§.§&!H§);
            §6w§.addChild(this.§1!r§);
            this.§;"F§.push(this.§1!r§);
         }
         else if(this.§?!v§.getValue() >= _loc4_ && (§6w§.getItemByName("MovieClip_StarRight") as §7"-§).mClip.currentLabel == "UnLit")
         {
            this.§^z§ = true;
            §>!E§.§7N§("Hiscore_Star_Splash3",§ A§);
            (§6w§.getItemByName("MovieClip_StarRight") as §7"-§).mClip.gotoAndStop("Lit");
            _loc2_ = (§6w§.getItemByName("MovieClip_StarRight") as §7"-§).x + (§6w§.getItemByName("Container_LevelEndStripe") as §08§).x;
            _loc3_ = (§6w§.getItemByName("MovieClip_StarRight") as §7"-§).y + (§6w§.getItemByName("Container_LevelEndStripe") as §08§).y;
            this.§1!r§ = new §'!T§(AngryBirdsFP11.§=!u§,AngryBirdsFP11.§^!7§,_loc2_,_loc3_,§'!T§.§2"?§);
            §6w§.addChild(this.§1!r§);
            this.§;"F§.push(this.§1!r§);
         }
         else if(!this.§2">§)
         {
            this.§2">§ = true;
         }
         else
         {
            this.§'!b§.stop();
            if(this.§%"1§ && !this.§[!3§)
            {
               (§6w§.getItemByName("MovieClip_NewHighScoreBadge") as §7"-§).setVisibility(true);
            }
            else
            {
               (§6w§.getItemByName("MovieClip_NewHighScoreBadge") as §7"-§).setVisibility(false);
            }
            this.§<!-§ = §>!+§.§;"§.§^!K§((§6w§.getItemByName("MovieClip_NewHighScoreBadge") as §7"-§).mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":7,
               "scaleY":7
            },0.1);
            this.§<!-§.onComplete = this.onBadgeLanded;
            this.§<!-§.play();
         }
         ++this.§3!Y§;
      }
      
      private function §2!w§() : void
      {
         §>!E§.§1!;§(§^e§);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:§'!T§ = null;
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §1-§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         §6w§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScore");
         §6w§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScoreEffects");
         for each(_loc3_ in this.§;"F§)
         {
            _loc3_.update(param1);
         }
         if(this.§<!K§ > -1)
         {
            this.§6!o§(param1);
         }
         if(mNextState.length > 0)
         {
            §#6§.§6!z§.clearLevel();
            return §1-§.STATE_STATUS_COMPLETED;
         }
         return §1-§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§6!L§();
         this.§<!K§ = 0;
         this.mNewScoreCounter = 0;
         if(this.§?"F§)
         {
            this.§?"F§.stop();
            this.§?"F§ = null;
         }
         if(this.§<!-§)
         {
            this.§<!-§.stop();
            this.§<!-§ = null;
         }
         §>!E§.§1!;§(§^e§);
         this.§'"-§(§=!&§.COMPONENT_STATE_ACTIVE_DEFAULT);
         §6w§.setText("0","TextField_LevelEndScore");
         §6w§.setText("0","TextField_LevelEndScoreEffects");
         if(this.§-9§)
         {
            if(§6w§.movieClip.contains(this.§-9§))
            {
               §6w§.movieClip.removeChild(this.§-9§);
            }
            this.§-9§.clean();
            this.§-9§ = null;
         }
      }
      
      protected function §'"-§(param1:String) : void
      {
         (§6w§.getItemByName("Button_Menu") as §^!D§).setComponentVisualState(param1);
         (§6w§.getItemByName("Button_Replay") as §^!D§).setComponentVisualState(param1);
         (§6w§.getItemByName("Button_NextLevel") as §^!D§).setComponentVisualState(param1);
         (§6w§.getItemByName("Button_CutScene") as §^!D§).setComponentVisualState(param1);
      }
      
      private function §6!L§() : void
      {
         var splash:§'!T§ = null;
         if(this.§'!b§)
         {
            this.§'!b§.stop();
            try
            {
               this.§'!b§.removeEventListener(TimerEvent.TIMER,this.§6!!§);
            }
            catch(e:Error)
            {
            }
         }
         for each(splash in this.§;"F§)
         {
            if(§6w§.contains(splash))
            {
               §6w§.removeChild(splash);
            }
            splash.clean();
         }
         this.§;"F§ = new Vector.<§'!T§>();
         this.§;!6§();
      }
      
      protected function §;!6§() : void
      {
         (§6w§.getItemByName("TextField_BestScore") as §-"E§).setVisibility(false);
         (§6w§.getItemByName("MovieClip_BestScoreStars") as §7"-§).setVisibility(false);
         (§6w§.getItemByName("TextField_NewHighScore") as §-"E§).setVisibility(false);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      protected function loadNextLevel() : void
      {
         §!!7§.§,L§();
         mNextState = this.getCutSceneState();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§'M§) : void
      {
         var _loc4_:String = null;
         switch(param2)
         {
            case "NEXT_LEVEL":
               this.loadNextLevel();
               break;
            case "REPLAY":
               §!!7§.§-V§();
               mNextState = this.getStateLevelLoadState();
               break;
            case "WATCH_REPLAY":
               §!!7§.§-V§();
               mNextState = this.getStateLevelLoadState();
               if(_loc4_ = §#6§.§6!z§.§2L§())
               {
                  §#6§.§6!z§.§;w§(_loc4_);
               }
               break;
            case "MENU":
               §>!E§.§&!^§();
               mNextState = this.getMenuButtonTargetState();
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§@<§.§'!+§();
         }
      }
      
      protected function getStateLevelLoadState() : String
      {
         return §!!7§.STATE_NAME;
      }
      
      protected function getCutSceneState() : String
      {
         return StateCutScene.STATE_NAME;
      }
      
      public function getMenuButtonTargetState() : String
      {
         return §8"D§.STATE_NAME;
      }
   }
}
