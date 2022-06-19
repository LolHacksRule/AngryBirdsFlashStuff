package §<!U§
{
   import § ;§.§3!$§;
   import § ;§.§4N§;
   import §!J§.§[&§;
   import §![§.§4!6§;
   import §#K§.§<!+§;
   import §&! §.§3!§;
   import §'G§.§#!F§;
   import §'G§.§%!%§;
   import §'G§.§1!D§;
   import §'G§.§false§;
   import §-M§.§+?§;
   import §-M§.§3!6§;
   import §-V§.§9d§;
   import §-V§.§@R§;
   import §0!>§.§1!#§;
   import §2!6§.§%!$§;
   import §2e§.§?#§;
   import §3!C§.§3o§;
   import §4!H§.§[4§;
   import §7W§.§ !+§;
   import §<0§.§ !W§;
   import §?!1§.§+a§;
   import §?w§.§!&§;
   import §]C§.§5z§;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §^!§ extends §]u§
   {
      
      public static const §`O§:String = "LevelEndState3";
      
      public static const §6=§:Number = 30;
      
      private static const §#!H§:String = "ScoreLoopCountChannel";
      
      private static const §7Y§:String = "EndScreenEffectChannel";
       
      
      private var §3&§:§3!$§;
      
      private var §@!§:Number;
      
      private var §"!P§:Number;
      
      private var §,+§:Number;
      
      private var §4x§:Boolean = false;
      
      private var §><§:Timer;
      
      private var §+W§:§?#§;
      
      private var §%l§:§ !W§;
      
      private var §]!,§:Vector.<§ !W§>;
      
      public var mNewScoreCounter:int;
      
      private var §]h§:int;
      
      private var §+!H§:Boolean;
      
      private var §8T§:§3!§;
      
      private var §&M§:Boolean;
      
      private var §^!S§:§3!$§;
      
      public function §^!§(param1:Boolean = false, param2:String = "LevelEndState3")
      {
         this.§8T§ = new §3!§();
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §"c§ = new §3!6§(this);
         §"c§.init(§+?§.§@]§.Views.View_LevelEndRio[0]);
         var _loc1_:§1!D§ = §"c§.getItemByName("TextField_LevelCompleted") as §1!D§;
         _loc1_.setText(§1!#§.getText("Text_Level_Completed"));
         this.§+W§ = new §?#§(0,0,0,0);
         §"c§.mMovieClip.addChildAt(this.§+W§,§"c§.mMovieClip.numChildren - 1);
         this.§]!,§ = new Vector.<§ !W§>();
         §%!$§.§0!?§(§#!H§,1,1);
         §%!$§.§0!?§(§7Y§,16,1);
      }
      
      override public function activate() : void
      {
         super.activate();
         if(§ !+§.§ Z§)
         {
            § !+§.§ Z§.start();
         }
         this.mNewScoreCounter = 0;
         this.§+!H§ = false;
         §%!$§.playSound("LevelCompletedTheme1");
         this.§+W§.§]N§(0.7);
         this.§]s§();
         (§"c§.getItemByName("Button_CutScene") as §false§).setVisibility(§<!+§.§@l§());
         if(§<!+§.§^R§ == "1-3")
         {
            (§"c§.getItemByName("Button_Next") as §false§).setVisibility(false);
         }
         else
         {
            (§"c§.getItemByName("Button_Next") as §false§).setVisibility(true);
         }
      }
      
      private function §]s§() : void
      {
         this.§=!B§();
         this.§><§ = new Timer(100);
         this.§]h§ = 0;
         this.§><§.addEventListener(TimerEvent.TIMER,this.§8!=§);
         this.§><§.start();
      }
      
      private function §=!B§() : void
      {
         var _loc3_:int = 0;
         var _loc1_:Number = §,l§.§3!,§.§=!V§(§<!+§.§^R§);
         var _loc2_:Number = (§[&§.§&#§ as §5z§).getScore();
         this.§&M§ = _loc2_ > _loc1_;
         if(this.§&M§)
         {
            _loc1_ = _loc2_;
            §,l§.§3!,§.§!I§(§<!+§.§^R§,_loc1_);
            §"c§.setText(§1!#§.getText("Text_New_Highscore"),"TextField_BestScore");
         }
         else
         {
            §"c§.setText(§1!#§.getText("Text_Best") + " " + _loc1_.toString(),"TextField_BestScore");
            _loc3_ = §<!+§.§,!Q§(§<!+§.§^R§,_loc1_);
            switch(_loc3_)
            {
               case 1:
                  (§"c§.getItemByName("MovieClip_BestScoreStars") as §#!F§).§4t§("OneStar");
                  break;
               case 2:
                  (§"c§.getItemByName("MovieClip_BestScoreStars") as §#!F§).§4t§("TwoStar");
                  break;
               case 3:
                  (§"c§.getItemByName("MovieClip_BestScoreStars") as §#!F§).§4t§("ThreeStar");
            }
         }
         (§"c§.getItemByName("MovieClip_NewHighScoreBadge") as §#!F§).setVisibility(false);
         (§"c§.getItemByName("MovieClip_StarLeft") as §#!F§).mClip.gotoAndStop("UnLit");
         (§"c§.getItemByName("MovieClip_StarCenter") as §#!F§).mClip.gotoAndStop("UnLit");
         (§"c§.getItemByName("MovieClip_StarRight") as §#!F§).mClip.gotoAndStop("UnLit");
      }
      
      private function §,#§() : void
      {
         if(this.§&M§)
         {
            §%!$§.§,w§(§7Y§);
            §%!$§.playSound("Hiscore_Badge",§7Y§);
            §"c§.setText(§1!#§.getText("Text_New_Highscore"),"TextField_NewHighScore");
            (§"c§.getItemByName("TextField_NewHighScore") as §1!D§).setVisibility(true);
            (§"c§.getItemByName("MovieClip_BestScoreStars") as §#!F§).setVisibility(false);
            this.§>Y§();
         }
         else
         {
            (§"c§.getItemByName("TextField_BestScore") as §1!D§).setVisibility(true);
            (§"c§.getItemByName("MovieClip_BestScoreStars") as §#!F§).setVisibility(true);
         }
      }
      
      private function §>Y§() : void
      {
         this.§"!P§ = (§"c§.getItemByName("Container_LevelEndStripe") as §%!%§).x;
         this.§,+§ = (§"c§.getItemByName("Container_LevelEndStripe") as §%!%§).y;
         this.§@!§ = §6=§;
      }
      
      private function §3W§(param1:Number) : void
      {
         if(this.§@!§ <= 0)
         {
            (§"c§.getItemByName("Container_LevelEndStripe") as §%!%§).x = this.§"!P§;
            (§"c§.getItemByName("Container_LevelEndStripe") as §%!%§).y = this.§,+§;
         }
         else
         {
            (§"c§.getItemByName("Container_LevelEndStripe") as §%!%§).x = this.§"!P§ + Math.random() * (this.§@!§ / §6=§) * 20;
            (§"c§.getItemByName("Container_LevelEndStripe") as §%!%§).y = this.§,+§ + Math.random() * (this.§@!§ / §6=§) * 20;
         }
         this.§@!§ -= param1 / 10;
      }
      
      private function §8!=§(param1:TimerEvent) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc4_:Number = §<!+§.§@i§(§<!+§.§^R§).§<!D§;
         var _loc5_:Number = §<!+§.§@i§(§<!+§.§^R§).§8H§;
         if((§"c§.getItemByName("MovieClip_StarLeft") as §#!F§).mClip.currentLabel == "UnLit")
         {
            §%!$§.playSound("Hiscore_Count",§#!H§,100);
            §%!$§.§,w§(§7Y§);
            §%!$§.playSound("Hiscore_Star_Splash1",§7Y§);
            this.§><§.delay = 1000;
            this.§8T§.§6!Y§(§[&§.§&#§.getScore());
            _loc6_ = this.§8T§.getValue() / _loc4_ * 2;
            this.§^!S§ = §4N§.§-!U§.§5!N§(this,{"mNewScoreCounter":this.§8T§.getValue()},{"mNewScoreCounter":0},_loc6_);
            this.§^!S§.onComplete = this.§36§;
            this.§^!S§.play();
            (§"c§.getItemByName("MovieClip_StarLeft") as §#!F§).mClip.gotoAndStop("Lit");
            _loc2_ = (§"c§.getItemByName("MovieClip_StarLeft") as §#!F§).x + (§"c§.getItemByName("Container_LevelEndStripe") as §%!%§).x;
            _loc3_ = (§"c§.getItemByName("MovieClip_StarLeft") as §#!F§).y + (§"c§.getItemByName("Container_LevelEndStripe") as §%!%§).y;
            this.§%l§ = new § !W§(§,l§.§"L§,§,l§.§#S§,_loc2_,_loc3_,§ !W§.§[!4§);
            §"c§.addChild(this.§%l§);
            this.§]!,§.push(this.§%l§);
         }
         else if(this.§8T§.getValue() >= _loc5_ && (§"c§.getItemByName("MovieClip_StarCenter") as §#!F§).mClip.currentLabel == "UnLit")
         {
            §%!$§.§,w§(§7Y§);
            §%!$§.playSound("Hiscore_Star_Splash2",§7Y§);
            (§"c§.getItemByName("MovieClip_StarCenter") as §#!F§).mClip.gotoAndStop("Lit");
            _loc2_ = (§"c§.getItemByName("MovieClip_StarCenter") as §#!F§).x + (§"c§.getItemByName("Container_LevelEndStripe") as §%!%§).x;
            _loc3_ = (§"c§.getItemByName("MovieClip_StarCenter") as §#!F§).y + (§"c§.getItemByName("Container_LevelEndStripe") as §%!%§).y;
            this.§%l§ = new § !W§(§,l§.§"L§,§,l§.§#S§,_loc2_,_loc3_,§ !W§.§7V§);
            §"c§.addChild(this.§%l§);
            this.§]!,§.push(this.§%l§);
         }
         else if(this.§8T§.getValue() >= _loc4_ && (§"c§.getItemByName("MovieClip_StarRight") as §#!F§).mClip.currentLabel == "UnLit")
         {
            §%!$§.§,w§(§7Y§);
            §%!$§.playSound("Hiscore_Star_Splash3",§7Y§);
            (§"c§.getItemByName("MovieClip_StarRight") as §#!F§).mClip.gotoAndStop("Lit");
            _loc2_ = (§"c§.getItemByName("MovieClip_StarRight") as §#!F§).x + (§"c§.getItemByName("Container_LevelEndStripe") as §%!%§).x;
            _loc3_ = (§"c§.getItemByName("MovieClip_StarRight") as §#!F§).y + (§"c§.getItemByName("Container_LevelEndStripe") as §%!%§).y;
            this.§%l§ = new § !W§(§,l§.§"L§,§,l§.§#S§,_loc2_,_loc3_,§ !W§.§>N§);
            §"c§.addChild(this.§%l§);
            this.§]!,§.push(this.§%l§);
         }
         else if(!this.§+!H§)
         {
            this.§+!H§ = true;
         }
         else
         {
            this.§><§.stop();
            if(this.§&M§)
            {
               (§"c§.getItemByName("MovieClip_NewHighScoreBadge") as §#!F§).setVisibility(true);
            }
            else
            {
               (§"c§.getItemByName("MovieClip_NewHighScoreBadge") as §#!F§).setVisibility(false);
            }
            this.§3&§ = §4N§.§-!U§.§5!N§((§"c§.getItemByName("MovieClip_NewHighScoreBadge") as §#!F§).mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":7,
               "scaleY":7
            },0.1);
            this.§3&§.onComplete = this.§,#§;
            this.§3&§.play();
         }
         ++this.§]h§;
      }
      
      private function §36§() : void
      {
         §%!$§.§,w§(§#!H§);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:§ !W§ = null;
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §[4§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§;z§();
         §"c§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScore");
         §"c§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScoreEffects");
         for each(_loc3_ in this.§]!,§)
         {
            _loc3_.update(param1);
         }
         if(this.§@!§ > 0)
         {
            this.§3W§(param1);
         }
         if(mNextState.length > 0)
         {
            return §[4§.STATE_STATUS_COMPLETED;
         }
         return §[4§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§+W§.§5!<§(0);
         this.§,m§();
         this.§@!§ = 0;
         §%!$§.§,w§(§#!H§);
         (§"c§.getItemByName("Button_Menu") as §false§).setComponentVisualState(§9d§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§"c§.getItemByName("Button_Replay") as §false§).setComponentVisualState(§9d§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§"c§.getItemByName("Button_CutScene") as §false§).setVisibility(true);
         (§"c§.getItemByName("Button_Claim_Prize") as §false§).setComponentVisualState(§9d§.COMPONENT_STATE_ACTIVE_DEFAULT);
         §"c§.setText("0","TextField_LevelEndScore");
         §"c§.setText("0","TextField_LevelEndScoreEffects");
      }
      
      private function §,m§() : void
      {
         var _loc1_:§ !W§ = null;
         if(this.§><§)
         {
            this.§><§.stop();
            this.§><§.removeEventListener(TimerEvent.TIMER,this.§8!=§);
         }
         for each(_loc1_ in this.§]!,§)
         {
            if(§"c§.contains(_loc1_))
            {
               §"c§.removeChild(_loc1_);
            }
            _loc1_.clean();
         }
         this.§]!,§ = new Vector.<§ !W§>();
         (§"c§.getItemByName("TextField_BestScore") as §1!D§).setVisibility(false);
         (§"c§.getItemByName("MovieClip_BestScoreStars") as §#!F§).setVisibility(false);
         (§"c§.getItemByName("TextField_NewHighScore") as §1!D§).setVisibility(false);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyUp(param1);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§@R§) : void
      {
         var checkBoxComponent:§9d§ = null;
         var claimPrizeButton:§false§ = null;
         var eventIndex:int = param1;
         var eventName:String = param2;
         var component:§@R§ = param3;
         switch(eventName)
         {
            case "NEXT_LEVEL":
               if((§[&§.§&!'§ as §!&§).§`!P§() && !§<!+§.§@l§())
               {
                  if(!§]u§.sCheetosPopups.showPopup(§+a§.§<$§))
                  {
                     this.§;!%§();
                  }
               }
               else
               {
                  this.§;!%§();
               }
               break;
            case "REPLAY":
               if((§[&§.§&!'§ as §!&§).§`!P§())
               {
                  if(!§]u§.sCheetosPopups.showPopup(§+a§.RESTART_LEVEL))
                  {
                     this.§;!F§();
                  }
               }
               else
               {
                  this.§;!F§();
               }
               break;
            case "MENU":
               this.§5!!§();
               break;
            case "BUTTON_NO":
               if(§]u§.sCheetosPopups.getCurrentPopupName() == §+a§.RESTART_LEVEL)
               {
                  sCheetosPopups.hidePopup();
               }
               else if(§]u§.sCheetosPopups.getCurrentPopupName() == §+a§.§<$§)
               {
                  sCheetosPopups.hidePopup();
               }
               else if(§]u§.sCheetosPopups.getCurrentPopupName() == §+a§.§2!,§)
               {
                  sCheetosPopups.hidePopup();
               }
               break;
            case "BUTTON_YES":
               if(§]u§.sCheetosPopups.getCurrentPopupName() == §+a§.RESTART_LEVEL)
               {
                  this.§;!F§();
               }
               else if(§]u§.sCheetosPopups.getCurrentPopupName() == §+a§.§<$§)
               {
                  this.§;!%§();
               }
               else if(§]u§.sCheetosPopups.getCurrentPopupName() == §+a§.§2!,§)
               {
                  this.§5!!§();
               }
               break;
            case "CHECKBOX_CHANGE":
               checkBoxComponent = component as §9d§;
               §,l§.§,?§.§+d§ = !§,l§.§,?§.§+d§;
               if(§,l§.§,?§.§+d§)
               {
                  checkBoxComponent.setComponentState(§9d§.COMPONENT_STATE_ACTIVE_DEFAULT);
                  break;
               }
               checkBoxComponent.setComponentState(§9d§.§%C§);
               break;
            case "CLAIM_PRIZE":
               try
               {
                  §4!6§.§]l§("claimPrize",§3o§.userPrizeId);
               }
               catch(e:Error)
               {
               }
               finally
               {
                  claimPrizeButton = §"c§.getItemByName("Button_Claim_Prize") as §false§;
                  claimPrizeButton.setComponentState(§9d§.§%C§);
                  claimPrizeButton.setEnabled(false);
               }
         }
      }
      
      private function §;z§() : void
      {
         var _loc1_:§false§ = §"c§.getItemByName("Button_Replay") as §false§;
         var _loc2_:MovieClip = _loc1_.mClip.MovieClip_CreditCoin as MovieClip;
         var _loc3_:§false§ = §"c§.getItemByName("Button_Next") as §false§;
         var _loc4_:MovieClip = _loc3_.mClip.MovieClip_CreditCoin as MovieClip;
         var _loc5_:§false§ = §"c§.getItemByName("Button_Menu") as §false§;
         var _loc6_:§false§ = §"c§.getItemByName("Button_Claim_Prize") as §false§;
         if(§3o§.hasWonPrize)
         {
            _loc6_.visible = true;
         }
         else
         {
            _loc6_.visible = false;
         }
         if((§[&§.§&!'§ as §!&§).§`!P§())
         {
            _loc2_.visible = true;
            if(§<!+§.§^R§ == null)
            {
               _loc4_.visible = false;
            }
            else
            {
               _loc4_.visible = !§<!+§.§@l§();
            }
         }
         else
         {
            _loc2_.visible = false;
            _loc4_.visible = false;
         }
      }
      
      private function §;!F§() : void
      {
         §0"§.§!7§();
         mNextState = §0"§.§`O§;
      }
      
      private function §;!%§() : void
      {
         §0"§.§>!U§();
         mNextState = StateCutScene.§`O§;
      }
      
      private function §5!!§() : void
      {
         mNextState = §6l§.§`O§;
      }
   }
}
