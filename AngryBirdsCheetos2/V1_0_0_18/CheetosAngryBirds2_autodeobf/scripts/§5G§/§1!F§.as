package §5G§
{
   import § g§.§<n§;
   import §!V§.§!!i§;
   import §"§.§%!$§;
   import §&!F§.§"!d§;
   import §&!F§.§,Z§;
   import §'!D§.§08§;
   import §'!D§.§0j§;
   import §-!Q§.§,!7§;
   import §09§.§ $§;
   import §1!E§.§>f§;
   import §2v§.§&O§;
   import §3!,§.§#f§;
   import §3!,§.§#x§;
   import §6;§.§%[§;
   import §<!0§.§%g§;
   import §<!0§.§7g§;
   import §>M§.§'V§;
   import §>M§.§-!P§;
   import §>M§.§<6§;
   import §>M§.§^-§;
   import §>P§.§5!§;
   import §>P§.§>!;§;
   import §[h§.§4I§;
   import §`![§.§@;§;
   import §`h§.§@!Z§;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §1!F§ extends §?,§
   {
      
      public static const §3!?§:String = "LevelEndState3";
      
      public static const §4l§:Number = 30;
      
      private static const §-!4§:String = "ScoreLoopCountChannel";
      
      private static const §"9§:String = "EndScreenEffectChannel";
      
      private static const §^8§:Number = 0.5;
      
      private static const §4!4§:Number = 82;
      
      private static const § !,§:Number = 3000;
       
      
      private var §&k§:§7g§;
      
      private var §@q§:Number;
      
      private var §>!Z§:Number;
      
      private var §6[§:Number;
      
      private var §-!H§:Boolean = false;
      
      private var §<N§:Timer;
      
      private var §8!H§:§#x§;
      
      private var §3'§:§#f§;
      
      private var §`!-§:Vector.<§#f§>;
      
      public var mNewScoreCounter:int;
      
      private var §3<§:int;
      
      private var §&!2§:Boolean;
      
      private var §%!6§:§!!i§;
      
      private var §0!]§:Boolean;
      
      private var §`A§:§7g§;
      
      private var §"^§:§7g§;
      
      private var §4Q§:Number;
      
      private var §!1§:Number;
      
      private var §%!§:Timer;
      
      private var § in§:§,Z§;
      
      public function §1!F§(param1:Boolean = false, param2:String = "LevelEndState3")
      {
         this.§%!6§ = new §!!i§();
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §%!0§ = new §5!§(this);
         §%!0§.init(§>!;§.§ get§.Views.View_LevelEndRio[0]);
         var _loc1_:§'V§ = §%!0§.getItemByName("TextField_LevelCompleted") as §'V§;
         _loc1_.setText(§4I§.getText("Text_Level_Completed"));
         this.§8!H§ = new §#x§(0,0,0,0);
         §%!0§.movieClip.addChildAt(this.§8!H§,§%!0§.movieClip.numChildren - 1);
         this.§`!-§ = new Vector.<§#f§>();
         §,!7§.§<!-§(§-!4§,1,1);
         §,!7§.§<!-§(§"9§,16,1);
         this.§ in§ = new §,Z§();
      }
      
      override public function activate() : void
      {
         super.activate();
         if(§%[§.§`1§)
         {
            §%[§.§`1§.start();
         }
         this.mNewScoreCounter = 0;
         this.§&!2§ = false;
         §,!7§.playSound("LevelCompletedTheme1");
         this.§8!H§.§'H§(0.7);
         this.§?§();
         if(§@;§.§6!K§ == "1-3" || §@;§.§6!K§ == "1-4" || §@;§.§6!K§ == "1-6" || §@;§.§6!K§ == "1-8" || §@;§.§6!K§ == "1-9")
         {
            (§%!0§.getItemByName("Button_CutScene") as §^-§).setVisibility(true);
         }
         if(§@;§.§6!K§ == "1-3" || §@;§.§6!K§ == "1-9")
         {
            (§%!0§.getItemByName("Button_Next") as §^-§).setVisibility(false);
         }
         else
         {
            (§%!0§.getItemByName("Button_Next") as §^-§).setVisibility(true);
         }
         var _loc2_:String = "MovieClip_Chester_Win" + int(Math.random() * 3 + 1);
         §%!0§.getItemByName(_loc2_).setVisibility(true);
         this.§!1§ = §%!0§.getItemByName("Container_AchievementBox").y;
         this.§4Q§ = this.§!1§ + §4!4§;
         §%!0§.getItemByName("Container_AchievementBox").y = this.§4Q§;
      }
      
      private function §?§() : void
      {
         this.§;2§();
         this.§<N§ = new Timer(100);
         this.§3<§ = 0;
         this.§<N§.addEventListener(TimerEvent.TIMER,this.§6!d§);
         this.§<N§.start();
      }
      
      private function §;2§() : void
      {
         var _loc3_:int = 0;
         var _loc1_:Number = §5!9§.§#%§.§9!C§(§@;§.§6!K§);
         var _loc2_:Number = (§@!Z§.§^&§ as §<n§).getScore();
         this.§0!]§ = _loc2_ >= _loc1_;
         if(this.§0!]§)
         {
            _loc1_ = _loc2_;
            §5!9§.§#%§.§6!X§(§@;§.§6!K§,_loc1_);
            §%!0§.setText(§4I§.getText("Text_New_Highscore"),"TextField_BestScore");
         }
         else
         {
            §%!0§.setText(§4I§.getText("Text_Best"),"TextField_BestText");
            §%!0§.setText(_loc1_.toString(),"TextField_BestScore");
            _loc3_ = §@;§.§@T§(§@;§.§6!K§,_loc1_);
            switch(_loc3_)
            {
               case 1:
                  (§%!0§.getItemByName("MovieClip_BestScoreStars") as §-!P§).§ m§("OneStar");
                  break;
               case 2:
                  (§%!0§.getItemByName("MovieClip_BestScoreStars") as §-!P§).§ m§("TwoStar");
                  break;
               case 3:
                  (§%!0§.getItemByName("MovieClip_BestScoreStars") as §-!P§).§ m§("ThreeStar");
            }
         }
         (§%!0§.getItemByName("MovieClip_NewHighScoreBadge") as §-!P§).setVisibility(false);
         (§%!0§.getItemByName("MovieClip_StarLeft") as §-!P§).mClip.gotoAndStop("UnLit");
         (§%!0§.getItemByName("MovieClip_StarCenter") as §-!P§).mClip.gotoAndStop("UnLit");
         (§%!0§.getItemByName("MovieClip_StarRight") as §-!P§).mClip.gotoAndStop("UnLit");
      }
      
      private function §3>§() : void
      {
         if(this.§0!]§)
         {
            §,!7§.§+!A§(§"9§);
            §,!7§.playSound("Hiscore_Badge",§"9§);
            §%!0§.setText(§4I§.getText("Text_New_Highscore"),"TextField_NewHighScore");
            (§%!0§.getItemByName("TextField_NewHighScore") as §'V§).setVisibility(true);
            (§%!0§.getItemByName("MovieClip_BestScoreStars") as §-!P§).setVisibility(false);
            this.§0!S§();
         }
         else
         {
            (§%!0§.getItemByName("TextField_BestText") as §'V§).setVisibility(true);
            (§%!0§.getItemByName("TextField_BestScore") as §'V§).setVisibility(true);
            (§%!0§.getItemByName("MovieClip_BestScoreStars") as §-!P§).setVisibility(true);
         }
         this.§4!@§();
      }
      
      private function §0!S§() : void
      {
         this.§>!Z§ = (§%!0§.getItemByName("Container_LevelEndStripe") as §<6§).x;
         this.§6[§ = (§%!0§.getItemByName("Container_LevelEndStripe") as §<6§).y;
         this.§@q§ = §4l§;
      }
      
      private function §9C§(param1:Number) : void
      {
         if(this.§@q§ <= 0)
         {
            (§%!0§.getItemByName("Container_LevelEndStripe") as §<6§).x = this.§>!Z§;
            (§%!0§.getItemByName("Container_LevelEndStripe") as §<6§).y = this.§6[§;
         }
         else
         {
            (§%!0§.getItemByName("Container_LevelEndStripe") as §<6§).x = this.§>!Z§ + Math.random() * (this.§@q§ / §4l§) * 20;
            (§%!0§.getItemByName("Container_LevelEndStripe") as §<6§).y = this.§6[§ + Math.random() * (this.§@q§ / §4l§) * 20;
         }
         this.§@q§ -= param1 / 10;
      }
      
      private function §6!d§(param1:TimerEvent) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc4_:Number = §@;§.§6!M§(§@;§.§6!K§).§8Z§;
         var _loc5_:Number = §@;§.§6!M§(§@;§.§6!K§).§!!<§;
         if((§%!0§.getItemByName("MovieClip_StarLeft") as §-!P§).mClip.currentLabel == "UnLit")
         {
            §,!7§.playSound("Hiscore_Count",§-!4§,100);
            §,!7§.§+!A§(§"9§);
            §,!7§.playSound("Hiscore_Star_Splash1",§"9§);
            this.§<N§.delay = 1000;
            this.§%!6§.native(§@!Z§.§^&§.getScore());
            _loc6_ = this.§%!6§.getValue() / _loc4_ * 2;
            this.§`A§ = §%g§.§'I§.§5!0§(this,{"mNewScoreCounter":this.§%!6§.getValue()},{"mNewScoreCounter":0},_loc6_);
            this.§`A§.onComplete = this.§[L§;
            this.§`A§.play();
            (§%!0§.getItemByName("MovieClip_StarLeft") as §-!P§).mClip.gotoAndStop("Lit");
            _loc2_ = (§%!0§.getItemByName("MovieClip_StarLeft") as §-!P§).x + (§%!0§.getItemByName("Container_LevelEndStripe") as §<6§).x;
            _loc3_ = (§%!0§.getItemByName("MovieClip_StarLeft") as §-!P§).y + (§%!0§.getItemByName("Container_LevelEndStripe") as §<6§).y;
            this.§3'§ = new §#f§(§5!9§.§?!L§,§5!9§.§"r§,_loc2_,_loc3_,§#f§.§ !P§);
            §%!0§.addChild(this.§3'§);
            this.§`!-§.push(this.§3'§);
         }
         else if(this.§%!6§.getValue() >= _loc5_ && (§%!0§.getItemByName("MovieClip_StarCenter") as §-!P§).mClip.currentLabel == "UnLit")
         {
            §,!7§.§+!A§(§"9§);
            §,!7§.playSound("Hiscore_Star_Splash2",§"9§);
            (§%!0§.getItemByName("MovieClip_StarCenter") as §-!P§).mClip.gotoAndStop("Lit");
            _loc2_ = (§%!0§.getItemByName("MovieClip_StarCenter") as §-!P§).x + (§%!0§.getItemByName("Container_LevelEndStripe") as §<6§).x;
            _loc3_ = (§%!0§.getItemByName("MovieClip_StarCenter") as §-!P§).y + (§%!0§.getItemByName("Container_LevelEndStripe") as §<6§).y;
            this.§3'§ = new §#f§(§5!9§.§?!L§,§5!9§.§"r§,_loc2_,_loc3_,§#f§.§0!3§);
            §%!0§.addChild(this.§3'§);
            this.§`!-§.push(this.§3'§);
         }
         else if(this.§%!6§.getValue() >= _loc4_ && (§%!0§.getItemByName("MovieClip_StarRight") as §-!P§).mClip.currentLabel == "UnLit")
         {
            §,!7§.§+!A§(§"9§);
            §,!7§.playSound("Hiscore_Star_Splash3",§"9§);
            (§%!0§.getItemByName("MovieClip_StarRight") as §-!P§).mClip.gotoAndStop("Lit");
            _loc2_ = (§%!0§.getItemByName("MovieClip_StarRight") as §-!P§).x + (§%!0§.getItemByName("Container_LevelEndStripe") as §<6§).x;
            _loc3_ = (§%!0§.getItemByName("MovieClip_StarRight") as §-!P§).y + (§%!0§.getItemByName("Container_LevelEndStripe") as §<6§).y;
            this.§3'§ = new §#f§(§5!9§.§?!L§,§5!9§.§"r§,_loc2_,_loc3_,§#f§.§0!H§);
            §%!0§.addChild(this.§3'§);
            this.§`!-§.push(this.§3'§);
         }
         else if(!this.§&!2§)
         {
            this.§&!2§ = true;
         }
         else
         {
            this.§<N§.stop();
            if(this.§0!]§)
            {
               (§%!0§.getItemByName("MovieClip_NewHighScoreBadge") as §-!P§).setVisibility(true);
            }
            else
            {
               (§%!0§.getItemByName("MovieClip_NewHighScoreBadge") as §-!P§).setVisibility(false);
            }
            this.§&k§ = §%g§.§'I§.§5!0§((§%!0§.getItemByName("MovieClip_NewHighScoreBadge") as §-!P§).mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":7,
               "scaleY":7
            },0.1);
            this.§&k§.onComplete = this.§3>§;
            this.§&k§.play();
         }
         ++this.§3<§;
      }
      
      private function §[L§() : void
      {
         §,!7§.§+!A§(§-!4§);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:§#f§ = null;
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §%!$§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§+g§();
         §%!0§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScore");
         §%!0§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScoreEffects");
         for each(_loc3_ in this.§`!-§)
         {
            _loc3_.update(param1);
         }
         if(this.§@q§ > 0)
         {
            this.§9C§(param1);
         }
         if(mNextState.length > 0)
         {
            return §%!$§.STATE_STATUS_COMPLETED;
         }
         return §%!$§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§8!H§.§"!c§(0);
         this.§-f§();
         this.§@q§ = 0;
         §,!7§.§+!A§(§-!4§);
         (§%!0§.getItemByName("Button_Menu") as §^-§).setComponentVisualState(§0j§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§%!0§.getItemByName("Button_Replay") as §^-§).setComponentVisualState(§0j§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§%!0§.getItemByName("Button_CutScene") as §^-§).setVisibility(false);
         §%!0§.setText("0","TextField_LevelEndScore");
         §%!0§.setText("0","TextField_LevelEndScoreEffects");
         §%!0§.getItemByName("MovieClip_Chester_Win1").setVisibility(false);
         §%!0§.getItemByName("MovieClip_Chester_Win2").setVisibility(false);
         §%!0§.getItemByName("MovieClip_Chester_Win3").setVisibility(false);
         if(this.§"^§)
         {
            this.§"^§.onComplete = null;
            this.§"^§.stop();
         }
         if(this.§%!§)
         {
            this.§%!§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§null§);
            this.§%!§.stop();
         }
         §%!0§.getItemByName("Container_AchievementBox").y = this.§!1§;
         if(§>f§.§%!`§)
         {
            §>f§.§%!`§.§=m§();
         }
      }
      
      private function §-f§() : void
      {
         var _loc1_:§#f§ = null;
         if(this.§<N§)
         {
            this.§<N§.stop();
            this.§<N§.removeEventListener(TimerEvent.TIMER,this.§6!d§);
         }
         for each(_loc1_ in this.§`!-§)
         {
            if(§%!0§.contains(_loc1_))
            {
               §%!0§.removeChild(_loc1_);
            }
            _loc1_.clean();
         }
         this.§`!-§ = new Vector.<§#f§>();
         (§%!0§.getItemByName("TextField_BestText") as §'V§).setVisibility(false);
         (§%!0§.getItemByName("TextField_BestScore") as §'V§).setVisibility(false);
         (§%!0§.getItemByName("MovieClip_BestScoreStars") as §-!P§).setVisibility(false);
         (§%!0§.getItemByName("TextField_NewHighScore") as §'V§).setVisibility(false);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyUp(param1);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§08§) : void
      {
         var _loc4_:§0j§ = null;
         switch(param2)
         {
            case "NEXT_LEVEL":
               this.§[!R§();
               break;
            case "REPLAY":
               if((§@!Z§.§;!,§ as § $§).§,!e§())
               {
                  if(§>f§.§%!`§ && §>f§.§%!`§.§`!b§ >= §"!d§.§"!Q§)
                  {
                     if(!§?,§.sCheetosPopups.showPopup(§&O§.RESTART_LEVEL))
                     {
                        this.§+8§();
                     }
                  }
                  else
                  {
                     §?,§.sCheetosPopups.showPopup(§&O§.NO_CREDIT);
                  }
               }
               else
               {
                  this.§+8§();
               }
               break;
            case "MENU":
               this.§+!K§();
               break;
            case "BUTTON_NO":
               if(§?,§.sCheetosPopups.getCurrentPopupName() == §&O§.RESTART_LEVEL)
               {
                  sCheetosPopups.hidePopup();
               }
               else if(§?,§.sCheetosPopups.getCurrentPopupName() == §&O§.§"!?§)
               {
                  sCheetosPopups.hidePopup();
               }
               else if(§?,§.sCheetosPopups.getCurrentPopupName() == §&O§.§3!T§)
               {
                  sCheetosPopups.hidePopup();
               }
               break;
            case "BUTTON_YES":
               if(§?,§.sCheetosPopups.getCurrentPopupName() == §&O§.RESTART_LEVEL)
               {
                  this.§+8§();
               }
               else if(§?,§.sCheetosPopups.getCurrentPopupName() == §&O§.§"!?§)
               {
                  this.§[!R§();
               }
               else if(§?,§.sCheetosPopups.getCurrentPopupName() == §&O§.§3!T§)
               {
                  this.§+!K§();
               }
               break;
            case "CREDIT_OK":
               sCheetosPopups.hidePopup();
               break;
            case "CHECKBOX_CHANGE":
               _loc4_ = param3 as §0j§;
               §5!9§.§-!O§.§8!&§ = !§5!9§.§-!O§.§8!&§;
               if(§5!9§.§-!O§.§8!&§)
               {
                  _loc4_.setComponentState(§0j§.COMPONENT_STATE_ACTIVE_DEFAULT);
                  break;
               }
               _loc4_.setComponentState(§0j§.§+o§);
               break;
         }
      }
      
      private function §+g§() : void
      {
         var _loc1_:§^-§ = §%!0§.getItemByName("Button_Replay") as §^-§;
         var _loc2_:MovieClip = _loc1_.mClip.MovieClip_CreditCoin as MovieClip;
         var _loc3_:§^-§ = §%!0§.getItemByName("Button_Next") as §^-§;
         var _loc4_:MovieClip = _loc3_.mClip.MovieClip_CreditCoin as MovieClip;
         var _loc5_:§^-§ = §%!0§.getItemByName("Button_Menu") as §^-§;
         if((§@!Z§.§;!,§ as § $§).§,!e§())
         {
            _loc2_.visible = true;
            if(§@;§.§6!K§ == null)
            {
               _loc4_.visible = false;
            }
            else
            {
               _loc4_.visible = !§@;§.§6Q§();
            }
         }
         else
         {
            _loc2_.visible = false;
            _loc4_.visible = false;
         }
      }
      
      private function §+8§() : void
      {
         §'!9§.§7T§();
         mNextState = §'!9§.§3!?§;
      }
      
      private function §[!R§() : void
      {
         §'!9§.§-4§();
         mNextState = StateCutSceneDynamic.§3!?§;
      }
      
      private function §+!K§() : void
      {
         §,!7§.§13§();
         mNextState = §39§.§3!?§;
      }
      
      private function §4!@§() : void
      {
         if(!§>f§.§%!`§)
         {
            return;
         }
         var _loc1_:String = §>f§.§%!`§.§8!#§();
         if(_loc1_)
         {
            this.§='§(_loc1_);
         }
      }
      
      private function §='§(param1:String) : void
      {
         if(!this.§ in§.§=D§(param1))
         {
            this.§4!@§();
            return;
         }
         §%!0§.setText(§4I§.getText("Text_AchievementText") + "\n" + this.§ in§.§=D§(param1),"TextField_AchievementText");
         if(!this.§ in§.§1!2§(param1,§%!0§.getItemByName("MovieClip_AchievementSymbol")))
         {
            this.§4!@§();
            return;
         }
         if(this.§"^§)
         {
            this.§"^§.stop();
         }
         this.§"^§ = §%g§.§'I§.§5!0§(§%!0§.getItemByName("Container_AchievementBox"),{"y":this.§!1§},null,§^8§,§%g§.§`!S§);
         this.§"^§.§8!F§ = false;
         this.§"^§.play();
         this.§%!§ = new Timer(§ !,§ + §^8§,1);
         this.§%!§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§null§);
         this.§%!§.start();
      }
      
      private function §null§(param1:TimerEvent) : void
      {
         this.§5x§();
         this.§%!§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§null§);
      }
      
      private function §5x§() : void
      {
         if(this.§"^§)
         {
            this.§"^§.stop();
         }
         this.§"^§ = §%g§.§'I§.§5!0§(§%!0§.getItemByName("Container_AchievementBox"),{"y":this.§4Q§},null,§^8§,§%g§.§`!S§);
         this.§"^§.§8!F§ = false;
         this.§"^§.play();
         this.§"^§.onComplete = this.§4!@§;
      }
   }
}
