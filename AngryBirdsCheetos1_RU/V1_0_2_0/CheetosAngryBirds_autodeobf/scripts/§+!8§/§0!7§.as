package §+!8§
{
   import §!&§.§%+§;
   import §!&§.§]o§;
   import §!7§.§=!3§;
   import §"I§.§-x§;
   import §#J§.§]B§;
   import §#[§.§3#§;
   import §#b§.§5!#§;
   import §&8§.§8h§;
   import §&8§.§<O§;
   import §'=§.§]d§;
   import §-!;§.§4^§;
   import §-!;§.§^!,§;
   import §1o§.§'M§;
   import §2!P§.§6=§;
   import §6!P§.§5!+§;
   import §7L§.§+!$§;
   import §7L§.§9I§;
   import §@!W§.§8!W§;
   import §[]§.§'!X§;
   import §[]§.§+F§;
   import §[]§.§=!6§;
   import §[]§.§`!`§;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §0!7§ extends §;A§
   {
      
      public static const §,!+§:String = "LevelEndState3";
      
      public static const §7!Q§:Number = 30;
      
      private static const §@!'§:String = "ScoreLoopCountChannel";
      
      private static const §!!T§:String = "EndScreenEffectChannel";
       
      
      private var §"9§:§4^§;
      
      private var §%k§:Number;
      
      private var §<2§:Number;
      
      private var §=S§:Number;
      
      private var §=Q§:Boolean = false;
      
      private var §%J§:Timer;
      
      private var §4>§:§]o§;
      
      private var §0F§:§%+§;
      
      private var §1!L§:Vector.<§%+§>;
      
      public var mNewScoreCounter:int;
      
      private var §6z§:int;
      
      private var §9!=§:Boolean;
      
      private var §&!2§:§3#§;
      
      private var §"!9§:Boolean;
      
      private var §7D§:§4^§;
      
      public function §0!7§(param1:Boolean = false, param2:String = "LevelEndState3")
      {
         this.§&!2§ = new §3#§();
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §&X§ = new §<O§(this);
         §&X§.init(§8h§.§9!>§.Views.View_LevelEndRio[0]);
         var _loc1_:§'!X§ = §&X§.getItemByName("TextField_LevelCompleted") as §'!X§;
         _loc1_.setText(§]B§.getText("Text_Level_Completed"));
         this.§4>§ = new §]o§(0,0,0,0);
         §&X§.movieClip.addChildAt(this.§4>§,§&X§.movieClip.numChildren - 1);
         this.§1!L§ = new Vector.<§%+§>();
         §'M§.§4![§(§@!'§,1,1);
         §'M§.§4![§(§!!T§,16,1);
      }
      
      override public function activate() : void
      {
         super.activate();
         if(§6=§.§4!8§)
         {
            §6=§.§4!8§.start();
         }
         this.mNewScoreCounter = 0;
         this.§9!=§ = false;
         §'M§.§1T§("LevelCompletedTheme1");
         this.§4>§.§9$§(0.7);
         this.§2!L§();
         if(§5!#§.§'D§ == "1-4" || §5!#§.§'D§ == "1-5" || §5!#§.§'D§ == "1-6" || §5!#§.§'D§ == "1-7" || §5!#§.§'D§ == "1-8")
         {
            (§&X§.getItemByName("Button_CutScene") as §+F§).setVisibility(true);
         }
         if(§5!#§.§'D§ == "1-3" || §5!#§.§'D§ == "1-8")
         {
            (§&X§.getItemByName("Button_Next") as §+F§).setVisibility(false);
         }
         else
         {
            (§&X§.getItemByName("Button_Next") as §+F§).setVisibility(true);
         }
         var _loc2_:String = "MovieClip_Chester_Win" + int(Math.random() * 3 + 1);
         §&X§.getItemByName(_loc2_).setVisibility(true);
      }
      
      private function §2!L§() : void
      {
         this.§@_§();
         this.§%J§ = new Timer(100);
         this.§6z§ = 0;
         this.§%J§.addEventListener(TimerEvent.TIMER,this.§>!F§);
         this.§%J§.start();
      }
      
      private function §@_§() : void
      {
         var _loc3_:int = 0;
         var _loc1_:Number = §@!!§.§<R§.§2!_§(§5!#§.§'D§);
         var _loc2_:Number = (§8!W§.§5!B§ as §5!+§).getScore();
         this.§"!9§ = _loc2_ > _loc1_;
         if(this.§"!9§)
         {
            _loc1_ = _loc2_;
            §@!!§.§<R§.§-!H§(§5!#§.§'D§,_loc1_);
            §&X§.setText(§]B§.getText("Text_New_Highscore"),"TextField_BestScore");
         }
         else
         {
            §&X§.setText(§]B§.getText("Text_Best"),"TextField_BestText");
            §&X§.setText(_loc1_.toString(),"TextField_BestScore");
            _loc3_ = §5!#§.§<!P§(§5!#§.§'D§,_loc1_);
            switch(_loc3_)
            {
               case 1:
                  (§&X§.getItemByName("MovieClip_BestScoreStars") as §=!6§).§%?§("OneStar");
                  break;
               case 2:
                  (§&X§.getItemByName("MovieClip_BestScoreStars") as §=!6§).§%?§("TwoStar");
                  break;
               case 3:
                  (§&X§.getItemByName("MovieClip_BestScoreStars") as §=!6§).§%?§("ThreeStar");
            }
         }
         (§&X§.getItemByName("MovieClip_NewHighScoreBadge") as §=!6§).setVisibility(false);
         (§&X§.getItemByName("MovieClip_StarLeft") as §=!6§).mClip.gotoAndStop("UnLit");
         (§&X§.getItemByName("MovieClip_StarCenter") as §=!6§).mClip.gotoAndStop("UnLit");
         (§&X§.getItemByName("MovieClip_StarRight") as §=!6§).mClip.gotoAndStop("UnLit");
      }
      
      private function §7?§() : void
      {
         if(this.§"!9§)
         {
            §'M§.§0&§(§!!T§);
            §'M§.§1T§("Hiscore_Badge",§!!T§);
            §&X§.setText(§]B§.getText("Text_New_Highscore"),"TextField_NewHighScore");
            (§&X§.getItemByName("TextField_NewHighScore") as §'!X§).setVisibility(true);
            (§&X§.getItemByName("MovieClip_BestScoreStars") as §=!6§).setVisibility(false);
            this.§>g§();
         }
         else
         {
            (§&X§.getItemByName("TextField_BestText") as §'!X§).setVisibility(true);
            (§&X§.getItemByName("TextField_BestScore") as §'!X§).setVisibility(true);
            (§&X§.getItemByName("MovieClip_BestScoreStars") as §=!6§).setVisibility(true);
         }
      }
      
      private function §>g§() : void
      {
         this.§<2§ = (§&X§.getItemByName("Container_LevelEndStripe") as §`!`§).x;
         this.§=S§ = (§&X§.getItemByName("Container_LevelEndStripe") as §`!`§).y;
         this.§%k§ = §7!Q§;
      }
      
      private function §>n§(param1:Number) : void
      {
         if(this.§%k§ <= 0)
         {
            (§&X§.getItemByName("Container_LevelEndStripe") as §`!`§).x = this.§<2§;
            (§&X§.getItemByName("Container_LevelEndStripe") as §`!`§).y = this.§=S§;
         }
         else
         {
            (§&X§.getItemByName("Container_LevelEndStripe") as §`!`§).x = this.§<2§ + Math.random() * (this.§%k§ / §7!Q§) * 20;
            (§&X§.getItemByName("Container_LevelEndStripe") as §`!`§).y = this.§=S§ + Math.random() * (this.§%k§ / §7!Q§) * 20;
         }
         this.§%k§ -= param1 / 10;
      }
      
      private function §>!F§(param1:TimerEvent) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc4_:Number = §5!#§.getLevelForId(§5!#§.§'D§).§[^§;
         var _loc5_:Number = §5!#§.getLevelForId(§5!#§.§'D§).§96§;
         if((§&X§.getItemByName("MovieClip_StarLeft") as §=!6§).mClip.currentLabel == "UnLit")
         {
            §'M§.§1T§("Hiscore_Count",§@!'§,100);
            §'M§.§0&§(§!!T§);
            §'M§.§1T§("Hiscore_Star_Splash1",§!!T§);
            this.§%J§.delay = 1000;
            this.§&!2§.§&!Y§(§8!W§.§5!B§.getScore());
            _loc6_ = this.§&!2§.getValue() / _loc4_ * 2;
            this.§7D§ = §^!,§.§0!S§.§3n§(this,{"mNewScoreCounter":this.§&!2§.getValue()},{"mNewScoreCounter":0},_loc6_);
            this.§7D§.onComplete = this.§&,§;
            this.§7D§.play();
            (§&X§.getItemByName("MovieClip_StarLeft") as §=!6§).mClip.gotoAndStop("Lit");
            _loc2_ = (§&X§.getItemByName("MovieClip_StarLeft") as §=!6§).x + (§&X§.getItemByName("Container_LevelEndStripe") as §`!`§).x;
            _loc3_ = (§&X§.getItemByName("MovieClip_StarLeft") as §=!6§).y + (§&X§.getItemByName("Container_LevelEndStripe") as §`!`§).y;
            this.§0F§ = new §%+§(§@!!§.§34§,§@!!§.§!=§,_loc2_,_loc3_,§%+§.§?d§);
            §&X§.addChild(this.§0F§);
            this.§1!L§.push(this.§0F§);
         }
         else if(this.§&!2§.getValue() >= _loc5_ && (§&X§.getItemByName("MovieClip_StarCenter") as §=!6§).mClip.currentLabel == "UnLit")
         {
            §'M§.§0&§(§!!T§);
            §'M§.§1T§("Hiscore_Star_Splash2",§!!T§);
            (§&X§.getItemByName("MovieClip_StarCenter") as §=!6§).mClip.gotoAndStop("Lit");
            _loc2_ = (§&X§.getItemByName("MovieClip_StarCenter") as §=!6§).x + (§&X§.getItemByName("Container_LevelEndStripe") as §`!`§).x;
            _loc3_ = (§&X§.getItemByName("MovieClip_StarCenter") as §=!6§).y + (§&X§.getItemByName("Container_LevelEndStripe") as §`!`§).y;
            this.§0F§ = new §%+§(§@!!§.§34§,§@!!§.§!=§,_loc2_,_loc3_,§%+§.§<9§);
            §&X§.addChild(this.§0F§);
            this.§1!L§.push(this.§0F§);
         }
         else if(this.§&!2§.getValue() >= _loc4_ && (§&X§.getItemByName("MovieClip_StarRight") as §=!6§).mClip.currentLabel == "UnLit")
         {
            §'M§.§0&§(§!!T§);
            §'M§.§1T§("Hiscore_Star_Splash3",§!!T§);
            (§&X§.getItemByName("MovieClip_StarRight") as §=!6§).mClip.gotoAndStop("Lit");
            _loc2_ = (§&X§.getItemByName("MovieClip_StarRight") as §=!6§).x + (§&X§.getItemByName("Container_LevelEndStripe") as §`!`§).x;
            _loc3_ = (§&X§.getItemByName("MovieClip_StarRight") as §=!6§).y + (§&X§.getItemByName("Container_LevelEndStripe") as §`!`§).y;
            this.§0F§ = new §%+§(§@!!§.§34§,§@!!§.§!=§,_loc2_,_loc3_,§%+§.§+!Q§);
            §&X§.addChild(this.§0F§);
            this.§1!L§.push(this.§0F§);
         }
         else if(!this.§9!=§)
         {
            this.§9!=§ = true;
         }
         else
         {
            this.§%J§.stop();
            if(this.§"!9§)
            {
               (§&X§.getItemByName("MovieClip_NewHighScoreBadge") as §=!6§).setVisibility(true);
            }
            else
            {
               (§&X§.getItemByName("MovieClip_NewHighScoreBadge") as §=!6§).setVisibility(false);
            }
            this.§"9§ = §^!,§.§0!S§.§3n§((§&X§.getItemByName("MovieClip_NewHighScoreBadge") as §=!6§).mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":7,
               "scaleY":7
            },0.1);
            this.§"9§.onComplete = this.§7?§;
            this.§"9§.play();
         }
         ++this.§6z§;
      }
      
      private function §&,§() : void
      {
         §'M§.§0&§(§@!'§);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:§%+§ = null;
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §-x§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§^!%§();
         §&X§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScore");
         §&X§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScoreEffects");
         for each(_loc3_ in this.§1!L§)
         {
            _loc3_.update(param1);
         }
         if(this.§%k§ > 0)
         {
            this.§>n§(param1);
         }
         if(mNextState.length > 0)
         {
            return §-x§.STATE_STATUS_COMPLETED;
         }
         return §-x§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§4>§.§4!§(0);
         this.§ for§();
         this.§%k§ = 0;
         §'M§.§0&§(§@!'§);
         (§&X§.getItemByName("Button_Menu") as §+F§).setComponentVisualState(§+!$§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§&X§.getItemByName("Button_Replay") as §+F§).setComponentVisualState(§+!$§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§&X§.getItemByName("Button_CutScene") as §+F§).setVisibility(false);
         §&X§.setText("0","TextField_LevelEndScore");
         §&X§.setText("0","TextField_LevelEndScoreEffects");
         §&X§.getItemByName("MovieClip_Chester_Win1").setVisibility(false);
         §&X§.getItemByName("MovieClip_Chester_Win2").setVisibility(false);
         §&X§.getItemByName("MovieClip_Chester_Win3").setVisibility(false);
      }
      
      private function § for§() : void
      {
         var _loc1_:§%+§ = null;
         if(this.§%J§)
         {
            this.§%J§.stop();
            this.§%J§.removeEventListener(TimerEvent.TIMER,this.§>!F§);
         }
         for each(_loc1_ in this.§1!L§)
         {
            if(§&X§.contains(_loc1_))
            {
               §&X§.removeChild(_loc1_);
            }
            _loc1_.clean();
         }
         this.§1!L§ = new Vector.<§%+§>();
         (§&X§.getItemByName("TextField_BestText") as §'!X§).setVisibility(false);
         (§&X§.getItemByName("TextField_BestScore") as §'!X§).setVisibility(false);
         (§&X§.getItemByName("MovieClip_BestScoreStars") as §=!6§).setVisibility(false);
         (§&X§.getItemByName("TextField_NewHighScore") as §'!X§).setVisibility(false);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyUp(param1);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§9I§) : void
      {
         var _loc4_:§+!$§ = null;
         switch(param2)
         {
            case "NEXT_LEVEL":
               this.§>-§();
               break;
            case "REPLAY":
               if((§8!W§.§=X§ as §=!3§).§^!7§())
               {
                  if(!§;A§.sCheetosPopups.showPopup(§]d§.RESTART_LEVEL))
                  {
                     this.§7^§();
                  }
               }
               else
               {
                  this.§7^§();
               }
               break;
            case "MENU":
               this.§#!W§();
               break;
            case "BUTTON_NO":
               if(§;A§.sCheetosPopups.getCurrentPopupName() == §]d§.RESTART_LEVEL)
               {
                  sCheetosPopups.hidePopup();
               }
               else if(§;A§.sCheetosPopups.getCurrentPopupName() == §]d§.§+!5§)
               {
                  sCheetosPopups.hidePopup();
               }
               else if(§;A§.sCheetosPopups.getCurrentPopupName() == §]d§.§[-§)
               {
                  sCheetosPopups.hidePopup();
               }
               break;
            case "BUTTON_YES":
               if(§;A§.sCheetosPopups.getCurrentPopupName() == §]d§.RESTART_LEVEL)
               {
                  this.§7^§();
                  break;
               }
               if(§;A§.sCheetosPopups.getCurrentPopupName() == §]d§.§+!5§)
               {
                  this.§>-§();
                  break;
               }
               if(§;A§.sCheetosPopups.getCurrentPopupName() == §]d§.§[-§)
               {
                  this.§#!W§();
                  break;
               }
               break;
            case "CHECKBOX_CHANGE":
               _loc4_ = param3 as §+!$§;
               §@!!§.§%F§.§4<§ = !§@!!§.§%F§.§4<§;
               if(§@!!§.§%F§.§4<§)
               {
                  _loc4_.setComponentState(§+!$§.COMPONENT_STATE_ACTIVE_DEFAULT);
                  break;
               }
               _loc4_.setComponentState(§+!$§.§^U§);
               break;
         }
      }
      
      private function §^!%§() : void
      {
         var _loc1_:§+F§ = §&X§.getItemByName("Button_Replay") as §+F§;
         var _loc2_:MovieClip = _loc1_.mClip.MovieClip_CreditCoin as MovieClip;
         var _loc3_:§+F§ = §&X§.getItemByName("Button_Next") as §+F§;
         var _loc4_:MovieClip = _loc3_.mClip.MovieClip_CreditCoin as MovieClip;
         var _loc5_:§+F§ = §&X§.getItemByName("Button_Menu") as §+F§;
         if((§8!W§.§=X§ as §=!3§).§^!7§())
         {
            _loc2_.visible = true;
            if(§5!#§.§'D§ == null)
            {
               _loc4_.visible = false;
            }
            else
            {
               _loc4_.visible = !§5!#§.§&2§();
            }
         }
         else
         {
            _loc2_.visible = false;
            _loc4_.visible = false;
         }
      }
      
      private function §7^§() : void
      {
         §=!S§.§?#§();
         mNextState = §=!S§.§,!+§;
      }
      
      private function §>-§() : void
      {
         §=!S§.§20§();
         mNextState = StateCutSceneDynamic.§,!+§;
      }
      
      private function §#!W§() : void
      {
         mNextState = §=f§.§,!+§;
      }
   }
}
