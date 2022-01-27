package §function§
{
   import §#Q§.§8#§;
   import §#Q§.§8Y§;
   import §%i§.§#`§;
   import §&!6§.§5r§;
   import §'!C§.§-!S§;
   import §'!C§.§<C§;
   import §1Q§.§'!`§;
   import §1Q§.§4p§;
   import §3r§.§1S§;
   import §4M§.HighscoreSidebar;
   import §8! §.§#z§;
   import §8!-§.§1R§;
   import §8!-§.§2!B§;
   import §<<§.§%n§;
   import §>!F§.§9!Z§;
   import §@!]§.§%k§;
   import §@!]§.§&!!§;
   import §@!]§.§'!9§;
   import §^E§.§9!Q§;
   import flash.events.KeyboardEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §1!0§ extends §1!@§
   {
      
      public static const §94§:String = "LevelEndState";
      
      public static const §]T§:Number = 30;
      
      private static const §^<§:String = "ScoreLoopCountChannel";
      
      private static const § ,§:String = "EndScreenEffectChannel";
       
      
      private var §&%§:§1R§;
      
      private var §4!M§:Number;
      
      private var §<V§:Number;
      
      private var §=H§:Number;
      
      private var §?>§:Boolean = false;
      
      private var §"$§:Timer;
      
      private var §-!F§:§-!S§;
      
      private var §>!+§:§<C§;
      
      private var §`l§:Vector.<§<C§>;
      
      public var mNewScoreCounter:int;
      
      private var §5&§:int;
      
      private var §'q§:Boolean;
      
      private var §&!]§:§1S§;
      
      private var §!!J§:Boolean;
      
      private var §+!Z§:§1R§;
      
      private var §>T§:Array;
      
      public function §1!0§(param1:Boolean = false, param2:String = "LevelEndState")
      {
         this.§&!]§ = new §1S§();
         this.§>T§ = [];
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §@K§ = new §8Y§(this);
         §@K§.init(§8#§.§6K§.Views.View_LevelEnd[0]);
         this.§9!%§();
         this.§-!F§ = new §-!S§(0,0,0,0);
         §@K§.movieClip.addChildAt(this.§-!F§,§@K§.movieClip.numChildren - 1);
         this.§`l§ = new Vector.<§<C§>();
         §#`§.§@z§(§^<§,1,1);
         §#`§.§@z§(§ ,§,16,1);
      }
      
      protected function §9!%§() : void
      {
         this.§>T§.push(§@K§.getItemByName("Button_Menu").x);
         this.§>T§.push(§@K§.getItemByName("Button_Replay").x);
         this.§>T§.push(§@K§.getItemByName("Button_Next").x);
      }
      
      protected function §3[§(param1:Boolean) : void
      {
         §@K§.getItemByName("Button_Menu").setVisibility(true);
         §@K§.getItemByName("Button_Replay").setVisibility(true);
         if(param1)
         {
            §@K§.getItemByName("Button_Next").setVisibility(true);
            §@K§.getItemByName("Button_Menu").x = this.§>T§[0];
            §@K§.getItemByName("Button_Replay").x = this.§>T§[1];
            §@K§.getItemByName("Button_Next").x = this.§>T§[2];
         }
         else
         {
            §@K§.getItemByName("Button_Next").setVisibility(false);
            §@K§.getItemByName("Button_Menu").x = this.§>T§[0] + Math.abs(this.§>T§[1] - this.§>T§[0]) / 2;
            §@K§.getItemByName("Button_Replay").x = this.§>T§[1] + Math.abs(this.§>T§[2] - this.§>T§[1]) / 2 + §@K§.getItemByName("Button_Replay").width / 4;
         }
      }
      
      override public function activate() : void
      {
         super.activate();
         sHighscoreSidebar.enableHelpButton(false);
         §9!Z§.§5!$§.§8t§(true);
         this.mNewScoreCounter = 0;
         this.§'q§ = false;
         §#`§.§2o§("LevelCompletedTheme1");
         this.§-!F§.§5J§(0.7);
         this.§"!]§();
         §9!Q§.§4!+§();
         sHighscoreSidebar.changeState(HighscoreSidebar.§'o§);
         this.§3[§(§9!Q§.§ !D§(§#z§.§5!@§()));
      }
      
      override protected function setInitialState() : void
      {
         sHighscoreSidebar.selectedLevelName = §#z§.§@k§;
      }
      
      private function §"!]§() : void
      {
         this.§#4§();
         this.§"$§ = new Timer(500);
         this.§5&§ = 0;
         this.§"$§.addEventListener(TimerEvent.TIMER,this.§[!D§);
         this.§"$§.start();
      }
      
      private function §#4§() : void
      {
         var _loc6_:int = 0;
         var _loc1_:int = §"H§.§""§.§5!D§(§#z§.§@k§);
         var _loc2_:int = (§9!Z§.§[-§ as §%n§).getScore();
         this.§!!J§ = _loc2_ >= _loc1_;
         if(this.§!!J§)
         {
            _loc1_ = _loc2_;
            §"H§.§""§.§1P§(§#z§.§@k§,_loc1_);
         }
         else
         {
            §@K§.setText("" + _loc1_.toString(),"TextField_BestScore");
            _loc6_ = §#z§.§ !§(§#z§.§@k§,_loc1_);
            switch(_loc6_)
            {
               case 1:
                  (§@K§.getItemByName("MovieClip_BestScoreStars") as §%k§).§>V§("OneStar");
                  break;
               case 2:
                  (§@K§.getItemByName("MovieClip_BestScoreStars") as §%k§).§>V§("TwoStar");
                  break;
               case 3:
                  (§@K§.getItemByName("MovieClip_BestScoreStars") as §%k§).§>V§("ThreeStar");
            }
         }
         var _loc3_:int = §9!Z§.§[-§.getEagleScore();
         var _loc4_:Number = §"H§.§""§.§"h§(§#z§.§@k§);
         var _loc5_:*;
         if(_loc5_ = _loc3_ > _loc4_)
         {
            _loc4_ = _loc3_;
            §"H§.§""§.§[!;§(§#z§.§@k§,_loc4_);
         }
         (§@K§.getItemByName("MovieClip_NewHighScoreBadge") as §%k§).setVisibility(false);
         (§@K§.getItemByName("MovieClip_StarLeft") as §%k§).mClip.gotoAndStop("UnLit");
         (§@K§.getItemByName("MovieClip_StarCenter") as §%k§).mClip.gotoAndStop("UnLit");
         (§@K§.getItemByName("MovieClip_StarRight") as §%k§).mClip.gotoAndStop("UnLit");
      }
      
      private function §<G§() : void
      {
         if(this.§!!J§)
         {
            §#`§.§>!e§(§ ,§);
            §#`§.§2o§("Hiscore_Badge",§ ,§);
            §@K§.getItemByName("MovieClip_NewHighScore").setVisibility(true);
            §@K§.getItemByName("MovieClip_BestScoreStars").setVisibility(false);
            §@K§.getItemByName("MovieClip_BestScoreText").setVisibility(false);
            §@K§.getItemByName("TextField_BestScore").setVisibility(false);
            this.§5,§();
         }
         else
         {
            §@K§.getItemByName("TextField_BestScore").setVisibility(true);
            §@K§.getItemByName("MovieClip_BestScoreStars").setVisibility(true);
            §@K§.getItemByName("MovieClip_BestScoreText").setVisibility(true);
         }
      }
      
      private function §5,§() : void
      {
         this.§<V§ = (§@K§.getItemByName("Container_LevelEndStripe") as §'!9§).x;
         this.§=H§ = (§@K§.getItemByName("Container_LevelEndStripe") as §'!9§).y;
         this.§4!M§ = §]T§;
      }
      
      private function §@y§(param1:Number) : void
      {
         if(this.§4!M§ <= 0)
         {
            (§@K§.getItemByName("Container_LevelEndStripe") as §'!9§).x = this.§<V§;
            (§@K§.getItemByName("Container_LevelEndStripe") as §'!9§).y = this.§=H§;
         }
         else
         {
            (§@K§.getItemByName("Container_LevelEndStripe") as §'!9§).x = this.§<V§ + (Math.random() - 0.5) * (this.§4!M§ / §]T§) * 20;
            (§@K§.getItemByName("Container_LevelEndStripe") as §'!9§).y = this.§=H§ + (Math.random() - 0.5) * (this.§4!M§ / §]T§) * 20;
         }
         this.§4!M§ -= param1 / 10;
      }
      
      private function §[!D§(param1:TimerEvent) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc4_:Number = §#z§.§2!>§(§#z§.§@k§).§?!4§;
         var _loc5_:Number = §#z§.§2!>§(§#z§.§@k§).§]!@§;
         if((§@K§.getItemByName("MovieClip_StarLeft") as §%k§).mClip.currentLabel == "UnLit")
         {
            §#`§.§2o§("Hiscore_Count",§^<§,100);
            §#`§.§>!e§(§ ,§);
            §#`§.§2o§("Hiscore_Star_Splash1",§ ,§);
            this.§"$§.delay = 1000;
            this.§&!]§.§7W§(§9!Z§.§[-§.getScore());
            _loc6_ = this.§&!]§.getValue() / _loc4_ * 2;
            this.§+!Z§ = §2!B§.§,!U§.§%!K§(this,{"mNewScoreCounter":this.§&!]§.getValue()},{"mNewScoreCounter":0},_loc6_);
            this.§+!Z§.onComplete = this.§<g§;
            this.§+!Z§.play();
            (§@K§.getItemByName("MovieClip_StarLeft") as §%k§).mClip.gotoAndStop("Lit");
            _loc2_ = (§@K§.getItemByName("MovieClip_StarLeft") as §%k§).x + (§@K§.getItemByName("Container_LevelEndStripe") as §'!9§).x;
            _loc3_ = (§@K§.getItemByName("MovieClip_StarLeft") as §%k§).y + (§@K§.getItemByName("Container_LevelEndStripe") as §'!9§).y;
            this.§>!+§ = new §<C§(§"H§.§38§,§"H§.§5§,_loc2_,_loc3_,§<C§.§9a§);
            §@K§.addChild(this.§>!+§);
            this.§`l§.push(this.§>!+§);
         }
         else if(this.§&!]§.getValue() >= _loc5_ && (§@K§.getItemByName("MovieClip_StarCenter") as §%k§).mClip.currentLabel == "UnLit")
         {
            §#`§.§>!e§(§ ,§);
            §#`§.§2o§("Hiscore_Star_Splash2",§ ,§);
            (§@K§.getItemByName("MovieClip_StarCenter") as §%k§).mClip.gotoAndStop("Lit");
            _loc2_ = (§@K§.getItemByName("MovieClip_StarCenter") as §%k§).x + (§@K§.getItemByName("Container_LevelEndStripe") as §'!9§).x;
            _loc3_ = (§@K§.getItemByName("MovieClip_StarCenter") as §%k§).y + (§@K§.getItemByName("Container_LevelEndStripe") as §'!9§).y;
            this.§>!+§ = new §<C§(§"H§.§38§,§"H§.§5§,_loc2_,_loc3_,§<C§.§=!+§);
            §@K§.addChild(this.§>!+§);
            this.§`l§.push(this.§>!+§);
         }
         else if(this.§&!]§.getValue() >= _loc4_ && (§@K§.getItemByName("MovieClip_StarRight") as §%k§).mClip.currentLabel == "UnLit")
         {
            §#`§.§>!e§(§ ,§);
            §#`§.§2o§("Hiscore_Star_Splash3",§ ,§);
            (§@K§.getItemByName("MovieClip_StarRight") as §%k§).mClip.gotoAndStop("Lit");
            _loc2_ = (§@K§.getItemByName("MovieClip_StarRight") as §%k§).x + (§@K§.getItemByName("Container_LevelEndStripe") as §'!9§).x;
            _loc3_ = (§@K§.getItemByName("MovieClip_StarRight") as §%k§).y + (§@K§.getItemByName("Container_LevelEndStripe") as §'!9§).y;
            this.§>!+§ = new §<C§(§"H§.§38§,§"H§.§5§,_loc2_,_loc3_,§<C§.§?=§);
            §@K§.addChild(this.§>!+§);
            this.§`l§.push(this.§>!+§);
         }
         else if(!this.§'q§)
         {
            this.§'q§ = true;
         }
         else
         {
            this.§"$§.stop();
            if(this.§!!J§)
            {
               (§@K§.getItemByName("MovieClip_NewHighScoreBadge") as §%k§).setVisibility(true);
            }
            else
            {
               (§@K§.getItemByName("MovieClip_NewHighScoreBadge") as §%k§).setVisibility(false);
            }
            this.§&%§ = §2!B§.§,!U§.§%!K§((§@K§.getItemByName("MovieClip_NewHighScoreBadge") as §%k§).mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":7,
               "scaleY":7
            },0.1);
            this.§&%§.onComplete = this.§<G§;
            this.§&%§.play();
         }
         ++this.§5&§;
      }
      
      private function §<g§() : void
      {
         §#`§.§>!e§(§^<§);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:§<C§ = null;
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §5r§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         §@K§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScore");
         §@K§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScoreEffects");
         for each(_loc3_ in this.§`l§)
         {
            _loc3_.update(param1);
         }
         if(this.§4!M§ > 0)
         {
            this.§@y§(param1);
         }
         if(mNextState.length > 0)
         {
            return §5r§.STATE_STATUS_COMPLETED;
         }
         return §5r§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§-!F§.§5=§(0);
         this.§#,§();
         this.§4!M§ = 0;
         §#`§.§>!e§(§^<§);
         (§@K§.getItemByName("Button_Menu") as §&!!§).setComponentVisualState(§4p§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§@K§.getItemByName("Button_Replay") as §&!!§).setComponentVisualState(§4p§.COMPONENT_STATE_ACTIVE_DEFAULT);
         §@K§.setText("0","TextField_LevelEndScore");
         §@K§.setText("0","TextField_LevelEndScoreEffects");
      }
      
      private function §#,§() : void
      {
         var _loc1_:§<C§ = null;
         if(this.§"$§)
         {
            this.§"$§.stop();
            this.§"$§.removeEventListener(TimerEvent.TIMER,this.§[!D§);
         }
         for each(_loc1_ in this.§`l§)
         {
            if(§@K§.contains(_loc1_))
            {
               §@K§.removeChild(_loc1_);
            }
            _loc1_.clean();
         }
         this.§`l§ = new Vector.<§<C§>();
         §@K§.getItemByName("TextField_BestScore").setVisibility(false);
         §@K§.getItemByName("MovieClip_BestScoreText").setVisibility(false);
         §@K§.getItemByName("MovieClip_BestScoreStars").setVisibility(false);
         §@K§.getItemByName("MovieClip_NewHighScore").setVisibility(false);
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
            mNextState = §94§;
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§'!`§) : void
      {
         super.uiInteractionHandler(param1,param2,param3);
         switch(param2)
         {
            case "NEXT_LEVEL":
               §8E§.§=!A§();
               mNextState = §8E§.§94§;
               break;
            case "REPLAY":
               §8E§.§1$§();
               mNextState = §8E§.§94§;
               break;
            case "MENU":
               §#`§.§2!5§();
               mNextState = §"H§.§]X§;
         }
      }
   }
}
