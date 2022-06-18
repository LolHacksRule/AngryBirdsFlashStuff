package §3n§
{
   import §"Z§.§-N§;
   import §"Z§.§5!2§;
   import §#h§.§^!+§;
   import §+!^§.§'Y§;
   import §+d§.§!F§;
   import §0q§.§7+§;
   import §1Y§.§+$§;
   import §4p§.§-5§;
   import §7!7§.§return§;
   import §7'§.§'q§;
   import §7'§.§-!6§;
   import §7H§.§25§;
   import §7H§.§with§;
   import §8E§.§&M§;
   import §8v§.§#Z§;
   import §8v§.include;
   import §>N§.§"u§;
   import §?>§.§ !V§;
   import §?>§.§!&§;
   import §?>§.§+&§;
   import §?>§.§<l§;
   import §^9§.§[!L§;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §`!V§ extends §<D§
   {
      
      public static const §,F§:String = "LevelEndState3";
      
      public static const §6!U§:Number = 30;
      
      private static const §%!T§:String = "ScoreLoopCountChannel";
      
      private static const §7C§:String = "EndScreenEffectChannel";
       
      
      private var §9!S§:§5!2§;
      
      private var §=O§:Number;
      
      private var §`i§:Number;
      
      private var §"!8§:Number;
      
      private var §6E§:Boolean = false;
      
      private var §^4§:Timer;
      
      private var §7R§:§25§;
      
      private var §-+§:§with§;
      
      private var §!h§:Vector.<§with§>;
      
      public var mNewScoreCounter:int;
      
      private var §9!P§:int;
      
      private var §'!>§:Boolean;
      
      private var §=A§:§!F§;
      
      private var §!!L§:Boolean;
      
      private var §9j§:§5!2§;
      
      public function §`!V§(param1:Boolean = false, param2:String = "LevelEndState3")
      {
         this.§=A§ = new §!F§();
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §2!J§ = new §#Z§(this);
         §2!J§.init(include.§%!I§.Views.View_LevelEndRio[0]);
         var _loc1_:§<l§ = §2!J§.getItemByName("TextField_LevelCompleted") as §<l§;
         _loc1_.setText(§^!+§.getText("Text_Level_Completed"));
         this.§7R§ = new §25§(0,0,0,0);
         §2!J§.movieClip.addChildAt(this.§7R§,§2!J§.movieClip.numChildren - 1);
         this.§!h§ = new Vector.<§with§>();
         §return§.§<%§(§%!T§,1,1);
         §return§.§<%§(§7C§,16,1);
      }
      
      override public function activate() : void
      {
         super.activate();
         if(§"u§.§-2§)
         {
            §"u§.§-2§.start();
         }
         this.mNewScoreCounter = 0;
         this.§'!>§ = false;
         §return§.§2!S§("LevelCompletedTheme1");
         this.§7R§.§,!N§(0.7);
         this.§#!0§();
         if(§[!L§.§^!X§ == "1-4" || §[!L§.§^!X§ == "1-5" || §[!L§.§^!X§ == "1-6" || §[!L§.§^!X§ == "1-7" || §[!L§.§^!X§ == "1-8")
         {
            (§2!J§.getItemByName("Button_CutScene") as §!&§).setVisibility(true);
         }
         if(§[!L§.§^!X§ == "1-3" || §[!L§.§^!X§ == "1-8")
         {
            (§2!J§.getItemByName("Button_Next") as §!&§).setVisibility(false);
         }
         else
         {
            (§2!J§.getItemByName("Button_Next") as §!&§).setVisibility(true);
         }
         var _loc2_:String = "MovieClip_Chester_Win" + int(Math.random() * 3 + 1);
         §2!J§.getItemByName(_loc2_).setVisibility(true);
      }
      
      private function §#!0§() : void
      {
         this.§'!+§();
         this.§^4§ = new Timer(100);
         this.§9!P§ = 0;
         this.§^4§.addEventListener(TimerEvent.TIMER,this.§"!A§);
         this.§^4§.start();
      }
      
      private function §'!+§() : void
      {
         var _loc3_:int = 0;
         var _loc1_:Number = §7!^§.§3!U§.§;#§(§[!L§.§^!X§);
         var _loc2_:Number = (§'Y§.§>k§ as §&M§).getScore();
         this.§!!L§ = _loc2_ > _loc1_;
         if(this.§!!L§)
         {
            _loc1_ = _loc2_;
            §7!^§.§3!U§.§7!4§(§[!L§.§^!X§,_loc1_);
            §2!J§.setText(§^!+§.getText("Text_New_Highscore"),"TextField_BestScore");
         }
         else
         {
            §2!J§.setText(§^!+§.getText("Text_Best"),"TextField_BestText");
            §2!J§.setText(_loc1_.toString(),"TextField_BestScore");
            _loc3_ = §[!L§.§"!&§(§[!L§.§^!X§,_loc1_);
            switch(_loc3_)
            {
               case 1:
                  (§2!J§.getItemByName("MovieClip_BestScoreStars") as §+&§).§[!`§("OneStar");
                  break;
               case 2:
                  (§2!J§.getItemByName("MovieClip_BestScoreStars") as §+&§).§[!`§("TwoStar");
                  break;
               case 3:
                  (§2!J§.getItemByName("MovieClip_BestScoreStars") as §+&§).§[!`§("ThreeStar");
            }
         }
         (§2!J§.getItemByName("MovieClip_NewHighScoreBadge") as §+&§).setVisibility(false);
         (§2!J§.getItemByName("MovieClip_StarLeft") as §+&§).mClip.gotoAndStop("UnLit");
         (§2!J§.getItemByName("MovieClip_StarCenter") as §+&§).mClip.gotoAndStop("UnLit");
         (§2!J§.getItemByName("MovieClip_StarRight") as §+&§).mClip.gotoAndStop("UnLit");
      }
      
      private function §!X§() : void
      {
         if(this.§!!L§)
         {
            §return§.§null§(§7C§);
            §return§.§2!S§("Hiscore_Badge",§7C§);
            §2!J§.setText(§^!+§.getText("Text_New_Highscore"),"TextField_NewHighScore");
            (§2!J§.getItemByName("TextField_NewHighScore") as §<l§).setVisibility(true);
            (§2!J§.getItemByName("MovieClip_BestScoreStars") as §+&§).setVisibility(false);
            this.§9!]§();
         }
         else
         {
            (§2!J§.getItemByName("TextField_BestText") as §<l§).setVisibility(true);
            (§2!J§.getItemByName("TextField_BestScore") as §<l§).setVisibility(true);
            (§2!J§.getItemByName("MovieClip_BestScoreStars") as §+&§).setVisibility(true);
         }
      }
      
      private function §9!]§() : void
      {
         this.§`i§ = (§2!J§.getItemByName("Container_LevelEndStripe") as § !V§).x;
         this.§"!8§ = (§2!J§.getItemByName("Container_LevelEndStripe") as § !V§).y;
         this.§=O§ = §6!U§;
      }
      
      private function §=j§(param1:Number) : void
      {
         if(this.§=O§ <= 0)
         {
            (§2!J§.getItemByName("Container_LevelEndStripe") as § !V§).x = this.§`i§;
            (§2!J§.getItemByName("Container_LevelEndStripe") as § !V§).y = this.§"!8§;
         }
         else
         {
            (§2!J§.getItemByName("Container_LevelEndStripe") as § !V§).x = this.§`i§ + Math.random() * (this.§=O§ / §6!U§) * 20;
            (§2!J§.getItemByName("Container_LevelEndStripe") as § !V§).y = this.§"!8§ + Math.random() * (this.§=O§ / §6!U§) * 20;
         }
         this.§=O§ -= param1 / 10;
      }
      
      private function §"!A§(param1:TimerEvent) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc4_:Number = §[!L§.getLevelForId(§[!L§.§^!X§).§8!I§;
         var _loc5_:Number = §[!L§.getLevelForId(§[!L§.§^!X§).§9N§;
         if((§2!J§.getItemByName("MovieClip_StarLeft") as §+&§).mClip.currentLabel == "UnLit")
         {
            §return§.§2!S§("Hiscore_Count",§%!T§,100);
            §return§.§null§(§7C§);
            §return§.§2!S§("Hiscore_Star_Splash1",§7C§);
            this.§^4§.delay = 1000;
            this.§=A§.§@Y§(§'Y§.§>k§.getScore());
            _loc6_ = this.§=A§.getValue() / _loc4_ * 2;
            this.§9j§ = §-N§.§<?§.§,!D§(this,{"mNewScoreCounter":this.§=A§.getValue()},{"mNewScoreCounter":0},_loc6_);
            this.§9j§.onComplete = this.§>4§;
            this.§9j§.play();
            (§2!J§.getItemByName("MovieClip_StarLeft") as §+&§).mClip.gotoAndStop("Lit");
            _loc2_ = (§2!J§.getItemByName("MovieClip_StarLeft") as §+&§).x + (§2!J§.getItemByName("Container_LevelEndStripe") as § !V§).x;
            _loc3_ = (§2!J§.getItemByName("MovieClip_StarLeft") as §+&§).y + (§2!J§.getItemByName("Container_LevelEndStripe") as § !V§).y;
            this.§-+§ = new §with§(§7!^§.§8o§,§7!^§.§&I§,_loc2_,_loc3_,§with§.§,!6§);
            §2!J§.addChild(this.§-+§);
            this.§!h§.push(this.§-+§);
         }
         else if(this.§=A§.getValue() >= _loc5_ && (§2!J§.getItemByName("MovieClip_StarCenter") as §+&§).mClip.currentLabel == "UnLit")
         {
            §return§.§null§(§7C§);
            §return§.§2!S§("Hiscore_Star_Splash2",§7C§);
            (§2!J§.getItemByName("MovieClip_StarCenter") as §+&§).mClip.gotoAndStop("Lit");
            _loc2_ = (§2!J§.getItemByName("MovieClip_StarCenter") as §+&§).x + (§2!J§.getItemByName("Container_LevelEndStripe") as § !V§).x;
            _loc3_ = (§2!J§.getItemByName("MovieClip_StarCenter") as §+&§).y + (§2!J§.getItemByName("Container_LevelEndStripe") as § !V§).y;
            this.§-+§ = new §with§(§7!^§.§8o§,§7!^§.§&I§,_loc2_,_loc3_,§with§.§1!I§);
            §2!J§.addChild(this.§-+§);
            this.§!h§.push(this.§-+§);
         }
         else if(this.§=A§.getValue() >= _loc4_ && (§2!J§.getItemByName("MovieClip_StarRight") as §+&§).mClip.currentLabel == "UnLit")
         {
            §return§.§null§(§7C§);
            §return§.§2!S§("Hiscore_Star_Splash3",§7C§);
            (§2!J§.getItemByName("MovieClip_StarRight") as §+&§).mClip.gotoAndStop("Lit");
            _loc2_ = (§2!J§.getItemByName("MovieClip_StarRight") as §+&§).x + (§2!J§.getItemByName("Container_LevelEndStripe") as § !V§).x;
            _loc3_ = (§2!J§.getItemByName("MovieClip_StarRight") as §+&§).y + (§2!J§.getItemByName("Container_LevelEndStripe") as § !V§).y;
            this.§-+§ = new §with§(§7!^§.§8o§,§7!^§.§&I§,_loc2_,_loc3_,§with§.§@u§);
            §2!J§.addChild(this.§-+§);
            this.§!h§.push(this.§-+§);
         }
         else if(!this.§'!>§)
         {
            this.§'!>§ = true;
         }
         else
         {
            this.§^4§.stop();
            if(this.§!!L§)
            {
               (§2!J§.getItemByName("MovieClip_NewHighScoreBadge") as §+&§).setVisibility(true);
            }
            else
            {
               (§2!J§.getItemByName("MovieClip_NewHighScoreBadge") as §+&§).setVisibility(false);
            }
            this.§9!S§ = §-N§.§<?§.§,!D§((§2!J§.getItemByName("MovieClip_NewHighScoreBadge") as §+&§).mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":7,
               "scaleY":7
            },0.1);
            this.§9!S§.onComplete = this.§!X§;
            this.§9!S§.play();
         }
         ++this.§9!P§;
      }
      
      private function §>4§() : void
      {
         §return§.§null§(§%!T§);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:§with§ = null;
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §+$§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§&v§();
         §2!J§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScore");
         §2!J§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScoreEffects");
         for each(_loc3_ in this.§!h§)
         {
            _loc3_.update(param1);
         }
         if(this.§=O§ > 0)
         {
            this.§=j§(param1);
         }
         if(mNextState.length > 0)
         {
            return §+$§.STATE_STATUS_COMPLETED;
         }
         return §+$§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§7R§.§@A§(0);
         this.§0<§();
         this.§=O§ = 0;
         §return§.§null§(§%!T§);
         (§2!J§.getItemByName("Button_Menu") as §!&§).setComponentVisualState(§'q§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§2!J§.getItemByName("Button_Replay") as §!&§).setComponentVisualState(§'q§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§2!J§.getItemByName("Button_CutScene") as §!&§).setVisibility(false);
         §2!J§.setText("0","TextField_LevelEndScore");
         §2!J§.setText("0","TextField_LevelEndScoreEffects");
         §2!J§.getItemByName("MovieClip_Chester_Win1").setVisibility(false);
         §2!J§.getItemByName("MovieClip_Chester_Win2").setVisibility(false);
         §2!J§.getItemByName("MovieClip_Chester_Win3").setVisibility(false);
      }
      
      private function §0<§() : void
      {
         var _loc1_:§with§ = null;
         if(this.§^4§)
         {
            this.§^4§.stop();
            this.§^4§.removeEventListener(TimerEvent.TIMER,this.§"!A§);
         }
         for each(_loc1_ in this.§!h§)
         {
            if(§2!J§.contains(_loc1_))
            {
               §2!J§.removeChild(_loc1_);
            }
            _loc1_.clean();
         }
         this.§!h§ = new Vector.<§with§>();
         (§2!J§.getItemByName("TextField_BestText") as §<l§).setVisibility(false);
         (§2!J§.getItemByName("TextField_BestScore") as §<l§).setVisibility(false);
         (§2!J§.getItemByName("MovieClip_BestScoreStars") as §+&§).setVisibility(false);
         (§2!J§.getItemByName("TextField_NewHighScore") as §<l§).setVisibility(false);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyUp(param1);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§-!6§) : void
      {
         var _loc4_:§'q§ = null;
         switch(param2)
         {
            case "NEXT_LEVEL":
               this.§9S§();
               break;
            case "REPLAY":
               if((§'Y§.§@j§ as §7+§).§^!G§())
               {
                  if(!§<D§.sCheetosPopups.showPopup(§-5§.RESTART_LEVEL))
                  {
                     this.§?t§();
                  }
               }
               else
               {
                  this.§?t§();
               }
               break;
            case "MENU":
               this.§9K§();
               break;
            case "BUTTON_NO":
               if(§<D§.sCheetosPopups.getCurrentPopupName() == §-5§.RESTART_LEVEL)
               {
                  sCheetosPopups.hidePopup();
               }
               else if(§<D§.sCheetosPopups.getCurrentPopupName() == §-5§.§4?§)
               {
                  sCheetosPopups.hidePopup();
               }
               else if(§<D§.sCheetosPopups.getCurrentPopupName() == §-5§.§true §)
               {
                  sCheetosPopups.hidePopup();
               }
               break;
            case "BUTTON_YES":
               if(§<D§.sCheetosPopups.getCurrentPopupName() == §-5§.RESTART_LEVEL)
               {
                  this.§?t§();
                  break;
               }
               if(§<D§.sCheetosPopups.getCurrentPopupName() == §-5§.§4?§)
               {
                  this.§9S§();
                  break;
               }
               if(§<D§.sCheetosPopups.getCurrentPopupName() == §-5§.§true §)
               {
                  this.§9K§();
                  break;
               }
               break;
            case "CHECKBOX_CHANGE":
               _loc4_ = param3 as §'q§;
               §7!^§.§-!@§.§=-§ = !§7!^§.§-!@§.§=-§;
               if(§7!^§.§-!@§.§=-§)
               {
                  _loc4_.setComponentState(§'q§.COMPONENT_STATE_ACTIVE_DEFAULT);
                  break;
               }
               _loc4_.setComponentState(§'q§.§"!^§);
               break;
         }
      }
      
      private function §&v§() : void
      {
         var _loc1_:§!&§ = §2!J§.getItemByName("Button_Replay") as §!&§;
         var _loc2_:MovieClip = _loc1_.mClip.MovieClip_CreditCoin as MovieClip;
         var _loc3_:§!&§ = §2!J§.getItemByName("Button_Next") as §!&§;
         var _loc4_:MovieClip = _loc3_.mClip.MovieClip_CreditCoin as MovieClip;
         var _loc5_:§!&§ = §2!J§.getItemByName("Button_Menu") as §!&§;
         if((§'Y§.§@j§ as §7+§).§^!G§())
         {
            _loc2_.visible = true;
            if(§[!L§.§^!X§ == null)
            {
               _loc4_.visible = false;
            }
            else
            {
               _loc4_.visible = !§[!L§.§0!P§();
            }
         }
         else
         {
            _loc2_.visible = false;
            _loc4_.visible = false;
         }
      }
      
      private function §?t§() : void
      {
         §7!6§.§]!D§();
         mNextState = §7!6§.§,F§;
      }
      
      private function §9S§() : void
      {
         §7!6§.§3w§();
         mNextState = StateCutSceneDynamic.§,F§;
      }
      
      private function §9K§() : void
      {
         mNextState = §-'§.§,F§;
      }
   }
}
