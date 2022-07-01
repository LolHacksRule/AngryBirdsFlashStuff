package §0![§
{
   import §"v§.§3!w§;
   import §%c§.§=!X§;
   import §&"'§.§3^§;
   import §&"'§.§7!E§;
   import §'!A§.§-!S§;
   import §'!A§.§9!!§;
   import §'@§.§^J§;
   import §'p§.§%+§;
   import §'p§.§="#§;
   import §'p§.§`!<§;
   import §'p§.§`!T§;
   import §-!n§.§5!U§;
   import §1"2§.§'s§;
   import §1"2§.§`7§;
   import §5"-§.§5y§;
   import §[!w§.§4!i§;
   import §[!w§.§@!I§;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §`t§ extends §5y§
   {
      
      public static const §'=§:String = "LevelEndStateRio";
      
      public static const §^B§:Number = 30;
      
      protected static const §2!_§:String = "ScoreLoopCountChannel";
      
      protected static const §^!4§:String = "EndScreenEffectChannel";
       
      
      private var §?""§:§3^§;
      
      private var §7!-§:Number;
      
      private var §[H§:Number = 0.0;
      
      private var §-q§:Number = 0.0;
      
      private var §=l§:Boolean = false;
      
      private var §^K§:Timer;
      
      private var §?!+§:§4!i§;
      
      protected var §+!q§:Array;
      
      protected var §7d§:§@!I§;
      
      protected var § !Q§:Vector.<§@!I§>;
      
      public var mNewScoreCounter:int;
      
      private var §@!6§:int;
      
      private var §!!S§:Boolean;
      
      protected var §4@§:Boolean;
      
      private var §3!z§:§^J§;
      
      protected var §-!a§:Boolean;
      
      private var §^!9§:§3^§;
      
      protected var §%"&§:Boolean;
      
      protected var §=!1§:int;
      
      public function §`t§(param1:Boolean = false, param2:String = "LevelEndStateRio")
      {
         this.§+!q§ = [];
         this.§3!z§ = new §^J§();
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §?E§ = new §'s§(this);
         §?E§.init(this.§+C§());
         this.§=!0§();
         this.§ !Q§ = new Vector.<§@!I§>();
         §5!U§.§2R§(§2!_§,1,1);
         §5!U§.§2R§(§^!4§,3,1);
      }
      
      protected function §=!0§() : void
      {
         this.§+!q§.push((§?E§.getItemByName("Button_Menu") as §="#§).x);
         this.§+!q§.push((§?E§.getItemByName("Button_Replay") as §="#§).x);
         this.§+!q§.push((§?E§.getItemByName("Button_NextLevel") as §="#§).x);
         this.§+!q§.push((§?E§.getItemByName("Button_CutScene") as §="#§).x);
      }
      
      protected function §+C§() : XML
      {
         return §`7§.§>"?§.Views.View_LevelEndRio[0];
      }
      
      protected function §@!q§() : void
      {
         if(!AngryBirdsFP11.§>" §.§6&§(§3!w§.§%n§))
         {
            (§?E§.getItemByName("Button_Menu") as §="#§).setVisibility(false);
            (§?E§.getItemByName("Button_Replay") as §="#§).setVisibility(true);
            (§?E§.getItemByName("Button_NextLevel") as §="#§).setVisibility(false);
            (§?E§.getItemByName("Button_CutScene") as §="#§).setVisibility(true);
            (§?E§.getItemByName("Button_Replay") as §="#§).x = this.§+!q§[0] + Math.abs(this.§+!q§[1] - this.§+!q§[0]) / 2;
            (§?E§.getItemByName("Button_CutScene") as §="#§).x = this.§+!q§[1] + Math.abs(this.§+!q§[2] - this.§+!q§[1]) / 2;
         }
         else
         {
            (§?E§.getItemByName("Button_Menu") as §="#§).setVisibility(true);
            (§?E§.getItemByName("Button_Replay") as §="#§).setVisibility(true);
            (§?E§.getItemByName("Button_NextLevel") as §="#§).setVisibility(false);
            (§?E§.getItemByName("Button_CutScene") as §="#§).setVisibility(true);
            (§?E§.getItemByName("Button_Menu") as §="#§).x = this.§+!q§[0];
            (§?E§.getItemByName("Button_Replay") as §="#§).x = this.§+!q§[1];
            (§?E§.getItemByName("Button_CutScene") as §="#§).x = this.§+!q§[2];
         }
      }
      
      protected function §;! §() : void
      {
         (§?E§.getItemByName("Button_Menu") as §="#§).setVisibility(true);
         (§?E§.getItemByName("Button_Replay") as §="#§).setVisibility(true);
         (§?E§.getItemByName("Button_CutScene") as §="#§).setVisibility(false);
         if(§3!w§.§;d§())
         {
            (§?E§.getItemByName("Button_NextLevel") as §="#§).setVisibility(true);
            (§?E§.getItemByName("Button_Menu") as §="#§).x = this.§+!q§[0];
            (§?E§.getItemByName("Button_Replay") as §="#§).x = this.§+!q§[1];
            (§?E§.getItemByName("Button_NextLevel") as §="#§).x = this.§+!q§[2];
         }
         else
         {
            (§?E§.getItemByName("Button_NextLevel") as §="#§).setVisibility(false);
            (§?E§.getItemByName("Button_Menu") as §="#§).x = this.§+!q§[0] + Math.abs(this.§+!q§[1] - this.§+!q§[0]) / 2;
            (§?E§.getItemByName("Button_Replay") as §="#§).x = this.§+!q§[1] + Math.abs(this.§+!q§[2] - this.§+!q§[1]) / 2;
         }
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§%"&§ = false;
         §=!X§.pause();
         this.§?!+§ = new §4!i§(0,0,0,0);
         §?E§.movieClip.addChildAt(this.§?!+§,§?E§.movieClip.numChildren - 1);
         if(§3!w§.§4k§())
         {
            this.§@!q§();
         }
         else
         {
            this.§;! §();
         }
         this.mNewScoreCounter = 0;
         this.§!!S§ = false;
         §5!U§.playSound("LevelCompletedTheme1");
         this.§?!+§.§>=§(0.7);
         this.§[H§ = 0;
         this.§-q§ = 0;
         this.§!_§();
      }
      
      private function §!_§() : void
      {
         this.§4@§ = false;
         this.§""1§();
         this.§^K§ = new Timer(500);
         this.§@!6§ = 0;
         this.§^K§.addEventListener(TimerEvent.TIMER,this.§`"0§);
         this.§^K§.start();
      }
      
      protected function §?![§() : void
      {
         if(AngryBirdsFP11.§>" §.§2?§(§3!w§.§%n§) == 100)
         {
            (§?E§.getItemByName("MovieClip_ResultMEFeather") as §%+§).mClip.gotoAndStop("On");
         }
         else
         {
            (§?E§.getItemByName("MovieClip_ResultMEFeather") as §%+§).mClip.gotoAndStop("Off");
         }
      }
      
      protected function §0N§(param1:int, param2:int) : void
      {
         if(this.§-!a§)
         {
            param2 = param1;
            AngryBirdsFP11.§>" §.§0!§(§3!w§.§%n§,param2);
            §?E§.setText("New Highscore!","TextField_BestScore");
         }
         else
         {
            §?E§.setText("Best " + param2.toString(),"TextField_BestScore");
            this.§=!1§ = §3!w§.§^"3§(§3!w§.§%n§,param2);
            switch(this.§=!1§)
            {
               case 1:
                  (§?E§.getItemByName("MovieClip_BestScoreStars") as §%+§).§^Q§("OneStar");
                  break;
               case 2:
                  (§?E§.getItemByName("MovieClip_BestScoreStars") as §%+§).§^Q§("TwoStar");
                  break;
               case 3:
                  (§?E§.getItemByName("MovieClip_BestScoreStars") as §%+§).§^Q§("ThreeStar");
            }
         }
      }
      
      protected function §""1§() : void
      {
         var _loc1_:int = AngryBirdsFP11.§>" §.§%"0§(§3!w§.§%n§);
         var _loc2_:int = §=!X§.§#H§.getScore();
         this.§-!a§ = _loc2_ > _loc1_;
         this.§0N§(_loc2_,_loc1_);
         this.§?![§();
         var _loc3_:int = §=!X§.§#H§.getEagleScore();
         var _loc4_:int = AngryBirdsFP11.§>" §.§2?§(§3!w§.§%n§);
         var _loc5_:*;
         if(_loc5_ = _loc3_ > _loc4_)
         {
            _loc4_ = _loc3_;
            AngryBirdsFP11.§>" §.each(§3!w§.§%n§,_loc4_);
         }
         var _loc6_:int = AngryBirdsFP11.§>" §.§&!;§(§3!w§.§%n§,_loc2_);
         (§?E§.getItemByName("MovieClip_NewHighScoreBadge") as §%+§).setVisibility(false);
         (§?E§.getItemByName("MovieClip_StarLeft") as §%+§).mClip.gotoAndStop("UnLit");
         (§?E§.getItemByName("MovieClip_StarCenter") as §%+§).mClip.gotoAndStop("UnLit");
         (§?E§.getItemByName("MovieClip_StarRight") as §%+§).mClip.gotoAndStop("UnLit");
      }
      
      protected function §]K§() : void
      {
         if(this.§-!a§)
         {
            §5!U§.playSound("Hiscore_Badge",§^!4§);
            §?E§.setText("New Highscore!","TextField_NewHighScore");
            (§?E§.getItemByName("TextField_NewHighScore") as §`!<§).setVisibility(true);
            (§?E§.getItemByName("MovieClip_BestScoreStars") as §%+§).setVisibility(false);
            this.§=#§();
         }
         else
         {
            (§?E§.getItemByName("TextField_BestScore") as §`!<§).setVisibility(true);
            (§?E§.getItemByName("MovieClip_BestScoreStars") as §%+§).setVisibility(true);
         }
      }
      
      protected function §=#§() : void
      {
         this.§[H§ = 0;
         this.§-q§ = 0;
         this.§7!-§ = §^B§;
      }
      
      private function §,!g§(param1:Number) : void
      {
         (§?E§.getItemByName("Container_LevelEndStripe") as §`!T§).x = (§?E§.getItemByName("Container_LevelEndStripe") as §`!T§).x - this.§[H§;
         (§?E§.getItemByName("Container_LevelEndStripe") as §`!T§).y = (§?E§.getItemByName("Container_LevelEndStripe") as §`!T§).y - this.§-q§;
         if(this.§7!-§ > 0)
         {
            this.§[H§ = (Math.random() - 0.5) * (this.§7!-§ / §^B§) * 20;
            this.§-q§ = (Math.random() - 0.5) * (this.§7!-§ / §^B§) * 20;
            (§?E§.getItemByName("Container_LevelEndStripe") as §`!T§).x = (§?E§.getItemByName("Container_LevelEndStripe") as §`!T§).x + this.§[H§;
            (§?E§.getItemByName("Container_LevelEndStripe") as §`!T§).y = (§?E§.getItemByName("Container_LevelEndStripe") as §`!T§).y + this.§-q§;
         }
         else
         {
            this.§7!-§ = -1;
            this.§=`§();
            this.§[H§ = 0;
            this.§-q§ = 0;
         }
         this.§7!-§ -= param1 / 10;
      }
      
      protected function §=`§() : void
      {
      }
      
      private function §`"0§(param1:TimerEvent) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc4_:Number = §3!w§.§7%§(§3!w§.§%n§).mScoreGold;
         var _loc5_:Number = §3!w§.§7%§(§3!w§.§%n§).mScoreSilver;
         if((§?E§.getItemByName("MovieClip_StarLeft") as §%+§).mClip.currentLabel == "UnLit")
         {
            §5!U§.playSound("Hiscore_Count",§2!_§,100);
            §5!U§.playSound("Hiscore_Star_Splash1",§^!4§);
            this.§^K§.delay = 1000;
            this.§3!z§.§&!Y§(§=!X§.§#H§.getScore());
            _loc6_ = this.§3!z§.getValue() / _loc4_ * 2;
            if(_loc4_ <= 0)
            {
               _loc6_ = 1;
            }
            this.§^!9§ = §7!E§.§2=§.§<!C§(this,{"mNewScoreCounter":this.§3!z§.getValue()},{"mNewScoreCounter":0},_loc6_);
            this.§^!9§.onComplete = this.§9!y§;
            this.§^!9§.play();
            (§?E§.getItemByName("MovieClip_StarLeft") as §%+§).mClip.gotoAndStop("Lit");
            _loc2_ = (§?E§.getItemByName("MovieClip_StarLeft") as §%+§).x + (§?E§.getItemByName("Container_LevelEndStripe") as §`!T§).x;
            _loc3_ = (§?E§.getItemByName("MovieClip_StarLeft") as §%+§).y + (§?E§.getItemByName("Container_LevelEndStripe") as §`!T§).y;
            this.§7d§ = new §@!I§(AngryBirdsFP11.§>!U§,AngryBirdsFP11.§>Y§,_loc2_,_loc3_,§@!I§.§;0§);
            §?E§.addChild(this.§7d§);
            this.§ !Q§.push(this.§7d§);
         }
         else if(this.§3!z§.getValue() >= _loc5_ && (§?E§.getItemByName("MovieClip_StarCenter") as §%+§).mClip.currentLabel == "UnLit")
         {
            §5!U§.playSound("Hiscore_Star_Splash2",§^!4§);
            (§?E§.getItemByName("MovieClip_StarCenter") as §%+§).mClip.gotoAndStop("Lit");
            _loc2_ = (§?E§.getItemByName("MovieClip_StarCenter") as §%+§).x + (§?E§.getItemByName("Container_LevelEndStripe") as §`!T§).x;
            _loc3_ = (§?E§.getItemByName("MovieClip_StarCenter") as §%+§).y + (§?E§.getItemByName("Container_LevelEndStripe") as §`!T§).y;
            this.§7d§ = new §@!I§(AngryBirdsFP11.§>!U§,AngryBirdsFP11.§>Y§,_loc2_,_loc3_,§@!I§.§<!-§);
            §?E§.addChild(this.§7d§);
            this.§ !Q§.push(this.§7d§);
         }
         else if(this.§3!z§.getValue() >= _loc4_ && (§?E§.getItemByName("MovieClip_StarRight") as §%+§).mClip.currentLabel == "UnLit")
         {
            this.§%"&§ = true;
            §5!U§.playSound("Hiscore_Star_Splash3",§^!4§);
            (§?E§.getItemByName("MovieClip_StarRight") as §%+§).mClip.gotoAndStop("Lit");
            _loc2_ = (§?E§.getItemByName("MovieClip_StarRight") as §%+§).x + (§?E§.getItemByName("Container_LevelEndStripe") as §`!T§).x;
            _loc3_ = (§?E§.getItemByName("MovieClip_StarRight") as §%+§).y + (§?E§.getItemByName("Container_LevelEndStripe") as §`!T§).y;
            this.§7d§ = new §@!I§(AngryBirdsFP11.§>!U§,AngryBirdsFP11.§>Y§,_loc2_,_loc3_,§@!I§.§`N§);
            §?E§.addChild(this.§7d§);
            this.§ !Q§.push(this.§7d§);
         }
         else if(!this.§!!S§)
         {
            this.§!!S§ = true;
         }
         else
         {
            this.§^K§.stop();
            if(this.§-!a§ && !this.§4@§)
            {
               (§?E§.getItemByName("MovieClip_NewHighScoreBadge") as §%+§).setVisibility(true);
            }
            else
            {
               (§?E§.getItemByName("MovieClip_NewHighScoreBadge") as §%+§).setVisibility(false);
            }
            this.§?""§ = §7!E§.§2=§.§<!C§((§?E§.getItemByName("MovieClip_NewHighScoreBadge") as §%+§).mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":7,
               "scaleY":7
            },0.1);
            this.§?""§.onComplete = this.§]K§;
            this.§?""§.play();
         }
         ++this.§@!6§;
      }
      
      private function §9!y§() : void
      {
         §5!U§.§+!7§(§2!_§);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:§@!I§ = null;
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §5y§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         §?E§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScore");
         §?E§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScoreEffects");
         for each(_loc3_ in this.§ !Q§)
         {
            _loc3_.update(param1);
         }
         if(this.§7!-§ > -1)
         {
            this.§,!g§(param1);
         }
         if(mNextState.length > 0)
         {
            §=!X§.§!'§.clearLevel();
            return §5y§.STATE_STATUS_COMPLETED;
         }
         return §5y§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§#!x§();
         this.§7!-§ = 0;
         this.mNewScoreCounter = 0;
         if(this.§^!9§)
         {
            this.§^!9§.stop();
            this.§^!9§ = null;
         }
         if(this.§?""§)
         {
            this.§?""§.stop();
            this.§?""§ = null;
         }
         §5!U§.§+!7§(§2!_§);
         this.§-!+§(§9!!§.COMPONENT_STATE_ACTIVE_DEFAULT);
         §?E§.setText("0","TextField_LevelEndScore");
         §?E§.setText("0","TextField_LevelEndScoreEffects");
         if(this.§?!+§)
         {
            if(§?E§.movieClip.contains(this.§?!+§))
            {
               §?E§.movieClip.removeChild(this.§?!+§);
            }
            this.§?!+§.clean();
            this.§?!+§ = null;
         }
      }
      
      protected function §-!+§(param1:String) : void
      {
         (§?E§.getItemByName("Button_Menu") as §="#§).setComponentVisualState(param1);
         (§?E§.getItemByName("Button_Replay") as §="#§).setComponentVisualState(param1);
         (§?E§.getItemByName("Button_NextLevel") as §="#§).setComponentVisualState(param1);
         (§?E§.getItemByName("Button_CutScene") as §="#§).setComponentVisualState(param1);
      }
      
      private function §#!x§() : void
      {
         var splash:§@!I§ = null;
         if(this.§^K§)
         {
            this.§^K§.stop();
            try
            {
               this.§^K§.removeEventListener(TimerEvent.TIMER,this.§`"0§);
            }
            catch(e:Error)
            {
            }
         }
         for each(splash in this.§ !Q§)
         {
            if(§?E§.contains(splash))
            {
               §?E§.removeChild(splash);
            }
            splash.clean();
         }
         this.§ !Q§ = new Vector.<§@!I§>();
         this.§ "§();
      }
      
      protected function § "§() : void
      {
         (§?E§.getItemByName("TextField_BestScore") as §`!<§).setVisibility(false);
         (§?E§.getItemByName("MovieClip_BestScoreStars") as §%+§).setVisibility(false);
         (§?E§.getItemByName("TextField_NewHighScore") as §`!<§).setVisibility(false);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      protected function §0!8§() : void
      {
         §0!v§.§`" §();
         mNextState = this.§]!I§();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§-!S§) : void
      {
         var _loc4_:String = null;
         switch(param2)
         {
            case "NEXT_LEVEL":
               this.§0!8§();
               break;
            case "REPLAY":
               §0!v§.§4[§();
               mNextState = this.§=T§();
               break;
            case "WATCH_REPLAY":
               §0!v§.§4[§();
               mNextState = this.§=T§();
               if(_loc4_ = §=!X§.§!'§.§-J§())
               {
                  §=!X§.§!'§.§^!K§(_loc4_);
               }
               break;
            case "MENU":
               §5!U§.§9&§();
               mNextState = this.§0!c§();
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§%d§.§9+§();
         }
      }
      
      protected function §=T§() : String
      {
         return §0!v§.§'=§;
      }
      
      protected function §]!I§() : String
      {
         return StateCutScene.§'=§;
      }
      
      public function §0!c§() : String
      {
         return §7B§.§'=§;
      }
   }
}
