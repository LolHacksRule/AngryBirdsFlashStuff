package §[l§
{
   import § e§.§&!&§;
   import § e§.§62§;
   import §"!g§.§`!B§;
   import §"f§.§%1§;
   import §"f§.§@4§;
   import §#M§.§+!Z§;
   import §'d§.§8!]§;
   import §'d§.§@S§;
   import §0;§.§3=§;
   import §0;§.§`!`§;
   import §31§.§ !A§;
   import §31§.§#!d§;
   import §31§.§@^§;
   import §5!5§.§1!b§;
   import §6@§.§'!F§;
   import §6@§.§>n§;
   import §6@§.§[! §;
   import §7!Q§.§[!5§;
   import §7_§.§^d§;
   import §<!R§.HighscoreSidebar;
   import §^!K§.§ !$§;
   import flash.events.KeyboardEvent;
   import flash.events.TimerEvent;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.utils.Timer;
   
   public class §^!G§ extends §,Q§
   {
      
      public static const §!_§:String = "LevelEndState";
      
      public static const §case§:Number = 30;
      
      private static const §,p§:String = "ScoreLoopCountChannel";
      
      private static const §9!V§:String = "EndScreenEffectChannel";
       
      
      private var §@,§:§@4§;
      
      private var §?T§:Number;
      
      private var §%0§:Number;
      
      private var §2<§:Number;
      
      private var §;F§:Boolean = false;
      
      private var § !"§:Timer;
      
      private var §7!8§:§8!]§;
      
      private var §%! §:§@S§;
      
      private var §1!"§:Vector.<§@S§>;
      
      public var mNewScoreCounter:int;
      
      private var §+D§:int;
      
      private var §6#§:Boolean;
      
      private var §<-§:§62§;
      
      private var §1!h§:Boolean;
      
      private var §#9§:§@4§;
      
      private var §5@§:Array;
      
      private var § !F§:§'!F§;
      
      public function §^!G§(param1:Boolean = false, param2:String = "LevelEndState")
      {
         this.§<-§ = new §62§();
         this.§5@§ = [];
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         mUIView = new §3=§(this);
         mUIView.init(§`!`§.§2=§.Views.View_LevelEnd[0]);
         this.§@!n§();
         this.§7!8§ = new §8!]§(0,0,0,0);
         mUIView.movieClip.addChildAt(this.§7!8§,mUIView.movieClip.numChildren - 1);
         this.§1!"§ = new Vector.<§@S§>();
         § !$§.§1"§(§,p§,1,1);
         § !$§.§1"§(§9!V§,16,1);
      }
      
      protected function §@!n§() : void
      {
         this.§5@§.push(mUIView.getItemByName("Button_Menu").x);
         this.§5@§.push(mUIView.getItemByName("Button_Replay").x);
         this.§5@§.push(mUIView.getItemByName("Button_Next").x);
      }
      
      protected function §6!"§(param1:Boolean) : void
      {
         mUIView.getItemByName("Button_Menu").setVisibility(true);
         mUIView.getItemByName("Button_Replay").setVisibility(true);
         if(param1)
         {
            mUIView.getItemByName("Button_Next").setVisibility(true);
            mUIView.getItemByName("Button_Menu").x = this.§5@§[0];
            mUIView.getItemByName("Button_Replay").x = this.§5@§[1];
            mUIView.getItemByName("Button_Next").x = this.§5@§[2];
         }
         else
         {
            mUIView.getItemByName("Button_Next").setVisibility(false);
            mUIView.getItemByName("Button_Menu").x = this.§5@§[0] + Math.abs(this.§5@§[1] - this.§5@§[0]) / 2;
            mUIView.getItemByName("Button_Replay").x = this.§5@§[1] + Math.abs(this.§5@§[2] - this.§5@§[1]) / 2 + mUIView.getItemByName("Button_Replay").width / 4;
         }
      }
      
      override public function activate() : void
      {
         super.activate();
         if(§ 4§.§?H§.§4!A§)
         {
            this.§ !F§ = mUIView.getItemByName("MovieClip_NewHighScoreBadge");
         }
         else
         {
            this.§ !F§ = mUIView.getItemByName("Container_PlayGround_Badge");
         }
         sHighscoreSidebar.enableHelpButton(false);
         §+!Z§.§?!<§.§,!7§(true);
         this.mNewScoreCounter = 0;
         this.§6#§ = false;
         § !$§.§-N§("LevelCompletedTheme1");
         this.§7!8§.§-p§(0.7);
         this.§;7§();
         §[!5§.§[!3§();
         var _loc1_:String = §^d§.§3!B§();
         var _loc2_:Boolean = §[!5§.§'A§(_loc1_);
         if(_loc1_ == "2-3" || _loc1_ == "2-6")
         {
            _loc2_ = false;
         }
         this.§6!"§(_loc2_);
         §&!&§.§+j§.updateTextFields(mUIView,"StateEnd");
      }
      
      override protected function updateTextFields() : void
      {
         super.updateTextFields();
         §&!&§.§+j§.updateTextFields(mUIView,"StateEnd");
      }
      
      override protected function setInitialState() : void
      {
         sHighscoreSidebar.selectedLevelName = §^d§.§@P§;
         if(§[!5§.§1G§(§^d§.§@P§))
         {
            sHighscoreSidebar.changeState(HighscoreSidebar.§!N§);
         }
         else
         {
            sHighscoreSidebar.changeState(HighscoreSidebar.§ each§);
         }
      }
      
      private function §;7§() : void
      {
         this.§]!h§();
         if(§[!5§.§1G§(§^d§.§@P§) && !§ 4§.§?H§.§4!A§)
         {
            this.§1!h§ = true;
         }
         this.§ !"§ = new Timer(500);
         this.§+D§ = 0;
         this.§ !"§.addEventListener(TimerEvent.TIMER,this.§,C§);
         this.§ !"§.start();
      }
      
      private function §]!h§() : void
      {
         var _loc6_:int = 0;
         var _loc1_:int = § 4§.§?H§.§[,§(§^d§.§@P§);
         var _loc2_:int = (§+!Z§.§8j§ as §`!B§).getScore();
         this.§1!h§ = _loc2_ >= _loc1_;
         if(this.§1!h§)
         {
            _loc1_ = _loc2_;
            § 4§.§?H§.§#!k§(§^d§.§@P§,_loc1_);
         }
         else
         {
            mUIView.setText("" + _loc1_.toString(),"TextField_BestScore");
            _loc6_ = §^d§.§@!f§(§^d§.§@P§,_loc1_);
            switch(_loc6_)
            {
               case 1:
                  (mUIView.getItemByName("MovieClip_BestScoreStars") as §@^§).§%=§("OneStar");
                  break;
               case 2:
                  (mUIView.getItemByName("MovieClip_BestScoreStars") as §@^§).§%=§("TwoStar");
                  break;
               case 3:
                  (mUIView.getItemByName("MovieClip_BestScoreStars") as §@^§).§%=§("ThreeStar");
            }
         }
         var _loc3_:int = §+!Z§.§8j§.getEagleScore();
         var _loc4_:Number = § 4§.§?H§.§4!i§(§^d§.§@P§);
         var _loc5_:*;
         if(_loc5_ = _loc3_ > _loc4_)
         {
            _loc4_ = _loc3_;
            § 4§.§?H§.§#T§(§^d§.§@P§,_loc4_);
         }
         this.§ !F§.setVisibility(false);
         (mUIView.getItemByName("MovieClip_StarLeft") as §@^§).mClip.gotoAndStop("UnLit");
         (mUIView.getItemByName("MovieClip_StarCenter") as §@^§).mClip.gotoAndStop("UnLit");
         (mUIView.getItemByName("MovieClip_StarRight") as §@^§).mClip.gotoAndStop("UnLit");
      }
      
      private function §@!=§() : void
      {
         if(§[!5§.§1G§(§^d§.§@P§) && !§ 4§.§?H§.§4!A§)
         {
            § !$§.§-u§(§9!V§);
            § !$§.§-N§("Hiscore_Badge",§9!V§);
            mUIView.getItemByName("MovieClip_NewHighScore").setVisibility(false);
            mUIView.getItemByName("MovieClip_BestScoreStars").setVisibility(false);
            mUIView.getItemByName("MovieClip_BestScoreText").setVisibility(false);
            mUIView.getItemByName("TextField_BestScore").setVisibility(false);
            this.§+E§();
         }
         else if(this.§1!h§ || §[!5§.§1G§(§^d§.§@P§))
         {
            § !$§.§-u§(§9!V§);
            § !$§.§-N§("Hiscore_Badge",§9!V§);
            if(this.§1!h§)
            {
               mUIView.getItemByName("MovieClip_NewHighScore").setVisibility(true);
            }
            mUIView.getItemByName("MovieClip_BestScoreStars").setVisibility(false);
            mUIView.getItemByName("MovieClip_BestScoreText").setVisibility(false);
            mUIView.getItemByName("TextField_BestScore").setVisibility(false);
            this.§+E§();
         }
         else
         {
            mUIView.getItemByName("TextField_BestScore").setVisibility(true);
            mUIView.getItemByName("MovieClip_BestScoreStars").setVisibility(true);
            mUIView.getItemByName("MovieClip_BestScoreText").setVisibility(true);
         }
      }
      
      private function §+E§() : void
      {
         this.§%0§ = (mUIView.getItemByName("Container_LevelEndStripe") as § !A§).x;
         this.§2<§ = (mUIView.getItemByName("Container_LevelEndStripe") as § !A§).y;
         this.§?T§ = §case§;
      }
      
      private function §;T§(param1:Number) : void
      {
         if(this.§?T§ <= 0)
         {
            (mUIView.getItemByName("Container_LevelEndStripe") as § !A§).x = this.§%0§;
            (mUIView.getItemByName("Container_LevelEndStripe") as § !A§).y = this.§2<§;
         }
         else
         {
            (mUIView.getItemByName("Container_LevelEndStripe") as § !A§).x = this.§%0§ + (Math.random() - 0.5) * (this.§?T§ / §case§) * 20;
            (mUIView.getItemByName("Container_LevelEndStripe") as § !A§).y = this.§2<§ + (Math.random() - 0.5) * (this.§?T§ / §case§) * 20;
         }
         this.§?T§ -= param1 / 10;
      }
      
      private function §,C§(param1:TimerEvent) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc4_:Number = §^d§.§'!J§(§^d§.§@P§).§&!W§;
         var _loc5_:Number = §^d§.§'!J§(§^d§.§@P§).§>!Y§;
         if((mUIView.getItemByName("MovieClip_StarLeft") as §@^§).mClip.currentLabel == "UnLit")
         {
            § !$§.§-N§("Hiscore_Count",§,p§,100);
            § !$§.§-u§(§9!V§);
            § !$§.§-N§("Hiscore_Star_Splash1",§9!V§);
            this.§ !"§.delay = 1000;
            this.§<-§.§^>§(§+!Z§.§8j§.getScore());
            _loc6_ = this.§<-§.getValue() / _loc4_ * 2;
            this.§#9§ = §%1§.§+j§.§78§(this,{"mNewScoreCounter":this.§<-§.getValue()},{"mNewScoreCounter":0},_loc6_);
            this.§#9§.onComplete = this.§;!E§;
            this.§#9§.play();
            (mUIView.getItemByName("MovieClip_StarLeft") as §@^§).mClip.gotoAndStop("Lit");
            _loc2_ = (mUIView.getItemByName("MovieClip_StarLeft") as §@^§).x + (mUIView.getItemByName("Container_LevelEndStripe") as § !A§).x;
            _loc3_ = (mUIView.getItemByName("MovieClip_StarLeft") as §@^§).y + (mUIView.getItemByName("Container_LevelEndStripe") as § !A§).y;
            this.§%! § = new §@S§(§ 4§.§#!<§,§ 4§.§@+§,_loc2_,_loc3_,§@S§.§%Z§);
            mUIView.addChild(this.§%! §);
            this.§1!"§.push(this.§%! §);
         }
         else if(this.§<-§.getValue() >= _loc5_ && (mUIView.getItemByName("MovieClip_StarCenter") as §@^§).mClip.currentLabel == "UnLit")
         {
            § !$§.§-u§(§9!V§);
            § !$§.§-N§("Hiscore_Star_Splash2",§9!V§);
            (mUIView.getItemByName("MovieClip_StarCenter") as §@^§).mClip.gotoAndStop("Lit");
            _loc2_ = (mUIView.getItemByName("MovieClip_StarCenter") as §@^§).x + (mUIView.getItemByName("Container_LevelEndStripe") as § !A§).x;
            _loc3_ = (mUIView.getItemByName("MovieClip_StarCenter") as §@^§).y + (mUIView.getItemByName("Container_LevelEndStripe") as § !A§).y;
            this.§%! § = new §@S§(§ 4§.§#!<§,§ 4§.§@+§,_loc2_,_loc3_,§@S§.§0!i§);
            mUIView.addChild(this.§%! §);
            this.§1!"§.push(this.§%! §);
         }
         else if(this.§<-§.getValue() >= _loc4_ && (mUIView.getItemByName("MovieClip_StarRight") as §@^§).mClip.currentLabel == "UnLit")
         {
            § !$§.§-u§(§9!V§);
            § !$§.§-N§("Hiscore_Star_Splash3",§9!V§);
            (mUIView.getItemByName("MovieClip_StarRight") as §@^§).mClip.gotoAndStop("Lit");
            _loc2_ = (mUIView.getItemByName("MovieClip_StarRight") as §@^§).x + (mUIView.getItemByName("Container_LevelEndStripe") as § !A§).x;
            _loc3_ = (mUIView.getItemByName("MovieClip_StarRight") as §@^§).y + (mUIView.getItemByName("Container_LevelEndStripe") as § !A§).y;
            this.§%! § = new §@S§(§ 4§.§#!<§,§ 4§.§@+§,_loc2_,_loc3_,§@S§.§!!I§);
            mUIView.addChild(this.§%! §);
            this.§1!"§.push(this.§%! §);
            mUIView.getItemByName("Button_Redeem").setVisibility(true);
            _loc2_ = mUIView.getItemByName("Button_Redeem").x + (mUIView.getItemByName("Container_LevelEndStripe") as § !A§).x;
            _loc3_ = mUIView.getItemByName("Button_Redeem").y + (mUIView.getItemByName("Container_LevelEndStripe") as § !A§).y;
            this.§%! § = new §@S§(§ 4§.§#!<§,§ 4§.§@+§,_loc2_,_loc3_,§@S§.§"!V§);
            mUIView.addChild(this.§%! §);
            this.§1!"§.push(this.§%! §);
         }
         else if(!this.§6#§)
         {
            this.§6#§ = true;
         }
         else
         {
            this.§ !"§.stop();
            if(this.§1!h§ || §[!5§.§1G§(§^d§.§@P§))
            {
               this.§ !F§.setVisibility(true);
            }
            else
            {
               this.§ !F§.setVisibility(false);
            }
            this.§@,§ = §%1§.§+j§.§78§(this.§ !F§.mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":7,
               "scaleY":7
            },0.1);
            this.§@,§.onComplete = this.§@!=§;
            this.§@,§.play();
         }
         ++this.§+D§;
      }
      
      private function §;!E§() : void
      {
         § !$§.§-u§(§,p§);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:§@S§ = null;
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §1!b§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         mUIView.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScore");
         mUIView.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScoreEffects");
         for each(_loc3_ in this.§1!"§)
         {
            _loc3_.update(param1);
         }
         if(this.§?T§ > 0)
         {
            this.§;T§(param1);
         }
         if(mNextState.length > 0)
         {
            return §1!b§.STATE_STATUS_COMPLETED;
         }
         return §1!b§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§7!8§.§9!S§(0);
         this.§0!G§();
         this.§?T§ = 0;
         § !$§.§-u§(§,p§);
         (mUIView.getItemByName("Button_Menu") as §#!d§).setComponentVisualState(§>n§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (mUIView.getItemByName("Button_Replay") as §#!d§).setComponentVisualState(§>n§.COMPONENT_STATE_ACTIVE_DEFAULT);
         mUIView.getItemByName("MovieClip_NewHighScoreBadge").setVisibility(false);
         mUIView.getItemByName("Container_PlayGround_Badge").setVisibility(false);
         mUIView.setText("0","TextField_LevelEndScore");
         mUIView.setText("0","TextField_LevelEndScoreEffects");
         mUIView.getItemByName("Button_Redeem").setVisibility(false);
      }
      
      private function §0!G§() : void
      {
         var _loc1_:§@S§ = null;
         if(this.§ !"§)
         {
            this.§ !"§.stop();
            this.§ !"§.removeEventListener(TimerEvent.TIMER,this.§,C§);
         }
         for each(_loc1_ in this.§1!"§)
         {
            if(mUIView.contains(_loc1_))
            {
               mUIView.removeChild(_loc1_);
            }
            _loc1_.clean();
         }
         this.§1!"§ = new Vector.<§@S§>();
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
            mNextState = §!_§;
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§[! §) : void
      {
         super.uiInteractionHandler(param1,param2,param3);
         switch(param2)
         {
            case "NEXT_LEVEL":
               §26§.§;!J§();
               mNextState = §26§.§!_§;
               break;
            case "REPLAY":
               §26§.§4;§();
               mNextState = §26§.§!_§;
               break;
            case "MENU":
               § !$§.§?j§();
               mNextState = § 4§.§#!m§;
               break;
            case "BUTTON_REDEEM":
               navigateToURL(new URLRequest(§ 4§.§=R§ + "coupon/"),"_blank");
         }
      }
   }
}
