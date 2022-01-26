package §'Q§
{
   import §!!S§.§>a§;
   import §!!S§.§^P§;
   import §#!O§.§%!=§;
   import §#K§.§,3§;
   import §0&§.§@o§;
   import §3!M§.§&!S§;
   import §3!M§.§&V§;
   import §3!M§.§7^§;
   import §3!M§.§`!;§;
   import §6!P§.§88§;
   import §6!P§.§^!>§;
   import §6=§.§`!<§;
   import §6W§.§-t§;
   import §6W§.§7!W§;
   import §;!X§.§7`§;
   import §=q§.§<!,§;
   import §?!F§.§0!Y§;
   import §[I§.§8!B§;
   import §^3§.§6Y§;
   import §`B§.§ P§;
   import §`B§.§-Z§;
   import §`M§.§'C§;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §'L§ extends §=!R§
   {
      
      public static const §1o§:String = "LevelEndState3";
      
      public static const §1!8§:Number = 30;
      
      private static const §6!V§:String = "ScoreLoopCountChannel";
      
      private static const §`!?§:String = "EndScreenEffectChannel";
       
      
      private var §-O§:§88§;
      
      private var §@I§:Number;
      
      private var §>!K§:Number;
      
      private var § !P§:Number;
      
      private var §,u§:Boolean = false;
      
      private var § !4§:Timer;
      
      private var §@'§:§-t§;
      
      private var §^-§:§7!W§;
      
      private var §&!V§:Vector.<§7!W§>;
      
      public var mNewScoreCounter:int;
      
      private var §=e§:int;
      
      private var §#2§:Boolean;
      
      private var §8L§:§6Y§;
      
      private var §`!2§:Boolean;
      
      private var §5!$§:§88§;
      
      public function §'L§(param1:Boolean = false, param2:String = "LevelEndState3")
      {
         this.§8L§ = new §6Y§();
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §2m§ = new §-Z§(this);
         §2m§.init(§ P§.§!A§.Views.View_LevelEndRio[0]);
         var _loc1_:§&!S§ = §2m§.getItemByName("TextField_LevelCompleted") as §&!S§;
         _loc1_.setText(§8!B§.getText("Text_Level_Completed"));
         this.§@'§ = new §-t§(0,0,0,0);
         §2m§.movieClip.addChildAt(this.§@'§,§2m§.movieClip.numChildren - 1);
         this.§&!V§ = new Vector.<§7!W§>();
         §,3§.§1!W§(§6!V§,1,1);
         §,3§.§1!W§(§`!?§,16,1);
      }
      
      override public function activate() : void
      {
         super.activate();
         if(§'C§.§3b§)
         {
            §'C§.§3b§.start();
         }
         this.mNewScoreCounter = 0;
         this.§#2§ = false;
         §,3§.§7!=§("LevelCompletedTheme1");
         this.§@'§.§'!N§(0.7);
         this.§7H§();
         if(§<!,§.§1D§ == "1-4" || §<!,§.§1D§ == "1-5" || §<!,§.§1D§ == "1-6" || §<!,§.§1D§ == "1-7" || §<!,§.§1D§ == "1-8")
         {
            (§2m§.getItemByName("Button_CutScene") as §`!;§).setVisibility(true);
         }
         if(§<!,§.§1D§ == "1-3" || §<!,§.§1D§ == "1-8")
         {
            (§2m§.getItemByName("Button_Next") as §`!;§).setVisibility(false);
         }
         else
         {
            (§2m§.getItemByName("Button_Next") as §`!;§).setVisibility(true);
         }
         var _loc2_:String = "MovieClip_Chester_Win" + int(Math.random() * 3 + 1);
         §2m§.getItemByName(_loc2_).setVisibility(true);
      }
      
      private function §7H§() : void
      {
         this.§2A§();
         this.§ !4§ = new Timer(100);
         this.§=e§ = 0;
         this.§ !4§.addEventListener(TimerEvent.TIMER,this.§8!=§);
         this.§ !4§.start();
      }
      
      private function §2A§() : void
      {
         var _loc3_:int = 0;
         var _loc1_:Number = §4+§.§2!K§.§^i§(§<!,§.§1D§);
         var _loc2_:Number = (§7`§.§`P§ as §%!=§).getScore();
         this.§`!2§ = _loc2_ > _loc1_;
         if(this.§`!2§)
         {
            _loc1_ = _loc2_;
            §4+§.§2!K§.§%!,§(§<!,§.§1D§,_loc1_);
            §2m§.setText(§8!B§.getText("Text_New_Highscore"),"TextField_BestScore");
         }
         else
         {
            §2m§.setText(§8!B§.getText("Text_Best"),"TextField_BestText");
            §2m§.setText(_loc1_.toString(),"TextField_BestScore");
            _loc3_ = §<!,§.§<[§(§<!,§.§1D§,_loc1_);
            switch(_loc3_)
            {
               case 1:
                  (§2m§.getItemByName("MovieClip_BestScoreStars") as §&V§).§!<§("OneStar");
                  break;
               case 2:
                  (§2m§.getItemByName("MovieClip_BestScoreStars") as §&V§).§!<§("TwoStar");
                  break;
               case 3:
                  (§2m§.getItemByName("MovieClip_BestScoreStars") as §&V§).§!<§("ThreeStar");
            }
         }
         (§2m§.getItemByName("MovieClip_NewHighScoreBadge") as §&V§).setVisibility(false);
         (§2m§.getItemByName("MovieClip_StarLeft") as §&V§).mClip.gotoAndStop("UnLit");
         (§2m§.getItemByName("MovieClip_StarCenter") as §&V§).mClip.gotoAndStop("UnLit");
         (§2m§.getItemByName("MovieClip_StarRight") as §&V§).mClip.gotoAndStop("UnLit");
      }
      
      private function §9!K§() : void
      {
         if(this.§`!2§)
         {
            §,3§.§&[§(§`!?§);
            §,3§.§7!=§("Hiscore_Badge",§`!?§);
            §2m§.setText(§8!B§.getText("Text_New_Highscore"),"TextField_NewHighScore");
            (§2m§.getItemByName("TextField_NewHighScore") as §&!S§).setVisibility(true);
            (§2m§.getItemByName("MovieClip_BestScoreStars") as §&V§).setVisibility(false);
            this.§1-§();
         }
         else
         {
            (§2m§.getItemByName("TextField_BestText") as §&!S§).setVisibility(true);
            (§2m§.getItemByName("TextField_BestScore") as §&!S§).setVisibility(true);
            (§2m§.getItemByName("MovieClip_BestScoreStars") as §&V§).setVisibility(true);
         }
      }
      
      private function §1-§() : void
      {
         this.§>!K§ = (§2m§.getItemByName("Container_LevelEndStripe") as §7^§).x;
         this.§ !P§ = (§2m§.getItemByName("Container_LevelEndStripe") as §7^§).y;
         this.§@I§ = §1!8§;
      }
      
      private function §'D§(param1:Number) : void
      {
         if(this.§@I§ <= 0)
         {
            (§2m§.getItemByName("Container_LevelEndStripe") as §7^§).x = this.§>!K§;
            (§2m§.getItemByName("Container_LevelEndStripe") as §7^§).y = this.§ !P§;
         }
         else
         {
            (§2m§.getItemByName("Container_LevelEndStripe") as §7^§).x = this.§>!K§ + Math.random() * (this.§@I§ / §1!8§) * 20;
            (§2m§.getItemByName("Container_LevelEndStripe") as §7^§).y = this.§ !P§ + Math.random() * (this.§@I§ / §1!8§) * 20;
         }
         this.§@I§ -= param1 / 10;
      }
      
      private function §8!=§(param1:TimerEvent) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc4_:Number = §<!,§.getLevelForId(§<!,§.§1D§).§&j§;
         var _loc5_:Number = §<!,§.getLevelForId(§<!,§.§1D§).§2B§;
         if((§2m§.getItemByName("MovieClip_StarLeft") as §&V§).mClip.currentLabel == "UnLit")
         {
            §,3§.§7!=§("Hiscore_Count",§6!V§,100);
            §,3§.§&[§(§`!?§);
            §,3§.§7!=§("Hiscore_Star_Splash1",§`!?§);
            this.§ !4§.delay = 1000;
            this.§8L§.§ !-§(§7`§.§`P§.getScore());
            _loc6_ = this.§8L§.getValue() / _loc4_ * 2;
            this.§5!$§ = §^!>§.§[P§.§@m§(this,{"mNewScoreCounter":this.§8L§.getValue()},{"mNewScoreCounter":0},_loc6_);
            this.§5!$§.onComplete = this.§0!!§;
            this.§5!$§.play();
            (§2m§.getItemByName("MovieClip_StarLeft") as §&V§).mClip.gotoAndStop("Lit");
            _loc2_ = (§2m§.getItemByName("MovieClip_StarLeft") as §&V§).x + (§2m§.getItemByName("Container_LevelEndStripe") as §7^§).x;
            _loc3_ = (§2m§.getItemByName("MovieClip_StarLeft") as §&V§).y + (§2m§.getItemByName("Container_LevelEndStripe") as §7^§).y;
            this.§^-§ = new §7!W§(§4+§.§1=§,§4+§.§@!#§,_loc2_,_loc3_,§7!W§.§?!L§);
            §2m§.addChild(this.§^-§);
            this.§&!V§.push(this.§^-§);
         }
         else if(this.§8L§.getValue() >= _loc5_ && (§2m§.getItemByName("MovieClip_StarCenter") as §&V§).mClip.currentLabel == "UnLit")
         {
            §,3§.§&[§(§`!?§);
            §,3§.§7!=§("Hiscore_Star_Splash2",§`!?§);
            (§2m§.getItemByName("MovieClip_StarCenter") as §&V§).mClip.gotoAndStop("Lit");
            _loc2_ = (§2m§.getItemByName("MovieClip_StarCenter") as §&V§).x + (§2m§.getItemByName("Container_LevelEndStripe") as §7^§).x;
            _loc3_ = (§2m§.getItemByName("MovieClip_StarCenter") as §&V§).y + (§2m§.getItemByName("Container_LevelEndStripe") as §7^§).y;
            this.§^-§ = new §7!W§(§4+§.§1=§,§4+§.§@!#§,_loc2_,_loc3_,§7!W§.§73§);
            §2m§.addChild(this.§^-§);
            this.§&!V§.push(this.§^-§);
         }
         else if(this.§8L§.getValue() >= _loc4_ && (§2m§.getItemByName("MovieClip_StarRight") as §&V§).mClip.currentLabel == "UnLit")
         {
            §,3§.§&[§(§`!?§);
            §,3§.§7!=§("Hiscore_Star_Splash3",§`!?§);
            (§2m§.getItemByName("MovieClip_StarRight") as §&V§).mClip.gotoAndStop("Lit");
            _loc2_ = (§2m§.getItemByName("MovieClip_StarRight") as §&V§).x + (§2m§.getItemByName("Container_LevelEndStripe") as §7^§).x;
            _loc3_ = (§2m§.getItemByName("MovieClip_StarRight") as §&V§).y + (§2m§.getItemByName("Container_LevelEndStripe") as §7^§).y;
            this.§^-§ = new §7!W§(§4+§.§1=§,§4+§.§@!#§,_loc2_,_loc3_,§7!W§.§3m§);
            §2m§.addChild(this.§^-§);
            this.§&!V§.push(this.§^-§);
         }
         else if(!this.§#2§)
         {
            this.§#2§ = true;
         }
         else
         {
            this.§ !4§.stop();
            if(this.§`!2§)
            {
               (§2m§.getItemByName("MovieClip_NewHighScoreBadge") as §&V§).setVisibility(true);
            }
            else
            {
               (§2m§.getItemByName("MovieClip_NewHighScoreBadge") as §&V§).setVisibility(false);
            }
            this.§-O§ = §^!>§.§[P§.§@m§((§2m§.getItemByName("MovieClip_NewHighScoreBadge") as §&V§).mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":7,
               "scaleY":7
            },0.1);
            this.§-O§.onComplete = this.§9!K§;
            this.§-O§.play();
         }
         ++this.§=e§;
      }
      
      private function §0!!§() : void
      {
         §,3§.§&[§(§6!V§);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:§7!W§ = null;
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §0!Y§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§=!X§();
         §2m§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScore");
         §2m§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScoreEffects");
         for each(_loc3_ in this.§&!V§)
         {
            _loc3_.update(param1);
         }
         if(this.§@I§ > 0)
         {
            this.§'D§(param1);
         }
         if(mNextState.length > 0)
         {
            return §0!Y§.STATE_STATUS_COMPLETED;
         }
         return §0!Y§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§@'§.§7&§(0);
         this.§'F§();
         this.§@I§ = 0;
         §,3§.§&[§(§6!V§);
         (§2m§.getItemByName("Button_Menu") as §`!;§).setComponentVisualState(§>a§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§2m§.getItemByName("Button_Replay") as §`!;§).setComponentVisualState(§>a§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§2m§.getItemByName("Button_CutScene") as §`!;§).setVisibility(false);
         §2m§.setText("0","TextField_LevelEndScore");
         §2m§.setText("0","TextField_LevelEndScoreEffects");
         §2m§.getItemByName("MovieClip_Chester_Win1").setVisibility(false);
         §2m§.getItemByName("MovieClip_Chester_Win2").setVisibility(false);
         §2m§.getItemByName("MovieClip_Chester_Win3").setVisibility(false);
      }
      
      private function §'F§() : void
      {
         var _loc1_:§7!W§ = null;
         if(this.§ !4§)
         {
            this.§ !4§.stop();
            this.§ !4§.removeEventListener(TimerEvent.TIMER,this.§8!=§);
         }
         for each(_loc1_ in this.§&!V§)
         {
            if(§2m§.contains(_loc1_))
            {
               §2m§.removeChild(_loc1_);
            }
            _loc1_.clean();
         }
         this.§&!V§ = new Vector.<§7!W§>();
         (§2m§.getItemByName("TextField_BestText") as §&!S§).setVisibility(false);
         (§2m§.getItemByName("TextField_BestScore") as §&!S§).setVisibility(false);
         (§2m§.getItemByName("MovieClip_BestScoreStars") as §&V§).setVisibility(false);
         (§2m§.getItemByName("TextField_NewHighScore") as §&!S§).setVisibility(false);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyUp(param1);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§^P§) : void
      {
         var _loc4_:§>a§ = null;
         switch(param2)
         {
            case "NEXT_LEVEL":
               if((§7`§.§2'§ as §@o§).§ null§() && !§<!,§.§>Z§())
               {
                  if(!§=!R§.sCheetosPopups.showPopup(§`!<§.§6M§))
                  {
                     this.§>!^§();
                  }
               }
               else
               {
                  this.§>!^§();
               }
               break;
            case "REPLAY":
               if((§7`§.§2'§ as §@o§).§ null§())
               {
                  if(!§=!R§.sCheetosPopups.showPopup(§`!<§.RESTART_LEVEL))
                  {
                     this.§+@§();
                  }
               }
               else
               {
                  this.§+@§();
               }
               break;
            case "MENU":
               this.§%!O§();
               break;
            case "BUTTON_NO":
               if(§=!R§.sCheetosPopups.getCurrentPopupName() == §`!<§.RESTART_LEVEL)
               {
                  sCheetosPopups.hidePopup();
               }
               else if(§=!R§.sCheetosPopups.getCurrentPopupName() == §`!<§.§6M§)
               {
                  sCheetosPopups.hidePopup();
               }
               else if(§=!R§.sCheetosPopups.getCurrentPopupName() == §`!<§.§<!P§)
               {
                  sCheetosPopups.hidePopup();
               }
               break;
            case "BUTTON_YES":
               if(§=!R§.sCheetosPopups.getCurrentPopupName() == §`!<§.RESTART_LEVEL)
               {
                  this.§+@§();
                  break;
               }
               if(§=!R§.sCheetosPopups.getCurrentPopupName() == §`!<§.§6M§)
               {
                  this.§>!^§();
                  break;
               }
               if(§=!R§.sCheetosPopups.getCurrentPopupName() == §`!<§.§<!P§)
               {
                  this.§%!O§();
                  break;
               }
               break;
            case "CHECKBOX_CHANGE":
               _loc4_ = param3 as §>a§;
               §4+§.§;U§.§^5§ = !§4+§.§;U§.§^5§;
               if(§4+§.§;U§.§^5§)
               {
                  _loc4_.setComponentState(§>a§.COMPONENT_STATE_ACTIVE_DEFAULT);
                  break;
               }
               _loc4_.setComponentState(§>a§.§%b§);
               break;
         }
      }
      
      private function §=!X§() : void
      {
         var _loc1_:§`!;§ = §2m§.getItemByName("Button_Replay") as §`!;§;
         var _loc2_:MovieClip = _loc1_.mClip.MovieClip_CreditCoin as MovieClip;
         var _loc3_:§`!;§ = §2m§.getItemByName("Button_Next") as §`!;§;
         var _loc4_:MovieClip = _loc3_.mClip.MovieClip_CreditCoin as MovieClip;
         var _loc5_:§`!;§ = §2m§.getItemByName("Button_Menu") as §`!;§;
         if((§7`§.§2'§ as §@o§).§ null§())
         {
            _loc2_.visible = true;
            if(§<!,§.§1D§ == null)
            {
               _loc4_.visible = false;
            }
            else
            {
               _loc4_.visible = !§<!,§.§>Z§();
            }
         }
         else
         {
            _loc2_.visible = false;
            _loc4_.visible = false;
         }
      }
      
      private function §+@§() : void
      {
         §8!E§.§1!5§();
         mNextState = §8!E§.§1o§;
      }
      
      private function §>!^§() : void
      {
         §8!E§.§!!G§();
         mNextState = StateCutSceneDynamic.§1o§;
      }
      
      private function §%!O§() : void
      {
         mNextState = §@Q§.§1o§;
      }
   }
}
