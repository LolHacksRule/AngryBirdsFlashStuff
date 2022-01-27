package §[,§
{
   import §!a§.§&6§;
   import §#!+§.§"$§;
   import §#!+§.§?V§;
   import §#!T§.§&2§;
   import §#;§.§42§;
   import §-!V§.§'J§;
   import §-!V§.§+!T§;
   import §-!V§.§@§;
   import §0!&§.§@=§;
   import §0;§.§]U§;
   import §2!D§.§&9§;
   import §2!D§.§'!7§;
   import §5!5§.§1!4§;
   import §5!5§.§68§;
   import §7b§.§[7§;
   import §9!?§.§@!3§;
   import §;!0§.§"[§;
   import §;!0§.§4!I§;
   import §`V§.HighscoreSidebar;
   import flash.events.KeyboardEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §]=§ extends §<!Y§
   {
      
      public static const §+Z§:String = "LevelEndState";
      
      public static const §+A§:Number = 30;
      
      private static const §5C§:String = "ScoreLoopCountChannel";
      
      private static const §0j§:String = "EndScreenEffectChannel";
       
      
      private var §@-§:§&9§;
      
      private var §`o§:Number;
      
      private var §"!^§:Number;
      
      private var §?!K§:Number;
      
      private var §@!9§:Boolean = false;
      
      private var §8W§:Timer;
      
      private var § !D§:§1!4§;
      
      private var §[!J§:§68§;
      
      private var §'"§:Vector.<§68§>;
      
      public var mNewScoreCounter:int;
      
      private var §4N§:int;
      
      private var § !U§:Boolean;
      
      private var §"!Q§:§@!3§;
      
      private var §'q§:Boolean;
      
      private var §'t§:§&9§;
      
      private var §0[§:Array;
      
      public function §]=§(param1:Boolean = false, param2:String = "LevelEndState")
      {
         this.§"!Q§ = new §@!3§();
         this.§0[§ = [];
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §[L§ = new §"$§(this);
         §[L§.init(§?V§.§-2§.Views.View_LevelEnd[0]);
         this.§>l§();
         this.§ !D§ = new §1!4§(0,0,0,0);
         §[L§.movieClip.addChildAt(this.§ !D§,§[L§.movieClip.numChildren - 1);
         this.§'"§ = new Vector.<§68§>();
         §42§.§-!+§(§5C§,1,1);
         §42§.§-!+§(§0j§,16,1);
      }
      
      protected function §>l§() : void
      {
         this.§0[§.push(§[L§.getItemByName("Button_Menu").x);
         this.§0[§.push(§[L§.getItemByName("Button_Replay").x);
         this.§0[§.push(§[L§.getItemByName("Button_Next").x);
      }
      
      protected function §-s§(param1:Boolean) : void
      {
         §[L§.getItemByName("Button_Menu").setVisibility(true);
         §[L§.getItemByName("Button_Replay").setVisibility(true);
         if(param1)
         {
            §[L§.getItemByName("Button_Next").setVisibility(true);
            §[L§.getItemByName("Button_Menu").x = this.§0[§[0];
            §[L§.getItemByName("Button_Replay").x = this.§0[§[1];
            §[L§.getItemByName("Button_Next").x = this.§0[§[2];
         }
         else
         {
            §[L§.getItemByName("Button_Next").setVisibility(false);
            §[L§.getItemByName("Button_Menu").x = this.§0[§[0] + Math.abs(this.§0[§[1] - this.§0[§[0]) / 2;
            §[L§.getItemByName("Button_Replay").x = this.§0[§[1] + Math.abs(this.§0[§[2] - this.§0[§[1]) / 2 + §[L§.getItemByName("Button_Replay").width / 4;
         }
      }
      
      override public function activate() : void
      {
         super.activate();
         sHighscoreSidebar.enableHelpButton(false);
         §&2§.§4!1§.§5h§(true);
         this.mNewScoreCounter = 0;
         this.§ !U§ = false;
         §42§.§;!`§("LevelCompletedTheme1");
         this.§ !D§.§?!%§(0.7);
         this.§+!f§();
         §]U§.§@M§();
         sHighscoreSidebar.changeState(HighscoreSidebar.§2§);
         this.§-s§(§]U§.§&g§(§@=§.§1+§()));
      }
      
      override protected function setInitialState() : void
      {
         sHighscoreSidebar.selectedLevelName = §@=§.§!!S§;
      }
      
      private function §+!f§() : void
      {
         this.§3o§();
         this.§8W§ = new Timer(500);
         this.§4N§ = 0;
         this.§8W§.addEventListener(TimerEvent.TIMER,this.§1!L§);
         this.§8W§.start();
      }
      
      private function §3o§() : void
      {
         var _loc6_:int = 0;
         var _loc1_:int = §2!S§.§<P§.§1!_§(§@=§.§!!S§);
         var _loc2_:int = (§&2§.§7=§ as §[7§).getScore();
         this.§'q§ = _loc2_ >= _loc1_;
         if(this.§'q§)
         {
            _loc1_ = _loc2_;
            §2!S§.§<P§.§5!$§(§@=§.§!!S§,_loc1_);
         }
         else
         {
            §[L§.setText("" + _loc1_.toString(),"TextField_BestScore");
            _loc6_ = §@=§.§4!§(§@=§.§!!S§,_loc1_);
            switch(_loc6_)
            {
               case 1:
                  (§[L§.getItemByName("MovieClip_BestScoreStars") as §+!T§).§"G§("OneStar");
                  break;
               case 2:
                  (§[L§.getItemByName("MovieClip_BestScoreStars") as §+!T§).§"G§("TwoStar");
                  break;
               case 3:
                  (§[L§.getItemByName("MovieClip_BestScoreStars") as §+!T§).§"G§("ThreeStar");
            }
         }
         var _loc3_:int = §&2§.§7=§.getEagleScore();
         var _loc4_:Number = §2!S§.§<P§.§#c§(§@=§.§!!S§);
         var _loc5_:*;
         if(_loc5_ = _loc3_ > _loc4_)
         {
            _loc4_ = _loc3_;
            §2!S§.§<P§.§4!"§(§@=§.§!!S§,_loc4_);
         }
         (§[L§.getItemByName("MovieClip_NewHighScoreBadge") as §+!T§).setVisibility(false);
         (§[L§.getItemByName("MovieClip_StarLeft") as §+!T§).mClip.gotoAndStop("UnLit");
         (§[L§.getItemByName("MovieClip_StarCenter") as §+!T§).mClip.gotoAndStop("UnLit");
         (§[L§.getItemByName("MovieClip_StarRight") as §+!T§).mClip.gotoAndStop("UnLit");
      }
      
      private function §?z§() : void
      {
         if(this.§'q§)
         {
            §42§.§`!F§(§0j§);
            §42§.§;!`§("Hiscore_Badge",§0j§);
            §[L§.getItemByName("MovieClip_NewHighScore").setVisibility(true);
            §[L§.getItemByName("MovieClip_BestScoreStars").setVisibility(false);
            §[L§.getItemByName("MovieClip_BestScoreText").setVisibility(false);
            §[L§.getItemByName("TextField_BestScore").setVisibility(false);
            this.§<!Q§();
         }
         else
         {
            §[L§.getItemByName("TextField_BestScore").setVisibility(true);
            §[L§.getItemByName("MovieClip_BestScoreStars").setVisibility(true);
            §[L§.getItemByName("MovieClip_BestScoreText").setVisibility(true);
         }
      }
      
      private function §<!Q§() : void
      {
         this.§"!^§ = (§[L§.getItemByName("Container_LevelEndStripe") as §@§).x;
         this.§?!K§ = (§[L§.getItemByName("Container_LevelEndStripe") as §@§).y;
         this.§`o§ = §+A§;
      }
      
      private function §7!4§(param1:Number) : void
      {
         if(this.§`o§ <= 0)
         {
            (§[L§.getItemByName("Container_LevelEndStripe") as §@§).x = this.§"!^§;
            (§[L§.getItemByName("Container_LevelEndStripe") as §@§).y = this.§?!K§;
         }
         else
         {
            (§[L§.getItemByName("Container_LevelEndStripe") as §@§).x = this.§"!^§ + (Math.random() - 0.5) * (this.§`o§ / §+A§) * 20;
            (§[L§.getItemByName("Container_LevelEndStripe") as §@§).y = this.§?!K§ + (Math.random() - 0.5) * (this.§`o§ / §+A§) * 20;
         }
         this.§`o§ -= param1 / 10;
      }
      
      private function §1!L§(param1:TimerEvent) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc4_:Number = §@=§.§'%§(§@=§.§!!S§).§4!W§;
         var _loc5_:Number = §@=§.§'%§(§@=§.§!!S§).§>!V§;
         if((§[L§.getItemByName("MovieClip_StarLeft") as §+!T§).mClip.currentLabel == "UnLit")
         {
            §42§.§;!`§("Hiscore_Count",§5C§,100);
            §42§.§`!F§(§0j§);
            §42§.§;!`§("Hiscore_Star_Splash1",§0j§);
            this.§8W§.delay = 1000;
            this.§"!Q§.§]K§(§&2§.§7=§.getScore());
            _loc6_ = this.§"!Q§.getValue() / _loc4_ * 2;
            this.§'t§ = §'!7§.§=,§.§5Z§(this,{"mNewScoreCounter":this.§"!Q§.getValue()},{"mNewScoreCounter":0},_loc6_);
            this.§'t§.onComplete = this.§2i§;
            this.§'t§.play();
            (§[L§.getItemByName("MovieClip_StarLeft") as §+!T§).mClip.gotoAndStop("Lit");
            _loc2_ = (§[L§.getItemByName("MovieClip_StarLeft") as §+!T§).x + (§[L§.getItemByName("Container_LevelEndStripe") as §@§).x;
            _loc3_ = (§[L§.getItemByName("MovieClip_StarLeft") as §+!T§).y + (§[L§.getItemByName("Container_LevelEndStripe") as §@§).y;
            this.§[!J§ = new §68§(§2!S§.§0!+§,§2!S§.§>!?§,_loc2_,_loc3_,§68§.§1!=§);
            §[L§.addChild(this.§[!J§);
            this.§'"§.push(this.§[!J§);
         }
         else if(this.§"!Q§.getValue() >= _loc5_ && (§[L§.getItemByName("MovieClip_StarCenter") as §+!T§).mClip.currentLabel == "UnLit")
         {
            §42§.§`!F§(§0j§);
            §42§.§;!`§("Hiscore_Star_Splash2",§0j§);
            (§[L§.getItemByName("MovieClip_StarCenter") as §+!T§).mClip.gotoAndStop("Lit");
            _loc2_ = (§[L§.getItemByName("MovieClip_StarCenter") as §+!T§).x + (§[L§.getItemByName("Container_LevelEndStripe") as §@§).x;
            _loc3_ = (§[L§.getItemByName("MovieClip_StarCenter") as §+!T§).y + (§[L§.getItemByName("Container_LevelEndStripe") as §@§).y;
            this.§[!J§ = new §68§(§2!S§.§0!+§,§2!S§.§>!?§,_loc2_,_loc3_,§68§.§5!A§);
            §[L§.addChild(this.§[!J§);
            this.§'"§.push(this.§[!J§);
         }
         else if(this.§"!Q§.getValue() >= _loc4_ && (§[L§.getItemByName("MovieClip_StarRight") as §+!T§).mClip.currentLabel == "UnLit")
         {
            §42§.§`!F§(§0j§);
            §42§.§;!`§("Hiscore_Star_Splash3",§0j§);
            (§[L§.getItemByName("MovieClip_StarRight") as §+!T§).mClip.gotoAndStop("Lit");
            _loc2_ = (§[L§.getItemByName("MovieClip_StarRight") as §+!T§).x + (§[L§.getItemByName("Container_LevelEndStripe") as §@§).x;
            _loc3_ = (§[L§.getItemByName("MovieClip_StarRight") as §+!T§).y + (§[L§.getItemByName("Container_LevelEndStripe") as §@§).y;
            this.§[!J§ = new §68§(§2!S§.§0!+§,§2!S§.§>!?§,_loc2_,_loc3_,§68§.§-Q§);
            §[L§.addChild(this.§[!J§);
            this.§'"§.push(this.§[!J§);
         }
         else if(!this.§ !U§)
         {
            this.§ !U§ = true;
         }
         else
         {
            this.§8W§.stop();
            if(this.§'q§)
            {
               (§[L§.getItemByName("MovieClip_NewHighScoreBadge") as §+!T§).setVisibility(true);
            }
            else
            {
               (§[L§.getItemByName("MovieClip_NewHighScoreBadge") as §+!T§).setVisibility(false);
            }
            this.§@-§ = §'!7§.§=,§.§5Z§((§[L§.getItemByName("MovieClip_NewHighScoreBadge") as §+!T§).mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":7,
               "scaleY":7
            },0.1);
            this.§@-§.onComplete = this.§?z§;
            this.§@-§.play();
         }
         ++this.§4N§;
      }
      
      private function §2i§() : void
      {
         §42§.§`!F§(§5C§);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:§68§ = null;
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §&6§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         §[L§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScore");
         §[L§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScoreEffects");
         for each(_loc3_ in this.§'"§)
         {
            _loc3_.update(param1);
         }
         if(this.§`o§ > 0)
         {
            this.§7!4§(param1);
         }
         if(mNextState.length > 0)
         {
            return §&6§.STATE_STATUS_COMPLETED;
         }
         return §&6§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§ !D§.§[m§(0);
         this.§1!Z§();
         this.§`o§ = 0;
         §42§.§`!F§(§5C§);
         (§[L§.getItemByName("Button_Menu") as §'J§).setComponentVisualState(§"[§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§[L§.getItemByName("Button_Replay") as §'J§).setComponentVisualState(§"[§.COMPONENT_STATE_ACTIVE_DEFAULT);
         §[L§.setText("0","TextField_LevelEndScore");
         §[L§.setText("0","TextField_LevelEndScoreEffects");
      }
      
      private function §1!Z§() : void
      {
         var _loc1_:§68§ = null;
         if(this.§8W§)
         {
            this.§8W§.stop();
            this.§8W§.removeEventListener(TimerEvent.TIMER,this.§1!L§);
         }
         for each(_loc1_ in this.§'"§)
         {
            if(§[L§.contains(_loc1_))
            {
               §[L§.removeChild(_loc1_);
            }
            _loc1_.clean();
         }
         this.§'"§ = new Vector.<§68§>();
         §[L§.getItemByName("TextField_BestScore").setVisibility(false);
         §[L§.getItemByName("MovieClip_BestScoreText").setVisibility(false);
         §[L§.getItemByName("MovieClip_BestScoreStars").setVisibility(false);
         §[L§.getItemByName("MovieClip_NewHighScore").setVisibility(false);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyUp(param1);
         if(param1.charCode == 32)
         {
            mNextState = §+Z§;
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§4!I§) : void
      {
         super.uiInteractionHandler(param1,param2,param3);
         switch(param2)
         {
            case "NEXT_LEVEL":
               §4!M§.§@!d§();
               mNextState = §4!M§.§+Z§;
               break;
            case "REPLAY":
               §4!M§.§>5§();
               mNextState = §4!M§.§+Z§;
               break;
            case "MENU":
               §42§.§<!_§();
               mNextState = §2!S§.§1!b§;
         }
      }
   }
}
