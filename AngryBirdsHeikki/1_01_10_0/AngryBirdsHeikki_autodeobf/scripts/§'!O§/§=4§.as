package §'!O§
{
   import §'!N§.§25§;
   import §'!N§.§2O§;
   import §'!N§.§<i§;
   import §-!"§.§=p§;
   import §2`§.HighscoreSidebar;
   import §3!b§.§+!,§;
   import §3Y§.§4!_§;
   import §5!1§.§"!X§;
   import §5!1§.§&[§;
   import §8P§.§1A§;
   import §8P§.§4!Y§;
   import §9!@§.§"?§;
   import §9!@§.§-k§;
   import §9b§.§"!S§;
   import §<u§.§;A§;
   import §<u§.§]!Q§;
   import §=! §.§[2§;
   import §^!0§.§&M§;
   import §^!5§.§,4§;
   import flash.events.KeyboardEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §=4§ extends §=j§
   {
      
      public static const §@o§:String = "LevelEndState";
      
      public static const §]!;§:Number = 30;
      
      private static const §[8§:String = "ScoreLoopCountChannel";
      
      private static const §[!K§:String = "EndScreenEffectChannel";
       
      
      private var §,F§:§&[§;
      
      private var §'=§:Number;
      
      private var §9P§:Number;
      
      private var §=Y§:Number;
      
      private var §-i§:Boolean = false;
      
      private var §#!]§:Timer;
      
      private var §+!_§:§-k§;
      
      private var § !P§:§"?§;
      
      private var §,!2§:Vector.<§"?§>;
      
      public var mNewScoreCounter:int;
      
      private var §0!C§:int;
      
      private var §-@§:Boolean;
      
      private var §=7§:§[2§;
      
      private var §[D§:Boolean;
      
      private var §1D§:§&[§;
      
      private var §[!`§:Array;
      
      public function §=4§(param1:Boolean = false, param2:String = "LevelEndState")
      {
         this.§=7§ = new §[2§();
         this.§[!`§ = [];
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §]!9§ = new §]!Q§(this);
         §]!9§.init(§;A§.§=I§.Views.View_LevelEnd[0]);
         this.§]!a§();
         this.§+!_§ = new §-k§(0,0,0,0);
         §]!9§.movieClip.addChildAt(this.§+!_§,§]!9§.movieClip.numChildren - 1);
         this.§,!2§ = new Vector.<§"?§>();
         §&M§.§1!V§(§[8§,1,1);
         §&M§.§1!V§(§[!K§,16,1);
      }
      
      protected function §]!a§() : void
      {
         this.§[!`§.push(§]!9§.getItemByName("Button_Menu").x);
         this.§[!`§.push(§]!9§.getItemByName("Button_Replay").x);
         this.§[!`§.push(§]!9§.getItemByName("Button_Next").x);
      }
      
      protected function §3f§(param1:Boolean) : void
      {
         §]!9§.getItemByName("Button_Menu").setVisibility(true);
         §]!9§.getItemByName("Button_Replay").setVisibility(true);
         if(param1)
         {
            §]!9§.getItemByName("Button_Next").setVisibility(true);
            §]!9§.getItemByName("Button_Menu").x = this.§[!`§[0];
            §]!9§.getItemByName("Button_Replay").x = this.§[!`§[1];
            §]!9§.getItemByName("Button_Next").x = this.§[!`§[2];
         }
         else
         {
            §]!9§.getItemByName("Button_Next").setVisibility(false);
            §]!9§.getItemByName("Button_Menu").x = this.§[!`§[0] + Math.abs(this.§[!`§[1] - this.§[!`§[0]) / 2;
            §]!9§.getItemByName("Button_Replay").x = this.§[!`§[1] + Math.abs(this.§[!`§[2] - this.§[!`§[1]) / 2 + §]!9§.getItemByName("Button_Replay").width / 4;
         }
      }
      
      override public function activate() : void
      {
         super.activate();
         sHighscoreSidebar.enableHelpButton(false);
         §"!S§.§-!7§.§%2§(true);
         this.mNewScoreCounter = 0;
         this.§-@§ = false;
         §&M§.§6!#§("LevelCompletedTheme1");
         this.§+!_§.§4!?§(0.7);
         this.§36§();
         §4!_§.§!!]§();
         sHighscoreSidebar.changeState(HighscoreSidebar.§`!e§);
         this.§3f§(§4!_§.§]#§(§,4§.§;!4§()));
      }
      
      override protected function setInitialState() : void
      {
         sHighscoreSidebar.selectedLevelName = §,4§.§0!$§;
      }
      
      private function §36§() : void
      {
         this.§3!a§();
         this.§#!]§ = new Timer(500);
         this.§0!C§ = 0;
         this.§#!]§.addEventListener(TimerEvent.TIMER,this.§@T§);
         this.§#!]§.start();
      }
      
      private function §3!a§() : void
      {
         var _loc6_:int = 0;
         var _loc1_:int = §,L§.§8!F§.§%=§(§,4§.§0!$§);
         var _loc2_:int = (§"!S§.§]O§ as §+!,§).getScore();
         this.§[D§ = _loc2_ >= _loc1_;
         if(this.§[D§)
         {
            _loc1_ = _loc2_;
            §,L§.§8!F§.§!!N§(§,4§.§0!$§,_loc1_);
         }
         else
         {
            §]!9§.setText("" + _loc1_.toString(),"TextField_BestScore");
            _loc6_ = §,4§.§8F§(§,4§.§0!$§,_loc1_);
            switch(_loc6_)
            {
               case 1:
                  (§]!9§.getItemByName("MovieClip_BestScoreStars") as §25§).§<v§("OneStar");
                  break;
               case 2:
                  (§]!9§.getItemByName("MovieClip_BestScoreStars") as §25§).§<v§("TwoStar");
                  break;
               case 3:
                  (§]!9§.getItemByName("MovieClip_BestScoreStars") as §25§).§<v§("ThreeStar");
            }
         }
         var _loc3_:int = §"!S§.§]O§.getEagleScore();
         var _loc4_:Number = §,L§.§8!F§.§=!T§(§,4§.§0!$§);
         var _loc5_:*;
         if(_loc5_ = _loc3_ > _loc4_)
         {
            _loc4_ = _loc3_;
            §,L§.§8!F§.§,!6§(§,4§.§0!$§,_loc4_);
         }
         (§]!9§.getItemByName("MovieClip_NewHighScoreBadge") as §25§).setVisibility(false);
         (§]!9§.getItemByName("MovieClip_StarLeft") as §25§).mClip.gotoAndStop("UnLit");
         (§]!9§.getItemByName("MovieClip_StarCenter") as §25§).mClip.gotoAndStop("UnLit");
         (§]!9§.getItemByName("MovieClip_StarRight") as §25§).mClip.gotoAndStop("UnLit");
      }
      
      private function §&g§() : void
      {
         if(this.§[D§)
         {
            §&M§.§7!<§(§[!K§);
            §&M§.§6!#§("Hiscore_Badge",§[!K§);
            §]!9§.getItemByName("MovieClip_NewHighScore").setVisibility(true);
            §]!9§.getItemByName("MovieClip_BestScoreStars").setVisibility(false);
            §]!9§.getItemByName("MovieClip_BestScoreText").setVisibility(false);
            §]!9§.getItemByName("TextField_BestScore").setVisibility(false);
            this.§3!&§();
         }
         else
         {
            §]!9§.getItemByName("TextField_BestScore").setVisibility(true);
            §]!9§.getItemByName("MovieClip_BestScoreStars").setVisibility(true);
            §]!9§.getItemByName("MovieClip_BestScoreText").setVisibility(true);
         }
      }
      
      private function §3!&§() : void
      {
         this.§9P§ = (§]!9§.getItemByName("Container_LevelEndStripe") as §2O§).x;
         this.§=Y§ = (§]!9§.getItemByName("Container_LevelEndStripe") as §2O§).y;
         this.§'=§ = §]!;§;
      }
      
      private function §`u§(param1:Number) : void
      {
         if(this.§'=§ <= 0)
         {
            (§]!9§.getItemByName("Container_LevelEndStripe") as §2O§).x = this.§9P§;
            (§]!9§.getItemByName("Container_LevelEndStripe") as §2O§).y = this.§=Y§;
         }
         else
         {
            (§]!9§.getItemByName("Container_LevelEndStripe") as §2O§).x = this.§9P§ + (Math.random() - 0.5) * (this.§'=§ / §]!;§) * 20;
            (§]!9§.getItemByName("Container_LevelEndStripe") as §2O§).y = this.§=Y§ + (Math.random() - 0.5) * (this.§'=§ / §]!;§) * 20;
         }
         this.§'=§ -= param1 / 10;
      }
      
      private function §@T§(param1:TimerEvent) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc4_:Number = §,4§.§6W§(§,4§.§0!$§).§=!F§;
         var _loc5_:Number = §,4§.§6W§(§,4§.§0!$§).§@Y§;
         if((§]!9§.getItemByName("MovieClip_StarLeft") as §25§).mClip.currentLabel == "UnLit")
         {
            §&M§.§6!#§("Hiscore_Count",§[8§,100);
            §&M§.§7!<§(§[!K§);
            §&M§.§6!#§("Hiscore_Star_Splash1",§[!K§);
            this.§#!]§.delay = 1000;
            this.§=7§.§=$§(§"!S§.§]O§.getScore());
            _loc6_ = this.§=7§.getValue() / _loc4_ * 2;
            this.§1D§ = §"!X§.§ s§.§%!;§(this,{"mNewScoreCounter":this.§=7§.getValue()},{"mNewScoreCounter":0},_loc6_);
            this.§1D§.onComplete = this.§3V§;
            this.§1D§.play();
            (§]!9§.getItemByName("MovieClip_StarLeft") as §25§).mClip.gotoAndStop("Lit");
            _loc2_ = (§]!9§.getItemByName("MovieClip_StarLeft") as §25§).x + (§]!9§.getItemByName("Container_LevelEndStripe") as §2O§).x;
            _loc3_ = (§]!9§.getItemByName("MovieClip_StarLeft") as §25§).y + (§]!9§.getItemByName("Container_LevelEndStripe") as §2O§).y;
            this.§ !P§ = new §"?§(§,L§.§1'§,§,L§.§!!d§,_loc2_,_loc3_,§"?§.§0#§);
            §]!9§.addChild(this.§ !P§);
            this.§,!2§.push(this.§ !P§);
         }
         else if(this.§=7§.getValue() >= _loc5_ && (§]!9§.getItemByName("MovieClip_StarCenter") as §25§).mClip.currentLabel == "UnLit")
         {
            §&M§.§7!<§(§[!K§);
            §&M§.§6!#§("Hiscore_Star_Splash2",§[!K§);
            (§]!9§.getItemByName("MovieClip_StarCenter") as §25§).mClip.gotoAndStop("Lit");
            _loc2_ = (§]!9§.getItemByName("MovieClip_StarCenter") as §25§).x + (§]!9§.getItemByName("Container_LevelEndStripe") as §2O§).x;
            _loc3_ = (§]!9§.getItemByName("MovieClip_StarCenter") as §25§).y + (§]!9§.getItemByName("Container_LevelEndStripe") as §2O§).y;
            this.§ !P§ = new §"?§(§,L§.§1'§,§,L§.§!!d§,_loc2_,_loc3_,§"?§.§9j§);
            §]!9§.addChild(this.§ !P§);
            this.§,!2§.push(this.§ !P§);
         }
         else if(this.§=7§.getValue() >= _loc4_ && (§]!9§.getItemByName("MovieClip_StarRight") as §25§).mClip.currentLabel == "UnLit")
         {
            §&M§.§7!<§(§[!K§);
            §&M§.§6!#§("Hiscore_Star_Splash3",§[!K§);
            (§]!9§.getItemByName("MovieClip_StarRight") as §25§).mClip.gotoAndStop("Lit");
            _loc2_ = (§]!9§.getItemByName("MovieClip_StarRight") as §25§).x + (§]!9§.getItemByName("Container_LevelEndStripe") as §2O§).x;
            _loc3_ = (§]!9§.getItemByName("MovieClip_StarRight") as §25§).y + (§]!9§.getItemByName("Container_LevelEndStripe") as §2O§).y;
            this.§ !P§ = new §"?§(§,L§.§1'§,§,L§.§!!d§,_loc2_,_loc3_,§"?§.§&n§);
            §]!9§.addChild(this.§ !P§);
            this.§,!2§.push(this.§ !P§);
         }
         else if(!this.§-@§)
         {
            this.§-@§ = true;
         }
         else
         {
            this.§#!]§.stop();
            if(this.§[D§)
            {
               (§]!9§.getItemByName("MovieClip_NewHighScoreBadge") as §25§).setVisibility(true);
            }
            else
            {
               (§]!9§.getItemByName("MovieClip_NewHighScoreBadge") as §25§).setVisibility(false);
            }
            this.§,F§ = §"!X§.§ s§.§%!;§((§]!9§.getItemByName("MovieClip_NewHighScoreBadge") as §25§).mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":7,
               "scaleY":7
            },0.1);
            this.§,F§.onComplete = this.§&g§;
            this.§,F§.play();
         }
         ++this.§0!C§;
      }
      
      private function §3V§() : void
      {
         §&M§.§7!<§(§[8§);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:§"?§ = null;
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §=p§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         §]!9§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScore");
         §]!9§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScoreEffects");
         for each(_loc3_ in this.§,!2§)
         {
            _loc3_.update(param1);
         }
         if(this.§'=§ > 0)
         {
            this.§`u§(param1);
         }
         if(mNextState.length > 0)
         {
            return §=p§.STATE_STATUS_COMPLETED;
         }
         return §=p§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§+!_§.§import§(0);
         this.§"X§();
         this.§'=§ = 0;
         §&M§.§7!<§(§[8§);
         (§]!9§.getItemByName("Button_Menu") as §<i§).setComponentVisualState(§4!Y§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§]!9§.getItemByName("Button_Replay") as §<i§).setComponentVisualState(§4!Y§.COMPONENT_STATE_ACTIVE_DEFAULT);
         §]!9§.setText("0","TextField_LevelEndScore");
         §]!9§.setText("0","TextField_LevelEndScoreEffects");
      }
      
      private function §"X§() : void
      {
         var _loc1_:§"?§ = null;
         if(this.§#!]§)
         {
            this.§#!]§.stop();
            this.§#!]§.removeEventListener(TimerEvent.TIMER,this.§@T§);
         }
         for each(_loc1_ in this.§,!2§)
         {
            if(§]!9§.contains(_loc1_))
            {
               §]!9§.removeChild(_loc1_);
            }
            _loc1_.clean();
         }
         this.§,!2§ = new Vector.<§"?§>();
         §]!9§.getItemByName("TextField_BestScore").setVisibility(false);
         §]!9§.getItemByName("MovieClip_BestScoreText").setVisibility(false);
         §]!9§.getItemByName("MovieClip_BestScoreStars").setVisibility(false);
         §]!9§.getItemByName("MovieClip_NewHighScore").setVisibility(false);
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
            mNextState = §@o§;
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§1A§) : void
      {
         super.uiInteractionHandler(param1,param2,param3);
         switch(param2)
         {
            case "NEXT_LEVEL":
               §<r§.§4=§();
               mNextState = §<r§.§@o§;
               break;
            case "REPLAY":
               §<r§.§0^§();
               mNextState = §<r§.§@o§;
               break;
            case "MENU":
               §&M§.§=!7§();
               mNextState = §,L§.§[!;§;
         }
      }
   }
}
