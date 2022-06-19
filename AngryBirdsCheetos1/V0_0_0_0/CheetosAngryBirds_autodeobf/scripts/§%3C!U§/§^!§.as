package §<!U§
{
   import § !+§.§0Z§;
   import § !W§.§@!?§;
   import § ;§.§3!$§;
   import § ;§.§4N§;
   import §!J§.§[&§;
   import §"!+§.§6!7§;
   import §%!$§.§=m§;
   import §&! §.§3!§;
   import §+?§.§,!N§;
   import §+?§.§@]§;
   import §+a§.§8!I§;
   import §2e§.§<U§;
   import §3o§.§;!=§;
   import §4!6§.§,Y§;
   import §8!8§.§&Q§;
   import §8!8§.§+!M§;
   import §8!8§.§1!-§;
   import §8!8§.§4!C§;
   import §<!+§.§[!!§;
   import §?w§.§!&§;
   import §@R§.§<d§;
   import §@R§.§]^§;
   import §]2§.§[4§;
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
      
      private var §+W§:§<U§;
      
      private var §%l§:§@!?§;
      
      private var §]!,§:Vector.<§@!?§>;
      
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
         §"c§ = new §,!N§(this);
         §"c§.init(§@]§.§3!6§.Views.View_LevelEndRio[0]);
         var _loc1_:§1!-§ = §"c§.getItemByName("TextField_LevelCompleted") as §1!-§;
         _loc1_.setText(§6!7§.getText("Text_Level_Completed"));
         this.§+W§ = new §<U§(0,0,0,0);
         §"c§.mMovieClip.addChildAt(this.§+W§,§"c§.mMovieClip.numChildren - 1);
         this.§]!,§ = new Vector.<§@!?§>();
         §=m§.§,!1§(§#!H§,1,1);
         §=m§.§,!1§(§7Y§,16,1);
      }
      
      override public function activate() : void
      {
         super.activate();
         if(§0Z§.§4J§)
         {
            §0Z§.§4J§.start();
         }
         this.mNewScoreCounter = 0;
         this.§+!H§ = false;
         §=m§.playSound("LevelCompletedTheme1");
         this.§+W§.§9>§(0.7);
         this.§]s§();
         (§"c§.getItemByName("Button_CutScene") as §+!M§).setVisibility(§[!!§.§+i§());
         if(§[!!§.§7!F§ == "1-3")
         {
            (§"c§.getItemByName("Button_Next") as §+!M§).setVisibility(false);
         }
         else
         {
            (§"c§.getItemByName("Button_Next") as §+!M§).setVisibility(true);
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
         var _loc1_:Number = §,l§.§3!,§.§=!V§(§[!!§.§7!F§);
         var _loc2_:Number = (§[&§.§&#§ as §5z§).getScore();
         this.§&M§ = _loc2_ > _loc1_;
         if(this.§&M§)
         {
            _loc1_ = _loc2_;
            §,l§.§3!,§.§!I§(§[!!§.§7!F§,_loc1_);
            §"c§.setText(§6!7§.getText("Text_New_Highscore"),"TextField_BestScore");
         }
         else
         {
            §"c§.setText(§6!7§.getText("Text_Best") + " " + _loc1_.toString(),"TextField_BestScore");
            _loc3_ = §[!!§.§``§(§[!!§.§7!F§,_loc1_);
            switch(_loc3_)
            {
               case 1:
                  (§"c§.getItemByName("MovieClip_BestScoreStars") as §&Q§).§7!-§("OneStar");
                  break;
               case 2:
                  (§"c§.getItemByName("MovieClip_BestScoreStars") as §&Q§).§7!-§("TwoStar");
                  break;
               case 3:
                  (§"c§.getItemByName("MovieClip_BestScoreStars") as §&Q§).§7!-§("ThreeStar");
            }
         }
         (§"c§.getItemByName("MovieClip_NewHighScoreBadge") as §&Q§).setVisibility(false);
         (§"c§.getItemByName("MovieClip_StarLeft") as §&Q§).mClip.gotoAndStop("UnLit");
         (§"c§.getItemByName("MovieClip_StarCenter") as §&Q§).mClip.gotoAndStop("UnLit");
         (§"c§.getItemByName("MovieClip_StarRight") as §&Q§).mClip.gotoAndStop("UnLit");
      }
      
      private function §,#§() : void
      {
         if(this.§&M§)
         {
            §=m§.§+f§(§7Y§);
            §=m§.playSound("Hiscore_Badge",§7Y§);
            §"c§.setText(§6!7§.getText("Text_New_Highscore"),"TextField_NewHighScore");
            (§"c§.getItemByName("TextField_NewHighScore") as §1!-§).setVisibility(true);
            (§"c§.getItemByName("MovieClip_BestScoreStars") as §&Q§).setVisibility(false);
            this.§>Y§();
         }
         else
         {
            (§"c§.getItemByName("TextField_BestScore") as §1!-§).setVisibility(true);
            (§"c§.getItemByName("MovieClip_BestScoreStars") as §&Q§).setVisibility(true);
         }
      }
      
      private function §>Y§() : void
      {
         this.§"!P§ = (§"c§.getItemByName("Container_LevelEndStripe") as §4!C§).x;
         this.§,+§ = (§"c§.getItemByName("Container_LevelEndStripe") as §4!C§).y;
         this.§@!§ = §6=§;
      }
      
      private function §3W§(param1:Number) : void
      {
         if(this.§@!§ <= 0)
         {
            (§"c§.getItemByName("Container_LevelEndStripe") as §4!C§).x = this.§"!P§;
            (§"c§.getItemByName("Container_LevelEndStripe") as §4!C§).y = this.§,+§;
         }
         else
         {
            (§"c§.getItemByName("Container_LevelEndStripe") as §4!C§).x = this.§"!P§ + Math.random() * (this.§@!§ / §6=§) * 20;
            (§"c§.getItemByName("Container_LevelEndStripe") as §4!C§).y = this.§,+§ + Math.random() * (this.§@!§ / §6=§) * 20;
         }
         this.§@!§ -= param1 / 10;
      }
      
      private function §8!=§(param1:TimerEvent) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc4_:Number = §[!!§.§1L§(§[!!§.§7!F§).§ !§;
         var _loc5_:Number = §[!!§.§1L§(§[!!§.§7!F§).§<!D§;
         if((§"c§.getItemByName("MovieClip_StarLeft") as §&Q§).mClip.currentLabel == "UnLit")
         {
            §=m§.playSound("Hiscore_Count",§#!H§,100);
            §=m§.§+f§(§7Y§);
            §=m§.playSound("Hiscore_Star_Splash1",§7Y§);
            this.§><§.delay = 1000;
            this.§8T§.§6!Y§(§[&§.§&#§.getScore());
            _loc6_ = this.§8T§.getValue() / _loc4_ * 2;
            this.§^!S§ = §4N§.§!!L§.§5!N§(this,{"mNewScoreCounter":this.§8T§.getValue()},{"mNewScoreCounter":0},_loc6_);
            this.§^!S§.onComplete = this.§36§;
            this.§^!S§.play();
            (§"c§.getItemByName("MovieClip_StarLeft") as §&Q§).mClip.gotoAndStop("Lit");
            _loc2_ = (§"c§.getItemByName("MovieClip_StarLeft") as §&Q§).x + (§"c§.getItemByName("Container_LevelEndStripe") as §4!C§).x;
            _loc3_ = (§"c§.getItemByName("MovieClip_StarLeft") as §&Q§).y + (§"c§.getItemByName("Container_LevelEndStripe") as §4!C§).y;
            this.§%l§ = new §@!?§(§,l§.§"L§,§,l§.§#S§,_loc2_,_loc3_,§@!?§.§7V§);
            §"c§.addChild(this.§%l§);
            this.§]!,§.push(this.§%l§);
         }
         else if(this.§8T§.getValue() >= _loc5_ && (§"c§.getItemByName("MovieClip_StarCenter") as §&Q§).mClip.currentLabel == "UnLit")
         {
            §=m§.§+f§(§7Y§);
            §=m§.playSound("Hiscore_Star_Splash2",§7Y§);
            (§"c§.getItemByName("MovieClip_StarCenter") as §&Q§).mClip.gotoAndStop("Lit");
            _loc2_ = (§"c§.getItemByName("MovieClip_StarCenter") as §&Q§).x + (§"c§.getItemByName("Container_LevelEndStripe") as §4!C§).x;
            _loc3_ = (§"c§.getItemByName("MovieClip_StarCenter") as §&Q§).y + (§"c§.getItemByName("Container_LevelEndStripe") as §4!C§).y;
            this.§%l§ = new §@!?§(§,l§.§"L§,§,l§.§#S§,_loc2_,_loc3_,§@!?§.§>N§);
            §"c§.addChild(this.§%l§);
            this.§]!,§.push(this.§%l§);
         }
         else if(this.§8T§.getValue() >= _loc4_ && (§"c§.getItemByName("MovieClip_StarRight") as §&Q§).mClip.currentLabel == "UnLit")
         {
            §=m§.§+f§(§7Y§);
            §=m§.playSound("Hiscore_Star_Splash3",§7Y§);
            (§"c§.getItemByName("MovieClip_StarRight") as §&Q§).mClip.gotoAndStop("Lit");
            _loc2_ = (§"c§.getItemByName("MovieClip_StarRight") as §&Q§).x + (§"c§.getItemByName("Container_LevelEndStripe") as §4!C§).x;
            _loc3_ = (§"c§.getItemByName("MovieClip_StarRight") as §&Q§).y + (§"c§.getItemByName("Container_LevelEndStripe") as §4!C§).y;
            this.§%l§ = new §@!?§(§,l§.§"L§,§,l§.§#S§,_loc2_,_loc3_,§@!?§.§?A§);
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
               (§"c§.getItemByName("MovieClip_NewHighScoreBadge") as §&Q§).setVisibility(true);
            }
            else
            {
               (§"c§.getItemByName("MovieClip_NewHighScoreBadge") as §&Q§).setVisibility(false);
            }
            this.§3&§ = §4N§.§!!L§.§5!N§((§"c§.getItemByName("MovieClip_NewHighScoreBadge") as §&Q§).mClip,{
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
         §=m§.§+f§(§#!H§);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:§@!?§ = null;
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
         §=m§.§+f§(§#!H§);
         (§"c§.getItemByName("Button_Menu") as §+!M§).setComponentVisualState(§<d§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§"c§.getItemByName("Button_Replay") as §+!M§).setComponentVisualState(§<d§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§"c§.getItemByName("Button_CutScene") as §+!M§).setVisibility(true);
         (§"c§.getItemByName("Button_Claim_Prize") as §+!M§).setComponentVisualState(§<d§.COMPONENT_STATE_ACTIVE_DEFAULT);
         §"c§.setText("0","TextField_LevelEndScore");
         §"c§.setText("0","TextField_LevelEndScoreEffects");
      }
      
      private function §,m§() : void
      {
         var _loc1_:§@!?§ = null;
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
         this.§]!,§ = new Vector.<§@!?§>();
         (§"c§.getItemByName("TextField_BestScore") as §1!-§).setVisibility(false);
         (§"c§.getItemByName("MovieClip_BestScoreStars") as §&Q§).setVisibility(false);
         (§"c§.getItemByName("TextField_NewHighScore") as §1!-§).setVisibility(false);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyUp(param1);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§]^§) : void
      {
         var checkBoxComponent:§<d§ = null;
         var claimPrizeButton:§+!M§ = null;
         var eventIndex:int = param1;
         var eventName:String = param2;
         var component:§]^§ = param3;
         switch(eventName)
         {
            case "NEXT_LEVEL":
               if((§[&§.§&!'§ as §!&§).§`!P§() && !§[!!§.§+i§())
               {
                  if(!§]u§.sCheetosPopups.showPopup(§8!I§.§%!M§))
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
                  if(!§]u§.sCheetosPopups.showPopup(§8!I§.RESTART_LEVEL))
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
               if(§]u§.sCheetosPopups.getCurrentPopupName() == §8!I§.RESTART_LEVEL)
               {
                  sCheetosPopups.hidePopup();
               }
               else if(§]u§.sCheetosPopups.getCurrentPopupName() == §8!I§.§%!M§)
               {
                  sCheetosPopups.hidePopup();
               }
               else if(§]u§.sCheetosPopups.getCurrentPopupName() == §8!I§.§-k§)
               {
                  sCheetosPopups.hidePopup();
               }
               break;
            case "BUTTON_YES":
               if(§]u§.sCheetosPopups.getCurrentPopupName() == §8!I§.RESTART_LEVEL)
               {
                  this.§;!F§();
               }
               else if(§]u§.sCheetosPopups.getCurrentPopupName() == §8!I§.§%!M§)
               {
                  this.§;!%§();
               }
               else if(§]u§.sCheetosPopups.getCurrentPopupName() == §8!I§.§-k§)
               {
                  this.§5!!§();
               }
               break;
            case "CHECKBOX_CHANGE":
               checkBoxComponent = component as §<d§;
               §,l§.§,?§.§+d§ = !§,l§.§,?§.§+d§;
               if(§,l§.§,?§.§+d§)
               {
                  checkBoxComponent.setComponentState(§<d§.COMPONENT_STATE_ACTIVE_DEFAULT);
                  break;
               }
               checkBoxComponent.setComponentState(§<d§.§^#§);
               break;
            case "CLAIM_PRIZE":
               try
               {
                  §,Y§.§[[§("claimPrize",§;!=§.userPrizeId);
               }
               catch(e:Error)
               {
               }
               finally
               {
                  claimPrizeButton = §"c§.getItemByName("Button_Claim_Prize") as §+!M§;
                  claimPrizeButton.setComponentState(§<d§.§^#§);
                  claimPrizeButton.setEnabled(false);
               }
         }
      }
      
      private function §;z§() : void
      {
         var _loc1_:§+!M§ = §"c§.getItemByName("Button_Replay") as §+!M§;
         var _loc2_:MovieClip = _loc1_.mClip.MovieClip_CreditCoin as MovieClip;
         var _loc3_:§+!M§ = §"c§.getItemByName("Button_Next") as §+!M§;
         var _loc4_:MovieClip = _loc3_.mClip.MovieClip_CreditCoin as MovieClip;
         var _loc5_:§+!M§ = §"c§.getItemByName("Button_Menu") as §+!M§;
         var _loc6_:§+!M§ = §"c§.getItemByName("Button_Claim_Prize") as §+!M§;
         if(§;!=§.hasWonPrize)
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
            if(§[!!§.§7!F§ == null)
            {
               _loc4_.visible = false;
            }
            else
            {
               _loc4_.visible = !§[!!§.§+i§();
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
