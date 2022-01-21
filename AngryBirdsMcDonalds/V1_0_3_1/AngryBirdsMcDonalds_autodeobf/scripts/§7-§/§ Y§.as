package §7-§
{
   import § !Y§.§2#§;
   import §&!V§.§=O§;
   import §,!h§.§-3§;
   import §,!h§.§9K§;
   import §2y§.§4i§;
   import §2y§.§@!a§;
   import §2y§.§]`§;
   import §3!R§.§,=§;
   import §3!R§.§0!R§;
   import §3!R§.§81§;
   import §3g§.§"!n§;
   import §3g§.§%E§;
   import §=b§.§,!G§;
   import §>!%§.HighscoreSidebar;
   import §?!g§.§ !d§;
   import §?I§.§'e§;
   import §?I§.§`E§;
   import §[!L§.§#!`§;
   import §`!"§.§2,§;
   import §`!"§.§;i§;
   import §finally§.§8k§;
   import flash.events.KeyboardEvent;
   import flash.events.TimerEvent;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.utils.Timer;
   
   public class § Y§ extends §[!$§
   {
      
      public static const §<@§:String = "LevelEndState";
      
      public static const §@!P§:Number = 30;
      
      private static const §&!9§:String = "ScoreLoopCountChannel";
      
      private static const §<d§:String = "EndScreenEffectChannel";
       
      
      private var §&!U§:§2,§;
      
      private var §>F§:Number;
      
      private var §3!7§:Number;
      
      private var §[!N§:Number;
      
      private var §5W§:Boolean = false;
      
      private var §&!c§:Timer;
      
      private var §-!_§:§9K§;
      
      private var §+p§:§-3§;
      
      private var §2!$§:Vector.<§-3§>;
      
      public var mNewScoreCounter:int;
      
      private var §=3§:int;
      
      private var §-!$§:Boolean;
      
      private var §-!>§:§'e§;
      
      private var § w§:Boolean;
      
      private var §&!C§:§2,§;
      
      private var §`!_§:Array;
      
      private var §]X§:§0!R§;
      
      public function § Y§(param1:Boolean = false, param2:String = "LevelEndState")
      {
         this.§-!>§ = new §'e§();
         this.§`!_§ = [];
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         mUIView = new §"!n§(this);
         mUIView.init(§%E§.§[i§.Views.View_LevelEnd[0]);
         this.§!B§();
         this.§-!_§ = new §9K§(0,0,0,0);
         mUIView.movieClip.addChildAt(this.§-!_§,mUIView.movieClip.numChildren - 1);
         this.§2!$§ = new Vector.<§-3§>();
         § !d§.§6D§(§&!9§,1,1);
         § !d§.§6D§(§<d§,16,1);
      }
      
      protected function §!B§() : void
      {
         this.§`!_§.push(mUIView.getItemByName("Button_Menu").x);
         this.§`!_§.push(mUIView.getItemByName("Button_Replay").x);
         this.§`!_§.push(mUIView.getItemByName("Button_Next").x);
      }
      
      protected function §<z§(param1:Boolean) : void
      {
         mUIView.getItemByName("Button_Menu").setVisibility(true);
         mUIView.getItemByName("Button_Replay").setVisibility(true);
         if(param1)
         {
            mUIView.getItemByName("Button_Next").setVisibility(true);
            mUIView.getItemByName("Button_Menu").x = this.§`!_§[0];
            mUIView.getItemByName("Button_Replay").x = this.§`!_§[1];
            mUIView.getItemByName("Button_Next").x = this.§`!_§[2];
         }
         else
         {
            mUIView.getItemByName("Button_Next").setVisibility(false);
            mUIView.getItemByName("Button_Menu").x = this.§`!_§[0] + Math.abs(this.§`!_§[1] - this.§`!_§[0]) / 2;
            mUIView.getItemByName("Button_Replay").x = this.§`!_§[1] + Math.abs(this.§`!_§[2] - this.§`!_§[1]) / 2 + mUIView.getItemByName("Button_Replay").width / 4;
         }
      }
      
      override public function activate() : void
      {
         super.activate();
         if(§2!M§.§&!#§.§-!Z§)
         {
            this.§]X§ = mUIView.getItemByName("MovieClip_NewHighScoreBadge");
         }
         else
         {
            this.§]X§ = mUIView.getItemByName("Container_PlayGround_Badge");
         }
         sHighscoreSidebar.enableHelpButton(false);
         §2#§.§"@§.§0f§(true);
         this.mNewScoreCounter = 0;
         this.§-!$§ = false;
         § !d§.§-h§("LevelCompletedTheme1");
         this.§-!_§.§%b§(0.7);
         this.§0y§();
         §,!G§.§3!p§();
         var _loc1_:String = §8k§.§4!c§();
         var _loc2_:Boolean = §,!G§.§&N§(_loc1_);
         if(_loc1_ == "2-3" || _loc1_ == "2-6")
         {
            _loc2_ = false;
         }
         this.§<z§(_loc2_);
         §`E§.§@!7§.updateTextFields(mUIView,"StateEnd");
      }
      
      override protected function updateTextFields() : void
      {
         super.updateTextFields();
         §`E§.§@!7§.updateTextFields(mUIView,"StateEnd");
      }
      
      override protected function setInitialState() : void
      {
         sHighscoreSidebar.selectedLevelName = §8k§.§8h§;
         if(§,!G§.§0g§(§8k§.§8h§))
         {
            sHighscoreSidebar.changeState(HighscoreSidebar.§?[§);
         }
         else
         {
            sHighscoreSidebar.changeState(HighscoreSidebar.§>2§);
         }
      }
      
      private function §0y§() : void
      {
         this.§-T§();
         if(§,!G§.§0g§(§8k§.§8h§) && !§2!M§.§&!#§.§-!Z§)
         {
            this.§ w§ = true;
         }
         this.§&!c§ = new Timer(500);
         this.§=3§ = 0;
         this.§&!c§.addEventListener(TimerEvent.TIMER,this.§<V§);
         this.§&!c§.start();
      }
      
      private function §-T§() : void
      {
         var _loc6_:int = 0;
         var _loc1_:int = §2!M§.§&!#§.§?!M§(§8k§.§8h§);
         var _loc2_:int = (§2#§.§[I§ as §#!`§).getScore();
         this.§ w§ = _loc2_ >= _loc1_;
         if(this.§ w§)
         {
            _loc1_ = _loc2_;
            §2!M§.§&!#§.§4!C§(§8k§.§8h§,_loc1_);
         }
         else
         {
            mUIView.setText("" + _loc1_.toString(),"TextField_BestScore");
            _loc6_ = §8k§.§]!<§(§8k§.§8h§,_loc1_);
            switch(_loc6_)
            {
               case 1:
                  (mUIView.getItemByName("MovieClip_BestScoreStars") as §4i§).§0!Z§("OneStar");
                  break;
               case 2:
                  (mUIView.getItemByName("MovieClip_BestScoreStars") as §4i§).§0!Z§("TwoStar");
                  break;
               case 3:
                  (mUIView.getItemByName("MovieClip_BestScoreStars") as §4i§).§0!Z§("ThreeStar");
            }
         }
         var _loc3_:int = §2#§.§[I§.getEagleScore();
         var _loc4_:Number = §2!M§.§&!#§.§7w§(§8k§.§8h§);
         var _loc5_:*;
         if(_loc5_ = _loc3_ > _loc4_)
         {
            _loc4_ = _loc3_;
            §2!M§.§&!#§.§+E§(§8k§.§8h§,_loc4_);
         }
         this.§]X§.setVisibility(false);
         (mUIView.getItemByName("MovieClip_StarLeft") as §4i§).mClip.gotoAndStop("UnLit");
         (mUIView.getItemByName("MovieClip_StarCenter") as §4i§).mClip.gotoAndStop("UnLit");
         (mUIView.getItemByName("MovieClip_StarRight") as §4i§).mClip.gotoAndStop("UnLit");
      }
      
      private function §7!h§() : void
      {
         if(§,!G§.§0g§(§8k§.§8h§) && !§2!M§.§&!#§.§-!Z§)
         {
            § !d§.§+'§(§<d§);
            § !d§.§-h§("Hiscore_Badge",§<d§);
            mUIView.getItemByName("MovieClip_NewHighScore").setVisibility(false);
            mUIView.getItemByName("MovieClip_BestScoreStars").setVisibility(false);
            mUIView.getItemByName("MovieClip_BestScoreText").setVisibility(false);
            mUIView.getItemByName("TextField_BestScore").setVisibility(false);
            this.§<!p§();
         }
         else if(this.§ w§ || §,!G§.§0g§(§8k§.§8h§))
         {
            § !d§.§+'§(§<d§);
            § !d§.§-h§("Hiscore_Badge",§<d§);
            if(this.§ w§)
            {
               mUIView.getItemByName("MovieClip_NewHighScore").setVisibility(true);
            }
            mUIView.getItemByName("MovieClip_BestScoreStars").setVisibility(false);
            mUIView.getItemByName("MovieClip_BestScoreText").setVisibility(false);
            mUIView.getItemByName("TextField_BestScore").setVisibility(false);
            this.§<!p§();
         }
         else
         {
            mUIView.getItemByName("TextField_BestScore").setVisibility(true);
            mUIView.getItemByName("MovieClip_BestScoreStars").setVisibility(true);
            mUIView.getItemByName("MovieClip_BestScoreText").setVisibility(true);
         }
      }
      
      private function §<!p§() : void
      {
         this.§3!7§ = (mUIView.getItemByName("Container_LevelEndStripe") as §]`§).x;
         this.§[!N§ = (mUIView.getItemByName("Container_LevelEndStripe") as §]`§).y;
         this.§>F§ = §@!P§;
      }
      
      private function § !2§(param1:Number) : void
      {
         if(this.§>F§ <= 0)
         {
            (mUIView.getItemByName("Container_LevelEndStripe") as §]`§).x = this.§3!7§;
            (mUIView.getItemByName("Container_LevelEndStripe") as §]`§).y = this.§[!N§;
         }
         else
         {
            (mUIView.getItemByName("Container_LevelEndStripe") as §]`§).x = this.§3!7§ + (Math.random() - 0.5) * (this.§>F§ / §@!P§) * 20;
            (mUIView.getItemByName("Container_LevelEndStripe") as §]`§).y = this.§[!N§ + (Math.random() - 0.5) * (this.§>F§ / §@!P§) * 20;
         }
         this.§>F§ -= param1 / 10;
      }
      
      private function §<V§(param1:TimerEvent) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc4_:Number = §8k§.§7v§(§8k§.§8h§).§4h§;
         var _loc5_:Number = §8k§.§7v§(§8k§.§8h§).§"!M§;
         if((mUIView.getItemByName("MovieClip_StarLeft") as §4i§).mClip.currentLabel == "UnLit")
         {
            § !d§.§-h§("Hiscore_Count",§&!9§,100);
            § !d§.§+'§(§<d§);
            § !d§.§-h§("Hiscore_Star_Splash1",§<d§);
            this.§&!c§.delay = 1000;
            this.§-!>§.§3!$§(§2#§.§[I§.getScore());
            _loc6_ = this.§-!>§.getValue() / _loc4_ * 2;
            this.§&!C§ = §;i§.§@!7§.§@!6§(this,{"mNewScoreCounter":this.§-!>§.getValue()},{"mNewScoreCounter":0},_loc6_);
            this.§&!C§.onComplete = this.§ d§;
            this.§&!C§.play();
            (mUIView.getItemByName("MovieClip_StarLeft") as §4i§).mClip.gotoAndStop("Lit");
            _loc2_ = (mUIView.getItemByName("MovieClip_StarLeft") as §4i§).x + (mUIView.getItemByName("Container_LevelEndStripe") as §]`§).x;
            _loc3_ = (mUIView.getItemByName("MovieClip_StarLeft") as §4i§).y + (mUIView.getItemByName("Container_LevelEndStripe") as §]`§).y;
            this.§+p§ = new §-3§(§2!M§.§[!V§,§2!M§.§#k§,_loc2_,_loc3_,§-3§.§&!n§);
            mUIView.addChild(this.§+p§);
            this.§2!$§.push(this.§+p§);
         }
         else if(this.§-!>§.getValue() >= _loc5_ && (mUIView.getItemByName("MovieClip_StarCenter") as §4i§).mClip.currentLabel == "UnLit")
         {
            § !d§.§+'§(§<d§);
            § !d§.§-h§("Hiscore_Star_Splash2",§<d§);
            (mUIView.getItemByName("MovieClip_StarCenter") as §4i§).mClip.gotoAndStop("Lit");
            _loc2_ = (mUIView.getItemByName("MovieClip_StarCenter") as §4i§).x + (mUIView.getItemByName("Container_LevelEndStripe") as §]`§).x;
            _loc3_ = (mUIView.getItemByName("MovieClip_StarCenter") as §4i§).y + (mUIView.getItemByName("Container_LevelEndStripe") as §]`§).y;
            this.§+p§ = new §-3§(§2!M§.§[!V§,§2!M§.§#k§,_loc2_,_loc3_,§-3§.§`!G§);
            mUIView.addChild(this.§+p§);
            this.§2!$§.push(this.§+p§);
         }
         else if(this.§-!>§.getValue() >= _loc4_ && (mUIView.getItemByName("MovieClip_StarRight") as §4i§).mClip.currentLabel == "UnLit")
         {
            § !d§.§+'§(§<d§);
            § !d§.§-h§("Hiscore_Star_Splash3",§<d§);
            (mUIView.getItemByName("MovieClip_StarRight") as §4i§).mClip.gotoAndStop("Lit");
            _loc2_ = (mUIView.getItemByName("MovieClip_StarRight") as §4i§).x + (mUIView.getItemByName("Container_LevelEndStripe") as §]`§).x;
            _loc3_ = (mUIView.getItemByName("MovieClip_StarRight") as §4i§).y + (mUIView.getItemByName("Container_LevelEndStripe") as §]`§).y;
            this.§+p§ = new §-3§(§2!M§.§[!V§,§2!M§.§#k§,_loc2_,_loc3_,§-3§.§9C§);
            mUIView.addChild(this.§+p§);
            this.§2!$§.push(this.§+p§);
            mUIView.getItemByName("Button_Redeem").setVisibility(true);
            _loc2_ = mUIView.getItemByName("Button_Redeem").x + (mUIView.getItemByName("Container_LevelEndStripe") as §]`§).x;
            _loc3_ = mUIView.getItemByName("Button_Redeem").y + (mUIView.getItemByName("Container_LevelEndStripe") as §]`§).y;
            this.§+p§ = new §-3§(§2!M§.§[!V§,§2!M§.§#k§,_loc2_,_loc3_,§-3§.§!!]§);
            mUIView.addChild(this.§+p§);
            this.§2!$§.push(this.§+p§);
         }
         else if(!this.§-!$§)
         {
            this.§-!$§ = true;
         }
         else
         {
            this.§&!c§.stop();
            if(this.§ w§ || §,!G§.§0g§(§8k§.§8h§))
            {
               this.§]X§.setVisibility(true);
            }
            else
            {
               this.§]X§.setVisibility(false);
            }
            this.§&!U§ = §;i§.§@!7§.§@!6§(this.§]X§.mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":7,
               "scaleY":7
            },0.1);
            this.§&!U§.onComplete = this.§7!h§;
            this.§&!U§.play();
         }
         ++this.§=3§;
      }
      
      private function § d§() : void
      {
         § !d§.§+'§(§&!9§);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:§-3§ = null;
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §=O§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         mUIView.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScore");
         mUIView.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScoreEffects");
         for each(_loc3_ in this.§2!$§)
         {
            _loc3_.update(param1);
         }
         if(this.§>F§ > 0)
         {
            this.§ !2§(param1);
         }
         if(mNextState.length > 0)
         {
            return §=O§.STATE_STATUS_COMPLETED;
         }
         return §=O§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§-!_§.§`r§(0);
         this.§6$§();
         this.§>F§ = 0;
         § !d§.§+'§(§&!9§);
         (mUIView.getItemByName("Button_Menu") as §@!a§).setComponentVisualState(§,=§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (mUIView.getItemByName("Button_Replay") as §@!a§).setComponentVisualState(§,=§.COMPONENT_STATE_ACTIVE_DEFAULT);
         mUIView.getItemByName("MovieClip_NewHighScoreBadge").setVisibility(false);
         mUIView.getItemByName("Container_PlayGround_Badge").setVisibility(false);
         mUIView.setText("0","TextField_LevelEndScore");
         mUIView.setText("0","TextField_LevelEndScoreEffects");
         mUIView.getItemByName("Button_Redeem").setVisibility(false);
      }
      
      private function §6$§() : void
      {
         var _loc1_:§-3§ = null;
         if(this.§&!c§)
         {
            this.§&!c§.stop();
            this.§&!c§.removeEventListener(TimerEvent.TIMER,this.§<V§);
         }
         for each(_loc1_ in this.§2!$§)
         {
            if(mUIView.contains(_loc1_))
            {
               mUIView.removeChild(_loc1_);
            }
            _loc1_.clean();
         }
         this.§2!$§ = new Vector.<§-3§>();
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
            mNextState = §<@§;
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§81§) : void
      {
         super.uiInteractionHandler(param1,param2,param3);
         switch(param2)
         {
            case "NEXT_LEVEL":
               §"_§.§@<§();
               mNextState = §"_§.§<@§;
               break;
            case "REPLAY":
               §"_§.§ !D§();
               mNextState = §"_§.§<@§;
               break;
            case "MENU":
               § !d§.§;O§();
               mNextState = §2!M§.§4@§;
               break;
            case "BUTTON_REDEEM":
               navigateToURL(new URLRequest(§2!M§.§`8§ + "coupon/"),"_blank");
         }
      }
   }
}
