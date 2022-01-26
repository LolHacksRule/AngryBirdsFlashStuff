package §97§
{
   import § !Y§.§7§;
   import § !Y§.§if§;
   import §"!G§.§6V§;
   import §2!Q§.§'[§;
   import §2H§.§>!^§;
   import §3-§.§1L§;
   import §93§.§?t§;
   import §93§.§^!H§;
   import §=!S§.§#!K§;
   import §=!c§.§-A§;
   import §=!c§.§=>§;
   import §=!c§.§^"§;
   import §=X§.§7!4§;
   import §>!_§.§2V§;
   import §>!_§.§9!+§;
   import §?!"§.§^!`§;
   import §@=§.§ S§;
   import §@=§.§'3§;
   import §[!C§.HighscoreSidebar;
   import flash.events.KeyboardEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §[U§ extends §62§
   {
      
      public static const §4l§:String = "LevelEndState";
      
      public static const §`!T§:Number = 30;
      
      private static const §['§:String = "ScoreLoopCountChannel";
      
      private static const §95§:String = "EndScreenEffectChannel";
       
      
      private var §5!T§:§2V§;
      
      private var §^5§:Number;
      
      private var § c§:Number;
      
      private var §+!C§:Number;
      
      private var § 9§:Boolean = false;
      
      private var §"M§:Timer;
      
      private var §4<§:§'3§;
      
      private var §<!#§:§ S§;
      
      private var §]'§:Vector.<§ S§>;
      
      public var mNewScoreCounter:int;
      
      private var §70§:int;
      
      private var §9!§:Boolean;
      
      private var §6h§:§#!K§;
      
      private var §#!a§:Boolean;
      
      private var §&a§:§2V§;
      
      private var §'!0§:Array;
      
      public function §[U§(param1:Boolean = false, param2:String = "LevelEndState")
      {
         this.§6h§ = new §#!K§();
         this.§'!0§ = [];
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §?P§ = new §if§(this);
         §?P§.init(§7§.§5!@§.Views.View_LevelEnd[0]);
         this.§&y§();
         this.§4<§ = new §'3§(0,0,0,0);
         §?P§.movieClip.addChildAt(this.§4<§,§?P§.movieClip.numChildren - 1);
         this.§]'§ = new Vector.<§ S§>();
         §'[§.§`V§(§['§,1,1);
         §'[§.§`V§(§95§,16,1);
      }
      
      protected function §&y§() : void
      {
         this.§'!0§.push(§?P§.getItemByName("Button_Menu").x);
         this.§'!0§.push(§?P§.getItemByName("Button_Replay").x);
         this.§'!0§.push(§?P§.getItemByName("Button_Next").x);
      }
      
      protected function §^P§(param1:Boolean) : void
      {
         §?P§.getItemByName("Button_Menu").setVisibility(true);
         §?P§.getItemByName("Button_Replay").setVisibility(true);
         if(param1)
         {
            §?P§.getItemByName("Button_Next").setVisibility(true);
            §?P§.getItemByName("Button_Menu").x = this.§'!0§[0];
            §?P§.getItemByName("Button_Replay").x = this.§'!0§[1];
            §?P§.getItemByName("Button_Next").x = this.§'!0§[2];
         }
         else
         {
            §?P§.getItemByName("Button_Next").setVisibility(false);
            §?P§.getItemByName("Button_Menu").x = this.§'!0§[0] + Math.abs(this.§'!0§[1] - this.§'!0§[0]) / 2;
            §?P§.getItemByName("Button_Replay").x = this.§'!0§[1] + Math.abs(this.§'!0§[2] - this.§'!0§[1]) / 2 + §?P§.getItemByName("Button_Replay").width / 4;
         }
      }
      
      override public function activate() : void
      {
         super.activate();
         sHighscoreSidebar.enableHelpButton(false);
         §1L§.§"f§.§2!A§(true);
         this.mNewScoreCounter = 0;
         this.§9!§ = false;
         §'[§.§"]§("LevelCompletedTheme1");
         this.§4<§.§%I§(0.7);
         this.§'!]§();
         §^!`§.§1n§();
         sHighscoreSidebar.changeState(HighscoreSidebar.§[?§);
         this.§^P§(§^!`§.§=!R§(§7!4§.§2!K§()));
      }
      
      override protected function setInitialState() : void
      {
         sHighscoreSidebar.selectedLevelName = §7!4§.§"P§;
      }
      
      private function §'!]§() : void
      {
         this.§[6§();
         this.§"M§ = new Timer(500);
         this.§70§ = 0;
         this.§"M§.addEventListener(TimerEvent.TIMER,this.§[h§);
         this.§"M§.start();
      }
      
      private function §[6§() : void
      {
         var _loc6_:int = 0;
         var _loc1_:int = §,-§.§?+§.§+,§(§7!4§.§"P§);
         var _loc2_:int = (§1L§.§[>§ as §6V§).getScore();
         this.§#!a§ = _loc2_ >= _loc1_;
         if(this.§#!a§)
         {
            _loc1_ = _loc2_;
            §,-§.§?+§.§,R§(§7!4§.§"P§,_loc1_);
         }
         else
         {
            §?P§.setText("" + _loc1_.toString(),"TextField_BestScore");
            _loc6_ = §7!4§.§'P§(§7!4§.§"P§,_loc1_);
            switch(_loc6_)
            {
               case 1:
                  (§?P§.getItemByName("MovieClip_BestScoreStars") as §^"§).§]S§("OneStar");
                  break;
               case 2:
                  (§?P§.getItemByName("MovieClip_BestScoreStars") as §^"§).§]S§("TwoStar");
                  break;
               case 3:
                  (§?P§.getItemByName("MovieClip_BestScoreStars") as §^"§).§]S§("ThreeStar");
            }
         }
         var _loc3_:int = §1L§.§[>§.getEagleScore();
         var _loc4_:Number = §,-§.§?+§.§"!R§(§7!4§.§"P§);
         var _loc5_:*;
         if(_loc5_ = _loc3_ > _loc4_)
         {
            _loc4_ = _loc3_;
            §,-§.§?+§.§&!&§(§7!4§.§"P§,_loc4_);
         }
         (§?P§.getItemByName("MovieClip_NewHighScoreBadge") as §^"§).setVisibility(false);
         (§?P§.getItemByName("MovieClip_StarLeft") as §^"§).mClip.gotoAndStop("UnLit");
         (§?P§.getItemByName("MovieClip_StarCenter") as §^"§).mClip.gotoAndStop("UnLit");
         (§?P§.getItemByName("MovieClip_StarRight") as §^"§).mClip.gotoAndStop("UnLit");
      }
      
      private function §'!E§() : void
      {
         if(this.§#!a§)
         {
            §'[§.§,!?§(§95§);
            §'[§.§"]§("Hiscore_Badge",§95§);
            §?P§.getItemByName("MovieClip_NewHighScore").setVisibility(true);
            §?P§.getItemByName("MovieClip_BestScoreStars").setVisibility(false);
            §?P§.getItemByName("MovieClip_BestScoreText").setVisibility(false);
            §?P§.getItemByName("TextField_BestScore").setVisibility(false);
            this.§&&§();
         }
         else
         {
            §?P§.getItemByName("TextField_BestScore").setVisibility(true);
            §?P§.getItemByName("MovieClip_BestScoreStars").setVisibility(true);
            §?P§.getItemByName("MovieClip_BestScoreText").setVisibility(true);
         }
      }
      
      private function §&&§() : void
      {
         this.§ c§ = (§?P§.getItemByName("Container_LevelEndStripe") as §=>§).x;
         this.§+!C§ = (§?P§.getItemByName("Container_LevelEndStripe") as §=>§).y;
         this.§^5§ = §`!T§;
      }
      
      private function §"l§(param1:Number) : void
      {
         if(this.§^5§ <= 0)
         {
            (§?P§.getItemByName("Container_LevelEndStripe") as §=>§).x = this.§ c§;
            (§?P§.getItemByName("Container_LevelEndStripe") as §=>§).y = this.§+!C§;
         }
         else
         {
            (§?P§.getItemByName("Container_LevelEndStripe") as §=>§).x = this.§ c§ + (Math.random() - 0.5) * (this.§^5§ / §`!T§) * 20;
            (§?P§.getItemByName("Container_LevelEndStripe") as §=>§).y = this.§+!C§ + (Math.random() - 0.5) * (this.§^5§ / §`!T§) * 20;
         }
         this.§^5§ -= param1 / 10;
      }
      
      private function §[h§(param1:TimerEvent) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc4_:Number = §7!4§.§,&§(§7!4§.§"P§).§?9§;
         var _loc5_:Number = §7!4§.§,&§(§7!4§.§"P§).§ `§;
         if((§?P§.getItemByName("MovieClip_StarLeft") as §^"§).mClip.currentLabel == "UnLit")
         {
            §'[§.§"]§("Hiscore_Count",§['§,100);
            §'[§.§,!?§(§95§);
            §'[§.§"]§("Hiscore_Star_Splash1",§95§);
            this.§"M§.delay = 1000;
            this.§6h§.§->§(§1L§.§[>§.getScore());
            _loc6_ = this.§6h§.getValue() / _loc4_ * 2;
            this.§&a§ = §9!+§.§;!F§.§`!'§(this,{"mNewScoreCounter":this.§6h§.getValue()},{"mNewScoreCounter":0},_loc6_);
            this.§&a§.onComplete = this.§@!O§;
            this.§&a§.play();
            (§?P§.getItemByName("MovieClip_StarLeft") as §^"§).mClip.gotoAndStop("Lit");
            _loc2_ = (§?P§.getItemByName("MovieClip_StarLeft") as §^"§).x + (§?P§.getItemByName("Container_LevelEndStripe") as §=>§).x;
            _loc3_ = (§?P§.getItemByName("MovieClip_StarLeft") as §^"§).y + (§?P§.getItemByName("Container_LevelEndStripe") as §=>§).y;
            this.§<!#§ = new § S§(§,-§.§ for§,§,-§.§[S§,_loc2_,_loc3_,§ S§.§,;§);
            §?P§.addChild(this.§<!#§);
            this.§]'§.push(this.§<!#§);
         }
         else if(this.§6h§.getValue() >= _loc5_ && (§?P§.getItemByName("MovieClip_StarCenter") as §^"§).mClip.currentLabel == "UnLit")
         {
            §'[§.§,!?§(§95§);
            §'[§.§"]§("Hiscore_Star_Splash2",§95§);
            (§?P§.getItemByName("MovieClip_StarCenter") as §^"§).mClip.gotoAndStop("Lit");
            _loc2_ = (§?P§.getItemByName("MovieClip_StarCenter") as §^"§).x + (§?P§.getItemByName("Container_LevelEndStripe") as §=>§).x;
            _loc3_ = (§?P§.getItemByName("MovieClip_StarCenter") as §^"§).y + (§?P§.getItemByName("Container_LevelEndStripe") as §=>§).y;
            this.§<!#§ = new § S§(§,-§.§ for§,§,-§.§[S§,_loc2_,_loc3_,§ S§.§^z§);
            §?P§.addChild(this.§<!#§);
            this.§]'§.push(this.§<!#§);
         }
         else if(this.§6h§.getValue() >= _loc4_ && (§?P§.getItemByName("MovieClip_StarRight") as §^"§).mClip.currentLabel == "UnLit")
         {
            §'[§.§,!?§(§95§);
            §'[§.§"]§("Hiscore_Star_Splash3",§95§);
            (§?P§.getItemByName("MovieClip_StarRight") as §^"§).mClip.gotoAndStop("Lit");
            _loc2_ = (§?P§.getItemByName("MovieClip_StarRight") as §^"§).x + (§?P§.getItemByName("Container_LevelEndStripe") as §=>§).x;
            _loc3_ = (§?P§.getItemByName("MovieClip_StarRight") as §^"§).y + (§?P§.getItemByName("Container_LevelEndStripe") as §=>§).y;
            this.§<!#§ = new § S§(§,-§.§ for§,§,-§.§[S§,_loc2_,_loc3_,§ S§.§]B§);
            §?P§.addChild(this.§<!#§);
            this.§]'§.push(this.§<!#§);
         }
         else if(!this.§9!§)
         {
            this.§9!§ = true;
         }
         else
         {
            this.§"M§.stop();
            if(this.§#!a§)
            {
               (§?P§.getItemByName("MovieClip_NewHighScoreBadge") as §^"§).setVisibility(true);
            }
            else
            {
               (§?P§.getItemByName("MovieClip_NewHighScoreBadge") as §^"§).setVisibility(false);
            }
            this.§5!T§ = §9!+§.§;!F§.§`!'§((§?P§.getItemByName("MovieClip_NewHighScoreBadge") as §^"§).mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":7,
               "scaleY":7
            },0.1);
            this.§5!T§.onComplete = this.§'!E§;
            this.§5!T§.play();
         }
         ++this.§70§;
      }
      
      private function §@!O§() : void
      {
         §'[§.§,!?§(§['§);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:§ S§ = null;
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §>!^§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         §?P§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScore");
         §?P§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScoreEffects");
         for each(_loc3_ in this.§]'§)
         {
            _loc3_.update(param1);
         }
         if(this.§^5§ > 0)
         {
            this.§"l§(param1);
         }
         if(mNextState.length > 0)
         {
            return §>!^§.STATE_STATUS_COMPLETED;
         }
         return §>!^§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§4<§.§?!#§(0);
         this.§%!T§();
         this.§^5§ = 0;
         §'[§.§,!?§(§['§);
         (§?P§.getItemByName("Button_Menu") as §-A§).setComponentVisualState(§?t§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§?P§.getItemByName("Button_Replay") as §-A§).setComponentVisualState(§?t§.COMPONENT_STATE_ACTIVE_DEFAULT);
         §?P§.setText("0","TextField_LevelEndScore");
         §?P§.setText("0","TextField_LevelEndScoreEffects");
      }
      
      private function §%!T§() : void
      {
         var _loc1_:§ S§ = null;
         if(this.§"M§)
         {
            this.§"M§.stop();
            this.§"M§.removeEventListener(TimerEvent.TIMER,this.§[h§);
         }
         for each(_loc1_ in this.§]'§)
         {
            if(§?P§.contains(_loc1_))
            {
               §?P§.removeChild(_loc1_);
            }
            _loc1_.clean();
         }
         this.§]'§ = new Vector.<§ S§>();
         §?P§.getItemByName("TextField_BestScore").setVisibility(false);
         §?P§.getItemByName("MovieClip_BestScoreText").setVisibility(false);
         §?P§.getItemByName("MovieClip_BestScoreStars").setVisibility(false);
         §?P§.getItemByName("MovieClip_NewHighScore").setVisibility(false);
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
            mNextState = §4l§;
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§^!H§) : void
      {
         super.uiInteractionHandler(param1,param2,param3);
         switch(param2)
         {
            case "NEXT_LEVEL":
               §]!X§.§!U§();
               mNextState = §]!X§.§4l§;
               break;
            case "REPLAY":
               §]!X§.§6$§();
               mNextState = §]!X§.§4l§;
               break;
            case "MENU":
               §'[§.§9!;§();
               mNextState = §,-§.§,O§;
         }
      }
   }
}
