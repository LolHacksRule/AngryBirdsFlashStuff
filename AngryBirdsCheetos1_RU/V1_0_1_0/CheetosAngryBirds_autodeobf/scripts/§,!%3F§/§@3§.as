package §,!?§
{
   import §"!S§.§"_§;
   import §"4§.§<h§;
   import §-!O§.§7'§;
   import §-D§.§]!<§;
   import §1E§.§2^§;
   import §3X§.§#!B§;
   import §4x§.§"!X§;
   import §4x§.§?R§;
   import §9!Z§.§<!W§;
   import §;!<§.§6C§;
   import §>8§.§?2§;
   import §]!&§.§"!1§;
   import §]!&§.§#?§;
   import §]!&§.§0!Q§;
   import §]!&§.§]!K§;
   import §]!5§.§-!3§;
   import §]!5§.§=j§;
   import §]!Y§.§4]§;
   import §]!Y§.§5W§;
   import §`!@§.§^v§;
   import §`!A§.§0!8§;
   import §`!A§.§`!B§;
   import flash.display.MovieClip;
   import flash.events.KeyboardEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §@3§ extends §-! §
   {
      
      public static const §@B§:String = "LevelEndState3";
      
      public static const §3s§:Number = 30;
      
      private static const §@!P§:String = "ScoreLoopCountChannel";
      
      private static const §>!I§:String = "EndScreenEffectChannel";
       
      
      private var §-!^§:§?R§;
      
      private var §[!4§:Number;
      
      private var §`j§:Number;
      
      private var §78§:Number;
      
      private var §;!^§:Boolean = false;
      
      private var §1!,§:Timer;
      
      private var §>`§:§0!8§;
      
      private var §,#§:§`!B§;
      
      private var §,,§:Vector.<§`!B§>;
      
      public var mNewScoreCounter:int;
      
      private var §7]§:int;
      
      private var §5V§:Boolean;
      
      private var §<!B§:§^v§;
      
      private var §2!0§:Boolean;
      
      private var §true§:§?R§;
      
      public function §@3§(param1:Boolean = false, param2:String = "LevelEndState3")
      {
         this.§<!B§ = new §^v§();
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §??§ = new §5W§(this);
         §??§.init(§4]§.§['§.Views.View_LevelEndRio[0]);
         var _loc1_:§"!1§ = §??§.getItemByName("TextField_LevelCompleted") as §"!1§;
         _loc1_.setText(§6C§.getText("Text_Level_Completed"));
         this.§>`§ = new §0!8§(0,0,0,0);
         §??§.movieClip.addChildAt(this.§>`§,§??§.movieClip.numChildren - 1);
         this.§,,§ = new Vector.<§`!B§>();
         §2^§.§5!Q§(§@!P§,1,1);
         §2^§.§5!Q§(§>!I§,16,1);
      }
      
      override public function activate() : void
      {
         super.activate();
         if(§<h§.§%!]§)
         {
            §<h§.§%!]§.start();
         }
         this.mNewScoreCounter = 0;
         this.§5V§ = false;
         §2^§.§ !C§("LevelCompletedTheme1");
         this.§>`§.§?§(0.7);
         this.§,F§();
         if(§?2§.§=$§ == "1-4" || §?2§.§=$§ == "1-5" || §?2§.§=$§ == "1-6" || §?2§.§=$§ == "1-7" || §?2§.§=$§ == "1-8")
         {
            (§??§.getItemByName("Button_CutScene") as §#?§).setVisibility(true);
         }
         if(§?2§.§=$§ == "1-3" || §?2§.§=$§ == "1-8")
         {
            (§??§.getItemByName("Button_Next") as §#?§).setVisibility(false);
         }
         else
         {
            (§??§.getItemByName("Button_Next") as §#?§).setVisibility(true);
         }
         var _loc2_:String = "MovieClip_Chester_Win" + int(Math.random() * 3 + 1);
         §??§.getItemByName(_loc2_).setVisibility(true);
      }
      
      private function §,F§() : void
      {
         this.§^!'§();
         this.§1!,§ = new Timer(100);
         this.§7]§ = 0;
         this.§1!,§.addEventListener(TimerEvent.TIMER,this.§+o§);
         this.§1!,§.start();
      }
      
      private function §^!'§() : void
      {
         var _loc3_:int = 0;
         var _loc1_:Number = §2!-§.§5R§.§!h§(§?2§.§=$§);
         var _loc2_:Number = (§"_§.§,z§ as §]!<§).getScore();
         this.§2!0§ = _loc2_ > _loc1_;
         if(this.§2!0§)
         {
            _loc1_ = _loc2_;
            §2!-§.§5R§.§1V§(§?2§.§=$§,_loc1_);
            §??§.setText(§6C§.getText("Text_New_Highscore"),"TextField_BestScore");
         }
         else
         {
            §??§.setText(§6C§.getText("Text_Best"),"TextField_BestText");
            §??§.setText(_loc1_.toString(),"TextField_BestScore");
            _loc3_ = §?2§.§#!E§(§?2§.§=$§,_loc1_);
            switch(_loc3_)
            {
               case 1:
                  (§??§.getItemByName("MovieClip_BestScoreStars") as §0!Q§).§`Q§("OneStar");
                  break;
               case 2:
                  (§??§.getItemByName("MovieClip_BestScoreStars") as §0!Q§).§`Q§("TwoStar");
                  break;
               case 3:
                  (§??§.getItemByName("MovieClip_BestScoreStars") as §0!Q§).§`Q§("ThreeStar");
            }
         }
         (§??§.getItemByName("MovieClip_NewHighScoreBadge") as §0!Q§).setVisibility(false);
         (§??§.getItemByName("MovieClip_StarLeft") as §0!Q§).mClip.gotoAndStop("UnLit");
         (§??§.getItemByName("MovieClip_StarCenter") as §0!Q§).mClip.gotoAndStop("UnLit");
         (§??§.getItemByName("MovieClip_StarRight") as §0!Q§).mClip.gotoAndStop("UnLit");
      }
      
      private function § s§() : void
      {
         if(this.§2!0§)
         {
            §2^§.§<!^§(§>!I§);
            §2^§.§ !C§("Hiscore_Badge",§>!I§);
            §??§.setText(§6C§.getText("Text_New_Highscore"),"TextField_NewHighScore");
            (§??§.getItemByName("TextField_NewHighScore") as §"!1§).setVisibility(true);
            (§??§.getItemByName("MovieClip_BestScoreStars") as §0!Q§).setVisibility(false);
            this.§2q§();
         }
         else
         {
            (§??§.getItemByName("TextField_BestText") as §"!1§).setVisibility(true);
            (§??§.getItemByName("TextField_BestScore") as §"!1§).setVisibility(true);
            (§??§.getItemByName("MovieClip_BestScoreStars") as §0!Q§).setVisibility(true);
         }
      }
      
      private function §2q§() : void
      {
         this.§`j§ = (§??§.getItemByName("Container_LevelEndStripe") as §]!K§).x;
         this.§78§ = (§??§.getItemByName("Container_LevelEndStripe") as §]!K§).y;
         this.§[!4§ = §3s§;
      }
      
      private function §+m§(param1:Number) : void
      {
         if(this.§[!4§ <= 0)
         {
            (§??§.getItemByName("Container_LevelEndStripe") as §]!K§).x = this.§`j§;
            (§??§.getItemByName("Container_LevelEndStripe") as §]!K§).y = this.§78§;
         }
         else
         {
            (§??§.getItemByName("Container_LevelEndStripe") as §]!K§).x = this.§`j§ + Math.random() * (this.§[!4§ / §3s§) * 20;
            (§??§.getItemByName("Container_LevelEndStripe") as §]!K§).y = this.§78§ + Math.random() * (this.§[!4§ / §3s§) * 20;
         }
         this.§[!4§ -= param1 / 10;
      }
      
      private function §+o§(param1:TimerEvent) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc4_:Number = §?2§.getLevelForId(§?2§.§=$§).§'!@§;
         var _loc5_:Number = §?2§.getLevelForId(§?2§.§=$§).§"]§;
         if((§??§.getItemByName("MovieClip_StarLeft") as §0!Q§).mClip.currentLabel == "UnLit")
         {
            §2^§.§ !C§("Hiscore_Count",§@!P§,100);
            §2^§.§<!^§(§>!I§);
            §2^§.§ !C§("Hiscore_Star_Splash1",§>!I§);
            this.§1!,§.delay = 1000;
            this.§<!B§.§26§(§"_§.§,z§.getScore());
            _loc6_ = this.§<!B§.getValue() / _loc4_ * 2;
            this.§true§ = §"!X§.§0E§.§5`§(this,{"mNewScoreCounter":this.§<!B§.getValue()},{"mNewScoreCounter":0},_loc6_);
            this.§true§.onComplete = this.§8M§;
            this.§true§.play();
            (§??§.getItemByName("MovieClip_StarLeft") as §0!Q§).mClip.gotoAndStop("Lit");
            _loc2_ = (§??§.getItemByName("MovieClip_StarLeft") as §0!Q§).x + (§??§.getItemByName("Container_LevelEndStripe") as §]!K§).x;
            _loc3_ = (§??§.getItemByName("MovieClip_StarLeft") as §0!Q§).y + (§??§.getItemByName("Container_LevelEndStripe") as §]!K§).y;
            this.§,#§ = new §`!B§(§2!-§.§]!`§,§2!-§.§-$§,_loc2_,_loc3_,§`!B§.§]!#§);
            §??§.addChild(this.§,#§);
            this.§,,§.push(this.§,#§);
         }
         else if(this.§<!B§.getValue() >= _loc5_ && (§??§.getItemByName("MovieClip_StarCenter") as §0!Q§).mClip.currentLabel == "UnLit")
         {
            §2^§.§<!^§(§>!I§);
            §2^§.§ !C§("Hiscore_Star_Splash2",§>!I§);
            (§??§.getItemByName("MovieClip_StarCenter") as §0!Q§).mClip.gotoAndStop("Lit");
            _loc2_ = (§??§.getItemByName("MovieClip_StarCenter") as §0!Q§).x + (§??§.getItemByName("Container_LevelEndStripe") as §]!K§).x;
            _loc3_ = (§??§.getItemByName("MovieClip_StarCenter") as §0!Q§).y + (§??§.getItemByName("Container_LevelEndStripe") as §]!K§).y;
            this.§,#§ = new §`!B§(§2!-§.§]!`§,§2!-§.§-$§,_loc2_,_loc3_,§`!B§.§[!R§);
            §??§.addChild(this.§,#§);
            this.§,,§.push(this.§,#§);
         }
         else if(this.§<!B§.getValue() >= _loc4_ && (§??§.getItemByName("MovieClip_StarRight") as §0!Q§).mClip.currentLabel == "UnLit")
         {
            §2^§.§<!^§(§>!I§);
            §2^§.§ !C§("Hiscore_Star_Splash3",§>!I§);
            (§??§.getItemByName("MovieClip_StarRight") as §0!Q§).mClip.gotoAndStop("Lit");
            _loc2_ = (§??§.getItemByName("MovieClip_StarRight") as §0!Q§).x + (§??§.getItemByName("Container_LevelEndStripe") as §]!K§).x;
            _loc3_ = (§??§.getItemByName("MovieClip_StarRight") as §0!Q§).y + (§??§.getItemByName("Container_LevelEndStripe") as §]!K§).y;
            this.§,#§ = new §`!B§(§2!-§.§]!`§,§2!-§.§-$§,_loc2_,_loc3_,§`!B§.§='§);
            §??§.addChild(this.§,#§);
            this.§,,§.push(this.§,#§);
         }
         else if(!this.§5V§)
         {
            this.§5V§ = true;
         }
         else
         {
            this.§1!,§.stop();
            if(this.§2!0§)
            {
               (§??§.getItemByName("MovieClip_NewHighScoreBadge") as §0!Q§).setVisibility(true);
            }
            else
            {
               (§??§.getItemByName("MovieClip_NewHighScoreBadge") as §0!Q§).setVisibility(false);
            }
            this.§-!^§ = §"!X§.§0E§.§5`§((§??§.getItemByName("MovieClip_NewHighScoreBadge") as §0!Q§).mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":7,
               "scaleY":7
            },0.1);
            this.§-!^§.onComplete = this.§ s§;
            this.§-!^§.play();
         }
         ++this.§7]§;
      }
      
      private function §8M§() : void
      {
         §2^§.§<!^§(§@!P§);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:§`!B§ = null;
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §7'§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         this.§!!Z§();
         §??§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScore");
         §??§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScoreEffects");
         for each(_loc3_ in this.§,,§)
         {
            _loc3_.update(param1);
         }
         if(this.§[!4§ > 0)
         {
            this.§+m§(param1);
         }
         if(mNextState.length > 0)
         {
            return §7'§.STATE_STATUS_COMPLETED;
         }
         return §7'§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§>`§.§8H§(0);
         this.§9=§();
         this.§[!4§ = 0;
         §2^§.§<!^§(§@!P§);
         (§??§.getItemByName("Button_Menu") as §#?§).setComponentVisualState(§=j§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§??§.getItemByName("Button_Replay") as §#?§).setComponentVisualState(§=j§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§??§.getItemByName("Button_CutScene") as §#?§).setVisibility(false);
         §??§.setText("0","TextField_LevelEndScore");
         §??§.setText("0","TextField_LevelEndScoreEffects");
         §??§.getItemByName("MovieClip_Chester_Win1").setVisibility(false);
         §??§.getItemByName("MovieClip_Chester_Win2").setVisibility(false);
         §??§.getItemByName("MovieClip_Chester_Win3").setVisibility(false);
      }
      
      private function §9=§() : void
      {
         var _loc1_:§`!B§ = null;
         if(this.§1!,§)
         {
            this.§1!,§.stop();
            this.§1!,§.removeEventListener(TimerEvent.TIMER,this.§+o§);
         }
         for each(_loc1_ in this.§,,§)
         {
            if(§??§.contains(_loc1_))
            {
               §??§.removeChild(_loc1_);
            }
            _loc1_.clean();
         }
         this.§,,§ = new Vector.<§`!B§>();
         (§??§.getItemByName("TextField_BestText") as §"!1§).setVisibility(false);
         (§??§.getItemByName("TextField_BestScore") as §"!1§).setVisibility(false);
         (§??§.getItemByName("MovieClip_BestScoreStars") as §0!Q§).setVisibility(false);
         (§??§.getItemByName("TextField_NewHighScore") as §"!1§).setVisibility(false);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyUp(param1);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§-!3§) : void
      {
         var _loc4_:§=j§ = null;
         switch(param2)
         {
            case "NEXT_LEVEL":
               this.§>!+§();
               break;
            case "REPLAY":
               if((§"_§.§+!^§ as §#!B§).§=!N§())
               {
                  if(!§-! §.sCheetosPopups.showPopup(§<!W§.RESTART_LEVEL))
                  {
                     this.§3!X§();
                  }
               }
               else
               {
                  this.§3!X§();
               }
               break;
            case "MENU":
               this.§%r§();
               break;
            case "BUTTON_NO":
               if(§-! §.sCheetosPopups.getCurrentPopupName() == §<!W§.RESTART_LEVEL)
               {
                  sCheetosPopups.hidePopup();
               }
               else if(§-! §.sCheetosPopups.getCurrentPopupName() == §<!W§.§'!T§)
               {
                  sCheetosPopups.hidePopup();
               }
               else if(§-! §.sCheetosPopups.getCurrentPopupName() == §<!W§.§'9§)
               {
                  sCheetosPopups.hidePopup();
               }
               break;
            case "BUTTON_YES":
               if(§-! §.sCheetosPopups.getCurrentPopupName() == §<!W§.RESTART_LEVEL)
               {
                  this.§3!X§();
                  break;
               }
               if(§-! §.sCheetosPopups.getCurrentPopupName() == §<!W§.§'!T§)
               {
                  this.§>!+§();
                  break;
               }
               if(§-! §.sCheetosPopups.getCurrentPopupName() == §<!W§.§'9§)
               {
                  this.§%r§();
                  break;
               }
               break;
            case "CHECKBOX_CHANGE":
               _loc4_ = param3 as §=j§;
               §2!-§.§"7§.§^I§ = !§2!-§.§"7§.§^I§;
               if(§2!-§.§"7§.§^I§)
               {
                  _loc4_.setComponentState(§=j§.COMPONENT_STATE_ACTIVE_DEFAULT);
                  break;
               }
               _loc4_.setComponentState(§=j§.§@!9§);
               break;
         }
      }
      
      private function §!!Z§() : void
      {
         var _loc1_:§#?§ = §??§.getItemByName("Button_Replay") as §#?§;
         var _loc2_:MovieClip = _loc1_.mClip.MovieClip_CreditCoin as MovieClip;
         var _loc3_:§#?§ = §??§.getItemByName("Button_Next") as §#?§;
         var _loc4_:MovieClip = _loc3_.mClip.MovieClip_CreditCoin as MovieClip;
         var _loc5_:§#?§ = §??§.getItemByName("Button_Menu") as §#?§;
         if((§"_§.§+!^§ as §#!B§).§=!N§())
         {
            _loc2_.visible = true;
            if(§?2§.§=$§ == null)
            {
               _loc4_.visible = false;
            }
            else
            {
               _loc4_.visible = !§?2§.§<!I§();
            }
         }
         else
         {
            _loc2_.visible = false;
            _loc4_.visible = false;
         }
      }
      
      private function §3!X§() : void
      {
         §0T§.§6k§();
         mNextState = §0T§.§@B§;
      }
      
      private function §>!+§() : void
      {
         §0T§.§]g§();
         mNextState = StateCutSceneDynamic.§@B§;
      }
      
      private function §%r§() : void
      {
         mNextState = §&c§.§@B§;
      }
   }
}
