package §2!U§
{
   import §"!i§.LevelManager;
   import §2y§.§54§;
   import §2y§.§7!p§;
   import §2y§.§[!i§;
   import §2y§.§^! §;
   import §8!H§.§9![§;
   import §;!y§.§,!s§;
   import §<-§.§2B§;
   import §>!q§.§!^§;
   import §>!q§.§;!J§;
   import §>f§.§&!G§;
   import §>f§.§2!z§;
   import §@!&§.§'!o§;
   import §@!&§.§-0§;
   import §[!b§.§-!Q§;
   import §]F§.§^v§;
   import §]F§.§`!G§;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §=<§ extends §9![§
   {
      
      public static const §'!q§:String = "LevelEndStateRio";
      
      public static const §0u§:Number = 30;
      
      protected static const §[!<§:String = "ScoreLoopCountChannel";
      
      protected static const §+!r§:String = "EndScreenEffectChannel";
       
      
      private var §7!3§:§^v§;
      
      private var §]!F§:Number;
      
      private var §?""§:Number = 0.0;
      
      private var §'l§:Number = 0.0;
      
      private var §9!d§:Boolean = false;
      
      private var §[!D§:Timer;
      
      private var §`!%§:§!^§;
      
      protected var §@X§:Array;
      
      protected var §`!_§:§;!J§;
      
      protected var §5!x§:Vector.<§;!J§>;
      
      public var mNewScoreCounter:int;
      
      private var §^i§:int;
      
      private var §8!w§:Boolean;
      
      protected var §"E§:Boolean;
      
      private var §0!F§:§2B§;
      
      protected var §=P§:Boolean;
      
      private var §"!g§:§^v§;
      
      protected var § P§:Boolean;
      
      protected var §,!0§:int;
      
      public function §=<§(param1:Boolean = false, param2:String = "LevelEndStateRio")
      {
         this.§@X§ = [];
         this.§0!F§ = new §2B§();
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §'!Q§ = new §&!G§(this);
         §'!Q§.init(this.getViewXML());
         this.initButtonDefaultPositions();
         this.§5!x§ = new Vector.<§;!J§>();
         §-!Q§.§"3§(§[!<§,1,1);
         §-!Q§.§"3§(§+!r§,3,1);
      }
      
      protected function initButtonDefaultPositions() : void
      {
         this.§@X§.push((§'!Q§.getItemByName("Button_Menu") as §[!i§).x);
         this.§@X§.push((§'!Q§.getItemByName("Button_Replay") as §[!i§).x);
         this.§@X§.push((§'!Q§.getItemByName("Button_NextLevel") as §[!i§).x);
         this.§@X§.push((§'!Q§.getItemByName("Button_CutScene") as §[!i§).x);
      }
      
      protected function getViewXML() : XML
      {
         return §2!z§.§ _§.Views.View_LevelEndRio[0];
      }
      
      protected function showButtonsCutScene() : void
      {
         if(!AngryBirdsFP11.sUserProgress.§8!N§(LevelManager.§"L§))
         {
            (§'!Q§.getItemByName("Button_Menu") as §[!i§).setVisibility(false);
            (§'!Q§.getItemByName("Button_Replay") as §[!i§).setVisibility(true);
            (§'!Q§.getItemByName("Button_NextLevel") as §[!i§).setVisibility(false);
            (§'!Q§.getItemByName("Button_CutScene") as §[!i§).setVisibility(true);
            (§'!Q§.getItemByName("Button_Replay") as §[!i§).x = this.§@X§[0] + Math.abs(this.§@X§[1] - this.§@X§[0]) / 2;
            (§'!Q§.getItemByName("Button_CutScene") as §[!i§).x = this.§@X§[1] + Math.abs(this.§@X§[2] - this.§@X§[1]) / 2;
         }
         else
         {
            (§'!Q§.getItemByName("Button_Menu") as §[!i§).setVisibility(true);
            (§'!Q§.getItemByName("Button_Replay") as §[!i§).setVisibility(true);
            (§'!Q§.getItemByName("Button_NextLevel") as §[!i§).setVisibility(false);
            (§'!Q§.getItemByName("Button_CutScene") as §[!i§).setVisibility(true);
            (§'!Q§.getItemByName("Button_Menu") as §[!i§).x = this.§@X§[0];
            (§'!Q§.getItemByName("Button_Replay") as §[!i§).x = this.§@X§[1];
            (§'!Q§.getItemByName("Button_CutScene") as §[!i§).x = this.§@X§[2];
         }
      }
      
      protected function showButtonsNormal() : void
      {
         (§'!Q§.getItemByName("Button_Menu") as §[!i§).setVisibility(true);
         (§'!Q§.getItemByName("Button_Replay") as §[!i§).setVisibility(true);
         (§'!Q§.getItemByName("Button_CutScene") as §[!i§).setVisibility(false);
         if(LevelManager.§8`§())
         {
            (§'!Q§.getItemByName("Button_NextLevel") as §[!i§).setVisibility(true);
            (§'!Q§.getItemByName("Button_Menu") as §[!i§).x = this.§@X§[0];
            (§'!Q§.getItemByName("Button_Replay") as §[!i§).x = this.§@X§[1];
            (§'!Q§.getItemByName("Button_NextLevel") as §[!i§).x = this.§@X§[2];
         }
         else
         {
            (§'!Q§.getItemByName("Button_NextLevel") as §[!i§).setVisibility(false);
            (§'!Q§.getItemByName("Button_Menu") as §[!i§).x = this.§@X§[0] + Math.abs(this.§@X§[1] - this.§@X§[0]) / 2;
            (§'!Q§.getItemByName("Button_Replay") as §[!i§).x = this.§@X§[1] + Math.abs(this.§@X§[2] - this.§@X§[1]) / 2;
         }
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§ P§ = false;
         §,!s§.pause();
         this.§`!%§ = new §!^§(0,0,0,0);
         §'!Q§.movieClip.addChildAt(this.§`!%§,§'!Q§.movieClip.numChildren - 1);
         if(LevelManager.§7v§())
         {
            this.showButtonsCutScene();
         }
         else
         {
            this.showButtonsNormal();
         }
         this.mNewScoreCounter = 0;
         this.§8!w§ = false;
         §-!Q§.§#3§(this.§ !t§);
         this.§`!%§.§^p§(0.7);
         this.§?""§ = 0;
         this.§'l§ = 0;
         this.§1! §();
      }
      
      protected function get § !t§() : String
      {
         return "LevelCompletedTheme1";
      }
      
      private function §1! §() : void
      {
         this.§"E§ = false;
         this.setScoreData();
         this.§[!D§ = new Timer(500);
         this.§^i§ = 0;
         this.§[!D§.addEventListener(TimerEvent.TIMER,this.§;h§);
         this.§[!D§.start();
      }
      
      protected function §@f§() : void
      {
         if(AngryBirdsFP11.sUserProgress.getEagleScoreForLevel(LevelManager.§"L§) == 100)
         {
            (§'!Q§.getItemByName("MovieClip_ResultMEFeather") as §7!p§).mClip.gotoAndStop("On");
         }
         else
         {
            (§'!Q§.getItemByName("MovieClip_ResultMEFeather") as §7!p§).mClip.gotoAndStop("Off");
         }
      }
      
      protected function §"!m§(param1:int, param2:int) : void
      {
         if(this.§=P§)
         {
            param2 = param1;
            AngryBirdsFP11.sUserProgress.§<C§(LevelManager.§"L§,param2);
            §'!Q§.setText("New Highscore!","TextField_BestScore");
         }
         else
         {
            §'!Q§.setText("Best " + param2.toString(),"TextField_BestScore");
            this.§,!0§ = LevelManager.§2!&§(LevelManager.§"L§,param2);
            switch(this.§,!0§)
            {
               case 1:
                  (§'!Q§.getItemByName("MovieClip_BestScoreStars") as §7!p§).§>Z§("OneStar");
                  break;
               case 2:
                  (§'!Q§.getItemByName("MovieClip_BestScoreStars") as §7!p§).§>Z§("TwoStar");
                  break;
               case 3:
                  (§'!Q§.getItemByName("MovieClip_BestScoreStars") as §7!p§).§>Z§("ThreeStar");
            }
         }
      }
      
      protected function setScoreData() : void
      {
         var _loc1_:int = AngryBirdsFP11.sUserProgress.getScoreForLevel(LevelManager.§"L§);
         var _loc2_:int = §,!s§.§ Q§.getScore();
         this.§=P§ = _loc2_ > _loc1_;
         this.§"!m§(_loc2_,_loc1_);
         this.§@f§();
         var _loc3_:int = §,!s§.§ Q§.getEagleScore();
         var _loc4_:int = AngryBirdsFP11.sUserProgress.getEagleScoreForLevel(LevelManager.§"L§);
         var _loc5_:*;
         if(_loc5_ = _loc3_ > _loc4_)
         {
            _loc4_ = _loc3_;
            AngryBirdsFP11.sUserProgress.§3!L§(LevelManager.§"L§,_loc4_);
         }
         var _loc6_:int = AngryBirdsFP11.sUserProgress.getStarsForLevel(LevelManager.§"L§,_loc2_);
         (§'!Q§.getItemByName("MovieClip_NewHighScoreBadge") as §7!p§).setVisibility(false);
         (§'!Q§.getItemByName("MovieClip_StarLeft") as §7!p§).mClip.gotoAndStop("UnLit");
         (§'!Q§.getItemByName("MovieClip_StarCenter") as §7!p§).mClip.gotoAndStop("UnLit");
         (§'!Q§.getItemByName("MovieClip_StarRight") as §7!p§).mClip.gotoAndStop("UnLit");
      }
      
      protected function onBadgeLanded() : void
      {
         if(this.§=P§)
         {
            §-!Q§.§#3§("Hiscore_Badge",§+!r§);
            §'!Q§.setText("New Highscore!","TextField_NewHighScore");
            (§'!Q§.getItemByName("TextField_NewHighScore") as §54§).setVisibility(true);
            (§'!Q§.getItemByName("MovieClip_BestScoreStars") as §7!p§).setVisibility(false);
            this.§@7§();
         }
         else
         {
            (§'!Q§.getItemByName("TextField_BestScore") as §54§).setVisibility(true);
            (§'!Q§.getItemByName("MovieClip_BestScoreStars") as §7!p§).setVisibility(true);
         }
      }
      
      protected function §@7§() : void
      {
         this.§?""§ = 0;
         this.§'l§ = 0;
         this.§]!F§ = §0u§;
      }
      
      private function § ""§(param1:Number) : void
      {
         (§'!Q§.getItemByName("Container_LevelEndStripe") as §^! §).x = (§'!Q§.getItemByName("Container_LevelEndStripe") as §^! §).x - this.§?""§;
         (§'!Q§.getItemByName("Container_LevelEndStripe") as §^! §).y = (§'!Q§.getItemByName("Container_LevelEndStripe") as §^! §).y - this.§'l§;
         if(this.§]!F§ > 0)
         {
            this.§?""§ = (Math.random() - 0.5) * (this.§]!F§ / §0u§) * 20;
            this.§'l§ = (Math.random() - 0.5) * (this.§]!F§ / §0u§) * 20;
            (§'!Q§.getItemByName("Container_LevelEndStripe") as §^! §).x = (§'!Q§.getItemByName("Container_LevelEndStripe") as §^! §).x + this.§?""§;
            (§'!Q§.getItemByName("Container_LevelEndStripe") as §^! §).y = (§'!Q§.getItemByName("Container_LevelEndStripe") as §^! §).y + this.§'l§;
         }
         else
         {
            this.§]!F§ = -1;
            this.§%H§();
            this.§?""§ = 0;
            this.§'l§ = 0;
         }
         this.§]!F§ -= param1 / 10;
      }
      
      protected function §%H§() : void
      {
      }
      
      private function §;h§(param1:TimerEvent) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = false;
         var _loc4_:Number = LevelManager.§"!l§(LevelManager.§"L§).§;"$§;
         var _loc5_:Number = LevelManager.§"!l§(LevelManager.§"L§).§2!m§;
         if((§'!Q§.getItemByName("MovieClip_StarLeft") as §7!p§).mClip.currentLabel == "UnLit")
         {
            §-!Q§.§#3§("Hiscore_Count",§[!<§,100);
            this.§[!D§.delay = 1000;
            this.§0!F§.assign(§,!s§.§ Q§.getScore());
            _loc6_ = this.§0!F§.getValue() / _loc4_ * 2;
            if(_loc4_ <= 0)
            {
               _loc6_ = 1;
            }
            this.§"!g§ = §`!G§.§[U§.§-]§(this,{"mNewScoreCounter":this.§0!F§.getValue()},{"mNewScoreCounter":0},_loc6_);
            this.§"!g§.onComplete = this.§6<§;
            this.§"!g§.play();
            _loc7_ = this.§@b§();
            _loc2_ = (§'!Q§.getItemByName("MovieClip_StarLeft") as §7!p§).x + (§'!Q§.getItemByName("Container_LevelEndStripe") as §^! §).x;
            _loc3_ = (§'!Q§.getItemByName("MovieClip_StarLeft") as §7!p§).y + (§'!Q§.getItemByName("Container_LevelEndStripe") as §^! §).y;
            this.§`!_§ = new §;!J§(AngryBirdsFP11.§!Z§,AngryBirdsFP11.§2" §,_loc2_,_loc3_,§;!J§.§`C§,§;!J§.§"R§,_loc7_);
            §'!Q§.addChild(this.§`!_§);
            this.§5!x§.push(this.§`!_§);
         }
         else if(this.§0!F§.getValue() >= _loc5_ && (§'!Q§.getItemByName("MovieClip_StarCenter") as §7!p§).mClip.currentLabel == "UnLit")
         {
            _loc8_ = this.§@d§();
            _loc2_ = (§'!Q§.getItemByName("MovieClip_StarCenter") as §7!p§).x + (§'!Q§.getItemByName("Container_LevelEndStripe") as §^! §).x;
            _loc3_ = (§'!Q§.getItemByName("MovieClip_StarCenter") as §7!p§).y + (§'!Q§.getItemByName("Container_LevelEndStripe") as §^! §).y;
            this.§`!_§ = new §;!J§(AngryBirdsFP11.§!Z§,AngryBirdsFP11.§2" §,_loc2_,_loc3_,§;!J§.§,!M§,§;!J§.§"R§,_loc8_);
            §'!Q§.addChild(this.§`!_§);
            this.§5!x§.push(this.§`!_§);
         }
         else if(this.§0!F§.getValue() >= _loc4_ && (§'!Q§.getItemByName("MovieClip_StarRight") as §7!p§).mClip.currentLabel == "UnLit")
         {
            this.§ P§ = true;
            _loc9_ = this.§0F§();
            _loc2_ = (§'!Q§.getItemByName("MovieClip_StarRight") as §7!p§).x + (§'!Q§.getItemByName("Container_LevelEndStripe") as §^! §).x;
            _loc3_ = (§'!Q§.getItemByName("MovieClip_StarRight") as §7!p§).y + (§'!Q§.getItemByName("Container_LevelEndStripe") as §^! §).y;
            this.§`!_§ = new §;!J§(AngryBirdsFP11.§!Z§,AngryBirdsFP11.§2" §,_loc2_,_loc3_,§;!J§.§5p§,§;!J§.§"R§,_loc9_);
            §'!Q§.addChild(this.§`!_§);
            this.§5!x§.push(this.§`!_§);
         }
         else if(!this.§8!w§)
         {
            this.§8!w§ = true;
         }
         else
         {
            this.§[!D§.stop();
            if(this.§=P§ && !this.§"E§)
            {
               (§'!Q§.getItemByName("MovieClip_NewHighScoreBadge") as §7!p§).setVisibility(true);
            }
            else
            {
               (§'!Q§.getItemByName("MovieClip_NewHighScoreBadge") as §7!p§).setVisibility(false);
            }
            this.§7!3§ = §`!G§.§[U§.§-]§((§'!Q§.getItemByName("MovieClip_NewHighScoreBadge") as §7!p§).mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":7,
               "scaleY":7
            },0.1);
            this.§7!3§.onComplete = this.onBadgeLanded;
            this.§7!3§.play();
         }
         ++this.§^i§;
      }
      
      protected function §@b§() : Boolean
      {
         §-!Q§.§#3§("Hiscore_Star_Splash1",§+!r§);
         (§'!Q§.getItemByName("MovieClip_StarLeft") as §7!p§).mClip.gotoAndStop("Lit");
         return false;
      }
      
      protected function §@d§() : Boolean
      {
         §-!Q§.§#3§("Hiscore_Star_Splash2",§+!r§);
         (§'!Q§.getItemByName("MovieClip_StarCenter") as §7!p§).mClip.gotoAndStop("Lit");
         return false;
      }
      
      protected function §0F§() : Boolean
      {
         §-!Q§.§#3§("Hiscore_Star_Splash3",§+!r§);
         (§'!Q§.getItemByName("MovieClip_StarRight") as §7!p§).mClip.gotoAndStop("Lit");
         return false;
      }
      
      private function §6<§() : void
      {
         §-!Q§.§^B§(§[!<§);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:§;!J§ = null;
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §9![§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         §'!Q§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScore");
         §'!Q§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScoreEffects");
         for each(_loc3_ in this.§5!x§)
         {
            _loc3_.update(param1);
         }
         if(this.§]!F§ > -1)
         {
            this.§ ""§(param1);
         }
         if(mNextState.length > 0)
         {
            §,!s§.§=!I§.clearLevel();
            return §9![§.STATE_STATUS_COMPLETED;
         }
         return §9![§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§[d§();
         this.§]!F§ = 0;
         this.mNewScoreCounter = 0;
         if(this.§"!g§)
         {
            this.§"!g§.stop();
            this.§"!g§ = null;
         }
         if(this.§7!3§)
         {
            this.§7!3§.stop();
            this.§7!3§ = null;
         }
         §-!Q§.§^B§(§[!<§);
         this.setButtonStates(§-0§.COMPONENT_STATE_ACTIVE_DEFAULT);
         §'!Q§.setText("0","TextField_LevelEndScore");
         §'!Q§.setText("0","TextField_LevelEndScoreEffects");
         if(this.§`!%§)
         {
            if(§'!Q§.movieClip.contains(this.§`!%§))
            {
               §'!Q§.movieClip.removeChild(this.§`!%§);
            }
            this.§`!%§.clean();
            this.§`!%§ = null;
         }
      }
      
      protected function setButtonStates(param1:String) : void
      {
         (§'!Q§.getItemByName("Button_Menu") as §[!i§).setComponentVisualState(param1);
         (§'!Q§.getItemByName("Button_Replay") as §[!i§).setComponentVisualState(param1);
         (§'!Q§.getItemByName("Button_NextLevel") as §[!i§).setComponentVisualState(param1);
         (§'!Q§.getItemByName("Button_CutScene") as §[!i§).setComponentVisualState(param1);
      }
      
      private function §[d§() : void
      {
         var splash:§;!J§ = null;
         if(this.§[!D§)
         {
            this.§[!D§.stop();
            try
            {
               this.§[!D§.removeEventListener(TimerEvent.TIMER,this.§;h§);
            }
            catch(e:Error)
            {
            }
         }
         for each(splash in this.§5!x§)
         {
            if(§'!Q§.contains(splash))
            {
               §'!Q§.removeChild(splash);
            }
            splash.clean();
         }
         this.§5!x§ = new Vector.<§;!J§>();
         this.§>!0§();
      }
      
      protected function §>!0§() : void
      {
         (§'!Q§.getItemByName("TextField_BestScore") as §54§).setVisibility(false);
         (§'!Q§.getItemByName("MovieClip_BestScoreStars") as §7!p§).setVisibility(false);
         (§'!Q§.getItemByName("TextField_NewHighScore") as §54§).setVisibility(false);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      protected function §4>§() : void
      {
         §3!;§.§9!G§();
         mNextState = this.§0"#§();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§'!o§) : void
      {
         var _loc4_:String = null;
         switch(param2)
         {
            case "NEXT_LEVEL":
               this.§4>§();
               break;
            case "REPLAY":
               §3!;§.§0!1§();
               mNextState = this.§41§();
               break;
            case "WATCH_REPLAY":
               §3!;§.§0!1§();
               mNextState = this.§41§();
               if(_loc4_ = §,!s§.§=!I§.§`!o§())
               {
                  §,!s§.§=!I§.§!!§(_loc4_);
               }
               break;
            case "MENU":
               §-!Q§.§4!$§();
               mNextState = this.§1!H§();
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§'!g§.§]8§();
         }
      }
      
      protected function §41§() : String
      {
         return §3!;§.§'!q§;
      }
      
      protected function §0"#§() : String
      {
         return StateCutScene.§'!q§;
      }
      
      public function §1!H§() : String
      {
         return §2!=§.§'!q§;
      }
   }
}
