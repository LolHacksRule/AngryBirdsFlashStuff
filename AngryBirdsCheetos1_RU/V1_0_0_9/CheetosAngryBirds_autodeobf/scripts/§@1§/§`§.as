package §@1§
{
   import § !X§.§+2§;
   import §!>§.§!#§;
   import §!>§.§5!$§;
   import §"!@§.§3!+§;
   import §"!E§.§0O§;
   import §"A§.§?3§;
   import §"A§.§`!N§;
   import §'!S§.§,!%§;
   import §+!7§.§'u§;
   import §0!F§.§8!;§;
   import §5!G§.§31§;
   import §7!U§.§2!7§;
   import §7f§.§,!>§;
   import §7f§.§=!1§;
   import §7f§.§?i§;
   import §7f§.§`g§;
   import §<!P§.§>l§;
   import §=X§.§-y§;
   import §=X§.§9+§;
   import §>!1§.§9A§;
   import §^r§.§%%§;
   import §^r§.§>`§;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §`§ extends §]R§
   {
      
      public static const §]U§:String = "LevelEndState3";
      
      public static const §>!U§:Number = 30;
      
      private static const §[!$§:String = "ScoreLoopCountChannel";
      
      private static const §?!M§:String = "EndScreenEffectChannel";
       
      
      private var §6!%§:§5!$§;
      
      private var §^j§:Number;
      
      private var §"!,§:Number;
      
      private var § §:Number;
      
      private var §^!,§:Boolean = false;
      
      private var §@r§:Timer;
      
      private var §@f§:§-y§;
      
      private var §<!!§:§9+§;
      
      private var §8&§:Vector.<§9+§>;
      
      public var mNewScoreCounter:int;
      
      private var §4!6§:int;
      
      private var §=!D§:Boolean;
      
      private var §6!R§:§8!;§;
      
      private var §!i§:Boolean;
      
      private var §!x§:§5!$§;
      
      public function §`§(param1:Boolean = false, param2:String = "LevelEndState3")
      {
         this.§6!R§ = new §8!;§();
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §[B§ = new §?3§(this);
         §[B§.init(§`!N§.§,!T§.Views.View_LevelEndRio[0]);
         var _loc1_:§`g§ = §[B§.getItemByName("TextField_LevelCompleted") as §`g§;
         _loc1_.setText(§9A§.getText("Text_Level_Completed"));
         this.§@f§ = new §-y§(0,0,0,0);
         §[B§.movieClip.addChildAt(this.§@f§,§[B§.movieClip.numChildren - 1);
         this.§8&§ = new Vector.<§9+§>();
         §31§.§&!P§(§[!$§,1,1);
         §31§.§&!P§(§?!M§,16,1);
      }
      
      override public function activate() : void
      {
         super.activate();
         if(§,!%§.§]!C§)
         {
            §,!%§.§]!C§.start();
         }
         this.mNewScoreCounter = 0;
         this.§=!D§ = false;
         §31§.§>%§("LevelCompletedTheme1");
         this.§@f§.§%&§(0.7);
         this.§<!F§();
         if(§3!+§.§%2§ == "1-4" || §3!+§.§%2§ == "1-5" || §3!+§.§%2§ == "1-6" || §3!+§.§%2§ == "1-7" || §3!+§.§%2§ == "1-8")
         {
            (§[B§.getItemByName("Button_CutScene") as §,!>§).setVisibility(true);
         }
         if(§3!+§.§%2§ == "1-3" || §3!+§.§%2§ == "1-8")
         {
            (§[B§.getItemByName("Button_Next") as §,!>§).setVisibility(false);
         }
         else
         {
            (§[B§.getItemByName("Button_Next") as §,!>§).setVisibility(true);
         }
         var _loc2_:String = "MovieClip_Chester_Win" + int(Math.random() * 3 + 1);
         §[B§.getItemByName(_loc2_).setVisibility(true);
      }
      
      private function §<!F§() : void
      {
         this.§8q§();
         this.§@r§ = new Timer(100);
         this.§4!6§ = 0;
         this.§@r§.addEventListener(TimerEvent.TIMER,this.§?!O§);
         this.§@r§.start();
      }
      
      private function §8q§() : void
      {
         var _loc3_:int = 0;
         var _loc1_:Number = §+§.§3s§.§6=§(§3!+§.§%2§);
         var _loc2_:Number = (§2!7§.§@!H§ as §0O§).getScore();
         this.§!i§ = _loc2_ > _loc1_;
         if(this.§!i§)
         {
            _loc1_ = _loc2_;
            §+§.§3s§.§'w§(§3!+§.§%2§,_loc1_);
            §[B§.setText(§9A§.getText("Text_New_Highscore"),"TextField_BestScore");
         }
         else
         {
            §[B§.setText(§9A§.getText("Text_Best"),"TextField_BestText");
            §[B§.setText(_loc1_.toString(),"TextField_BestScore");
            _loc3_ = §3!+§.§0f§(§3!+§.§%2§,_loc1_);
            switch(_loc3_)
            {
               case 1:
                  (§[B§.getItemByName("MovieClip_BestScoreStars") as §=!1§).§&k§("OneStar");
                  break;
               case 2:
                  (§[B§.getItemByName("MovieClip_BestScoreStars") as §=!1§).§&k§("TwoStar");
                  break;
               case 3:
                  (§[B§.getItemByName("MovieClip_BestScoreStars") as §=!1§).§&k§("ThreeStar");
            }
         }
         (§[B§.getItemByName("MovieClip_NewHighScoreBadge") as §=!1§).setVisibility(false);
         (§[B§.getItemByName("MovieClip_StarLeft") as §=!1§).mClip.gotoAndStop("UnLit");
         (§[B§.getItemByName("MovieClip_StarCenter") as §=!1§).mClip.gotoAndStop("UnLit");
         (§[B§.getItemByName("MovieClip_StarRight") as §=!1§).mClip.gotoAndStop("UnLit");
      }
      
      private function §%!]§() : void
      {
         if(this.§!i§)
         {
            §31§.§ !Z§(§?!M§);
            §31§.§>%§("Hiscore_Badge",§?!M§);
            §[B§.setText(§9A§.getText("Text_New_Highscore"),"TextField_NewHighScore");
            (§[B§.getItemByName("TextField_NewHighScore") as §`g§).setVisibility(true);
            (§[B§.getItemByName("MovieClip_BestScoreStars") as §=!1§).setVisibility(false);
            this.§=!G§();
         }
         else
         {
            (§[B§.getItemByName("TextField_BestText") as §`g§).setVisibility(true);
            (§[B§.getItemByName("TextField_BestScore") as §`g§).setVisibility(true);
            (§[B§.getItemByName("MovieClip_BestScoreStars") as §=!1§).setVisibility(true);
         }
      }
      
      private function §=!G§() : void
      {
         this.§"!,§ = (§[B§.getItemByName("Container_LevelEndStripe") as §?i§).x;
         this.§ § = (§[B§.getItemByName("Container_LevelEndStripe") as §?i§).y;
         this.§^j§ = §>!U§;
      }
      
      private function §<%§(param1:Number) : void
      {
         if(this.§^j§ <= 0)
         {
            (§[B§.getItemByName("Container_LevelEndStripe") as §?i§).x = this.§"!,§;
            (§[B§.getItemByName("Container_LevelEndStripe") as §?i§).y = this.§ §;
         }
         else
         {
            (§[B§.getItemByName("Container_LevelEndStripe") as §?i§).x = this.§"!,§ + Math.random() * (this.§^j§ / §>!U§) * 20;
            (§[B§.getItemByName("Container_LevelEndStripe") as §?i§).y = this.§ § + Math.random() * (this.§^j§ / §>!U§) * 20;
         }
         this.§^j§ -= param1 / 10;
      }
      
      private function §?!O§(param1:TimerEvent) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc4_:Number = §3!+§.getLevelForId(§3!+§.§%2§).§07§;
         var _loc5_:Number = §3!+§.getLevelForId(§3!+§.§%2§).§,H§;
         if((§[B§.getItemByName("MovieClip_StarLeft") as §=!1§).mClip.currentLabel == "UnLit")
         {
            §31§.§>%§("Hiscore_Count",§[!$§,100);
            §31§.§ !Z§(§?!M§);
            §31§.§>%§("Hiscore_Star_Splash1",§?!M§);
            this.§@r§.delay = 1000;
            this.§6!R§.§+!Q§(§2!7§.§@!H§.getScore());
            _loc6_ = this.§6!R§.getValue() / _loc4_ * 2;
            this.§!x§ = §!#§.§!5§.§&![§(this,{"mNewScoreCounter":this.§6!R§.getValue()},{"mNewScoreCounter":0},_loc6_);
            this.§!x§.onComplete = this.§-a§;
            this.§!x§.play();
            (§[B§.getItemByName("MovieClip_StarLeft") as §=!1§).mClip.gotoAndStop("Lit");
            _loc2_ = (§[B§.getItemByName("MovieClip_StarLeft") as §=!1§).x + (§[B§.getItemByName("Container_LevelEndStripe") as §?i§).x;
            _loc3_ = (§[B§.getItemByName("MovieClip_StarLeft") as §=!1§).y + (§[B§.getItemByName("Container_LevelEndStripe") as §?i§).y;
            this.§<!!§ = new §9+§(§+§.§'s§,§+§.§&!8§,_loc2_,_loc3_,§9+§.§ %§);
            §[B§.addChild(this.§<!!§);
            this.§8&§.push(this.§<!!§);
         }
         else if(this.§6!R§.getValue() >= _loc5_ && (§[B§.getItemByName("MovieClip_StarCenter") as §=!1§).mClip.currentLabel == "UnLit")
         {
            §31§.§ !Z§(§?!M§);
            §31§.§>%§("Hiscore_Star_Splash2",§?!M§);
            (§[B§.getItemByName("MovieClip_StarCenter") as §=!1§).mClip.gotoAndStop("Lit");
            _loc2_ = (§[B§.getItemByName("MovieClip_StarCenter") as §=!1§).x + (§[B§.getItemByName("Container_LevelEndStripe") as §?i§).x;
            _loc3_ = (§[B§.getItemByName("MovieClip_StarCenter") as §=!1§).y + (§[B§.getItemByName("Container_LevelEndStripe") as §?i§).y;
            this.§<!!§ = new §9+§(§+§.§'s§,§+§.§&!8§,_loc2_,_loc3_,§9+§.§&%§);
            §[B§.addChild(this.§<!!§);
            this.§8&§.push(this.§<!!§);
         }
         else if(this.§6!R§.getValue() >= _loc4_ && (§[B§.getItemByName("MovieClip_StarRight") as §=!1§).mClip.currentLabel == "UnLit")
         {
            §31§.§ !Z§(§?!M§);
            §31§.§>%§("Hiscore_Star_Splash3",§?!M§);
            (§[B§.getItemByName("MovieClip_StarRight") as §=!1§).mClip.gotoAndStop("Lit");
            _loc2_ = (§[B§.getItemByName("MovieClip_StarRight") as §=!1§).x + (§[B§.getItemByName("Container_LevelEndStripe") as §?i§).x;
            _loc3_ = (§[B§.getItemByName("MovieClip_StarRight") as §=!1§).y + (§[B§.getItemByName("Container_LevelEndStripe") as §?i§).y;
            this.§<!!§ = new §9+§(§+§.§'s§,§+§.§&!8§,_loc2_,_loc3_,§9+§.§return§);
            §[B§.addChild(this.§<!!§);
            this.§8&§.push(this.§<!!§);
         }
         else if(!this.§=!D§)
         {
            this.§=!D§ = true;
         }
         else
         {
            this.§@r§.stop();
            if(this.§!i§)
            {
               (§[B§.getItemByName("MovieClip_NewHighScoreBadge") as §=!1§).setVisibility(true);
            }
            else
            {
               (§[B§.getItemByName("MovieClip_NewHighScoreBadge") as §=!1§).setVisibility(false);
            }
            this.§6!%§ = §!#§.§!5§.§&![§((§[B§.getItemByName("MovieClip_NewHighScoreBadge") as §=!1§).mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":7,
               "scaleY":7
            },0.1);
            this.§6!%§.onComplete = this.§%!]§;
            this.§6!%§.play();
         }
         ++this.§4!6§;
      }
      
      private function §-a§() : void
      {
         §31§.§ !Z§(§[!$§);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:§9+§ = null;
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §>l§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§`4§();
         §[B§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScore");
         §[B§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScoreEffects");
         for each(_loc3_ in this.§8&§)
         {
            _loc3_.update(param1);
         }
         if(this.§^j§ > 0)
         {
            this.§<%§(param1);
         }
         if(mNextState.length > 0)
         {
            return §>l§.STATE_STATUS_COMPLETED;
         }
         return §>l§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§@f§.§'!^§(0);
         this.§?M§();
         this.§^j§ = 0;
         §31§.§ !Z§(§[!$§);
         (§[B§.getItemByName("Button_Menu") as §,!>§).setComponentVisualState(§%%§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§[B§.getItemByName("Button_Replay") as §,!>§).setComponentVisualState(§%%§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§[B§.getItemByName("Button_CutScene") as §,!>§).setVisibility(false);
         §[B§.setText("0","TextField_LevelEndScore");
         §[B§.setText("0","TextField_LevelEndScoreEffects");
         §[B§.getItemByName("MovieClip_Chester_Win1").setVisibility(false);
         §[B§.getItemByName("MovieClip_Chester_Win2").setVisibility(false);
         §[B§.getItemByName("MovieClip_Chester_Win3").setVisibility(false);
      }
      
      private function §?M§() : void
      {
         var _loc1_:§9+§ = null;
         if(this.§@r§)
         {
            this.§@r§.stop();
            this.§@r§.removeEventListener(TimerEvent.TIMER,this.§?!O§);
         }
         for each(_loc1_ in this.§8&§)
         {
            if(§[B§.contains(_loc1_))
            {
               §[B§.removeChild(_loc1_);
            }
            _loc1_.clean();
         }
         this.§8&§ = new Vector.<§9+§>();
         (§[B§.getItemByName("TextField_BestText") as §`g§).setVisibility(false);
         (§[B§.getItemByName("TextField_BestScore") as §`g§).setVisibility(false);
         (§[B§.getItemByName("MovieClip_BestScoreStars") as §=!1§).setVisibility(false);
         (§[B§.getItemByName("TextField_NewHighScore") as §`g§).setVisibility(false);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyUp(param1);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§>`§) : void
      {
         var _loc4_:§%%§ = null;
         switch(param2)
         {
            case "NEXT_LEVEL":
               this.§]!X§();
               break;
            case "REPLAY":
               if((§2!7§.§5G§ as §'u§).§#!9§())
               {
                  if(!§]R§.sCheetosPopups.showPopup(§+2§.RESTART_LEVEL))
                  {
                     this.§<X§();
                  }
               }
               else
               {
                  this.§<X§();
               }
               break;
            case "MENU":
               this.§4q§();
               break;
            case "BUTTON_NO":
               if(§]R§.sCheetosPopups.getCurrentPopupName() == §+2§.RESTART_LEVEL)
               {
                  sCheetosPopups.hidePopup();
               }
               else if(§]R§.sCheetosPopups.getCurrentPopupName() == §+2§.§3K§)
               {
                  sCheetosPopups.hidePopup();
               }
               else if(§]R§.sCheetosPopups.getCurrentPopupName() == §+2§.§0U§)
               {
                  sCheetosPopups.hidePopup();
               }
               break;
            case "BUTTON_YES":
               if(§]R§.sCheetosPopups.getCurrentPopupName() == §+2§.RESTART_LEVEL)
               {
                  this.§<X§();
                  break;
               }
               if(§]R§.sCheetosPopups.getCurrentPopupName() == §+2§.§3K§)
               {
                  this.§]!X§();
                  break;
               }
               if(§]R§.sCheetosPopups.getCurrentPopupName() == §+2§.§0U§)
               {
                  this.§4q§();
                  break;
               }
               break;
            case "CHECKBOX_CHANGE":
               _loc4_ = param3 as §%%§;
               §+§.§ each§.§3l§ = !§+§.§ each§.§3l§;
               if(§+§.§ each§.§3l§)
               {
                  _loc4_.setComponentState(§%%§.COMPONENT_STATE_ACTIVE_DEFAULT);
                  break;
               }
               _loc4_.setComponentState(§%%§.§'$§);
               break;
         }
      }
      
      private function §`4§() : void
      {
         var _loc1_:§,!>§ = §[B§.getItemByName("Button_Replay") as §,!>§;
         var _loc2_:MovieClip = _loc1_.mClip.MovieClip_CreditCoin as MovieClip;
         var _loc3_:§,!>§ = §[B§.getItemByName("Button_Next") as §,!>§;
         var _loc4_:MovieClip = _loc3_.mClip.MovieClip_CreditCoin as MovieClip;
         var _loc5_:§,!>§ = §[B§.getItemByName("Button_Menu") as §,!>§;
         if((§2!7§.§5G§ as §'u§).§#!9§())
         {
            _loc2_.visible = true;
            if(§3!+§.§%2§ == null)
            {
               _loc4_.visible = false;
            }
            else
            {
               _loc4_.visible = !§3!+§.§-4§();
            }
         }
         else
         {
            _loc2_.visible = false;
            _loc4_.visible = false;
         }
      }
      
      private function §<X§() : void
      {
         §#!5§.§#!,§();
         mNextState = §#!5§.§]U§;
      }
      
      private function §]!X§() : void
      {
         §#!5§.§%a§();
         mNextState = StateCutSceneDynamic.§]U§;
      }
      
      private function §4q§() : void
      {
         mNextState = §05§.§]U§;
      }
   }
}
