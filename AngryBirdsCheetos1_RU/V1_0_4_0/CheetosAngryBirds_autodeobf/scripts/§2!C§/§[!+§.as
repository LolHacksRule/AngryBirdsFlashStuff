package §2!C§
{
   import § A§.§"Y§;
   import §!$§.§!!O§;
   import §&h§.§+Y§;
   import §,!!§.§3!R§;
   import §,!!§.§3!c§;
   import §,+§.§@!E§;
   import §1e§.§&!R§;
   import §2K§.§ 3§;
   import §2K§.§,!@§;
   import §2K§.§,d§;
   import §2K§.§catch§;
   import §3!8§.§[X§;
   import §39§.§-W§;
   import §6!K§.§#![§;
   import §6!K§.§3l§;
   import §6!S§.§!<§;
   import §6!S§.§,!9§;
   import §9!S§.§+!=§;
   import §94§.§&!7§;
   import §>!D§.§3Q§;
   import §>!D§.§;,§;
   import §^Q§.§,^§;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §[!+§ extends §1!b§
   {
      
      public static const §+!a§:String = "LevelEndState3";
      
      public static const §!'§:Number = 30;
      
      private static const §<!9§:String = "ScoreLoopCountChannel";
      
      private static const §,e§:String = "EndScreenEffectChannel";
       
      
      private var §6!A§:§,!9§;
      
      private var §1!!§:Number;
      
      private var §%!R§:Number;
      
      private var §5'§:Number;
      
      private var §3f§:Boolean = false;
      
      private var §%[§:Timer;
      
      private var §0!9§:§3!R§;
      
      private var §'!R§:§3!c§;
      
      private var §5!#§:Vector.<§3!c§>;
      
      public var mNewScoreCounter:int;
      
      private var §<!c§:int;
      
      private var §&H§:Boolean;
      
      private var §3>§:§@!E§;
      
      private var §@l§:Boolean;
      
      private var §+7§:§,!9§;
      
      public function §[!+§(param1:Boolean = false, param2:String = "LevelEndState3")
      {
         this.§3>§ = new §@!E§();
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §?!?§ = new §;,§(this);
         §?!?§.init(§3Q§.§?6§.Views.View_LevelEndRio[0]);
         var _loc1_:§catch§ = §?!?§.getItemByName("TextField_LevelCompleted") as §catch§;
         _loc1_.setText(§[X§.getText("Text_Level_Completed"));
         this.§0!9§ = new §3!R§(0,0,0,0);
         §?!?§.movieClip.addChildAt(this.§0!9§,§?!?§.movieClip.numChildren - 1);
         this.§5!#§ = new Vector.<§3!c§>();
         §!!O§.§7!b§(§<!9§,1,1);
         §!!O§.§7!b§(§,e§,16,1);
      }
      
      override public function activate() : void
      {
         super.activate();
         if(§&!7§.§>!M§)
         {
            §&!7§.§>!M§.start();
         }
         this.mNewScoreCounter = 0;
         this.§&H§ = false;
         §!!O§.§<D§("LevelCompletedTheme1");
         this.§0!9§.§6!c§(0.7);
         this.§^!A§();
         if(§-W§.§,[§ == "1-4" || §-W§.§,[§ == "1-5" || §-W§.§,[§ == "1-6" || §-W§.§,[§ == "1-7" || §-W§.§,[§ == "1-8")
         {
            (§?!?§.getItemByName("Button_CutScene") as § 3§).setVisibility(true);
         }
         if(§-W§.§,[§ == "1-3" || §-W§.§,[§ == "1-8")
         {
            (§?!?§.getItemByName("Button_Next") as § 3§).setVisibility(false);
         }
         else
         {
            (§?!?§.getItemByName("Button_Next") as § 3§).setVisibility(true);
         }
         var _loc2_:String = "MovieClip_Chester_Win" + int(Math.random() * 3 + 1);
         §?!?§.getItemByName(_loc2_).setVisibility(true);
      }
      
      private function §^!A§() : void
      {
         this.§&!a§();
         this.§%[§ = new Timer(100);
         this.§<!c§ = 0;
         this.§%[§.addEventListener(TimerEvent.TIMER,this.§3c§);
         this.§%[§.start();
      }
      
      private function §&!a§() : void
      {
         var _loc3_:int = 0;
         var _loc1_:Number = §7d§.§4'§.§,!H§(§-W§.§,[§);
         var _loc2_:Number = (§,^§.§;§ as §"Y§).getScore();
         this.§@l§ = _loc2_ > _loc1_;
         if(this.§@l§)
         {
            _loc1_ = _loc2_;
            §7d§.§4'§.§each §(§-W§.§,[§,_loc1_);
            §?!?§.setText(§[X§.getText("Text_New_Highscore"),"TextField_BestScore");
         }
         else
         {
            §?!?§.setText(§[X§.getText("Text_Best"),"TextField_BestText");
            §?!?§.setText(_loc1_.toString(),"TextField_BestScore");
            _loc3_ = §-W§.§#V§(§-W§.§,[§,_loc1_);
            switch(_loc3_)
            {
               case 1:
                  (§?!?§.getItemByName("MovieClip_BestScoreStars") as §,d§).§#!`§("OneStar");
                  break;
               case 2:
                  (§?!?§.getItemByName("MovieClip_BestScoreStars") as §,d§).§#!`§("TwoStar");
                  break;
               case 3:
                  (§?!?§.getItemByName("MovieClip_BestScoreStars") as §,d§).§#!`§("ThreeStar");
            }
         }
         (§?!?§.getItemByName("MovieClip_NewHighScoreBadge") as §,d§).setVisibility(false);
         (§?!?§.getItemByName("MovieClip_StarLeft") as §,d§).mClip.gotoAndStop("UnLit");
         (§?!?§.getItemByName("MovieClip_StarCenter") as §,d§).mClip.gotoAndStop("UnLit");
         (§?!?§.getItemByName("MovieClip_StarRight") as §,d§).mClip.gotoAndStop("UnLit");
      }
      
      private function §7^§() : void
      {
         if(this.§@l§)
         {
            §!!O§.§7!P§(§,e§);
            §!!O§.§<D§("Hiscore_Badge",§,e§);
            §?!?§.setText(§[X§.getText("Text_New_Highscore"),"TextField_NewHighScore");
            (§?!?§.getItemByName("TextField_NewHighScore") as §catch§).setVisibility(true);
            (§?!?§.getItemByName("MovieClip_BestScoreStars") as §,d§).setVisibility(false);
            this.§7D§();
         }
         else
         {
            (§?!?§.getItemByName("TextField_BestText") as §catch§).setVisibility(true);
            (§?!?§.getItemByName("TextField_BestScore") as §catch§).setVisibility(true);
            (§?!?§.getItemByName("MovieClip_BestScoreStars") as §,d§).setVisibility(true);
         }
      }
      
      private function §7D§() : void
      {
         this.§%!R§ = (§?!?§.getItemByName("Container_LevelEndStripe") as §,!@§).x;
         this.§5'§ = (§?!?§.getItemByName("Container_LevelEndStripe") as §,!@§).y;
         this.§1!!§ = §!'§;
      }
      
      private function §`x§(param1:Number) : void
      {
         if(this.§1!!§ <= 0)
         {
            (§?!?§.getItemByName("Container_LevelEndStripe") as §,!@§).x = this.§%!R§;
            (§?!?§.getItemByName("Container_LevelEndStripe") as §,!@§).y = this.§5'§;
         }
         else
         {
            (§?!?§.getItemByName("Container_LevelEndStripe") as §,!@§).x = this.§%!R§ + Math.random() * (this.§1!!§ / §!'§) * 20;
            (§?!?§.getItemByName("Container_LevelEndStripe") as §,!@§).y = this.§5'§ + Math.random() * (this.§1!!§ / §!'§) * 20;
         }
         this.§1!!§ -= param1 / 10;
      }
      
      private function §3c§(param1:TimerEvent) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc4_:Number = §-W§.§2d§(§-W§.§,[§).§2m§;
         var _loc5_:Number = §-W§.§2d§(§-W§.§,[§).§5+§;
         if((§?!?§.getItemByName("MovieClip_StarLeft") as §,d§).mClip.currentLabel == "UnLit")
         {
            §!!O§.§<D§("Hiscore_Count",§<!9§,100);
            §!!O§.§7!P§(§,e§);
            §!!O§.§<D§("Hiscore_Star_Splash1",§,e§);
            this.§%[§.delay = 1000;
            this.§3>§.§`!V§(§,^§.§;§.getScore());
            _loc6_ = this.§3>§.getValue() / _loc4_ * 2;
            this.§+7§ = §!<§.§%b§.§9!!§(this,{"mNewScoreCounter":this.§3>§.getValue()},{"mNewScoreCounter":0},_loc6_);
            this.§+7§.onComplete = this.§#<§;
            this.§+7§.play();
            (§?!?§.getItemByName("MovieClip_StarLeft") as §,d§).mClip.gotoAndStop("Lit");
            _loc2_ = (§?!?§.getItemByName("MovieClip_StarLeft") as §,d§).x + (§?!?§.getItemByName("Container_LevelEndStripe") as §,!@§).x;
            _loc3_ = (§?!?§.getItemByName("MovieClip_StarLeft") as §,d§).y + (§?!?§.getItemByName("Container_LevelEndStripe") as §,!@§).y;
            this.§'!R§ = new §3!c§(§7d§.§=!#§,§7d§.§,n§,_loc2_,_loc3_,§3!c§.§'!5§);
            §?!?§.addChild(this.§'!R§);
            this.§5!#§.push(this.§'!R§);
         }
         else if(this.§3>§.getValue() >= _loc5_ && (§?!?§.getItemByName("MovieClip_StarCenter") as §,d§).mClip.currentLabel == "UnLit")
         {
            §!!O§.§7!P§(§,e§);
            §!!O§.§<D§("Hiscore_Star_Splash2",§,e§);
            (§?!?§.getItemByName("MovieClip_StarCenter") as §,d§).mClip.gotoAndStop("Lit");
            _loc2_ = (§?!?§.getItemByName("MovieClip_StarCenter") as §,d§).x + (§?!?§.getItemByName("Container_LevelEndStripe") as §,!@§).x;
            _loc3_ = (§?!?§.getItemByName("MovieClip_StarCenter") as §,d§).y + (§?!?§.getItemByName("Container_LevelEndStripe") as §,!@§).y;
            this.§'!R§ = new §3!c§(§7d§.§=!#§,§7d§.§,n§,_loc2_,_loc3_,§3!c§.§7W§);
            §?!?§.addChild(this.§'!R§);
            this.§5!#§.push(this.§'!R§);
         }
         else if(this.§3>§.getValue() >= _loc4_ && (§?!?§.getItemByName("MovieClip_StarRight") as §,d§).mClip.currentLabel == "UnLit")
         {
            §!!O§.§7!P§(§,e§);
            §!!O§.§<D§("Hiscore_Star_Splash3",§,e§);
            (§?!?§.getItemByName("MovieClip_StarRight") as §,d§).mClip.gotoAndStop("Lit");
            _loc2_ = (§?!?§.getItemByName("MovieClip_StarRight") as §,d§).x + (§?!?§.getItemByName("Container_LevelEndStripe") as §,!@§).x;
            _loc3_ = (§?!?§.getItemByName("MovieClip_StarRight") as §,d§).y + (§?!?§.getItemByName("Container_LevelEndStripe") as §,!@§).y;
            this.§'!R§ = new §3!c§(§7d§.§=!#§,§7d§.§,n§,_loc2_,_loc3_,§3!c§.§#'§);
            §?!?§.addChild(this.§'!R§);
            this.§5!#§.push(this.§'!R§);
         }
         else if(!this.§&H§)
         {
            this.§&H§ = true;
         }
         else
         {
            this.§%[§.stop();
            if(this.§@l§)
            {
               (§?!?§.getItemByName("MovieClip_NewHighScoreBadge") as §,d§).setVisibility(true);
            }
            else
            {
               (§?!?§.getItemByName("MovieClip_NewHighScoreBadge") as §,d§).setVisibility(false);
            }
            this.§6!A§ = §!<§.§%b§.§9!!§((§?!?§.getItemByName("MovieClip_NewHighScoreBadge") as §,d§).mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":7,
               "scaleY":7
            },0.1);
            this.§6!A§.onComplete = this.§7^§;
            this.§6!A§.play();
         }
         ++this.§<!c§;
      }
      
      private function §#<§() : void
      {
         §!!O§.§7!P§(§<!9§);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:§3!c§ = null;
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §+Y§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§3!D§();
         §?!?§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScore");
         §?!?§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScoreEffects");
         for each(_loc3_ in this.§5!#§)
         {
            _loc3_.update(param1);
         }
         if(this.§1!!§ > 0)
         {
            this.§`x§(param1);
         }
         if(mNextState.length > 0)
         {
            return §+Y§.STATE_STATUS_COMPLETED;
         }
         return §+Y§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§0!9§.§&!J§(0);
         this.§'I§();
         this.§1!!§ = 0;
         §!!O§.§7!P§(§<!9§);
         (§?!?§.getItemByName("Button_Menu") as § 3§).setComponentVisualState(§3l§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§?!?§.getItemByName("Button_Replay") as § 3§).setComponentVisualState(§3l§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§?!?§.getItemByName("Button_CutScene") as § 3§).setVisibility(false);
         §?!?§.setText("0","TextField_LevelEndScore");
         §?!?§.setText("0","TextField_LevelEndScoreEffects");
         §?!?§.getItemByName("MovieClip_Chester_Win1").setVisibility(false);
         §?!?§.getItemByName("MovieClip_Chester_Win2").setVisibility(false);
         §?!?§.getItemByName("MovieClip_Chester_Win3").setVisibility(false);
      }
      
      private function §'I§() : void
      {
         var _loc1_:§3!c§ = null;
         if(this.§%[§)
         {
            this.§%[§.stop();
            this.§%[§.removeEventListener(TimerEvent.TIMER,this.§3c§);
         }
         for each(_loc1_ in this.§5!#§)
         {
            if(§?!?§.contains(_loc1_))
            {
               §?!?§.removeChild(_loc1_);
            }
            _loc1_.clean();
         }
         this.§5!#§ = new Vector.<§3!c§>();
         (§?!?§.getItemByName("TextField_BestText") as §catch§).setVisibility(false);
         (§?!?§.getItemByName("TextField_BestScore") as §catch§).setVisibility(false);
         (§?!?§.getItemByName("MovieClip_BestScoreStars") as §,d§).setVisibility(false);
         (§?!?§.getItemByName("TextField_NewHighScore") as §catch§).setVisibility(false);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyUp(param1);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§#![§) : void
      {
         var _loc4_:§3l§ = null;
         switch(param2)
         {
            case "NEXT_LEVEL":
               this.§4`§();
               break;
            case "REPLAY":
               if((§,^§.§0K§ as §+!=§).§]!I§())
               {
                  if(!§1!b§.sCheetosPopups.showPopup(§&!R§.RESTART_LEVEL))
                  {
                     this.§^!,§();
                  }
               }
               else
               {
                  this.§^!,§();
               }
               break;
            case "MENU":
               this.§#!9§();
               break;
            case "BUTTON_NO":
               if(§1!b§.sCheetosPopups.getCurrentPopupName() == §&!R§.RESTART_LEVEL)
               {
                  sCheetosPopups.hidePopup();
               }
               else if(§1!b§.sCheetosPopups.getCurrentPopupName() == §&!R§.§?!b§)
               {
                  sCheetosPopups.hidePopup();
               }
               else if(§1!b§.sCheetosPopups.getCurrentPopupName() == §&!R§.§6'§)
               {
                  sCheetosPopups.hidePopup();
               }
               break;
            case "BUTTON_YES":
               if(§1!b§.sCheetosPopups.getCurrentPopupName() == §&!R§.RESTART_LEVEL)
               {
                  this.§^!,§();
                  break;
               }
               if(§1!b§.sCheetosPopups.getCurrentPopupName() == §&!R§.§?!b§)
               {
                  this.§4`§();
                  break;
               }
               if(§1!b§.sCheetosPopups.getCurrentPopupName() == §&!R§.§6'§)
               {
                  this.§#!9§();
                  break;
               }
               break;
            case "CHECKBOX_CHANGE":
               _loc4_ = param3 as §3l§;
               §7d§.§`!<§.§`-§ = !§7d§.§`!<§.§`-§;
               if(§7d§.§`!<§.§`-§)
               {
                  _loc4_.setComponentState(§3l§.COMPONENT_STATE_ACTIVE_DEFAULT);
                  break;
               }
               _loc4_.setComponentState(§3l§.§0!c§);
               break;
         }
      }
      
      private function §3!D§() : void
      {
         var _loc1_:§ 3§ = §?!?§.getItemByName("Button_Replay") as § 3§;
         var _loc2_:MovieClip = _loc1_.mClip.MovieClip_CreditCoin as MovieClip;
         var _loc3_:§ 3§ = §?!?§.getItemByName("Button_Next") as § 3§;
         var _loc4_:MovieClip = _loc3_.mClip.MovieClip_CreditCoin as MovieClip;
         var _loc5_:§ 3§ = §?!?§.getItemByName("Button_Menu") as § 3§;
         if((§,^§.§0K§ as §+!=§).§]!I§())
         {
            _loc2_.visible = true;
            if(§-W§.§,[§ == null)
            {
               _loc4_.visible = false;
            }
            else
            {
               _loc4_.visible = !§-W§.§#3§();
            }
         }
         else
         {
            _loc2_.visible = false;
            _loc4_.visible = false;
         }
      }
      
      private function §^!,§() : void
      {
         §,!]§.§10§();
         mNextState = §,!]§.§+!a§;
      }
      
      private function §4`§() : void
      {
         §,!]§.§31§();
         mNextState = StateCutSceneDynamic.§+!a§;
      }
      
      private function §#!9§() : void
      {
         mNextState = §^w§.§+!a§;
      }
   }
}
