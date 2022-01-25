package
{
   import §#!q§.§6!I§;
   import §#!q§.§`q§;
   import §%!5§.§7;§;
   import §'!N§.§8!C§;
   import §+$§.§"!p§;
   import §+$§.§5"§;
   import §+$§.§[!a§;
   import §-!F§.§2[§;
   import §3<§.§-2§;
   import §3<§.§9&§;
   import §6x§.§8!H§;
   import §6x§.§9E§;
   import §7!N§.§0-§;
   import §7E§.§ =§;
   import §9!$§.HighscoreSidebar;
   import §[h§.§ !&§;
   import §[h§.§49§;
   import §[h§.§]! §;
   import §]^§.§7G§;
   import §^m§.§0!-§;
   import §^m§.§=!a§;
   import flash.events.KeyboardEvent;
   import flash.events.TimerEvent;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.utils.Timer;
   
   public class §'!Q§ extends §2'§
   {
      
      public static const §[!1§:String = "LevelEndState";
      
      public static const §4r§:Number = 30;
      
      private static const §%?§:String = "ScoreLoopCountChannel";
      
      private static const §8§:String = "EndScreenEffectChannel";
       
      
      private var § p§:§0!-§;
      
      private var §2g§:Number;
      
      private var §]!S§:Number;
      
      private var §>!l§:Number;
      
      private var §#t§:Boolean = false;
      
      private var §@!k§:Timer;
      
      private var §4?§:§9E§;
      
      private var §9,§:§8!H§;
      
      private var §+H§:Vector.<§8!H§>;
      
      public var mNewScoreCounter:int;
      
      private var §?!Q§:int;
      
      private var §^!b§:Boolean;
      
      private var §0o§:§6!I§;
      
      private var §^W§:Boolean;
      
      private var §0U§:§0!-§;
      
      private var §1!V§:Array;
      
      private var §8!;§:§5"§;
      
      public function §'!Q§(param1:Boolean = false, param2:String = "LevelEndState")
      {
         this.§0o§ = new §6!I§();
         this.§1!V§ = [];
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         mUIView = new §-2§(this);
         mUIView.init(§9&§.§6!M§.Views.View_LevelEnd[0]);
         this.§2!&§();
         this.§4?§ = new §9E§(0,0,0,0);
         mUIView.movieClip.addChildAt(this.§4?§,mUIView.movieClip.numChildren - 1);
         this.§+H§ = new Vector.<§8!H§>();
         §7G§.§&!V§(§%?§,1,1);
         §7G§.§&!V§(§8§,16,1);
      }
      
      protected function §2!&§() : void
      {
         this.§1!V§.push(mUIView.getItemByName("Button_Menu").x);
         this.§1!V§.push(mUIView.getItemByName("Button_Replay").x);
         this.§1!V§.push(mUIView.getItemByName("Button_Next").x);
      }
      
      protected function §<V§(param1:Boolean) : void
      {
         mUIView.getItemByName("Button_Menu").setVisibility(true);
         mUIView.getItemByName("Button_Replay").setVisibility(true);
         if(param1)
         {
            mUIView.getItemByName("Button_Next").setVisibility(true);
            mUIView.getItemByName("Button_Menu").x = this.§1!V§[0];
            mUIView.getItemByName("Button_Replay").x = this.§1!V§[1];
            mUIView.getItemByName("Button_Next").x = this.§1!V§[2];
         }
         else
         {
            mUIView.getItemByName("Button_Next").setVisibility(false);
            mUIView.getItemByName("Button_Menu").x = this.§1!V§[0] + Math.abs(this.§1!V§[1] - this.§1!V§[0]) / 2;
            mUIView.getItemByName("Button_Replay").x = this.§1!V§[1] + Math.abs(this.§1!V§[2] - this.§1!V§[1]) / 2 + mUIView.getItemByName("Button_Replay").width / 4;
         }
      }
      
      override public function activate() : void
      {
         super.activate();
         if(§9!_§.§1!?§.§`2§)
         {
            this.§8!;§ = mUIView.getItemByName("MovieClip_NewHighScoreBadge");
         }
         else
         {
            this.§8!;§ = mUIView.getItemByName("Container_PlayGround_Badge");
         }
         sHighscoreSidebar.enableHelpButton(false);
         §7;§.§1h§.§4!@§(true);
         this.mNewScoreCounter = 0;
         this.§^!b§ = false;
         §7G§.§4W§("LevelCompletedTheme1");
         this.§4?§.§7!&§(0.7);
         this.§ !E§();
         §0-§.§5!^§();
         var _loc1_:String = §2[§.§+G§();
         var _loc2_:Boolean = §0-§.§1!L§(_loc1_);
         if(_loc1_ == "2-3" || _loc1_ == "2-6")
         {
            _loc2_ = false;
         }
         this.§<V§(_loc2_);
         §`q§.§9$§.updateTextFields(mUIView,"StateEnd");
      }
      
      override protected function updateTextFields() : void
      {
         super.updateTextFields();
         §`q§.§9$§.updateTextFields(mUIView,"StateEnd");
      }
      
      override protected function setInitialState() : void
      {
         sHighscoreSidebar.selectedLevelName = §2[§.§^N§;
         if(§0-§.§-5§(§2[§.§^N§))
         {
            sHighscoreSidebar.changeState(HighscoreSidebar.§3!K§);
         }
         else
         {
            sHighscoreSidebar.changeState(HighscoreSidebar.§2!R§);
         }
      }
      
      private function § !E§() : void
      {
         this.§^s§();
         if(§0-§.§-5§(§2[§.§^N§) && !§9!_§.§1!?§.§`2§)
         {
            this.§^W§ = true;
         }
         this.§@!k§ = new Timer(500);
         this.§?!Q§ = 0;
         this.§@!k§.addEventListener(TimerEvent.TIMER,this.§9!=§);
         this.§@!k§.start();
      }
      
      private function §^s§() : void
      {
         var _loc6_:int = 0;
         var _loc1_:int = §9!_§.§1!?§.§<!d§(§2[§.§^N§);
         var _loc2_:int = (§7;§.§5F§ as §8!C§).getScore();
         this.§^W§ = _loc2_ >= _loc1_;
         if(this.§^W§)
         {
            _loc1_ = _loc2_;
            §9!_§.§1!?§.§6c§(§2[§.§^N§,_loc1_);
         }
         else
         {
            mUIView.setText("" + _loc1_.toString(),"TextField_BestScore");
            _loc6_ = §2[§.§,n§(§2[§.§^N§,_loc1_);
            switch(_loc6_)
            {
               case 1:
                  (mUIView.getItemByName("MovieClip_BestScoreStars") as §]! §).§7q§("OneStar");
                  break;
               case 2:
                  (mUIView.getItemByName("MovieClip_BestScoreStars") as §]! §).§7q§("TwoStar");
                  break;
               case 3:
                  (mUIView.getItemByName("MovieClip_BestScoreStars") as §]! §).§7q§("ThreeStar");
            }
         }
         var _loc3_:int = §7;§.§5F§.getEagleScore();
         var _loc4_:Number = §9!_§.§1!?§.§7!A§(§2[§.§^N§);
         var _loc5_:*;
         if(_loc5_ = _loc3_ > _loc4_)
         {
            _loc4_ = _loc3_;
            §9!_§.§1!?§.§[y§(§2[§.§^N§,_loc4_);
         }
         this.§8!;§.setVisibility(false);
         (mUIView.getItemByName("MovieClip_StarLeft") as §]! §).mClip.gotoAndStop("UnLit");
         (mUIView.getItemByName("MovieClip_StarCenter") as §]! §).mClip.gotoAndStop("UnLit");
         (mUIView.getItemByName("MovieClip_StarRight") as §]! §).mClip.gotoAndStop("UnLit");
      }
      
      private function §-!=§() : void
      {
         if(§0-§.§-5§(§2[§.§^N§) && !§9!_§.§1!?§.§`2§)
         {
            §7G§.§&!X§(§8§);
            §7G§.§4W§("Hiscore_Badge",§8§);
            mUIView.getItemByName("MovieClip_NewHighScore").setVisibility(false);
            mUIView.getItemByName("MovieClip_BestScoreStars").setVisibility(false);
            mUIView.getItemByName("MovieClip_BestScoreText").setVisibility(false);
            mUIView.getItemByName("TextField_BestScore").setVisibility(false);
            this.§[-§();
         }
         else if(this.§^W§ || §0-§.§-5§(§2[§.§^N§))
         {
            §7G§.§&!X§(§8§);
            §7G§.§4W§("Hiscore_Badge",§8§);
            if(this.§^W§)
            {
               mUIView.getItemByName("MovieClip_NewHighScore").setVisibility(true);
            }
            mUIView.getItemByName("MovieClip_BestScoreStars").setVisibility(false);
            mUIView.getItemByName("MovieClip_BestScoreText").setVisibility(false);
            mUIView.getItemByName("TextField_BestScore").setVisibility(false);
            this.§[-§();
         }
         else
         {
            mUIView.getItemByName("TextField_BestScore").setVisibility(true);
            mUIView.getItemByName("MovieClip_BestScoreStars").setVisibility(true);
            mUIView.getItemByName("MovieClip_BestScoreText").setVisibility(true);
         }
      }
      
      private function §[-§() : void
      {
         this.§]!S§ = (mUIView.getItemByName("Container_LevelEndStripe") as § !&§).x;
         this.§>!l§ = (mUIView.getItemByName("Container_LevelEndStripe") as § !&§).y;
         this.§2g§ = §4r§;
      }
      
      private function §=R§(param1:Number) : void
      {
         if(this.§2g§ <= 0)
         {
            (mUIView.getItemByName("Container_LevelEndStripe") as § !&§).x = this.§]!S§;
            (mUIView.getItemByName("Container_LevelEndStripe") as § !&§).y = this.§>!l§;
         }
         else
         {
            (mUIView.getItemByName("Container_LevelEndStripe") as § !&§).x = this.§]!S§ + (Math.random() - 0.5) * (this.§2g§ / §4r§) * 20;
            (mUIView.getItemByName("Container_LevelEndStripe") as § !&§).y = this.§>!l§ + (Math.random() - 0.5) * (this.§2g§ / §4r§) * 20;
         }
         this.§2g§ -= param1 / 10;
      }
      
      private function §9!=§(param1:TimerEvent) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc4_:Number = §2[§.§'M§(§2[§.§^N§).§;k§;
         var _loc5_:Number = §2[§.§'M§(§2[§.§^N§).§2H§;
         if((mUIView.getItemByName("MovieClip_StarLeft") as §]! §).mClip.currentLabel == "UnLit")
         {
            §7G§.§4W§("Hiscore_Count",§%?§,100);
            §7G§.§&!X§(§8§);
            §7G§.§4W§("Hiscore_Star_Splash1",§8§);
            this.§@!k§.delay = 1000;
            this.§0o§.§[!g§(§7;§.§5F§.getScore());
            _loc6_ = this.§0o§.getValue() / _loc4_ * 2;
            this.§0U§ = §=!a§.§9$§.§9!H§(this,{"mNewScoreCounter":this.§0o§.getValue()},{"mNewScoreCounter":0},_loc6_);
            this.§0U§.onComplete = this.§5#§;
            this.§0U§.play();
            (mUIView.getItemByName("MovieClip_StarLeft") as §]! §).mClip.gotoAndStop("Lit");
            _loc2_ = (mUIView.getItemByName("MovieClip_StarLeft") as §]! §).x + (mUIView.getItemByName("Container_LevelEndStripe") as § !&§).x;
            _loc3_ = (mUIView.getItemByName("MovieClip_StarLeft") as §]! §).y + (mUIView.getItemByName("Container_LevelEndStripe") as § !&§).y;
            this.§9,§ = new §8!H§(§9!_§.§;!+§,§9!_§.§]!n§,_loc2_,_loc3_,§8!H§.§'2§);
            mUIView.addChild(this.§9,§);
            this.§+H§.push(this.§9,§);
         }
         else if(this.§0o§.getValue() >= _loc5_ && (mUIView.getItemByName("MovieClip_StarCenter") as §]! §).mClip.currentLabel == "UnLit")
         {
            §7G§.§&!X§(§8§);
            §7G§.§4W§("Hiscore_Star_Splash2",§8§);
            (mUIView.getItemByName("MovieClip_StarCenter") as §]! §).mClip.gotoAndStop("Lit");
            _loc2_ = (mUIView.getItemByName("MovieClip_StarCenter") as §]! §).x + (mUIView.getItemByName("Container_LevelEndStripe") as § !&§).x;
            _loc3_ = (mUIView.getItemByName("MovieClip_StarCenter") as §]! §).y + (mUIView.getItemByName("Container_LevelEndStripe") as § !&§).y;
            this.§9,§ = new §8!H§(§9!_§.§;!+§,§9!_§.§]!n§,_loc2_,_loc3_,§8!H§.§6R§);
            mUIView.addChild(this.§9,§);
            this.§+H§.push(this.§9,§);
         }
         else if(this.§0o§.getValue() >= _loc4_ && (mUIView.getItemByName("MovieClip_StarRight") as §]! §).mClip.currentLabel == "UnLit")
         {
            §7G§.§&!X§(§8§);
            §7G§.§4W§("Hiscore_Star_Splash3",§8§);
            (mUIView.getItemByName("MovieClip_StarRight") as §]! §).mClip.gotoAndStop("Lit");
            _loc2_ = (mUIView.getItemByName("MovieClip_StarRight") as §]! §).x + (mUIView.getItemByName("Container_LevelEndStripe") as § !&§).x;
            _loc3_ = (mUIView.getItemByName("MovieClip_StarRight") as §]! §).y + (mUIView.getItemByName("Container_LevelEndStripe") as § !&§).y;
            this.§9,§ = new §8!H§(§9!_§.§;!+§,§9!_§.§]!n§,_loc2_,_loc3_,§8!H§.§]!Q§);
            mUIView.addChild(this.§9,§);
            this.§+H§.push(this.§9,§);
            mUIView.getItemByName("Button_Redeem").setVisibility(true);
            _loc2_ = mUIView.getItemByName("Button_Redeem").x + (mUIView.getItemByName("Container_LevelEndStripe") as § !&§).x;
            _loc3_ = mUIView.getItemByName("Button_Redeem").y + (mUIView.getItemByName("Container_LevelEndStripe") as § !&§).y;
            this.§9,§ = new §8!H§(§9!_§.§;!+§,§9!_§.§]!n§,_loc2_,_loc3_,§8!H§.§-?§);
            mUIView.addChild(this.§9,§);
            this.§+H§.push(this.§9,§);
         }
         else if(!this.§^!b§)
         {
            this.§^!b§ = true;
         }
         else
         {
            this.§@!k§.stop();
            if(this.§^W§ || §0-§.§-5§(§2[§.§^N§))
            {
               this.§8!;§.setVisibility(true);
            }
            else
            {
               this.§8!;§.setVisibility(false);
            }
            this.§ p§ = §=!a§.§9$§.§9!H§(this.§8!;§.mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":7,
               "scaleY":7
            },0.1);
            this.§ p§.onComplete = this.§-!=§;
            this.§ p§.play();
         }
         ++this.§?!Q§;
      }
      
      private function §5#§() : void
      {
         §7G§.§&!X§(§%?§);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:§8!H§ = null;
         var _loc2_:int = super.run(param1);
         if(_loc2_ != § =§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         mUIView.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScore");
         mUIView.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScoreEffects");
         for each(_loc3_ in this.§+H§)
         {
            _loc3_.update(param1);
         }
         if(this.§2g§ > 0)
         {
            this.§=R§(param1);
         }
         if(mNextState.length > 0)
         {
            return § =§.STATE_STATUS_COMPLETED;
         }
         return § =§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§4?§.§'x§(0);
         this.§[!>§();
         this.§2g§ = 0;
         §7G§.§&!X§(§%?§);
         (mUIView.getItemByName("Button_Menu") as §49§).setComponentVisualState(§"!p§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (mUIView.getItemByName("Button_Replay") as §49§).setComponentVisualState(§"!p§.COMPONENT_STATE_ACTIVE_DEFAULT);
         mUIView.getItemByName("MovieClip_NewHighScoreBadge").setVisibility(false);
         mUIView.getItemByName("Container_PlayGround_Badge").setVisibility(false);
         mUIView.setText("0","TextField_LevelEndScore");
         mUIView.setText("0","TextField_LevelEndScoreEffects");
         mUIView.getItemByName("Button_Redeem").setVisibility(false);
      }
      
      private function §[!>§() : void
      {
         var _loc1_:§8!H§ = null;
         if(this.§@!k§)
         {
            this.§@!k§.stop();
            this.§@!k§.removeEventListener(TimerEvent.TIMER,this.§9!=§);
         }
         for each(_loc1_ in this.§+H§)
         {
            if(mUIView.contains(_loc1_))
            {
               mUIView.removeChild(_loc1_);
            }
            _loc1_.clean();
         }
         this.§+H§ = new Vector.<§8!H§>();
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
            mNextState = §[!1§;
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§[!a§) : void
      {
         super.uiInteractionHandler(param1,param2,param3);
         switch(param2)
         {
            case "NEXT_LEVEL":
               §"e§.§=!8§();
               mNextState = §"e§.§[!1§;
               break;
            case "REPLAY":
               §"e§.§`!"§();
               mNextState = §"e§.§[!1§;
               break;
            case "MENU":
               §7G§.§]!Z§();
               mNextState = §9!_§.§9§;
               break;
            case "BUTTON_REDEEM":
               navigateToURL(new URLRequest(§9!_§.§?!k§ + "coupon/"),"_blank");
         }
      }
   }
}
