package §&!`§
{
   import § =§.§ x§;
   import §!%§.§1m§;
   import §'Y§.§"!J§;
   import §'Y§.§;J§;
   import §'d§.§3>§;
   import §+k§.§+!&§;
   import §+k§.§=! §;
   import §0C§.§"!T§;
   import §2V§.§!!_§;
   import §4!§.§&J§;
   import §7f§.§@+§;
   import §;C§.§5!O§;
   import §<s§.§&4§;
   import §<s§.§]@§;
   import §>!]§.§5m§;
   import §[%§.§&a§;
   import §[%§.§6!§;
   import §[%§.§<@§;
   import §[%§.§=!M§;
   import §]!2§.§30§;
   import §]!2§.§8D§;
   import §]_§.§!F§;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §!]§ extends §&A§
   {
      
      public static const §="§:String = "LevelEndState3";
      
      public static const §6`§:Number = 30;
      
      private static const §"W§:String = "ScoreLoopCountChannel";
      
      private static const §&!5§:String = "EndScreenEffectChannel";
       
      
      private var §-4§:§=! §;
      
      private var §'H§:Number;
      
      private var §6![§:Number;
      
      private var §4§:Number;
      
      private var §`v§:Boolean = false;
      
      private var §,&§:Timer;
      
      private var §%s§:§8D§;
      
      private var §1!9§:§30§;
      
      private var §=^§:Vector.<§30§>;
      
      public var mNewScoreCounter:int;
      
      private var §^$§:int;
      
      private var §<P§:Boolean;
      
      private var §#Y§:§1m§;
      
      private var §99§:Boolean;
      
      private var §]Q§:§=! §;
      
      public function §!]§(param1:Boolean = false, param2:String = "LevelEndState3")
      {
         this.§#Y§ = new §1m§();
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §^!]§ = new §;J§(this);
         §^!]§.init(§"!J§.§1!P§.Views.View_LevelEndRio[0]);
         var _loc1_:§<@§ = §^!]§.getItemByName("TextField_LevelCompleted") as §<@§;
         _loc1_.setText(§&J§.getText("Text_Level_Completed"));
         this.§%s§ = new §8D§(0,0,0,0);
         §^!]§.movieClip.addChildAt(this.§%s§,§^!]§.movieClip.numChildren - 1);
         this.§=^§ = new Vector.<§30§>();
         §5!O§.§>n§(§"W§,1,1);
         §5!O§.§>n§(§&!5§,16,1);
      }
      
      override public function activate() : void
      {
         super.activate();
         if(§!F§.§[M§)
         {
            §!F§.§[M§.start();
         }
         this.mNewScoreCounter = 0;
         this.§<P§ = false;
         §5!O§.§-q§("LevelCompletedTheme1");
         this.§%s§.§"s§(0.7);
         this.§1!Q§();
         if(§"!T§.§-Q§ == "1-4" || §"!T§.§-Q§ == "1-5" || §"!T§.§-Q§ == "1-6" || §"!T§.§-Q§ == "1-7" || §"!T§.§-Q§ == "1-8")
         {
            (§^!]§.getItemByName("Button_CutScene") as §6!§).setVisibility(true);
         }
         if(§"!T§.§-Q§ == "1-3" || §"!T§.§-Q§ == "1-8")
         {
            (§^!]§.getItemByName("Button_Next") as §6!§).setVisibility(false);
         }
         else
         {
            (§^!]§.getItemByName("Button_Next") as §6!§).setVisibility(true);
         }
         var _loc2_:String = "MovieClip_Chester_Win" + int(Math.random() * 3 + 1);
         §^!]§.getItemByName(_loc2_).setVisibility(true);
      }
      
      private function §1!Q§() : void
      {
         this.§4'§();
         this.§,&§ = new Timer(100);
         this.§^$§ = 0;
         this.§,&§.addEventListener(TimerEvent.TIMER,this.§%K§);
         this.§,&§.start();
      }
      
      private function §4'§() : void
      {
         var _loc3_:int = 0;
         var _loc1_:Number = §3§.§6!Z§.§3!]§(§"!T§.§-Q§);
         var _loc2_:Number = (§3>§.§;O§ as §5m§).getScore();
         this.§99§ = _loc2_ > _loc1_;
         if(this.§99§)
         {
            _loc1_ = _loc2_;
            §3§.§6!Z§.§]?§(§"!T§.§-Q§,_loc1_);
            §^!]§.setText(§&J§.getText("Text_New_Highscore"),"TextField_BestScore");
         }
         else
         {
            §^!]§.setText(§&J§.getText("Text_Best"),"TextField_BestText");
            §^!]§.setText(_loc1_.toString(),"TextField_BestScore");
            _loc3_ = §"!T§.§?X§(§"!T§.§-Q§,_loc1_);
            switch(_loc3_)
            {
               case 1:
                  (§^!]§.getItemByName("MovieClip_BestScoreStars") as §=!M§).§&!'§("OneStar");
                  break;
               case 2:
                  (§^!]§.getItemByName("MovieClip_BestScoreStars") as §=!M§).§&!'§("TwoStar");
                  break;
               case 3:
                  (§^!]§.getItemByName("MovieClip_BestScoreStars") as §=!M§).§&!'§("ThreeStar");
            }
         }
         (§^!]§.getItemByName("MovieClip_NewHighScoreBadge") as §=!M§).setVisibility(false);
         (§^!]§.getItemByName("MovieClip_StarLeft") as §=!M§).mClip.gotoAndStop("UnLit");
         (§^!]§.getItemByName("MovieClip_StarCenter") as §=!M§).mClip.gotoAndStop("UnLit");
         (§^!]§.getItemByName("MovieClip_StarRight") as §=!M§).mClip.gotoAndStop("UnLit");
      }
      
      private function §5A§() : void
      {
         if(this.§99§)
         {
            §5!O§.§<!1§(§&!5§);
            §5!O§.§-q§("Hiscore_Badge",§&!5§);
            §^!]§.setText(§&J§.getText("Text_New_Highscore"),"TextField_NewHighScore");
            (§^!]§.getItemByName("TextField_NewHighScore") as §<@§).setVisibility(true);
            (§^!]§.getItemByName("MovieClip_BestScoreStars") as §=!M§).setVisibility(false);
            this.§ &§();
         }
         else
         {
            (§^!]§.getItemByName("TextField_BestText") as §<@§).setVisibility(true);
            (§^!]§.getItemByName("TextField_BestScore") as §<@§).setVisibility(true);
            (§^!]§.getItemByName("MovieClip_BestScoreStars") as §=!M§).setVisibility(true);
         }
      }
      
      private function § &§() : void
      {
         this.§6![§ = (§^!]§.getItemByName("Container_LevelEndStripe") as §&a§).x;
         this.§4§ = (§^!]§.getItemByName("Container_LevelEndStripe") as §&a§).y;
         this.§'H§ = §6`§;
      }
      
      private function §<5§(param1:Number) : void
      {
         if(this.§'H§ <= 0)
         {
            (§^!]§.getItemByName("Container_LevelEndStripe") as §&a§).x = this.§6![§;
            (§^!]§.getItemByName("Container_LevelEndStripe") as §&a§).y = this.§4§;
         }
         else
         {
            (§^!]§.getItemByName("Container_LevelEndStripe") as §&a§).x = this.§6![§ + Math.random() * (this.§'H§ / §6`§) * 20;
            (§^!]§.getItemByName("Container_LevelEndStripe") as §&a§).y = this.§4§ + Math.random() * (this.§'H§ / §6`§) * 20;
         }
         this.§'H§ -= param1 / 10;
      }
      
      private function §%K§(param1:TimerEvent) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc4_:Number = §"!T§.getLevelForId(§"!T§.§-Q§).§ do§;
         var _loc5_:Number = §"!T§.getLevelForId(§"!T§.§-Q§).§;T§;
         if((§^!]§.getItemByName("MovieClip_StarLeft") as §=!M§).mClip.currentLabel == "UnLit")
         {
            §5!O§.§-q§("Hiscore_Count",§"W§,100);
            §5!O§.§<!1§(§&!5§);
            §5!O§.§-q§("Hiscore_Star_Splash1",§&!5§);
            this.§,&§.delay = 1000;
            this.§#Y§.§0!S§(§3>§.§;O§.getScore());
            _loc6_ = this.§#Y§.getValue() / _loc4_ * 2;
            this.§]Q§ = §+!&§.§,§.§9x§(this,{"mNewScoreCounter":this.§#Y§.getValue()},{"mNewScoreCounter":0},_loc6_);
            this.§]Q§.onComplete = this.§=!R§;
            this.§]Q§.play();
            (§^!]§.getItemByName("MovieClip_StarLeft") as §=!M§).mClip.gotoAndStop("Lit");
            _loc2_ = (§^!]§.getItemByName("MovieClip_StarLeft") as §=!M§).x + (§^!]§.getItemByName("Container_LevelEndStripe") as §&a§).x;
            _loc3_ = (§^!]§.getItemByName("MovieClip_StarLeft") as §=!M§).y + (§^!]§.getItemByName("Container_LevelEndStripe") as §&a§).y;
            this.§1!9§ = new §30§(§3§.§'R§,§3§.§'Z§,_loc2_,_loc3_,§30§.§8!D§);
            §^!]§.addChild(this.§1!9§);
            this.§=^§.push(this.§1!9§);
         }
         else if(this.§#Y§.getValue() >= _loc5_ && (§^!]§.getItemByName("MovieClip_StarCenter") as §=!M§).mClip.currentLabel == "UnLit")
         {
            §5!O§.§<!1§(§&!5§);
            §5!O§.§-q§("Hiscore_Star_Splash2",§&!5§);
            (§^!]§.getItemByName("MovieClip_StarCenter") as §=!M§).mClip.gotoAndStop("Lit");
            _loc2_ = (§^!]§.getItemByName("MovieClip_StarCenter") as §=!M§).x + (§^!]§.getItemByName("Container_LevelEndStripe") as §&a§).x;
            _loc3_ = (§^!]§.getItemByName("MovieClip_StarCenter") as §=!M§).y + (§^!]§.getItemByName("Container_LevelEndStripe") as §&a§).y;
            this.§1!9§ = new §30§(§3§.§'R§,§3§.§'Z§,_loc2_,_loc3_,§30§.§7!_§);
            §^!]§.addChild(this.§1!9§);
            this.§=^§.push(this.§1!9§);
         }
         else if(this.§#Y§.getValue() >= _loc4_ && (§^!]§.getItemByName("MovieClip_StarRight") as §=!M§).mClip.currentLabel == "UnLit")
         {
            §5!O§.§<!1§(§&!5§);
            §5!O§.§-q§("Hiscore_Star_Splash3",§&!5§);
            (§^!]§.getItemByName("MovieClip_StarRight") as §=!M§).mClip.gotoAndStop("Lit");
            _loc2_ = (§^!]§.getItemByName("MovieClip_StarRight") as §=!M§).x + (§^!]§.getItemByName("Container_LevelEndStripe") as §&a§).x;
            _loc3_ = (§^!]§.getItemByName("MovieClip_StarRight") as §=!M§).y + (§^!]§.getItemByName("Container_LevelEndStripe") as §&a§).y;
            this.§1!9§ = new §30§(§3§.§'R§,§3§.§'Z§,_loc2_,_loc3_,§30§.§ 5§);
            §^!]§.addChild(this.§1!9§);
            this.§=^§.push(this.§1!9§);
         }
         else if(!this.§<P§)
         {
            this.§<P§ = true;
         }
         else
         {
            this.§,&§.stop();
            if(this.§99§)
            {
               (§^!]§.getItemByName("MovieClip_NewHighScoreBadge") as §=!M§).setVisibility(true);
            }
            else
            {
               (§^!]§.getItemByName("MovieClip_NewHighScoreBadge") as §=!M§).setVisibility(false);
            }
            this.§-4§ = §+!&§.§,§.§9x§((§^!]§.getItemByName("MovieClip_NewHighScoreBadge") as §=!M§).mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":7,
               "scaleY":7
            },0.1);
            this.§-4§.onComplete = this.§5A§;
            this.§-4§.play();
         }
         ++this.§^$§;
      }
      
      private function §=!R§() : void
      {
         §5!O§.§<!1§(§"W§);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:§30§ = null;
         var _loc2_:int = super.run(param1);
         if(_loc2_ != § x§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§=f§();
         §^!]§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScore");
         §^!]§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScoreEffects");
         for each(_loc3_ in this.§=^§)
         {
            _loc3_.update(param1);
         }
         if(this.§'H§ > 0)
         {
            this.§<5§(param1);
         }
         if(mNextState.length > 0)
         {
            return § x§.STATE_STATUS_COMPLETED;
         }
         return § x§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§%s§.§@g§(0);
         this.§47§();
         this.§'H§ = 0;
         §5!O§.§<!1§(§"W§);
         (§^!]§.getItemByName("Button_Menu") as §6!§).setComponentVisualState(§&4§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§^!]§.getItemByName("Button_Replay") as §6!§).setComponentVisualState(§&4§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§^!]§.getItemByName("Button_CutScene") as §6!§).setVisibility(false);
         §^!]§.setText("0","TextField_LevelEndScore");
         §^!]§.setText("0","TextField_LevelEndScoreEffects");
         §^!]§.getItemByName("MovieClip_Chester_Win1").setVisibility(false);
         §^!]§.getItemByName("MovieClip_Chester_Win2").setVisibility(false);
         §^!]§.getItemByName("MovieClip_Chester_Win3").setVisibility(false);
      }
      
      private function §47§() : void
      {
         var _loc1_:§30§ = null;
         if(this.§,&§)
         {
            this.§,&§.stop();
            this.§,&§.removeEventListener(TimerEvent.TIMER,this.§%K§);
         }
         for each(_loc1_ in this.§=^§)
         {
            if(§^!]§.contains(_loc1_))
            {
               §^!]§.removeChild(_loc1_);
            }
            _loc1_.clean();
         }
         this.§=^§ = new Vector.<§30§>();
         (§^!]§.getItemByName("TextField_BestText") as §<@§).setVisibility(false);
         (§^!]§.getItemByName("TextField_BestScore") as §<@§).setVisibility(false);
         (§^!]§.getItemByName("MovieClip_BestScoreStars") as §=!M§).setVisibility(false);
         (§^!]§.getItemByName("TextField_NewHighScore") as §<@§).setVisibility(false);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyUp(param1);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§]@§) : void
      {
         var _loc4_:§&4§ = null;
         switch(param2)
         {
            case "NEXT_LEVEL":
               if((§3>§.§8!$§ as §@+§).§[!7§() && §"!T§.§-Q§ != "1-8")
               {
                  if(!§&A§.sCheetosPopups.showPopup(§!!_§.§`!#§))
                  {
                     this.§,Y§();
                  }
               }
               else
               {
                  this.§,Y§();
               }
               break;
            case "REPLAY":
               if((§3>§.§8!$§ as §@+§).§[!7§())
               {
                  if(!§&A§.sCheetosPopups.showPopup(§!!_§.RESTART_LEVEL))
                  {
                     this.§02§();
                  }
               }
               else
               {
                  this.§02§();
               }
               break;
            case "MENU":
               this.§3!D§();
               break;
            case "BUTTON_NO":
               if(§&A§.sCheetosPopups.getCurrentPopupName() == §!!_§.RESTART_LEVEL)
               {
                  sCheetosPopups.hidePopup();
               }
               else if(§&A§.sCheetosPopups.getCurrentPopupName() == §!!_§.§`!#§)
               {
                  sCheetosPopups.hidePopup();
               }
               else if(§&A§.sCheetosPopups.getCurrentPopupName() == §!!_§.§4!E§)
               {
                  sCheetosPopups.hidePopup();
               }
               break;
            case "BUTTON_YES":
               if(§&A§.sCheetosPopups.getCurrentPopupName() == §!!_§.RESTART_LEVEL)
               {
                  this.§02§();
                  break;
               }
               if(§&A§.sCheetosPopups.getCurrentPopupName() == §!!_§.§`!#§)
               {
                  this.§,Y§();
                  break;
               }
               if(§&A§.sCheetosPopups.getCurrentPopupName() == §!!_§.§4!E§)
               {
                  this.§3!D§();
                  break;
               }
               break;
            case "CHECKBOX_CHANGE":
               _loc4_ = param3 as §&4§;
               §3§.§]T§.§];§ = !§3§.§]T§.§];§;
               if(§3§.§]T§.§];§)
               {
                  _loc4_.setComponentState(§&4§.COMPONENT_STATE_ACTIVE_DEFAULT);
                  break;
               }
               _loc4_.setComponentState(§&4§.§=!'§);
               break;
         }
      }
      
      private function §=f§() : void
      {
         var _loc1_:§6!§ = §^!]§.getItemByName("Button_Replay") as §6!§;
         var _loc2_:MovieClip = _loc1_.mClip.MovieClip_CreditCoin as MovieClip;
         var _loc3_:§6!§ = §^!]§.getItemByName("Button_Next") as §6!§;
         var _loc4_:MovieClip = _loc3_.mClip.MovieClip_CreditCoin as MovieClip;
         var _loc5_:§6!§ = §^!]§.getItemByName("Button_Menu") as §6!§;
         var _loc6_:§6!§;
         var _loc7_:MovieClip = (_loc6_ = §^!]§.getItemByName("Button_CutScene") as §6!§).mClip.MovieClip_CreditCoin as MovieClip;
         if((§3>§.§8!$§ as §@+§).§[!7§())
         {
            _loc2_.visible = true;
            _loc7_.visible = true;
            if(§"!T§.§-Q§ == null)
            {
               _loc4_.visible = false;
               _loc7_.visible = false;
            }
            else
            {
               _loc4_.visible = !§"!T§.§-C§();
            }
         }
         else
         {
            _loc2_.visible = false;
            _loc4_.visible = false;
         }
      }
      
      private function §02§() : void
      {
         §8!@§.§-_§();
         mNextState = §8!@§.§="§;
      }
      
      private function §,Y§() : void
      {
         §8!@§.§>@§();
         mNextState = StateCutSceneDynamic.§="§;
      }
      
      private function §3!D§() : void
      {
         mNextState = §4q§.§="§;
      }
   }
}
