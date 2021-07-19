package §%w§
{
   import §#!F§.§78§;
   import §#!V§.§&!!§;
   import §#!V§.§';§;
   import §&!7§.§,!A§;
   import §&p§.§9!H§;
   import §'!3§.§4C§;
   import §,j§.§0!@§;
   import §,j§.§1-§;
   import §,j§.§=X§;
   import §,j§.§[i§;
   import §-!@§.§@!Q§;
   import §-H§.§&c§;
   import §0F§.§'j§;
   import §0F§.§0p§;
   import §1§.§&!3§;
   import §1§.§'n§;
   import §5!M§.§<e§;
   import §6v§.§"g§;
   import §;!Q§.§^!S§;
   import §?m§.§7?§;
   import §@!?§.§0!U§;
   import §]!F§.§7e§;
   import §`!K§.§!!>§;
   import §`C§.§9!'§;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class § p§ extends §;s§
   {
      
      public static const §9!P§:String = "LevelEndState3";
      
      public static const §2M§:Number = 30;
      
      private static const §&!Q§:String = "ScoreLoopCountChannel";
      
      private static const §8E§:String = "EndScreenEffectChannel";
       
      
      private var §9!O§:§&!!§;
      
      private var §80§:Number;
      
      private var §1V§:Number;
      
      private var §;L§:Number;
      
      private var §0!_§:Boolean = false;
      
      private var §&!X§:Timer;
      
      private var §[2§:§"g§;
      
      private var §0g§:§^!S§;
      
      private var §@!&§:Vector.<§^!S§>;
      
      public var mNewScoreCounter:int;
      
      private var §<-§:int;
      
      private var § i§:Boolean;
      
      private var §5E§:§78§;
      
      private var §-J§:Boolean;
      
      private var §6!6§:§&!!§;
      
      public function § p§(param1:Boolean = false, param2:String = "LevelEndState3")
      {
         this.§5E§ = new §78§();
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §3t§ = new §'j§(this);
         §3t§.init(§0p§.§'! §.Views.View_LevelEndRio[0]);
         var _loc1_:§[i§ = §3t§.getItemByName("TextField_LevelCompleted") as §[i§;
         _loc1_.setText(§4C§.getText("Text_Level_Completed"));
         this.§[2§ = new §"g§(0,0,0,0);
         §3t§.movieClip.addChildAt(this.§[2§,§3t§.movieClip.numChildren - 1);
         this.§@!&§ = new Vector.<§^!S§>();
         §!!>§.§6!K§(§&!Q§,1,1);
         §!!>§.§6!K§(§8E§,16,1);
      }
      
      override public function activate() : void
      {
         super.activate();
         if(§9!'§.§7!Z§)
         {
            §9!'§.§7!Z§.start();
         }
         this.mNewScoreCounter = 0;
         this.§ i§ = false;
         §!!>§.playSound("LevelCompletedTheme1");
         this.§[2§.§#R§(0.7);
         this.§!!"§();
         (§3t§.getItemByName("Button_CutScene") as §0!@§).setVisibility(§7e§.§7!N§());
         if(§7e§.§^"§ == "1-3")
         {
            (§3t§.getItemByName("Button_Next") as §0!@§).setVisibility(false);
         }
         else
         {
            (§3t§.getItemByName("Button_Next") as §0!@§).setVisibility(true);
         }
      }
      
      private function §!!"§() : void
      {
         this.§2!?§();
         this.§&!X§ = new Timer(100);
         this.§<-§ = 0;
         this.§&!X§.addEventListener(TimerEvent.TIMER,this.§-!5§);
         this.§&!X§.start();
      }
      
      private function §2!?§() : void
      {
         var _loc3_:int = 0;
         var _loc1_:Number = §#x§.§[Y§.§`>§(§7e§.§^"§);
         var _loc2_:Number = (§7?§.§75§ as §@!Q§).getScore();
         this.§-J§ = _loc2_ > _loc1_;
         if(this.§-J§)
         {
            _loc1_ = _loc2_;
            §#x§.§[Y§.§'z§(§7e§.§^"§,_loc1_);
            §3t§.setText(§4C§.getText("Text_New_Highscore"),"TextField_BestScore");
         }
         else
         {
            §3t§.setText(§4C§.getText("Text_Best") + " " + _loc1_.toString(),"TextField_BestScore");
            _loc3_ = §7e§.§]!7§(§7e§.§^"§,_loc1_);
            switch(_loc3_)
            {
               case 1:
                  (§3t§.getItemByName("MovieClip_BestScoreStars") as §=X§).§=5§("OneStar");
                  break;
               case 2:
                  (§3t§.getItemByName("MovieClip_BestScoreStars") as §=X§).§=5§("TwoStar");
                  break;
               case 3:
                  (§3t§.getItemByName("MovieClip_BestScoreStars") as §=X§).§=5§("ThreeStar");
            }
         }
         (§3t§.getItemByName("MovieClip_NewHighScoreBadge") as §=X§).setVisibility(false);
         (§3t§.getItemByName("MovieClip_StarLeft") as §=X§).mClip.gotoAndStop("UnLit");
         (§3t§.getItemByName("MovieClip_StarCenter") as §=X§).mClip.gotoAndStop("UnLit");
         (§3t§.getItemByName("MovieClip_StarRight") as §=X§).mClip.gotoAndStop("UnLit");
      }
      
      private function §[@§() : void
      {
         if(this.§-J§)
         {
            §!!>§.§8y§(§8E§);
            §!!>§.playSound("Hiscore_Badge",§8E§);
            §3t§.setText(§4C§.getText("Text_New_Highscore"),"TextField_NewHighScore");
            (§3t§.getItemByName("TextField_NewHighScore") as §[i§).setVisibility(true);
            (§3t§.getItemByName("MovieClip_BestScoreStars") as §=X§).setVisibility(false);
            this.§`X§();
         }
         else
         {
            (§3t§.getItemByName("TextField_BestScore") as §[i§).setVisibility(true);
            (§3t§.getItemByName("MovieClip_BestScoreStars") as §=X§).setVisibility(true);
         }
      }
      
      private function §`X§() : void
      {
         this.§1V§ = (§3t§.getItemByName("Container_LevelEndStripe") as §1-§).x;
         this.§;L§ = (§3t§.getItemByName("Container_LevelEndStripe") as §1-§).y;
         this.§80§ = §2M§;
      }
      
      private function §@!;§(param1:Number) : void
      {
         if(this.§80§ <= 0)
         {
            (§3t§.getItemByName("Container_LevelEndStripe") as §1-§).x = this.§1V§;
            (§3t§.getItemByName("Container_LevelEndStripe") as §1-§).y = this.§;L§;
         }
         else
         {
            (§3t§.getItemByName("Container_LevelEndStripe") as §1-§).x = this.§1V§ + Math.random() * (this.§80§ / §2M§) * 20;
            (§3t§.getItemByName("Container_LevelEndStripe") as §1-§).y = this.§;L§ + Math.random() * (this.§80§ / §2M§) * 20;
         }
         this.§80§ -= param1 / 10;
      }
      
      private function §-!5§(param1:TimerEvent) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc4_:Number = §7e§.§`!7§(§7e§.§^"§).§7z§;
         var _loc5_:Number = §7e§.§`!7§(§7e§.§^"§).§;!L§;
         if((§3t§.getItemByName("MovieClip_StarLeft") as §=X§).mClip.currentLabel == "UnLit")
         {
            §!!>§.playSound("Hiscore_Count",§&!Q§,100);
            §!!>§.§8y§(§8E§);
            §!!>§.playSound("Hiscore_Star_Splash1",§8E§);
            this.§&!X§.delay = 1000;
            this.§5E§.§7!X§(§7?§.§75§.getScore());
            _loc6_ = this.§5E§.getValue() / _loc4_ * 2;
            this.§6!6§ = §';§.§%!O§.§set §(this,{"mNewScoreCounter":this.§5E§.getValue()},{"mNewScoreCounter":0},_loc6_);
            this.§6!6§.onComplete = this.§<y§;
            this.§6!6§.play();
            (§3t§.getItemByName("MovieClip_StarLeft") as §=X§).mClip.gotoAndStop("Lit");
            _loc2_ = (§3t§.getItemByName("MovieClip_StarLeft") as §=X§).x + (§3t§.getItemByName("Container_LevelEndStripe") as §1-§).x;
            _loc3_ = (§3t§.getItemByName("MovieClip_StarLeft") as §=X§).y + (§3t§.getItemByName("Container_LevelEndStripe") as §1-§).y;
            this.§0g§ = new §^!S§(§#x§.§;#§,§#x§.§0h§,_loc2_,_loc3_,§^!S§.§?C§);
            §3t§.addChild(this.§0g§);
            this.§@!&§.push(this.§0g§);
         }
         else if(this.§5E§.getValue() >= _loc5_ && (§3t§.getItemByName("MovieClip_StarCenter") as §=X§).mClip.currentLabel == "UnLit")
         {
            §!!>§.§8y§(§8E§);
            §!!>§.playSound("Hiscore_Star_Splash2",§8E§);
            (§3t§.getItemByName("MovieClip_StarCenter") as §=X§).mClip.gotoAndStop("Lit");
            _loc2_ = (§3t§.getItemByName("MovieClip_StarCenter") as §=X§).x + (§3t§.getItemByName("Container_LevelEndStripe") as §1-§).x;
            _loc3_ = (§3t§.getItemByName("MovieClip_StarCenter") as §=X§).y + (§3t§.getItemByName("Container_LevelEndStripe") as §1-§).y;
            this.§0g§ = new §^!S§(§#x§.§;#§,§#x§.§0h§,_loc2_,_loc3_,§^!S§.§[!§);
            §3t§.addChild(this.§0g§);
            this.§@!&§.push(this.§0g§);
         }
         else if(this.§5E§.getValue() >= _loc4_ && (§3t§.getItemByName("MovieClip_StarRight") as §=X§).mClip.currentLabel == "UnLit")
         {
            §!!>§.§8y§(§8E§);
            §!!>§.playSound("Hiscore_Star_Splash3",§8E§);
            (§3t§.getItemByName("MovieClip_StarRight") as §=X§).mClip.gotoAndStop("Lit");
            _loc2_ = (§3t§.getItemByName("MovieClip_StarRight") as §=X§).x + (§3t§.getItemByName("Container_LevelEndStripe") as §1-§).x;
            _loc3_ = (§3t§.getItemByName("MovieClip_StarRight") as §=X§).y + (§3t§.getItemByName("Container_LevelEndStripe") as §1-§).y;
            this.§0g§ = new §^!S§(§#x§.§;#§,§#x§.§0h§,_loc2_,_loc3_,§^!S§.§"-§);
            §3t§.addChild(this.§0g§);
            this.§@!&§.push(this.§0g§);
         }
         else if(!this.§ i§)
         {
            this.§ i§ = true;
         }
         else
         {
            this.§&!X§.stop();
            if(this.§-J§)
            {
               (§3t§.getItemByName("MovieClip_NewHighScoreBadge") as §=X§).setVisibility(true);
            }
            else
            {
               (§3t§.getItemByName("MovieClip_NewHighScoreBadge") as §=X§).setVisibility(false);
            }
            this.§9!O§ = §';§.§%!O§.§set §((§3t§.getItemByName("MovieClip_NewHighScoreBadge") as §=X§).mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":7,
               "scaleY":7
            },0.1);
            this.§9!O§.onComplete = this.§[@§;
            this.§9!O§.play();
         }
         ++this.§<-§;
      }
      
      private function §<y§() : void
      {
         §!!>§.§8y§(§&!Q§);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:§^!S§ = null;
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §&c§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§?<§();
         §3t§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScore");
         §3t§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScoreEffects");
         for each(_loc3_ in this.§@!&§)
         {
            _loc3_.update(param1);
         }
         if(this.§80§ > 0)
         {
            this.§@!;§(param1);
         }
         if(mNextState.length > 0)
         {
            return §&c§.STATE_STATUS_COMPLETED;
         }
         return §&c§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§[2§.§6!Y§(0);
         this.§?U§();
         this.§80§ = 0;
         §!!>§.§8y§(§&!Q§);
         (§3t§.getItemByName("Button_Menu") as §0!@§).setComponentVisualState(§&!3§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§3t§.getItemByName("Button_Replay") as §0!@§).setComponentVisualState(§&!3§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§3t§.getItemByName("Button_CutScene") as §0!@§).setVisibility(true);
         (§3t§.getItemByName("Button_Claim_Prize") as §0!@§).setComponentVisualState(§&!3§.COMPONENT_STATE_ACTIVE_DEFAULT);
         §3t§.setText("0","TextField_LevelEndScore");
         §3t§.setText("0","TextField_LevelEndScoreEffects");
      }
      
      private function §?U§() : void
      {
         var _loc1_:§^!S§ = null;
         if(this.§&!X§)
         {
            this.§&!X§.stop();
            this.§&!X§.removeEventListener(TimerEvent.TIMER,this.§-!5§);
         }
         for each(_loc1_ in this.§@!&§)
         {
            if(§3t§.contains(_loc1_))
            {
               §3t§.removeChild(_loc1_);
            }
            _loc1_.clean();
         }
         this.§@!&§ = new Vector.<§^!S§>();
         (§3t§.getItemByName("TextField_BestScore") as §[i§).setVisibility(false);
         (§3t§.getItemByName("MovieClip_BestScoreStars") as §=X§).setVisibility(false);
         (§3t§.getItemByName("TextField_NewHighScore") as §[i§).setVisibility(false);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyUp(param1);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§'n§) : void
      {
         var checkBoxComponent:§&!3§ = null;
         var claimPrizeButton:§0!@§ = null;
         var eventIndex:int = param1;
         var eventName:String = param2;
         var component:§'n§ = param3;
         switch(eventName)
         {
            case "NEXT_LEVEL":
               if((§7?§.§4!H§ as §<e§).§#n§() && !§7e§.§7!N§())
               {
                  if(!§;s§.sCheetosPopups.showPopup(§0!U§.§`1§))
                  {
                     this.§,>§();
                  }
               }
               else
               {
                  this.§,>§();
               }
               break;
            case "REPLAY":
               if((§7?§.§4!H§ as §<e§).§#n§())
               {
                  if(!§;s§.sCheetosPopups.showPopup(§0!U§.RESTART_LEVEL))
                  {
                     this.§ A§();
                  }
               }
               else
               {
                  this.§ A§();
               }
               break;
            case "MENU":
               this.§?!§();
               break;
            case "BUTTON_NO":
               if(§;s§.sCheetosPopups.getCurrentPopupName() == §0!U§.RESTART_LEVEL)
               {
                  sCheetosPopups.hidePopup();
               }
               else if(§;s§.sCheetosPopups.getCurrentPopupName() == §0!U§.§`1§)
               {
                  sCheetosPopups.hidePopup();
               }
               else if(§;s§.sCheetosPopups.getCurrentPopupName() == §0!U§.§]k§)
               {
                  sCheetosPopups.hidePopup();
               }
               break;
            case "BUTTON_YES":
               if(§;s§.sCheetosPopups.getCurrentPopupName() == §0!U§.RESTART_LEVEL)
               {
                  this.§ A§();
               }
               else if(§;s§.sCheetosPopups.getCurrentPopupName() == §0!U§.§`1§)
               {
                  this.§,>§();
               }
               else if(§;s§.sCheetosPopups.getCurrentPopupName() == §0!U§.§]k§)
               {
                  this.§?!§();
               }
               break;
            case "CHECKBOX_CHANGE":
               checkBoxComponent = component as §&!3§;
               §#x§.§=!!§.§9!E§ = !§#x§.§=!!§.§9!E§;
               if(§#x§.§=!!§.§9!E§)
               {
                  checkBoxComponent.setComponentState(§&!3§.COMPONENT_STATE_ACTIVE_DEFAULT);
               }
               else
               {
                  checkBoxComponent.setComponentState(§&!3§.§;2§);
               }
               break;
            case "CLAIM_PRIZE":
               try
               {
                  §,!A§.§9!M§("claimPrize",§9!H§.userPrizeId);
               }
               catch(e:Error)
               {
               }
               finally
               {
                  claimPrizeButton = §3t§.getItemByName("Button_Claim_Prize") as §0!@§;
                  claimPrizeButton.setComponentState(§&!3§.§;2§);
                  claimPrizeButton.setEnabled(false);
               }
         }
      }
      
      private function §?<§() : void
      {
         var _loc1_:§0!@§ = §3t§.getItemByName("Button_Replay") as §0!@§;
         var _loc2_:MovieClip = _loc1_.mClip.MovieClip_CreditCoin as MovieClip;
         var _loc3_:§0!@§ = §3t§.getItemByName("Button_Next") as §0!@§;
         var _loc4_:MovieClip = _loc3_.mClip.MovieClip_CreditCoin as MovieClip;
         var _loc5_:§0!@§ = §3t§.getItemByName("Button_Menu") as §0!@§;
         var _loc6_:§0!@§ = §3t§.getItemByName("Button_Claim_Prize") as §0!@§;
         if(§9!H§.hasWonPrize)
         {
            _loc6_.visible = true;
         }
         else
         {
            _loc6_.visible = false;
         }
         if((§7?§.§4!H§ as §<e§).§#n§())
         {
            _loc2_.visible = true;
            if(§7e§.§^"§ == null)
            {
               _loc4_.visible = false;
            }
            else
            {
               _loc4_.visible = !§7e§.§7!N§();
            }
         }
         else
         {
            _loc2_.visible = false;
            _loc4_.visible = false;
         }
      }
      
      private function § A§() : void
      {
         §[!X§.§]!J§();
         mNextState = §[!X§.§9!P§;
      }
      
      private function §,>§() : void
      {
         §[!X§.§9P§();
         mNextState = StateCutScene.§9!P§;
      }
      
      private function §?!§() : void
      {
         mNextState = §`L§.§9!P§;
      }
   }
}
