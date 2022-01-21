package §%<§
{
   import §'!W§.§>!m§;
   import §'!W§.§?!§;
   import §,![§.§2!"§;
   import §,![§.§7'§;
   import §,![§.§[!S§;
   import §-!#§.§5!6§;
   import §-1§.§%#§;
   import §-1§.§3!%§;
   import §-1§.§>!6§;
   import §1!D§.§0S§;
   import §1!D§.§<!;§;
   import §2o§.§<H§;
   import §3#§.HighscoreSidebar;
   import §3l§.§&W§;
   import §3l§.§9m§;
   import §9!8§.§0!7§;
   import §9!8§.§8n§;
   import §?;§.§ !8§;
   import §?H§.§>!!§;
   import §^5§.§]!,§;
   import §`!d§.§7!§;
   import flash.events.KeyboardEvent;
   import flash.events.TimerEvent;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.utils.Timer;
   
   public class §!6§ extends §+V§
   {
      
      public static const §<P§:String = "LevelEndState";
      
      public static const §5!$§:Number = 30;
      
      private static const §,!7§:String = "ScoreLoopCountChannel";
      
      private static const §%!-§:String = "EndScreenEffectChannel";
       
      
      private var §!r§:§&W§;
      
      private var §^!i§:Number;
      
      private var §9L§:Number;
      
      private var §<!L§:Number;
      
      private var §%!"§:Boolean = false;
      
      private var §8!>§:Timer;
      
      private var § !§:§>!m§;
      
      private var §1!8§:§?!§;
      
      private var §]!H§:Vector.<§?!§>;
      
      public var mNewScoreCounter:int;
      
      private var §%C§:int;
      
      private var §+!E§:Boolean;
      
      private var §+!0§:§<!;§;
      
      private var §+!c§:Boolean;
      
      private var §null§:§&W§;
      
      private var §"!'§:Array;
      
      private var §#2§:§3!%§;
      
      public function §!6§(param1:Boolean = false, param2:String = "LevelEndState")
      {
         this.§+!0§ = new §<!;§();
         this.§"!'§ = [];
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         mUIView = new §0!7§(this);
         mUIView.init(§8n§.§8C§.Views.View_LevelEnd[0]);
         this.§5!?§();
         this.§ !§ = new §>!m§(0,0,0,0);
         mUIView.movieClip.addChildAt(this.§ !§,mUIView.movieClip.numChildren - 1);
         this.§]!H§ = new Vector.<§?!§>();
         §5!6§.§<!&§(§,!7§,1,1);
         §5!6§.§<!&§(§%!-§,16,1);
      }
      
      protected function §5!?§() : void
      {
         this.§"!'§.push(mUIView.getItemByName("Button_Menu").x);
         this.§"!'§.push(mUIView.getItemByName("Button_Replay").x);
         this.§"!'§.push(mUIView.getItemByName("Button_Next").x);
      }
      
      protected function §#!k§(param1:Boolean) : void
      {
         mUIView.getItemByName("Button_Menu").setVisibility(true);
         mUIView.getItemByName("Button_Replay").setVisibility(true);
         if(param1)
         {
            mUIView.getItemByName("Button_Next").setVisibility(true);
            mUIView.getItemByName("Button_Menu").x = this.§"!'§[0];
            mUIView.getItemByName("Button_Replay").x = this.§"!'§[1];
            mUIView.getItemByName("Button_Next").x = this.§"!'§[2];
         }
         else
         {
            mUIView.getItemByName("Button_Next").setVisibility(false);
            mUIView.getItemByName("Button_Menu").x = this.§"!'§[0] + Math.abs(this.§"!'§[1] - this.§"!'§[0]) / 2;
            mUIView.getItemByName("Button_Replay").x = this.§"!'§[1] + Math.abs(this.§"!'§[2] - this.§"!'§[1]) / 2 + mUIView.getItemByName("Button_Replay").width / 4;
         }
      }
      
      override public function activate() : void
      {
         super.activate();
         if(§;!4§.§8'§.§2!^§)
         {
            this.§#2§ = mUIView.getItemByName("MovieClip_NewHighScoreBadge");
         }
         else
         {
            this.§#2§ = mUIView.getItemByName("Container_PlayGround_Badge");
         }
         sHighscoreSidebar.enableHelpButton(false);
         §<H§.§=3§.§&e§(true);
         this.mNewScoreCounter = 0;
         this.§+!E§ = false;
         §5!6§.§8!G§("LevelCompletedTheme1");
         this.§ !§.§ !!§(0.7);
         this.§0!@§();
         §>!!§.§]a§();
         var _loc1_:String = §7!§.§<n§();
         var _loc2_:Boolean = §>!!§.§3N§(_loc1_);
         if(_loc1_ == "2-3" || _loc1_ == "2-6")
         {
            _loc2_ = false;
         }
         this.§#!k§(_loc2_);
         §0S§.§>E§.updateTextFields(mUIView,"StateEnd");
      }
      
      override protected function updateTextFields() : void
      {
         super.updateTextFields();
         §0S§.§>E§.updateTextFields(mUIView,"StateEnd");
      }
      
      override protected function setInitialState() : void
      {
         sHighscoreSidebar.selectedLevelName = §7!§.§+e§;
         if(§>!!§.§8S§(§7!§.§+e§))
         {
            sHighscoreSidebar.changeState(HighscoreSidebar.§-I§);
         }
         else
         {
            sHighscoreSidebar.changeState(HighscoreSidebar.§0C§);
         }
      }
      
      private function §0!@§() : void
      {
         this.§ !Z§();
         if(§>!!§.§8S§(§7!§.§+e§) && !§;!4§.§8'§.§2!^§)
         {
            this.§+!c§ = true;
         }
         this.§8!>§ = new Timer(500);
         this.§%C§ = 0;
         this.§8!>§.addEventListener(TimerEvent.TIMER,this.§8!]§);
         this.§8!>§.start();
      }
      
      private function § !Z§() : void
      {
         var _loc6_:int = 0;
         var _loc1_:int = §;!4§.§8'§.§5F§(§7!§.§+e§);
         var _loc2_:int = (§<H§.§ u§ as § !8§).getScore();
         this.§+!c§ = _loc2_ >= _loc1_;
         if(this.§+!c§)
         {
            _loc1_ = _loc2_;
            §;!4§.§8'§.§with§(§7!§.§+e§,_loc1_);
         }
         else
         {
            mUIView.setText("" + _loc1_.toString(),"TextField_BestScore");
            _loc6_ = §7!§.§%!F§(§7!§.§+e§,_loc1_);
            switch(_loc6_)
            {
               case 1:
                  (mUIView.getItemByName("MovieClip_BestScoreStars") as §7'§).§9B§("OneStar");
                  break;
               case 2:
                  (mUIView.getItemByName("MovieClip_BestScoreStars") as §7'§).§9B§("TwoStar");
                  break;
               case 3:
                  (mUIView.getItemByName("MovieClip_BestScoreStars") as §7'§).§9B§("ThreeStar");
            }
         }
         var _loc3_:int = §<H§.§ u§.getEagleScore();
         var _loc4_:Number = §;!4§.§8'§.§7!#§(§7!§.§+e§);
         var _loc5_:*;
         if(_loc5_ = _loc3_ > _loc4_)
         {
            _loc4_ = _loc3_;
            §;!4§.§8'§.§"H§(§7!§.§+e§,_loc4_);
         }
         this.§#2§.setVisibility(false);
         (mUIView.getItemByName("MovieClip_StarLeft") as §7'§).mClip.gotoAndStop("UnLit");
         (mUIView.getItemByName("MovieClip_StarCenter") as §7'§).mClip.gotoAndStop("UnLit");
         (mUIView.getItemByName("MovieClip_StarRight") as §7'§).mClip.gotoAndStop("UnLit");
      }
      
      private function §^>§() : void
      {
         if(§>!!§.§8S§(§7!§.§+e§) && !§;!4§.§8'§.§2!^§)
         {
            §5!6§.§>R§(§%!-§);
            §5!6§.§8!G§("Hiscore_Badge",§%!-§);
            mUIView.getItemByName("MovieClip_NewHighScore").setVisibility(false);
            mUIView.getItemByName("MovieClip_BestScoreStars").setVisibility(false);
            mUIView.getItemByName("MovieClip_BestScoreText").setVisibility(false);
            mUIView.getItemByName("TextField_BestScore").setVisibility(false);
            this.§7;§();
         }
         else if(this.§+!c§ || §>!!§.§8S§(§7!§.§+e§))
         {
            §5!6§.§>R§(§%!-§);
            §5!6§.§8!G§("Hiscore_Badge",§%!-§);
            if(this.§+!c§)
            {
               mUIView.getItemByName("MovieClip_NewHighScore").setVisibility(true);
            }
            mUIView.getItemByName("MovieClip_BestScoreStars").setVisibility(false);
            mUIView.getItemByName("MovieClip_BestScoreText").setVisibility(false);
            mUIView.getItemByName("TextField_BestScore").setVisibility(false);
            this.§7;§();
         }
         else
         {
            mUIView.getItemByName("TextField_BestScore").setVisibility(true);
            mUIView.getItemByName("MovieClip_BestScoreStars").setVisibility(true);
            mUIView.getItemByName("MovieClip_BestScoreText").setVisibility(true);
         }
      }
      
      private function §7;§() : void
      {
         this.§9L§ = (mUIView.getItemByName("Container_LevelEndStripe") as §[!S§).x;
         this.§<!L§ = (mUIView.getItemByName("Container_LevelEndStripe") as §[!S§).y;
         this.§^!i§ = §5!$§;
      }
      
      private function §1!Y§(param1:Number) : void
      {
         if(this.§^!i§ <= 0)
         {
            (mUIView.getItemByName("Container_LevelEndStripe") as §[!S§).x = this.§9L§;
            (mUIView.getItemByName("Container_LevelEndStripe") as §[!S§).y = this.§<!L§;
         }
         else
         {
            (mUIView.getItemByName("Container_LevelEndStripe") as §[!S§).x = this.§9L§ + (Math.random() - 0.5) * (this.§^!i§ / §5!$§) * 20;
            (mUIView.getItemByName("Container_LevelEndStripe") as §[!S§).y = this.§<!L§ + (Math.random() - 0.5) * (this.§^!i§ / §5!$§) * 20;
         }
         this.§^!i§ -= param1 / 10;
      }
      
      private function §8!]§(param1:TimerEvent) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc4_:Number = §7!§.§;!G§(§7!§.§+e§).§-X§;
         var _loc5_:Number = §7!§.§;!G§(§7!§.§+e§).§,z§;
         if((mUIView.getItemByName("MovieClip_StarLeft") as §7'§).mClip.currentLabel == "UnLit")
         {
            §5!6§.§8!G§("Hiscore_Count",§,!7§,100);
            §5!6§.§>R§(§%!-§);
            §5!6§.§8!G§("Hiscore_Star_Splash1",§%!-§);
            this.§8!>§.delay = 1000;
            this.§+!0§.§'A§(§<H§.§ u§.getScore());
            _loc6_ = this.§+!0§.getValue() / _loc4_ * 2;
            this.§null§ = §9m§.§>E§.§"0§(this,{"mNewScoreCounter":this.§+!0§.getValue()},{"mNewScoreCounter":0},_loc6_);
            this.§null§.onComplete = this.§;!,§;
            this.§null§.play();
            (mUIView.getItemByName("MovieClip_StarLeft") as §7'§).mClip.gotoAndStop("Lit");
            _loc2_ = (mUIView.getItemByName("MovieClip_StarLeft") as §7'§).x + (mUIView.getItemByName("Container_LevelEndStripe") as §[!S§).x;
            _loc3_ = (mUIView.getItemByName("MovieClip_StarLeft") as §7'§).y + (mUIView.getItemByName("Container_LevelEndStripe") as §[!S§).y;
            this.§1!8§ = new §?!§(§;!4§.§9!L§,§;!4§.§<!T§,_loc2_,_loc3_,§?!§.§-M§);
            mUIView.addChild(this.§1!8§);
            this.§]!H§.push(this.§1!8§);
         }
         else if(this.§+!0§.getValue() >= _loc5_ && (mUIView.getItemByName("MovieClip_StarCenter") as §7'§).mClip.currentLabel == "UnLit")
         {
            §5!6§.§>R§(§%!-§);
            §5!6§.§8!G§("Hiscore_Star_Splash2",§%!-§);
            (mUIView.getItemByName("MovieClip_StarCenter") as §7'§).mClip.gotoAndStop("Lit");
            _loc2_ = (mUIView.getItemByName("MovieClip_StarCenter") as §7'§).x + (mUIView.getItemByName("Container_LevelEndStripe") as §[!S§).x;
            _loc3_ = (mUIView.getItemByName("MovieClip_StarCenter") as §7'§).y + (mUIView.getItemByName("Container_LevelEndStripe") as §[!S§).y;
            this.§1!8§ = new §?!§(§;!4§.§9!L§,§;!4§.§<!T§,_loc2_,_loc3_,§?!§.§[4§);
            mUIView.addChild(this.§1!8§);
            this.§]!H§.push(this.§1!8§);
         }
         else if(this.§+!0§.getValue() >= _loc4_ && (mUIView.getItemByName("MovieClip_StarRight") as §7'§).mClip.currentLabel == "UnLit")
         {
            §5!6§.§>R§(§%!-§);
            §5!6§.§8!G§("Hiscore_Star_Splash3",§%!-§);
            (mUIView.getItemByName("MovieClip_StarRight") as §7'§).mClip.gotoAndStop("Lit");
            _loc2_ = (mUIView.getItemByName("MovieClip_StarRight") as §7'§).x + (mUIView.getItemByName("Container_LevelEndStripe") as §[!S§).x;
            _loc3_ = (mUIView.getItemByName("MovieClip_StarRight") as §7'§).y + (mUIView.getItemByName("Container_LevelEndStripe") as §[!S§).y;
            this.§1!8§ = new §?!§(§;!4§.§9!L§,§;!4§.§<!T§,_loc2_,_loc3_,§?!§.§ $§);
            mUIView.addChild(this.§1!8§);
            this.§]!H§.push(this.§1!8§);
            mUIView.getItemByName("Button_Redeem").setVisibility(true);
            _loc2_ = mUIView.getItemByName("Button_Redeem").x + (mUIView.getItemByName("Container_LevelEndStripe") as §[!S§).x;
            _loc3_ = mUIView.getItemByName("Button_Redeem").y + (mUIView.getItemByName("Container_LevelEndStripe") as §[!S§).y;
            this.§1!8§ = new §?!§(§;!4§.§9!L§,§;!4§.§<!T§,_loc2_,_loc3_,§?!§.§<U§);
            mUIView.addChild(this.§1!8§);
            this.§]!H§.push(this.§1!8§);
         }
         else if(!this.§+!E§)
         {
            this.§+!E§ = true;
         }
         else
         {
            this.§8!>§.stop();
            if(this.§+!c§ || §>!!§.§8S§(§7!§.§+e§))
            {
               this.§#2§.setVisibility(true);
            }
            else
            {
               this.§#2§.setVisibility(false);
            }
            this.§!r§ = §9m§.§>E§.§"0§(this.§#2§.mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":7,
               "scaleY":7
            },0.1);
            this.§!r§.onComplete = this.§^>§;
            this.§!r§.play();
         }
         ++this.§%C§;
      }
      
      private function §;!,§() : void
      {
         §5!6§.§>R§(§,!7§);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:§?!§ = null;
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §]!,§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         mUIView.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScore");
         mUIView.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScoreEffects");
         for each(_loc3_ in this.§]!H§)
         {
            _loc3_.update(param1);
         }
         if(this.§^!i§ > 0)
         {
            this.§1!Y§(param1);
         }
         if(mNextState.length > 0)
         {
            return §]!,§.STATE_STATUS_COMPLETED;
         }
         return §]!,§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§ !§.§,!X§(0);
         this.§%!N§();
         this.§^!i§ = 0;
         §5!6§.§>R§(§,!7§);
         (mUIView.getItemByName("Button_Menu") as §2!"§).setComponentVisualState(§>!6§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (mUIView.getItemByName("Button_Replay") as §2!"§).setComponentVisualState(§>!6§.COMPONENT_STATE_ACTIVE_DEFAULT);
         mUIView.getItemByName("MovieClip_NewHighScoreBadge").setVisibility(false);
         mUIView.getItemByName("Container_PlayGround_Badge").setVisibility(false);
         mUIView.setText("0","TextField_LevelEndScore");
         mUIView.setText("0","TextField_LevelEndScoreEffects");
         mUIView.getItemByName("Button_Redeem").setVisibility(false);
      }
      
      private function §%!N§() : void
      {
         var _loc1_:§?!§ = null;
         if(this.§8!>§)
         {
            this.§8!>§.stop();
            this.§8!>§.removeEventListener(TimerEvent.TIMER,this.§8!]§);
         }
         for each(_loc1_ in this.§]!H§)
         {
            if(mUIView.contains(_loc1_))
            {
               mUIView.removeChild(_loc1_);
            }
            _loc1_.clean();
         }
         this.§]!H§ = new Vector.<§?!§>();
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
            mNextState = §<P§;
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§%#§) : void
      {
         super.uiInteractionHandler(param1,param2,param3);
         switch(param2)
         {
            case "NEXT_LEVEL":
               §%!$§.§?!9§();
               mNextState = §%!$§.§<P§;
               break;
            case "REPLAY":
               §%!$§.§^!?§();
               mNextState = §%!$§.§<P§;
               break;
            case "MENU":
               §5!6§.§#!a§();
               mNextState = §;!4§.§9!1§;
               break;
            case "BUTTON_REDEEM":
               navigateToURL(new URLRequest(§;!4§.§'!O§ + "coupon/"),"_blank");
         }
      }
   }
}
