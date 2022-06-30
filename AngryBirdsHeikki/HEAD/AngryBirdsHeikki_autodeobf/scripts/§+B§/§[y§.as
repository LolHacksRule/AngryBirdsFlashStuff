package §+B§
{
   import §#%§.§70§;
   import §+!M§.§7!0§;
   import §+!M§.§^<§;
   import §,!V§.§<!?§;
   import §-!f§.§ else§;
   import §-!f§.§=T§;
   import §1!d§.§!![§;
   import §1!d§.§9m§;
   import §7e§.§#w§;
   import §8O§.§&#§;
   import §9!Q§.§5!!§;
   import §=!§.HighscoreSidebar;
   import §>!G§.§6!9§;
   import §]!&§.§,K§;
   import §]!&§.§5!5§;
   import §]!&§.§^!g§;
   import §^f§.§<q§;
   import flash.events.KeyboardEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   import §use §.§3!U§;
   import §use §.§;0§;
   
   public class §[y§ extends §-2§
   {
      
      public static const §[!%§:String = "LevelEndState";
      
      public static const §3!,§:Number = 30;
      
      private static const §^!O§:String = "ScoreLoopCountChannel";
      
      private static const §%R§:String = "EndScreenEffectChannel";
       
      
      private var §,F§:§!![§;
      
      private var §finally§:Number;
      
      private var §!!U§:Number;
      
      private var §5o§:Number;
      
      private var §<!9§:Boolean = false;
      
      private var §,#§:Timer;
      
      private var §[!V§:§;0§;
      
      private var § O§:§3!U§;
      
      private var §,!R§:Vector.<§3!U§>;
      
      public var mNewScoreCounter:int;
      
      private var § !D§:int;
      
      private var §@!9§:Boolean;
      
      private var §;r§:§5!!§;
      
      private var §,=§:Boolean;
      
      private var §"%§:§!![§;
      
      private var §#!c§:Array;
      
      public function §[y§(param1:Boolean = false, param2:String = "LevelEndState")
      {
         this.§;r§ = new §5!!§();
         this.§#!c§ = [];
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         § ,§ = new § else§(this);
         § ,§.init(§=T§.§2,§.Views.View_LevelEnd[0]);
         this.§3!0§();
         this.§[!V§ = new §;0§(0,0,0,0);
         § ,§.movieClip.addChildAt(this.§[!V§,§ ,§.movieClip.numChildren - 1);
         this.§,!R§ = new Vector.<§3!U§>();
         §<q§.§5i§(§^!O§,1,1);
         §<q§.§5i§(§%R§,16,1);
      }
      
      protected function §3!0§() : void
      {
         this.§#!c§.push(§ ,§.getItemByName("Button_Menu").x);
         this.§#!c§.push(§ ,§.getItemByName("Button_Replay").x);
         this.§#!c§.push(§ ,§.getItemByName("Button_Next").x);
      }
      
      protected function §[s§(param1:Boolean) : void
      {
         § ,§.getItemByName("Button_Menu").setVisibility(true);
         § ,§.getItemByName("Button_Replay").setVisibility(true);
         if(param1)
         {
            § ,§.getItemByName("Button_Next").setVisibility(true);
            § ,§.getItemByName("Button_Menu").x = this.§#!c§[0];
            § ,§.getItemByName("Button_Replay").x = this.§#!c§[1];
            § ,§.getItemByName("Button_Next").x = this.§#!c§[2];
         }
         else
         {
            § ,§.getItemByName("Button_Next").setVisibility(false);
            § ,§.getItemByName("Button_Menu").x = this.§#!c§[0] + Math.abs(this.§#!c§[1] - this.§#!c§[0]) / 2;
            § ,§.getItemByName("Button_Replay").x = this.§#!c§[1] + Math.abs(this.§#!c§[2] - this.§#!c§[1]) / 2 + § ,§.getItemByName("Button_Replay").width / 4;
         }
      }
      
      override public function activate() : void
      {
         super.activate();
         sHighscoreSidebar.enableHelpButton(false);
         §&#§.§3!D§.§"!E§(true);
         this.mNewScoreCounter = 0;
         this.§@!9§ = false;
         §<q§.§5!S§("LevelCompletedTheme1");
         this.§[!V§.§^;§(0.7);
         this.§1Z§();
         §70§.§2!I§();
         sHighscoreSidebar.changeState(HighscoreSidebar.§%!L§);
         this.§[s§(§70§.§<!D§(§#w§.§7$§()));
      }
      
      override protected function setInitialState() : void
      {
         sHighscoreSidebar.selectedLevelName = §#w§.§ !'§;
      }
      
      private function §1Z§() : void
      {
         this.§!!7§();
         this.§,#§ = new Timer(500);
         this.§ !D§ = 0;
         this.§,#§.addEventListener(TimerEvent.TIMER,this.§1!>§);
         this.§,#§.start();
      }
      
      private function §!!7§() : void
      {
         var _loc6_:int = 0;
         var _loc1_:int = §"!R§.§0!P§.§&!,§(§#w§.§ !'§);
         var _loc2_:int = (§&#§.§"1§ as §<!?§).getScore();
         this.§,=§ = _loc2_ >= _loc1_;
         if(this.§,=§)
         {
            _loc1_ = _loc2_;
            §"!R§.§0!P§.§-!F§(§#w§.§ !'§,_loc1_);
         }
         else
         {
            § ,§.setText("" + _loc1_.toString(),"TextField_BestScore");
            _loc6_ = §#w§.§2!O§(§#w§.§ !'§,_loc1_);
            switch(_loc6_)
            {
               case 1:
                  (§ ,§.getItemByName("MovieClip_BestScoreStars") as §,K§).§var §("OneStar");
                  break;
               case 2:
                  (§ ,§.getItemByName("MovieClip_BestScoreStars") as §,K§).§var §("TwoStar");
                  break;
               case 3:
                  (§ ,§.getItemByName("MovieClip_BestScoreStars") as §,K§).§var §("ThreeStar");
            }
         }
         var _loc3_:int = §&#§.§"1§.getEagleScore();
         var _loc4_:Number = §"!R§.§0!P§.§2l§(§#w§.§ !'§);
         var _loc5_:*;
         if(_loc5_ = _loc3_ > _loc4_)
         {
            _loc4_ = _loc3_;
            §"!R§.§0!P§.§%!T§(§#w§.§ !'§,_loc4_);
         }
         (§ ,§.getItemByName("MovieClip_NewHighScoreBadge") as §,K§).setVisibility(false);
         (§ ,§.getItemByName("MovieClip_StarLeft") as §,K§).mClip.gotoAndStop("UnLit");
         (§ ,§.getItemByName("MovieClip_StarCenter") as §,K§).mClip.gotoAndStop("UnLit");
         (§ ,§.getItemByName("MovieClip_StarRight") as §,K§).mClip.gotoAndStop("UnLit");
      }
      
      private function §29§() : void
      {
         if(this.§,=§)
         {
            §<q§.§7!=§(§%R§);
            §<q§.§5!S§("Hiscore_Badge",§%R§);
            § ,§.getItemByName("MovieClip_NewHighScore").setVisibility(true);
            § ,§.getItemByName("MovieClip_BestScoreStars").setVisibility(false);
            § ,§.getItemByName("MovieClip_BestScoreText").setVisibility(false);
            § ,§.getItemByName("TextField_BestScore").setVisibility(false);
            this.§@M§();
         }
         else
         {
            § ,§.getItemByName("TextField_BestScore").setVisibility(true);
            § ,§.getItemByName("MovieClip_BestScoreStars").setVisibility(true);
            § ,§.getItemByName("MovieClip_BestScoreText").setVisibility(true);
         }
      }
      
      private function §@M§() : void
      {
         this.§!!U§ = (§ ,§.getItemByName("Container_LevelEndStripe") as §5!5§).x;
         this.§5o§ = (§ ,§.getItemByName("Container_LevelEndStripe") as §5!5§).y;
         this.§finally§ = §3!,§;
      }
      
      private function §4f§(param1:Number) : void
      {
         if(this.§finally§ <= 0)
         {
            (§ ,§.getItemByName("Container_LevelEndStripe") as §5!5§).x = this.§!!U§;
            (§ ,§.getItemByName("Container_LevelEndStripe") as §5!5§).y = this.§5o§;
         }
         else
         {
            (§ ,§.getItemByName("Container_LevelEndStripe") as §5!5§).x = this.§!!U§ + (Math.random() - 0.5) * (this.§finally§ / §3!,§) * 20;
            (§ ,§.getItemByName("Container_LevelEndStripe") as §5!5§).y = this.§5o§ + (Math.random() - 0.5) * (this.§finally§ / §3!,§) * 20;
         }
         this.§finally§ -= param1 / 10;
      }
      
      private function §1!>§(param1:TimerEvent) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc4_:Number = §#w§.§;!E§(§#w§.§ !'§).§'c§;
         var _loc5_:Number = §#w§.§;!E§(§#w§.§ !'§).§7!C§;
         if((§ ,§.getItemByName("MovieClip_StarLeft") as §,K§).mClip.currentLabel == "UnLit")
         {
            §<q§.§5!S§("Hiscore_Count",§^!O§,100);
            §<q§.§7!=§(§%R§);
            §<q§.§5!S§("Hiscore_Star_Splash1",§%R§);
            this.§,#§.delay = 1000;
            this.§;r§.§04§(§&#§.§"1§.getScore());
            _loc6_ = this.§;r§.getValue() / _loc4_ * 2;
            this.§"%§ = §9m§.§?! §.§]C§(this,{"mNewScoreCounter":this.§;r§.getValue()},{"mNewScoreCounter":0},_loc6_);
            this.§"%§.onComplete = this.§%!H§;
            this.§"%§.play();
            (§ ,§.getItemByName("MovieClip_StarLeft") as §,K§).mClip.gotoAndStop("Lit");
            _loc2_ = (§ ,§.getItemByName("MovieClip_StarLeft") as §,K§).x + (§ ,§.getItemByName("Container_LevelEndStripe") as §5!5§).x;
            _loc3_ = (§ ,§.getItemByName("MovieClip_StarLeft") as §,K§).y + (§ ,§.getItemByName("Container_LevelEndStripe") as §5!5§).y;
            this.§ O§ = new §3!U§(§"!R§.§-m§,§"!R§.§1l§,_loc2_,_loc3_,§3!U§.§5!#§);
            § ,§.addChild(this.§ O§);
            this.§,!R§.push(this.§ O§);
         }
         else if(this.§;r§.getValue() >= _loc5_ && (§ ,§.getItemByName("MovieClip_StarCenter") as §,K§).mClip.currentLabel == "UnLit")
         {
            §<q§.§7!=§(§%R§);
            §<q§.§5!S§("Hiscore_Star_Splash2",§%R§);
            (§ ,§.getItemByName("MovieClip_StarCenter") as §,K§).mClip.gotoAndStop("Lit");
            _loc2_ = (§ ,§.getItemByName("MovieClip_StarCenter") as §,K§).x + (§ ,§.getItemByName("Container_LevelEndStripe") as §5!5§).x;
            _loc3_ = (§ ,§.getItemByName("MovieClip_StarCenter") as §,K§).y + (§ ,§.getItemByName("Container_LevelEndStripe") as §5!5§).y;
            this.§ O§ = new §3!U§(§"!R§.§-m§,§"!R§.§1l§,_loc2_,_loc3_,§3!U§.§?!'§);
            § ,§.addChild(this.§ O§);
            this.§,!R§.push(this.§ O§);
         }
         else if(this.§;r§.getValue() >= _loc4_ && (§ ,§.getItemByName("MovieClip_StarRight") as §,K§).mClip.currentLabel == "UnLit")
         {
            §<q§.§7!=§(§%R§);
            §<q§.§5!S§("Hiscore_Star_Splash3",§%R§);
            (§ ,§.getItemByName("MovieClip_StarRight") as §,K§).mClip.gotoAndStop("Lit");
            _loc2_ = (§ ,§.getItemByName("MovieClip_StarRight") as §,K§).x + (§ ,§.getItemByName("Container_LevelEndStripe") as §5!5§).x;
            _loc3_ = (§ ,§.getItemByName("MovieClip_StarRight") as §,K§).y + (§ ,§.getItemByName("Container_LevelEndStripe") as §5!5§).y;
            this.§ O§ = new §3!U§(§"!R§.§-m§,§"!R§.§1l§,_loc2_,_loc3_,§3!U§.§5D§);
            § ,§.addChild(this.§ O§);
            this.§,!R§.push(this.§ O§);
         }
         else if(!this.§@!9§)
         {
            this.§@!9§ = true;
         }
         else
         {
            this.§,#§.stop();
            if(this.§,=§)
            {
               (§ ,§.getItemByName("MovieClip_NewHighScoreBadge") as §,K§).setVisibility(true);
            }
            else
            {
               (§ ,§.getItemByName("MovieClip_NewHighScoreBadge") as §,K§).setVisibility(false);
            }
            this.§,F§ = §9m§.§?! §.§]C§((§ ,§.getItemByName("MovieClip_NewHighScoreBadge") as §,K§).mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":7,
               "scaleY":7
            },0.1);
            this.§,F§.onComplete = this.§29§;
            this.§,F§.play();
         }
         ++this.§ !D§;
      }
      
      private function §%!H§() : void
      {
         §<q§.§7!=§(§^!O§);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:§3!U§ = null;
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §6!9§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         § ,§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScore");
         § ,§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScoreEffects");
         for each(_loc3_ in this.§,!R§)
         {
            _loc3_.update(param1);
         }
         if(this.§finally§ > 0)
         {
            this.§4f§(param1);
         }
         if(mNextState.length > 0)
         {
            return §6!9§.STATE_STATUS_COMPLETED;
         }
         return §6!9§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§[!V§.§[!,§(0);
         this.§]T§();
         this.§finally§ = 0;
         §<q§.§7!=§(§^!O§);
         (§ ,§.getItemByName("Button_Menu") as §^!g§).setComponentVisualState(§^<§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§ ,§.getItemByName("Button_Replay") as §^!g§).setComponentVisualState(§^<§.COMPONENT_STATE_ACTIVE_DEFAULT);
         § ,§.setText("0","TextField_LevelEndScore");
         § ,§.setText("0","TextField_LevelEndScoreEffects");
      }
      
      private function §]T§() : void
      {
         var _loc1_:§3!U§ = null;
         if(this.§,#§)
         {
            this.§,#§.stop();
            this.§,#§.removeEventListener(TimerEvent.TIMER,this.§1!>§);
         }
         for each(_loc1_ in this.§,!R§)
         {
            if(§ ,§.contains(_loc1_))
            {
               § ,§.removeChild(_loc1_);
            }
            _loc1_.clean();
         }
         this.§,!R§ = new Vector.<§3!U§>();
         § ,§.getItemByName("TextField_BestScore").setVisibility(false);
         § ,§.getItemByName("MovieClip_BestScoreText").setVisibility(false);
         § ,§.getItemByName("MovieClip_BestScoreStars").setVisibility(false);
         § ,§.getItemByName("MovieClip_NewHighScore").setVisibility(false);
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
            mNextState = §[!%§;
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§7!0§) : void
      {
         super.uiInteractionHandler(param1,param2,param3);
         switch(param2)
         {
            case "NEXT_LEVEL":
               §1!g§.§]M§();
               mNextState = §1!g§.§[!%§;
               break;
            case "REPLAY":
               §1!g§.§3!4§();
               mNextState = §1!g§.§[!%§;
               break;
            case "MENU":
               §<q§.§2M§();
               mNextState = §"!R§.§54§;
         }
      }
   }
}
