package §+!9§
{
   import §#!&§.§#O§;
   import §#!&§.§48§;
   import §#!&§.§59§;
   import §,J§.§7!A§;
   import §1!6§.§ !3§;
   import §4!9§.§5O§;
   import §4;§.§,h§;
   import §4t§.§`c§;
   import §6!"§.§<!+§;
   import §6!"§.§='§;
   import §6-§.§"H§;
   import §6-§.§%1§;
   import §7!X§.§%!=§;
   import §7!X§.§7g§;
   import §7h§.§7!"§;
   import §?!P§.§@@§;
   import flash.events.KeyboardEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   import §var§.§+!^§;
   import §var§.§8!_§;
   
   public class §9;§ extends §3!!§
   {
      
      public static const §6! §:String = "LevelEndState";
      
      public static const §8!G§:Number = 30;
      
      private static const §^C§:String = "ScoreLoopCountChannel";
      
      private static const §?!A§:String = "EndScreenEffectChannel";
       
      
      private var §<x§:§%1§;
      
      private var §[!8§:Number;
      
      private var §?=§:Number;
      
      private var §<!#§:Number;
      
      private var §?!V§:Boolean = false;
      
      private var §"e§:Timer;
      
      private var §#Z§:§<!+§;
      
      private var §-!6§:§='§;
      
      private var §4!M§:Vector.<§='§>;
      
      public var mNewScoreCounter:int;
      
      private var §]!5§:int;
      
      private var §]!X§:Boolean;
      
      private var §?!"§:§5O§;
      
      private var § !O§:Boolean;
      
      private var § F§:§%1§;
      
      private var §8!E§:Array;
      
      public function §9;§(param1:Boolean = false, param2:String = "LevelEndState")
      {
         this.§?!"§ = new §5O§();
         this.§8!E§ = [];
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §2!M§ = new §7g§(this);
         §2!M§.init(§%!=§.§ #§.Views.View_LevelEnd[0]);
         this.§3!^§();
         this.§#Z§ = new §<!+§(0,0,0,0);
         §2!M§.movieClip.addChildAt(this.§#Z§,§2!M§.movieClip.numChildren - 1);
         this.§4!M§ = new Vector.<§='§>();
         §7!"§.§@c§(§^C§,1,1);
         §7!"§.§@c§(§?!A§,16,1);
      }
      
      protected function §3!^§() : void
      {
         this.§8!E§.push(§2!M§.getItemByName("Button_Menu").x);
         this.§8!E§.push(§2!M§.getItemByName("Button_Replay").x);
         this.§8!E§.push(§2!M§.getItemByName("Button_Next").x);
      }
      
      protected function §`m§(param1:Boolean) : void
      {
         §2!M§.getItemByName("Button_Menu").setVisibility(true);
         §2!M§.getItemByName("Button_Replay").setVisibility(true);
         if(param1)
         {
            §2!M§.getItemByName("Button_Next").setVisibility(true);
            §2!M§.getItemByName("Button_Menu").x = this.§8!E§[0];
            §2!M§.getItemByName("Button_Replay").x = this.§8!E§[1];
            §2!M§.getItemByName("Button_Next").x = this.§8!E§[2];
         }
         else
         {
            §2!M§.getItemByName("Button_Next").setVisibility(false);
            §2!M§.getItemByName("Button_Menu").x = this.§8!E§[0] + Math.abs(this.§8!E§[1] - this.§8!E§[0]) / 2;
            §2!M§.getItemByName("Button_Replay").x = this.§8!E§[1] + Math.abs(this.§8!E§[2] - this.§8!E§[1]) / 2 + §2!M§.getItemByName("Button_Replay").width / 4;
         }
      }
      
      override public function activate() : void
      {
         super.activate();
         sHighscoreSidebar.enableHelpButton(false);
         §@@§.§ !8§.§5!?§(true);
         this.mNewScoreCounter = 0;
         this.§]!X§ = false;
         §7!"§.§#W§("LevelCompletedTheme1");
         this.§#Z§.§+!>§(0.7);
         this.§^!2§();
         § !3§.§44§();
         sHighscoreSidebar.changeState(HighscoreSidebar.§4^§);
         this.§`m§(§ !3§.§]D§(§7!A§.§5R§()));
      }
      
      override protected function setInitialState() : void
      {
         sHighscoreSidebar.selectedLevelName = §7!A§.§ !A§;
      }
      
      private function §^!2§() : void
      {
         this.§'f§();
         this.§"e§ = new Timer(500);
         this.§]!5§ = 0;
         this.§"e§.addEventListener(TimerEvent.TIMER,this.§,t§);
         this.§"e§.start();
      }
      
      private function §'f§() : void
      {
         var _loc6_:int = 0;
         var _loc1_:int = §1F§.§=l§.§3!Q§(§7!A§.§ !A§);
         var _loc2_:int = (§@@§.§6!L§ as §`c§).getScore();
         this.§ !O§ = _loc2_ >= _loc1_;
         if(this.§ !O§)
         {
            _loc1_ = _loc2_;
            §1F§.§=l§.§6!R§(§7!A§.§ !A§,_loc1_);
         }
         else
         {
            §2!M§.setText("" + _loc1_.toString(),"TextField_BestScore");
            _loc6_ = §7!A§.§2!!§(§7!A§.§ !A§,_loc1_);
            switch(_loc6_)
            {
               case 1:
                  (§2!M§.getItemByName("MovieClip_BestScoreStars") as §48§).§0S§("OneStar");
                  break;
               case 2:
                  (§2!M§.getItemByName("MovieClip_BestScoreStars") as §48§).§0S§("TwoStar");
                  break;
               case 3:
                  (§2!M§.getItemByName("MovieClip_BestScoreStars") as §48§).§0S§("ThreeStar");
            }
         }
         var _loc3_:int = §@@§.§6!L§.getEagleScore();
         var _loc4_:Number = §1F§.§=l§.§=f§(§7!A§.§ !A§);
         var _loc5_:*;
         if(_loc5_ = _loc3_ > _loc4_)
         {
            _loc4_ = _loc3_;
            §1F§.§=l§.§<V§(§7!A§.§ !A§,_loc4_);
         }
         (§2!M§.getItemByName("MovieClip_NewHighScoreBadge") as §48§).setVisibility(false);
         (§2!M§.getItemByName("MovieClip_StarLeft") as §48§).mClip.gotoAndStop("UnLit");
         (§2!M§.getItemByName("MovieClip_StarCenter") as §48§).mClip.gotoAndStop("UnLit");
         (§2!M§.getItemByName("MovieClip_StarRight") as §48§).mClip.gotoAndStop("UnLit");
      }
      
      private function §]o§() : void
      {
         if(this.§ !O§)
         {
            §7!"§.§`!-§(§?!A§);
            §7!"§.§#W§("Hiscore_Badge",§?!A§);
            §2!M§.getItemByName("MovieClip_NewHighScore").setVisibility(true);
            §2!M§.getItemByName("MovieClip_BestScoreStars").setVisibility(false);
            §2!M§.getItemByName("MovieClip_BestScoreText").setVisibility(false);
            §2!M§.getItemByName("TextField_BestScore").setVisibility(false);
            this.§@v§();
         }
         else
         {
            §2!M§.getItemByName("TextField_BestScore").setVisibility(true);
            §2!M§.getItemByName("MovieClip_BestScoreStars").setVisibility(true);
            §2!M§.getItemByName("MovieClip_BestScoreText").setVisibility(true);
         }
      }
      
      private function §@v§() : void
      {
         this.§?=§ = (§2!M§.getItemByName("Container_LevelEndStripe") as §59§).x;
         this.§<!#§ = (§2!M§.getItemByName("Container_LevelEndStripe") as §59§).y;
         this.§[!8§ = §8!G§;
      }
      
      private function §3H§(param1:Number) : void
      {
         if(this.§[!8§ <= 0)
         {
            (§2!M§.getItemByName("Container_LevelEndStripe") as §59§).x = this.§?=§;
            (§2!M§.getItemByName("Container_LevelEndStripe") as §59§).y = this.§<!#§;
         }
         else
         {
            (§2!M§.getItemByName("Container_LevelEndStripe") as §59§).x = this.§?=§ + (Math.random() - 0.5) * (this.§[!8§ / §8!G§) * 20;
            (§2!M§.getItemByName("Container_LevelEndStripe") as §59§).y = this.§<!#§ + (Math.random() - 0.5) * (this.§[!8§ / §8!G§) * 20;
         }
         this.§[!8§ -= param1 / 10;
      }
      
      private function §,t§(param1:TimerEvent) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc4_:Number = §7!A§.§5!O§(§7!A§.§ !A§).§!!O§;
         var _loc5_:Number = §7!A§.§5!O§(§7!A§.§ !A§).§+!H§;
         if((§2!M§.getItemByName("MovieClip_StarLeft") as §48§).mClip.currentLabel == "UnLit")
         {
            §7!"§.§#W§("Hiscore_Count",§^C§,100);
            §7!"§.§`!-§(§?!A§);
            §7!"§.§#W§("Hiscore_Star_Splash1",§?!A§);
            this.§"e§.delay = 1000;
            this.§?!"§.§4C§(§@@§.§6!L§.getScore());
            _loc6_ = this.§?!"§.getValue() / _loc4_ * 2;
            this.§ F§ = §"H§.§'![§.§8Y§(this,{"mNewScoreCounter":this.§?!"§.getValue()},{"mNewScoreCounter":0},_loc6_);
            this.§ F§.onComplete = this.§ y§;
            this.§ F§.play();
            (§2!M§.getItemByName("MovieClip_StarLeft") as §48§).mClip.gotoAndStop("Lit");
            _loc2_ = (§2!M§.getItemByName("MovieClip_StarLeft") as §48§).x + (§2!M§.getItemByName("Container_LevelEndStripe") as §59§).x;
            _loc3_ = (§2!M§.getItemByName("MovieClip_StarLeft") as §48§).y + (§2!M§.getItemByName("Container_LevelEndStripe") as §59§).y;
            this.§-!6§ = new §='§(§1F§.§-!I§,§1F§.§9!8§,_loc2_,_loc3_,§='§.§<n§);
            §2!M§.addChild(this.§-!6§);
            this.§4!M§.push(this.§-!6§);
         }
         else if(this.§?!"§.getValue() >= _loc5_ && (§2!M§.getItemByName("MovieClip_StarCenter") as §48§).mClip.currentLabel == "UnLit")
         {
            §7!"§.§`!-§(§?!A§);
            §7!"§.§#W§("Hiscore_Star_Splash2",§?!A§);
            (§2!M§.getItemByName("MovieClip_StarCenter") as §48§).mClip.gotoAndStop("Lit");
            _loc2_ = (§2!M§.getItemByName("MovieClip_StarCenter") as §48§).x + (§2!M§.getItemByName("Container_LevelEndStripe") as §59§).x;
            _loc3_ = (§2!M§.getItemByName("MovieClip_StarCenter") as §48§).y + (§2!M§.getItemByName("Container_LevelEndStripe") as §59§).y;
            this.§-!6§ = new §='§(§1F§.§-!I§,§1F§.§9!8§,_loc2_,_loc3_,§='§.§,!V§);
            §2!M§.addChild(this.§-!6§);
            this.§4!M§.push(this.§-!6§);
         }
         else if(this.§?!"§.getValue() >= _loc4_ && (§2!M§.getItemByName("MovieClip_StarRight") as §48§).mClip.currentLabel == "UnLit")
         {
            §7!"§.§`!-§(§?!A§);
            §7!"§.§#W§("Hiscore_Star_Splash3",§?!A§);
            (§2!M§.getItemByName("MovieClip_StarRight") as §48§).mClip.gotoAndStop("Lit");
            _loc2_ = (§2!M§.getItemByName("MovieClip_StarRight") as §48§).x + (§2!M§.getItemByName("Container_LevelEndStripe") as §59§).x;
            _loc3_ = (§2!M§.getItemByName("MovieClip_StarRight") as §48§).y + (§2!M§.getItemByName("Container_LevelEndStripe") as §59§).y;
            this.§-!6§ = new §='§(§1F§.§-!I§,§1F§.§9!8§,_loc2_,_loc3_,§='§.§]Q§);
            §2!M§.addChild(this.§-!6§);
            this.§4!M§.push(this.§-!6§);
         }
         else if(!this.§]!X§)
         {
            this.§]!X§ = true;
         }
         else
         {
            this.§"e§.stop();
            if(this.§ !O§)
            {
               (§2!M§.getItemByName("MovieClip_NewHighScoreBadge") as §48§).setVisibility(true);
            }
            else
            {
               (§2!M§.getItemByName("MovieClip_NewHighScoreBadge") as §48§).setVisibility(false);
            }
            this.§<x§ = §"H§.§'![§.§8Y§((§2!M§.getItemByName("MovieClip_NewHighScoreBadge") as §48§).mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":7,
               "scaleY":7
            },0.1);
            this.§<x§.onComplete = this.§]o§;
            this.§<x§.play();
         }
         ++this.§]!5§;
      }
      
      private function § y§() : void
      {
         §7!"§.§`!-§(§^C§);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:§='§ = null;
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §,h§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         §2!M§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScore");
         §2!M§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScoreEffects");
         for each(_loc3_ in this.§4!M§)
         {
            _loc3_.update(param1);
         }
         if(this.§[!8§ > 0)
         {
            this.§3H§(param1);
         }
         if(mNextState.length > 0)
         {
            return §,h§.STATE_STATUS_COMPLETED;
         }
         return §,h§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§#Z§.§'!4§(0);
         this.§@"§();
         this.§[!8§ = 0;
         §7!"§.§`!-§(§^C§);
         (§2!M§.getItemByName("Button_Menu") as §#O§).setComponentVisualState(§8!_§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§2!M§.getItemByName("Button_Replay") as §#O§).setComponentVisualState(§8!_§.COMPONENT_STATE_ACTIVE_DEFAULT);
         §2!M§.setText("0","TextField_LevelEndScore");
         §2!M§.setText("0","TextField_LevelEndScoreEffects");
      }
      
      private function §@"§() : void
      {
         var _loc1_:§='§ = null;
         if(this.§"e§)
         {
            this.§"e§.stop();
            this.§"e§.removeEventListener(TimerEvent.TIMER,this.§,t§);
         }
         for each(_loc1_ in this.§4!M§)
         {
            if(§2!M§.contains(_loc1_))
            {
               §2!M§.removeChild(_loc1_);
            }
            _loc1_.clean();
         }
         this.§4!M§ = new Vector.<§='§>();
         §2!M§.getItemByName("TextField_BestScore").setVisibility(false);
         §2!M§.getItemByName("MovieClip_BestScoreText").setVisibility(false);
         §2!M§.getItemByName("MovieClip_BestScoreStars").setVisibility(false);
         §2!M§.getItemByName("MovieClip_NewHighScore").setVisibility(false);
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
            mNextState = §6! §;
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§+!^§) : void
      {
         super.uiInteractionHandler(param1,param2,param3);
         switch(param2)
         {
            case "NEXT_LEVEL":
               § 4§.§1%§();
               mNextState = § 4§.§6! §;
               break;
            case "REPLAY":
               § 4§.§13§();
               mNextState = § 4§.§6! §;
               break;
            case "MENU":
               §7!"§.§9!0§();
               mNextState = §1F§.§"T§;
         }
      }
   }
}
