package §5!W§
{
   import §#!1§.§!!X§;
   import §#!1§.§=?§;
   import §,!C§.§!!]§;
   import §,!C§.§-6§;
   import §,!C§.§?!C§;
   import §,!H§.§ for§;
   import §,4§.§;_§;
   import §-a§.§3!A§;
   import §-a§.§5C§;
   import §-h§.§ use§;
   import §0$§.§!t§;
   import §4!A§.§#b§;
   import §4!A§.§7#§;
   import §5!q§.HighscoreSidebar;
   import §7F§.§2M§;
   import §7p§.§%g§;
   import §7p§.§>!m§;
   import §@-§.§ x§;
   import §@-§.§-m§;
   import §@-§.§[y§;
   import §[!4§.§-#§;
   import flash.events.KeyboardEvent;
   import flash.events.TimerEvent;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.utils.Timer;
   
   public class §9w§ extends §`X§
   {
      
      public static const §>d§:String = "LevelEndState";
      
      public static const §8!a§:Number = 30;
      
      private static const § 9§:String = "ScoreLoopCountChannel";
      
      private static const §6!§:String = "EndScreenEffectChannel";
       
      
      private var §#!&§:§#b§;
      
      private var §3!j§:Number;
      
      private var §6!q§:Number;
      
      private var §8!2§:Number;
      
      private var §6i§:Boolean = false;
      
      private var §=!@§:Timer;
      
      private var §^S§:§5C§;
      
      private var §6z§:§3!A§;
      
      private var §,!U§:Vector.<§3!A§>;
      
      public var mNewScoreCounter:int;
      
      private var §9!k§:int;
      
      private var §]!p§:Boolean;
      
      private var §@Z§:§=?§;
      
      private var §!I§:Boolean;
      
      private var §?E§:§#b§;
      
      private var §?!"§:Array;
      
      private var §2!n§:§-m§;
      
      public function §9w§(param1:Boolean = false, param2:String = "LevelEndState")
      {
         this.§@Z§ = new §=?§();
         this.§?!"§ = [];
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         mUIView = new §%g§(this);
         mUIView.init(§>!m§.§9c§.Views.View_LevelEnd[0]);
         this.§5w§();
         this.§^S§ = new §5C§(0,0,0,0);
         mUIView.movieClip.addChildAt(this.§^S§,mUIView.movieClip.numChildren - 1);
         this.§,!U§ = new Vector.<§3!A§>();
         §-#§.§28§(§ 9§,1,1);
         §-#§.§28§(§6!§,16,1);
      }
      
      protected function §5w§() : void
      {
         this.§?!"§.push(mUIView.getItemByName("Button_Menu").x);
         this.§?!"§.push(mUIView.getItemByName("Button_Replay").x);
         this.§?!"§.push(mUIView.getItemByName("Button_Next").x);
      }
      
      protected function §[!P§(param1:Boolean) : void
      {
         mUIView.getItemByName("Button_Menu").setVisibility(true);
         mUIView.getItemByName("Button_Replay").setVisibility(true);
         if(param1)
         {
            mUIView.getItemByName("Button_Next").setVisibility(true);
            mUIView.getItemByName("Button_Menu").x = this.§?!"§[0];
            mUIView.getItemByName("Button_Replay").x = this.§?!"§[1];
            mUIView.getItemByName("Button_Next").x = this.§?!"§[2];
         }
         else
         {
            mUIView.getItemByName("Button_Next").setVisibility(false);
            mUIView.getItemByName("Button_Menu").x = this.§?!"§[0] + Math.abs(this.§?!"§[1] - this.§?!"§[0]) / 2;
            mUIView.getItemByName("Button_Replay").x = this.§?!"§[1] + Math.abs(this.§?!"§[2] - this.§?!"§[1]) / 2 + mUIView.getItemByName("Button_Replay").width / 4;
         }
      }
      
      override public function activate() : void
      {
         super.activate();
         if(§3![§.§5!6§.§%!%§)
         {
            this.§2!n§ = mUIView.getItemByName("MovieClip_NewHighScoreBadge");
         }
         else
         {
            this.§2!n§ = mUIView.getItemByName("Container_PlayGround_Badge");
         }
         sHighscoreSidebar.enableHelpButton(false);
         §2M§.§1?§.§9!=§(true);
         this.mNewScoreCounter = 0;
         this.§]!p§ = false;
         §-#§.§4h§("LevelCompletedTheme1");
         this.§^S§.§ q§(0.7);
         this.§%K§();
         §!t§.§5>§();
         var _loc1_:String = §;_§.§]!h§();
         var _loc2_:Boolean = §!t§.§>E§(_loc1_);
         if(_loc1_ == "2-3" || _loc1_ == "2-6")
         {
            _loc2_ = false;
         }
         this.§[!P§(_loc2_);
         §!!X§.§5!!§.updateTextFields(mUIView,"StateEnd");
      }
      
      override protected function updateTextFields() : void
      {
         super.updateTextFields();
         §!!X§.§5!!§.updateTextFields(mUIView,"StateEnd");
      }
      
      override protected function setInitialState() : void
      {
         sHighscoreSidebar.selectedLevelName = §;_§.§2!Q§;
         if(§!t§.§0P§(§;_§.§2!Q§))
         {
            sHighscoreSidebar.changeState(HighscoreSidebar.§"!n§);
         }
         else
         {
            sHighscoreSidebar.changeState(HighscoreSidebar.§<! §);
         }
      }
      
      private function §%K§() : void
      {
         this.§6!b§();
         if(§!t§.§0P§(§;_§.§2!Q§) && !§3![§.§5!6§.§%!%§)
         {
            this.§!I§ = true;
         }
         this.§=!@§ = new Timer(500);
         this.§9!k§ = 0;
         this.§=!@§.addEventListener(TimerEvent.TIMER,this.§3!E§);
         this.§=!@§.start();
      }
      
      private function §6!b§() : void
      {
         var _loc6_:int = 0;
         var _loc1_:int = §3![§.§5!6§.§#c§(§;_§.§2!Q§);
         var _loc2_:int = (§2M§.§`r§ as § use§).getScore();
         this.§!I§ = _loc2_ >= _loc1_;
         if(this.§!I§)
         {
            _loc1_ = _loc2_;
            §3![§.§5!6§.§3!d§(§;_§.§2!Q§,_loc1_);
         }
         else
         {
            mUIView.setText("" + _loc1_.toString(),"TextField_BestScore");
            _loc6_ = §;_§.§98§(§;_§.§2!Q§,_loc1_);
            switch(_loc6_)
            {
               case 1:
                  (mUIView.getItemByName("MovieClip_BestScoreStars") as §!!]§).§+^§("OneStar");
                  break;
               case 2:
                  (mUIView.getItemByName("MovieClip_BestScoreStars") as §!!]§).§+^§("TwoStar");
                  break;
               case 3:
                  (mUIView.getItemByName("MovieClip_BestScoreStars") as §!!]§).§+^§("ThreeStar");
            }
         }
         var _loc3_:int = §2M§.§`r§.getEagleScore();
         var _loc4_:Number = §3![§.§5!6§.§ !3§(§;_§.§2!Q§);
         var _loc5_:*;
         if(_loc5_ = _loc3_ > _loc4_)
         {
            _loc4_ = _loc3_;
            §3![§.§5!6§.§=!a§(§;_§.§2!Q§,_loc4_);
         }
         this.§2!n§.setVisibility(false);
         (mUIView.getItemByName("MovieClip_StarLeft") as §!!]§).mClip.gotoAndStop("UnLit");
         (mUIView.getItemByName("MovieClip_StarCenter") as §!!]§).mClip.gotoAndStop("UnLit");
         (mUIView.getItemByName("MovieClip_StarRight") as §!!]§).mClip.gotoAndStop("UnLit");
      }
      
      private function §5m§() : void
      {
         if(§!t§.§0P§(§;_§.§2!Q§) && !§3![§.§5!6§.§%!%§)
         {
            §-#§.§-q§(§6!§);
            §-#§.§4h§("Hiscore_Badge",§6!§);
            mUIView.getItemByName("MovieClip_NewHighScore").setVisibility(false);
            mUIView.getItemByName("MovieClip_BestScoreStars").setVisibility(false);
            mUIView.getItemByName("MovieClip_BestScoreText").setVisibility(false);
            mUIView.getItemByName("TextField_BestScore").setVisibility(false);
            this.§!#§();
         }
         else if(this.§!I§ || §!t§.§0P§(§;_§.§2!Q§))
         {
            §-#§.§-q§(§6!§);
            §-#§.§4h§("Hiscore_Badge",§6!§);
            if(this.§!I§)
            {
               mUIView.getItemByName("MovieClip_NewHighScore").setVisibility(true);
            }
            mUIView.getItemByName("MovieClip_BestScoreStars").setVisibility(false);
            mUIView.getItemByName("MovieClip_BestScoreText").setVisibility(false);
            mUIView.getItemByName("TextField_BestScore").setVisibility(false);
            this.§!#§();
         }
         else
         {
            mUIView.getItemByName("TextField_BestScore").setVisibility(true);
            mUIView.getItemByName("MovieClip_BestScoreStars").setVisibility(true);
            mUIView.getItemByName("MovieClip_BestScoreText").setVisibility(true);
         }
      }
      
      private function §!#§() : void
      {
         this.§6!q§ = (mUIView.getItemByName("Container_LevelEndStripe") as §-6§).x;
         this.§8!2§ = (mUIView.getItemByName("Container_LevelEndStripe") as §-6§).y;
         this.§3!j§ = §8!a§;
      }
      
      private function §%V§(param1:Number) : void
      {
         if(this.§3!j§ <= 0)
         {
            (mUIView.getItemByName("Container_LevelEndStripe") as §-6§).x = this.§6!q§;
            (mUIView.getItemByName("Container_LevelEndStripe") as §-6§).y = this.§8!2§;
         }
         else
         {
            (mUIView.getItemByName("Container_LevelEndStripe") as §-6§).x = this.§6!q§ + (Math.random() - 0.5) * (this.§3!j§ / §8!a§) * 20;
            (mUIView.getItemByName("Container_LevelEndStripe") as §-6§).y = this.§8!2§ + (Math.random() - 0.5) * (this.§3!j§ / §8!a§) * 20;
         }
         this.§3!j§ -= param1 / 10;
      }
      
      private function §3!E§(param1:TimerEvent) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc4_:Number = §;_§.§`!,§(§;_§.§2!Q§).§+!Z§;
         var _loc5_:Number = §;_§.§`!,§(§;_§.§2!Q§).§-b§;
         if((mUIView.getItemByName("MovieClip_StarLeft") as §!!]§).mClip.currentLabel == "UnLit")
         {
            §-#§.§4h§("Hiscore_Count",§ 9§,100);
            §-#§.§-q§(§6!§);
            §-#§.§4h§("Hiscore_Star_Splash1",§6!§);
            this.§=!@§.delay = 1000;
            this.§@Z§.§ !b§(§2M§.§`r§.getScore());
            _loc6_ = this.§@Z§.getValue() / _loc4_ * 2;
            this.§?E§ = §7#§.§5!!§.§30§(this,{"mNewScoreCounter":this.§@Z§.getValue()},{"mNewScoreCounter":0},_loc6_);
            this.§?E§.onComplete = this.§`2§;
            this.§?E§.play();
            (mUIView.getItemByName("MovieClip_StarLeft") as §!!]§).mClip.gotoAndStop("Lit");
            _loc2_ = (mUIView.getItemByName("MovieClip_StarLeft") as §!!]§).x + (mUIView.getItemByName("Container_LevelEndStripe") as §-6§).x;
            _loc3_ = (mUIView.getItemByName("MovieClip_StarLeft") as §!!]§).y + (mUIView.getItemByName("Container_LevelEndStripe") as §-6§).y;
            this.§6z§ = new §3!A§(§3![§.§^e§,§3![§.§0Z§,_loc2_,_loc3_,§3!A§.§false§);
            mUIView.addChild(this.§6z§);
            this.§,!U§.push(this.§6z§);
         }
         else if(this.§@Z§.getValue() >= _loc5_ && (mUIView.getItemByName("MovieClip_StarCenter") as §!!]§).mClip.currentLabel == "UnLit")
         {
            §-#§.§-q§(§6!§);
            §-#§.§4h§("Hiscore_Star_Splash2",§6!§);
            (mUIView.getItemByName("MovieClip_StarCenter") as §!!]§).mClip.gotoAndStop("Lit");
            _loc2_ = (mUIView.getItemByName("MovieClip_StarCenter") as §!!]§).x + (mUIView.getItemByName("Container_LevelEndStripe") as §-6§).x;
            _loc3_ = (mUIView.getItemByName("MovieClip_StarCenter") as §!!]§).y + (mUIView.getItemByName("Container_LevelEndStripe") as §-6§).y;
            this.§6z§ = new §3!A§(§3![§.§^e§,§3![§.§0Z§,_loc2_,_loc3_,§3!A§.§^!7§);
            mUIView.addChild(this.§6z§);
            this.§,!U§.push(this.§6z§);
         }
         else if(this.§@Z§.getValue() >= _loc4_ && (mUIView.getItemByName("MovieClip_StarRight") as §!!]§).mClip.currentLabel == "UnLit")
         {
            §-#§.§-q§(§6!§);
            §-#§.§4h§("Hiscore_Star_Splash3",§6!§);
            (mUIView.getItemByName("MovieClip_StarRight") as §!!]§).mClip.gotoAndStop("Lit");
            _loc2_ = (mUIView.getItemByName("MovieClip_StarRight") as §!!]§).x + (mUIView.getItemByName("Container_LevelEndStripe") as §-6§).x;
            _loc3_ = (mUIView.getItemByName("MovieClip_StarRight") as §!!]§).y + (mUIView.getItemByName("Container_LevelEndStripe") as §-6§).y;
            this.§6z§ = new §3!A§(§3![§.§^e§,§3![§.§0Z§,_loc2_,_loc3_,§3!A§.§]1§);
            mUIView.addChild(this.§6z§);
            this.§,!U§.push(this.§6z§);
            mUIView.getItemByName("Button_Redeem").setVisibility(true);
            _loc2_ = mUIView.getItemByName("Button_Redeem").x + (mUIView.getItemByName("Container_LevelEndStripe") as §-6§).x;
            _loc3_ = mUIView.getItemByName("Button_Redeem").y + (mUIView.getItemByName("Container_LevelEndStripe") as §-6§).y;
            this.§6z§ = new §3!A§(§3![§.§^e§,§3![§.§0Z§,_loc2_,_loc3_,§3!A§.§<!3§);
            mUIView.addChild(this.§6z§);
            this.§,!U§.push(this.§6z§);
         }
         else if(!this.§]!p§)
         {
            this.§]!p§ = true;
         }
         else
         {
            this.§=!@§.stop();
            if(this.§!I§ || §!t§.§0P§(§;_§.§2!Q§))
            {
               this.§2!n§.setVisibility(true);
            }
            else
            {
               this.§2!n§.setVisibility(false);
            }
            this.§#!&§ = §7#§.§5!!§.§30§(this.§2!n§.mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":7,
               "scaleY":7
            },0.1);
            this.§#!&§.onComplete = this.§5m§;
            this.§#!&§.play();
         }
         ++this.§9!k§;
      }
      
      private function §`2§() : void
      {
         §-#§.§-q§(§ 9§);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:§3!A§ = null;
         var _loc2_:int = super.run(param1);
         if(_loc2_ != § for§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         mUIView.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScore");
         mUIView.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScoreEffects");
         for each(_loc3_ in this.§,!U§)
         {
            _loc3_.update(param1);
         }
         if(this.§3!j§ > 0)
         {
            this.§%V§(param1);
         }
         if(mNextState.length > 0)
         {
            return § for§.STATE_STATUS_COMPLETED;
         }
         return § for§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§^S§.§7!,§(0);
         this.§#!2§();
         this.§3!j§ = 0;
         §-#§.§-q§(§ 9§);
         (mUIView.getItemByName("Button_Menu") as §?!C§).setComponentVisualState(§ x§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (mUIView.getItemByName("Button_Replay") as §?!C§).setComponentVisualState(§ x§.COMPONENT_STATE_ACTIVE_DEFAULT);
         mUIView.getItemByName("MovieClip_NewHighScoreBadge").setVisibility(false);
         mUIView.getItemByName("Container_PlayGround_Badge").setVisibility(false);
         mUIView.setText("0","TextField_LevelEndScore");
         mUIView.setText("0","TextField_LevelEndScoreEffects");
         mUIView.getItemByName("Button_Redeem").setVisibility(false);
      }
      
      private function §#!2§() : void
      {
         var _loc1_:§3!A§ = null;
         if(this.§=!@§)
         {
            this.§=!@§.stop();
            this.§=!@§.removeEventListener(TimerEvent.TIMER,this.§3!E§);
         }
         for each(_loc1_ in this.§,!U§)
         {
            if(mUIView.contains(_loc1_))
            {
               mUIView.removeChild(_loc1_);
            }
            _loc1_.clean();
         }
         this.§,!U§ = new Vector.<§3!A§>();
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
            mNextState = §>d§;
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§[y§) : void
      {
         super.uiInteractionHandler(param1,param2,param3);
         switch(param2)
         {
            case "NEXT_LEVEL":
               §[Z§.§=G§();
               mNextState = §[Z§.§>d§;
               break;
            case "REPLAY":
               §[Z§.§>-§();
               mNextState = §[Z§.§>d§;
               break;
            case "MENU":
               §-#§.§4A§();
               mNextState = §3![§.§0#§;
               break;
            case "BUTTON_REDEEM":
               navigateToURL(new URLRequest(§3![§.§=![§ + "coupon/"),"_blank");
         }
      }
   }
}
