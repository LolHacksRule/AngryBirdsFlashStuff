package §4%§
{
   import § !m§.§6h§;
   import § v§.§!!^§;
   import §"%§.§+!&§;
   import §"%§.§,!n§;
   import §"%§.§9j§;
   import §+-§.§3!5§;
   import §6!Q§.§ !"§;
   import §9!W§.§=!@§;
   import §;!j§.§;M§;
   import §;!j§.§[!<§;
   import §=!F§.§"!2§;
   import §=!F§.§^!^§;
   import §>G§.§0Q§;
   import §>G§.§[f§;
   import §>G§.§]f§;
   import §@`§.§>!S§;
   import §@`§.§]8§;
   import §[#§.§!p§;
   import §]! §.HighscoreSidebar;
   import §]!S§.§1!$§;
   import §]!S§.§59§;
   import flash.events.KeyboardEvent;
   import flash.events.TimerEvent;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.utils.Timer;
   
   public class §;!J§ extends §%0§
   {
      
      public static const §4D§:String = "LevelEndState";
      
      public static const §8!O§:Number = 30;
      
      private static const §?9§:String = "ScoreLoopCountChannel";
      
      private static const §,!%§:String = "EndScreenEffectChannel";
       
      
      private var §'p§:§^!^§;
      
      private var §-%§:Number;
      
      private var §5z§:Number;
      
      private var §3D§:Number;
      
      private var §!d§:Boolean = false;
      
      private var §@?§:Timer;
      
      private var §<!7§:§59§;
      
      private var §function§:§1!$§;
      
      private var §!!g§:Vector.<§1!$§>;
      
      public var mNewScoreCounter:int;
      
      private var §4;§:int;
      
      private var §'!,§:Boolean;
      
      private var §]2§:§;M§;
      
      private var §8$§:Boolean;
      
      private var §!A§:§^!^§;
      
      private var §^!n§:Array;
      
      private var §8O§:§+!&§;
      
      public function §;!J§(param1:Boolean = false, param2:String = "LevelEndState")
      {
         this.§]2§ = new §;M§();
         this.§^!n§ = [];
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         mUIView = new §>!S§(this);
         mUIView.init(§]8§.§-!C§.Views.View_LevelEnd[0]);
         this.§5!I§();
         this.§<!7§ = new §59§(0,0,0,0);
         mUIView.movieClip.addChildAt(this.§<!7§,mUIView.movieClip.numChildren - 1);
         this.§!!g§ = new Vector.<§1!$§>();
         §6h§.§9o§(§?9§,1,1);
         §6h§.§9o§(§,!%§,16,1);
      }
      
      protected function §5!I§() : void
      {
         this.§^!n§.push(mUIView.getItemByName("Button_Menu").x);
         this.§^!n§.push(mUIView.getItemByName("Button_Replay").x);
         this.§^!n§.push(mUIView.getItemByName("Button_Next").x);
      }
      
      protected function §3!,§(param1:Boolean) : void
      {
         mUIView.getItemByName("Button_Menu").setVisibility(true);
         mUIView.getItemByName("Button_Replay").setVisibility(true);
         if(param1)
         {
            mUIView.getItemByName("Button_Next").setVisibility(true);
            mUIView.getItemByName("Button_Menu").x = this.§^!n§[0];
            mUIView.getItemByName("Button_Replay").x = this.§^!n§[1];
            mUIView.getItemByName("Button_Next").x = this.§^!n§[2];
         }
         else
         {
            mUIView.getItemByName("Button_Next").setVisibility(false);
            mUIView.getItemByName("Button_Menu").x = this.§^!n§[0] + Math.abs(this.§^!n§[1] - this.§^!n§[0]) / 2;
            mUIView.getItemByName("Button_Replay").x = this.§^!n§[1] + Math.abs(this.§^!n§[2] - this.§^!n§[1]) / 2 + mUIView.getItemByName("Button_Replay").width / 4;
         }
      }
      
      override public function activate() : void
      {
         super.activate();
         if(§'j§.§%g§.§"!W§)
         {
            this.§8O§ = mUIView.getItemByName("MovieClip_NewHighScoreBadge");
         }
         else
         {
            this.§8O§ = mUIView.getItemByName("Container_PlayGround_Badge");
         }
         sHighscoreSidebar.enableHelpButton(false);
         §=!@§.§>!T§.§>h§(true);
         this.mNewScoreCounter = 0;
         this.§'!,§ = false;
         §6h§.§-a§("LevelCompletedTheme1");
         this.§<!7§.§1!M§(0.7);
         this.§&!Y§();
         §!!^§.§,%§();
         var _loc1_:String = §3!5§.§@!4§();
         var _loc2_:Boolean = §!!^§.§!q§(_loc1_);
         if(_loc1_ == "2-3" || _loc1_ == "2-6")
         {
            _loc2_ = false;
         }
         this.§3!,§(_loc2_);
         §[!<§.§'!S§.updateTextFields(mUIView,"StateEnd");
      }
      
      override protected function updateTextFields() : void
      {
         super.updateTextFields();
         §[!<§.§'!S§.updateTextFields(mUIView,"StateEnd");
      }
      
      override protected function setInitialState() : void
      {
         sHighscoreSidebar.selectedLevelName = §3!5§.§-!2§;
         if(§!!^§.§use§(§3!5§.§-!2§))
         {
            sHighscoreSidebar.changeState(HighscoreSidebar.§3!%§);
         }
         else
         {
            sHighscoreSidebar.changeState(HighscoreSidebar.§=j§);
         }
      }
      
      private function §&!Y§() : void
      {
         this.§'!b§();
         if(§!!^§.§use§(§3!5§.§-!2§) && !§'j§.§%g§.§"!W§)
         {
            this.§8$§ = true;
         }
         this.§@?§ = new Timer(500);
         this.§4;§ = 0;
         this.§@?§.addEventListener(TimerEvent.TIMER,this.§-! §);
         this.§@?§.start();
      }
      
      private function §'!b§() : void
      {
         var _loc6_:int = 0;
         var _loc1_:int = §'j§.§%g§.§?K§(§3!5§.§-!2§);
         var _loc2_:int = (§=!@§.§>!b§ as §!p§).getScore();
         this.§8$§ = _loc2_ >= _loc1_;
         if(this.§8$§)
         {
            _loc1_ = _loc2_;
            §'j§.§%g§.§[!B§(§3!5§.§-!2§,_loc1_);
         }
         else
         {
            mUIView.setText("" + _loc1_.toString(),"TextField_BestScore");
            _loc6_ = §3!5§.§4c§(§3!5§.§-!2§,_loc1_);
            switch(_loc6_)
            {
               case 1:
                  (mUIView.getItemByName("MovieClip_BestScoreStars") as §[f§).§9!@§("OneStar");
                  break;
               case 2:
                  (mUIView.getItemByName("MovieClip_BestScoreStars") as §[f§).§9!@§("TwoStar");
                  break;
               case 3:
                  (mUIView.getItemByName("MovieClip_BestScoreStars") as §[f§).§9!@§("ThreeStar");
            }
         }
         var _loc3_:int = §=!@§.§>!b§.getEagleScore();
         var _loc4_:Number = §'j§.§%g§.§8!"§(§3!5§.§-!2§);
         var _loc5_:*;
         if(_loc5_ = _loc3_ > _loc4_)
         {
            _loc4_ = _loc3_;
            §'j§.§%g§.§1!>§(§3!5§.§-!2§,_loc4_);
         }
         this.§8O§.setVisibility(false);
         (mUIView.getItemByName("MovieClip_StarLeft") as §[f§).mClip.gotoAndStop("UnLit");
         (mUIView.getItemByName("MovieClip_StarCenter") as §[f§).mClip.gotoAndStop("UnLit");
         (mUIView.getItemByName("MovieClip_StarRight") as §[f§).mClip.gotoAndStop("UnLit");
      }
      
      private function §7`§() : void
      {
         if(§!!^§.§use§(§3!5§.§-!2§) && !§'j§.§%g§.§"!W§)
         {
            §6h§.§1x§(§,!%§);
            §6h§.§-a§("Hiscore_Badge",§,!%§);
            mUIView.getItemByName("MovieClip_NewHighScore").setVisibility(false);
            mUIView.getItemByName("MovieClip_BestScoreStars").setVisibility(false);
            mUIView.getItemByName("MovieClip_BestScoreText").setVisibility(false);
            mUIView.getItemByName("TextField_BestScore").setVisibility(false);
            this.§ 2§();
         }
         else if(this.§8$§ || §!!^§.§use§(§3!5§.§-!2§))
         {
            §6h§.§1x§(§,!%§);
            §6h§.§-a§("Hiscore_Badge",§,!%§);
            if(this.§8$§)
            {
               mUIView.getItemByName("MovieClip_NewHighScore").setVisibility(true);
            }
            mUIView.getItemByName("MovieClip_BestScoreStars").setVisibility(false);
            mUIView.getItemByName("MovieClip_BestScoreText").setVisibility(false);
            mUIView.getItemByName("TextField_BestScore").setVisibility(false);
            this.§ 2§();
         }
         else
         {
            mUIView.getItemByName("TextField_BestScore").setVisibility(true);
            mUIView.getItemByName("MovieClip_BestScoreStars").setVisibility(true);
            mUIView.getItemByName("MovieClip_BestScoreText").setVisibility(true);
         }
      }
      
      private function § 2§() : void
      {
         this.§5z§ = (mUIView.getItemByName("Container_LevelEndStripe") as §]f§).x;
         this.§3D§ = (mUIView.getItemByName("Container_LevelEndStripe") as §]f§).y;
         this.§-%§ = §8!O§;
      }
      
      private function §"S§(param1:Number) : void
      {
         if(this.§-%§ <= 0)
         {
            (mUIView.getItemByName("Container_LevelEndStripe") as §]f§).x = this.§5z§;
            (mUIView.getItemByName("Container_LevelEndStripe") as §]f§).y = this.§3D§;
         }
         else
         {
            (mUIView.getItemByName("Container_LevelEndStripe") as §]f§).x = this.§5z§ + (Math.random() - 0.5) * (this.§-%§ / §8!O§) * 20;
            (mUIView.getItemByName("Container_LevelEndStripe") as §]f§).y = this.§3D§ + (Math.random() - 0.5) * (this.§-%§ / §8!O§) * 20;
         }
         this.§-%§ -= param1 / 10;
      }
      
      private function §-! §(param1:TimerEvent) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc4_:Number = §3!5§.§ !R§(§3!5§.§-!2§).§3!7§;
         var _loc5_:Number = §3!5§.§ !R§(§3!5§.§-!2§).§9!&§;
         if((mUIView.getItemByName("MovieClip_StarLeft") as §[f§).mClip.currentLabel == "UnLit")
         {
            §6h§.§-a§("Hiscore_Count",§?9§,100);
            §6h§.§1x§(§,!%§);
            §6h§.§-a§("Hiscore_Star_Splash1",§,!%§);
            this.§@?§.delay = 1000;
            this.§]2§.§8?§(§=!@§.§>!b§.getScore());
            _loc6_ = this.§]2§.getValue() / _loc4_ * 2;
            this.§!A§ = §"!2§.§'!S§.§-!S§(this,{"mNewScoreCounter":this.§]2§.getValue()},{"mNewScoreCounter":0},_loc6_);
            this.§!A§.onComplete = this.§;1§;
            this.§!A§.play();
            (mUIView.getItemByName("MovieClip_StarLeft") as §[f§).mClip.gotoAndStop("Lit");
            _loc2_ = (mUIView.getItemByName("MovieClip_StarLeft") as §[f§).x + (mUIView.getItemByName("Container_LevelEndStripe") as §]f§).x;
            _loc3_ = (mUIView.getItemByName("MovieClip_StarLeft") as §[f§).y + (mUIView.getItemByName("Container_LevelEndStripe") as §]f§).y;
            this.§function§ = new §1!$§(§'j§.§7&§,§'j§.§+! §,_loc2_,_loc3_,§1!$§.§%c§);
            mUIView.addChild(this.§function§);
            this.§!!g§.push(this.§function§);
         }
         else if(this.§]2§.getValue() >= _loc5_ && (mUIView.getItemByName("MovieClip_StarCenter") as §[f§).mClip.currentLabel == "UnLit")
         {
            §6h§.§1x§(§,!%§);
            §6h§.§-a§("Hiscore_Star_Splash2",§,!%§);
            (mUIView.getItemByName("MovieClip_StarCenter") as §[f§).mClip.gotoAndStop("Lit");
            _loc2_ = (mUIView.getItemByName("MovieClip_StarCenter") as §[f§).x + (mUIView.getItemByName("Container_LevelEndStripe") as §]f§).x;
            _loc3_ = (mUIView.getItemByName("MovieClip_StarCenter") as §[f§).y + (mUIView.getItemByName("Container_LevelEndStripe") as §]f§).y;
            this.§function§ = new §1!$§(§'j§.§7&§,§'j§.§+! §,_loc2_,_loc3_,§1!$§.§%V§);
            mUIView.addChild(this.§function§);
            this.§!!g§.push(this.§function§);
         }
         else if(this.§]2§.getValue() >= _loc4_ && (mUIView.getItemByName("MovieClip_StarRight") as §[f§).mClip.currentLabel == "UnLit")
         {
            §6h§.§1x§(§,!%§);
            §6h§.§-a§("Hiscore_Star_Splash3",§,!%§);
            (mUIView.getItemByName("MovieClip_StarRight") as §[f§).mClip.gotoAndStop("Lit");
            _loc2_ = (mUIView.getItemByName("MovieClip_StarRight") as §[f§).x + (mUIView.getItemByName("Container_LevelEndStripe") as §]f§).x;
            _loc3_ = (mUIView.getItemByName("MovieClip_StarRight") as §[f§).y + (mUIView.getItemByName("Container_LevelEndStripe") as §]f§).y;
            this.§function§ = new §1!$§(§'j§.§7&§,§'j§.§+! §,_loc2_,_loc3_,§1!$§.§8;§);
            mUIView.addChild(this.§function§);
            this.§!!g§.push(this.§function§);
            mUIView.getItemByName("Button_Redeem").setVisibility(true);
            _loc2_ = mUIView.getItemByName("Button_Redeem").x + (mUIView.getItemByName("Container_LevelEndStripe") as §]f§).x;
            _loc3_ = mUIView.getItemByName("Button_Redeem").y + (mUIView.getItemByName("Container_LevelEndStripe") as §]f§).y;
            this.§function§ = new §1!$§(§'j§.§7&§,§'j§.§+! §,_loc2_,_loc3_,§1!$§.§[I§);
            mUIView.addChild(this.§function§);
            this.§!!g§.push(this.§function§);
         }
         else if(!this.§'!,§)
         {
            this.§'!,§ = true;
         }
         else
         {
            this.§@?§.stop();
            if(this.§8$§ || §!!^§.§use§(§3!5§.§-!2§))
            {
               this.§8O§.setVisibility(true);
            }
            else
            {
               this.§8O§.setVisibility(false);
            }
            this.§'p§ = §"!2§.§'!S§.§-!S§(this.§8O§.mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":7,
               "scaleY":7
            },0.1);
            this.§'p§.onComplete = this.§7`§;
            this.§'p§.play();
         }
         ++this.§4;§;
      }
      
      private function §;1§() : void
      {
         §6h§.§1x§(§?9§);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:§1!$§ = null;
         var _loc2_:int = super.run(param1);
         if(_loc2_ != § !"§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         mUIView.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScore");
         mUIView.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScoreEffects");
         for each(_loc3_ in this.§!!g§)
         {
            _loc3_.update(param1);
         }
         if(this.§-%§ > 0)
         {
            this.§"S§(param1);
         }
         if(mNextState.length > 0)
         {
            return § !"§.STATE_STATUS_COMPLETED;
         }
         return § !"§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§<!7§.§&S§(0);
         this.§-c§();
         this.§-%§ = 0;
         §6h§.§1x§(§?9§);
         (mUIView.getItemByName("Button_Menu") as §0Q§).setComponentVisualState(§9j§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (mUIView.getItemByName("Button_Replay") as §0Q§).setComponentVisualState(§9j§.COMPONENT_STATE_ACTIVE_DEFAULT);
         mUIView.getItemByName("MovieClip_NewHighScoreBadge").setVisibility(false);
         mUIView.getItemByName("Container_PlayGround_Badge").setVisibility(false);
         mUIView.setText("0","TextField_LevelEndScore");
         mUIView.setText("0","TextField_LevelEndScoreEffects");
         mUIView.getItemByName("Button_Redeem").setVisibility(false);
      }
      
      private function §-c§() : void
      {
         var _loc1_:§1!$§ = null;
         if(this.§@?§)
         {
            this.§@?§.stop();
            this.§@?§.removeEventListener(TimerEvent.TIMER,this.§-! §);
         }
         for each(_loc1_ in this.§!!g§)
         {
            if(mUIView.contains(_loc1_))
            {
               mUIView.removeChild(_loc1_);
            }
            _loc1_.clean();
         }
         this.§!!g§ = new Vector.<§1!$§>();
         mUIView.getItemByName("TextField_BestScore").setVisibility(false);
         mUIView.getItemByName("MovieClip_BestScoreText").setVisibility(false);
         mUIView.getItemByName("MovieClip_BestScoreStars").setVisibility(false);
         mUIView.getItemByName("MovieClip_NewHighScore").setVisibility(false);
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
            mNextState = §4D§;
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§,!n§) : void
      {
         super.uiInteractionHandler(param1,param2,param3);
         switch(param2)
         {
            case "NEXT_LEVEL":
               §,b§.§[K§();
               mNextState = §,b§.§4D§;
               break;
            case "REPLAY":
               §,b§.§1i§();
               mNextState = §,b§.§4D§;
               break;
            case "MENU":
               §6h§.§>!U§();
               mNextState = §'j§.§4h§;
               break;
            case "BUTTON_REDEEM":
               navigateToURL(new URLRequest(§'j§.§2H§ + "coupon/"),"_blank");
         }
      }
   }
}
