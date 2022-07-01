package §2x§
{
   import § true§.§%!7§;
   import § true§.§1H§;
   import § true§.§8K§;
   import § true§.§<"-§;
   import §&k§.§3l§;
   import §&k§.§;]§;
   import §,!!§.§0"!§;
   import §0!C§.§,!h§;
   import §0!C§.§=!]§;
   import §0s§.§8!z§;
   import §4!j§.§""3§;
   import §4!j§.§0p§;
   import §=!<§.§5!U§;
   import §>!5§.§>!T§;
   import §>Z§.§5;§;
   import §catch§.§"L§;
   import §catch§.§-!m§;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §!0§ extends §>!T§
   {
      
      public static const §>H§:String = "LevelEndStateRio";
      
      public static const §2"$§:Number = 30;
      
      protected static const §^j§:String = "ScoreLoopCountChannel";
      
      protected static const §`!f§:String = "EndScreenEffectChannel";
       
      
      private var §[!G§:§-!m§;
      
      private var §'!&§:Number;
      
      private var §-!j§:Number = 0.0;
      
      private var §'!Y§:Number = 0.0;
      
      private var § G§:Boolean = false;
      
      private var §5c§:Timer;
      
      private var §!<§:§3l§;
      
      protected var §1!!§:Array;
      
      protected var §=!j§:§;]§;
      
      protected var §!""§:Vector.<§;]§>;
      
      public var mNewScoreCounter:int;
      
      private var §!X§:int;
      
      private var §#!D§:Boolean;
      
      protected var §%8§:Boolean;
      
      private var §,B§:§0"!§;
      
      protected var §4#§:Boolean;
      
      private var §<!h§:§-!m§;
      
      protected var §"!4§:Boolean;
      
      protected var §-!;§:int;
      
      public function §!0§(param1:Boolean = false, param2:String = "LevelEndStateRio")
      {
         this.§1!!§ = [];
         this.§,B§ = new §0"!§();
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §3?§ = new §=!]§(this);
         §3?§.init(this.§6!^§());
         this.§[!Z§();
         this.§!""§ = new Vector.<§;]§>();
         §5;§.§9L§(§^j§,1,1);
         §5;§.§9L§(§`!f§,3,1);
      }
      
      protected function §[!Z§() : void
      {
         this.§1!!§.push((§3?§.getItemByName("Button_Menu") as §8K§).x);
         this.§1!!§.push((§3?§.getItemByName("Button_Replay") as §8K§).x);
         this.§1!!§.push((§3?§.getItemByName("Button_NextLevel") as §8K§).x);
         this.§1!!§.push((§3?§.getItemByName("Button_CutScene") as §8K§).x);
      }
      
      protected function §6!^§() : XML
      {
         return §,!h§.§`C§.Views.View_LevelEndRio[0];
      }
      
      protected function §?!f§() : void
      {
         if(!AngryBirdsFP11.§"!c§.§0!#§(§8!z§.§>!&§))
         {
            (§3?§.getItemByName("Button_Menu") as §8K§).setVisibility(false);
            (§3?§.getItemByName("Button_Replay") as §8K§).setVisibility(true);
            (§3?§.getItemByName("Button_NextLevel") as §8K§).setVisibility(false);
            (§3?§.getItemByName("Button_CutScene") as §8K§).setVisibility(true);
            (§3?§.getItemByName("Button_Replay") as §8K§).x = this.§1!!§[0] + Math.abs(this.§1!!§[1] - this.§1!!§[0]) / 2;
            (§3?§.getItemByName("Button_CutScene") as §8K§).x = this.§1!!§[1] + Math.abs(this.§1!!§[2] - this.§1!!§[1]) / 2;
         }
         else
         {
            (§3?§.getItemByName("Button_Menu") as §8K§).setVisibility(true);
            (§3?§.getItemByName("Button_Replay") as §8K§).setVisibility(true);
            (§3?§.getItemByName("Button_NextLevel") as §8K§).setVisibility(false);
            (§3?§.getItemByName("Button_CutScene") as §8K§).setVisibility(true);
            (§3?§.getItemByName("Button_Menu") as §8K§).x = this.§1!!§[0];
            (§3?§.getItemByName("Button_Replay") as §8K§).x = this.§1!!§[1];
            (§3?§.getItemByName("Button_CutScene") as §8K§).x = this.§1!!§[2];
         }
      }
      
      protected function §4!C§() : void
      {
         (§3?§.getItemByName("Button_Menu") as §8K§).setVisibility(true);
         (§3?§.getItemByName("Button_Replay") as §8K§).setVisibility(true);
         (§3?§.getItemByName("Button_CutScene") as §8K§).setVisibility(false);
         if(§8!z§.§6"&§())
         {
            (§3?§.getItemByName("Button_NextLevel") as §8K§).setVisibility(true);
            (§3?§.getItemByName("Button_Menu") as §8K§).x = this.§1!!§[0];
            (§3?§.getItemByName("Button_Replay") as §8K§).x = this.§1!!§[1];
            (§3?§.getItemByName("Button_NextLevel") as §8K§).x = this.§1!!§[2];
         }
         else
         {
            (§3?§.getItemByName("Button_NextLevel") as §8K§).setVisibility(false);
            (§3?§.getItemByName("Button_Menu") as §8K§).x = this.§1!!§[0] + Math.abs(this.§1!!§[1] - this.§1!!§[0]) / 2;
            (§3?§.getItemByName("Button_Replay") as §8K§).x = this.§1!!§[1] + Math.abs(this.§1!!§[2] - this.§1!!§[1]) / 2;
         }
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§"!4§ = false;
         §5!U§.pause();
         this.§!<§ = new §3l§(0,0,0,0);
         §3?§.movieClip.addChildAt(this.§!<§,§3?§.movieClip.numChildren - 1);
         if(§8!z§.§4!3§())
         {
            this.§?!f§();
         }
         else
         {
            this.§4!C§();
         }
         this.mNewScoreCounter = 0;
         this.§#!D§ = false;
         §5;§.playSound("LevelCompletedTheme1");
         this.§!<§.§[5§(0.7);
         this.§-!j§ = 0;
         this.§'!Y§ = 0;
         this.§^E§();
      }
      
      private function §^E§() : void
      {
         this.§%8§ = false;
         this.§##§();
         this.§5c§ = new Timer(500);
         this.§!X§ = 0;
         this.§5c§.addEventListener(TimerEvent.TIMER,this.§8!%§);
         this.§5c§.start();
      }
      
      protected function §-p§() : void
      {
         if(AngryBirdsFP11.§"!c§.§7C§(§8!z§.§>!&§) == 100)
         {
            (§3?§.getItemByName("MovieClip_ResultMEFeather") as §%!7§).mClip.gotoAndStop("On");
         }
         else
         {
            (§3?§.getItemByName("MovieClip_ResultMEFeather") as §%!7§).mClip.gotoAndStop("Off");
         }
      }
      
      protected function §^D§(param1:int, param2:int) : void
      {
         if(this.§4#§)
         {
            param2 = param1;
            AngryBirdsFP11.§"!c§.§1!"§(§8!z§.§>!&§,param2);
            §3?§.setText("New Highscore!","TextField_BestScore");
         }
         else
         {
            §3?§.setText("Best " + param2.toString(),"TextField_BestScore");
            this.§-!;§ = §8!z§.§8&§(§8!z§.§>!&§,param2);
            switch(this.§-!;§)
            {
               case 1:
                  (§3?§.getItemByName("MovieClip_BestScoreStars") as §%!7§).§9!c§("OneStar");
                  break;
               case 2:
                  (§3?§.getItemByName("MovieClip_BestScoreStars") as §%!7§).§9!c§("TwoStar");
                  break;
               case 3:
                  (§3?§.getItemByName("MovieClip_BestScoreStars") as §%!7§).§9!c§("ThreeStar");
            }
         }
      }
      
      protected function §##§() : void
      {
         var _loc1_:int = AngryBirdsFP11.§"!c§.§7!9§(§8!z§.§>!&§);
         var _loc2_:int = §5!U§.§ !t§.getScore();
         this.§4#§ = _loc2_ > _loc1_;
         this.§^D§(_loc2_,_loc1_);
         this.§-p§();
         var _loc3_:int = §5!U§.§ !t§.getEagleScore();
         var _loc4_:int = AngryBirdsFP11.§"!c§.§7C§(§8!z§.§>!&§);
         var _loc5_:*;
         if(_loc5_ = _loc3_ > _loc4_)
         {
            _loc4_ = _loc3_;
            AngryBirdsFP11.§"!c§.§+K§(§8!z§.§>!&§,_loc4_);
         }
         var _loc6_:int = AngryBirdsFP11.§"!c§.§0""§(§8!z§.§>!&§,_loc2_);
         (§3?§.getItemByName("MovieClip_NewHighScoreBadge") as §%!7§).setVisibility(false);
         (§3?§.getItemByName("MovieClip_StarLeft") as §%!7§).mClip.gotoAndStop("UnLit");
         (§3?§.getItemByName("MovieClip_StarCenter") as §%!7§).mClip.gotoAndStop("UnLit");
         (§3?§.getItemByName("MovieClip_StarRight") as §%!7§).mClip.gotoAndStop("UnLit");
      }
      
      protected function §<!Z§() : void
      {
         if(this.§4#§)
         {
            §5;§.playSound("Hiscore_Badge",§`!f§);
            §3?§.setText("New Highscore!","TextField_NewHighScore");
            (§3?§.getItemByName("TextField_NewHighScore") as §<"-§).setVisibility(true);
            (§3?§.getItemByName("MovieClip_BestScoreStars") as §%!7§).setVisibility(false);
            this.§#!E§();
         }
         else
         {
            (§3?§.getItemByName("TextField_BestScore") as §<"-§).setVisibility(true);
            (§3?§.getItemByName("MovieClip_BestScoreStars") as §%!7§).setVisibility(true);
         }
      }
      
      protected function §#!E§() : void
      {
         this.§-!j§ = 0;
         this.§'!Y§ = 0;
         this.§'!&§ = §2"$§;
      }
      
      private function §=!-§(param1:Number) : void
      {
         (§3?§.getItemByName("Container_LevelEndStripe") as §1H§).x = (§3?§.getItemByName("Container_LevelEndStripe") as §1H§).x - this.§-!j§;
         (§3?§.getItemByName("Container_LevelEndStripe") as §1H§).y = (§3?§.getItemByName("Container_LevelEndStripe") as §1H§).y - this.§'!Y§;
         if(this.§'!&§ > 0)
         {
            this.§-!j§ = (Math.random() - 0.5) * (this.§'!&§ / §2"$§) * 20;
            this.§'!Y§ = (Math.random() - 0.5) * (this.§'!&§ / §2"$§) * 20;
            (§3?§.getItemByName("Container_LevelEndStripe") as §1H§).x = (§3?§.getItemByName("Container_LevelEndStripe") as §1H§).x + this.§-!j§;
            (§3?§.getItemByName("Container_LevelEndStripe") as §1H§).y = (§3?§.getItemByName("Container_LevelEndStripe") as §1H§).y + this.§'!Y§;
         }
         else
         {
            this.§'!&§ = -1;
            this.§'e§();
            this.§-!j§ = 0;
            this.§'!Y§ = 0;
         }
         this.§'!&§ -= param1 / 10;
      }
      
      protected function §'e§() : void
      {
      }
      
      private function §8!%§(param1:TimerEvent) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc4_:Number = §8!z§.§5!L§(§8!z§.§>!&§).mScoreGold;
         var _loc5_:Number = §8!z§.§5!L§(§8!z§.§>!&§).mScoreSilver;
         if((§3?§.getItemByName("MovieClip_StarLeft") as §%!7§).mClip.currentLabel == "UnLit")
         {
            §5;§.playSound("Hiscore_Count",§^j§,100);
            §5;§.playSound("Hiscore_Star_Splash1",§`!f§);
            this.§5c§.delay = 1000;
            this.§,B§.§`S§(§5!U§.§ !t§.getScore());
            _loc6_ = this.§,B§.getValue() / _loc4_ * 2;
            if(_loc4_ <= 0)
            {
               _loc6_ = 1;
            }
            this.§<!h§ = §"L§.§7!?§.§4!P§(this,{"mNewScoreCounter":this.§,B§.getValue()},{"mNewScoreCounter":0},_loc6_);
            this.§<!h§.onComplete = this.§2,§;
            this.§<!h§.play();
            (§3?§.getItemByName("MovieClip_StarLeft") as §%!7§).mClip.gotoAndStop("Lit");
            _loc2_ = (§3?§.getItemByName("MovieClip_StarLeft") as §%!7§).x + (§3?§.getItemByName("Container_LevelEndStripe") as §1H§).x;
            _loc3_ = (§3?§.getItemByName("MovieClip_StarLeft") as §%!7§).y + (§3?§.getItemByName("Container_LevelEndStripe") as §1H§).y;
            this.§=!j§ = new §;]§(AngryBirdsFP11.§`!4§,AngryBirdsFP11.§!,§,_loc2_,_loc3_,§;]§.§6!#§);
            §3?§.addChild(this.§=!j§);
            this.§!""§.push(this.§=!j§);
         }
         else if(this.§,B§.getValue() >= _loc5_ && (§3?§.getItemByName("MovieClip_StarCenter") as §%!7§).mClip.currentLabel == "UnLit")
         {
            §5;§.playSound("Hiscore_Star_Splash2",§`!f§);
            (§3?§.getItemByName("MovieClip_StarCenter") as §%!7§).mClip.gotoAndStop("Lit");
            _loc2_ = (§3?§.getItemByName("MovieClip_StarCenter") as §%!7§).x + (§3?§.getItemByName("Container_LevelEndStripe") as §1H§).x;
            _loc3_ = (§3?§.getItemByName("MovieClip_StarCenter") as §%!7§).y + (§3?§.getItemByName("Container_LevelEndStripe") as §1H§).y;
            this.§=!j§ = new §;]§(AngryBirdsFP11.§`!4§,AngryBirdsFP11.§!,§,_loc2_,_loc3_,§;]§.§^!v§);
            §3?§.addChild(this.§=!j§);
            this.§!""§.push(this.§=!j§);
         }
         else if(this.§,B§.getValue() >= _loc4_ && (§3?§.getItemByName("MovieClip_StarRight") as §%!7§).mClip.currentLabel == "UnLit")
         {
            this.§"!4§ = true;
            §5;§.playSound("Hiscore_Star_Splash3",§`!f§);
            (§3?§.getItemByName("MovieClip_StarRight") as §%!7§).mClip.gotoAndStop("Lit");
            _loc2_ = (§3?§.getItemByName("MovieClip_StarRight") as §%!7§).x + (§3?§.getItemByName("Container_LevelEndStripe") as §1H§).x;
            _loc3_ = (§3?§.getItemByName("MovieClip_StarRight") as §%!7§).y + (§3?§.getItemByName("Container_LevelEndStripe") as §1H§).y;
            this.§=!j§ = new §;]§(AngryBirdsFP11.§`!4§,AngryBirdsFP11.§!,§,_loc2_,_loc3_,§;]§.§>X§);
            §3?§.addChild(this.§=!j§);
            this.§!""§.push(this.§=!j§);
         }
         else if(!this.§#!D§)
         {
            this.§#!D§ = true;
         }
         else
         {
            this.§5c§.stop();
            if(this.§4#§ && !this.§%8§)
            {
               (§3?§.getItemByName("MovieClip_NewHighScoreBadge") as §%!7§).setVisibility(true);
            }
            else
            {
               (§3?§.getItemByName("MovieClip_NewHighScoreBadge") as §%!7§).setVisibility(false);
            }
            this.§[!G§ = §"L§.§7!?§.§4!P§((§3?§.getItemByName("MovieClip_NewHighScoreBadge") as §%!7§).mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":7,
               "scaleY":7
            },0.1);
            this.§[!G§.onComplete = this.§<!Z§;
            this.§[!G§.play();
         }
         ++this.§!X§;
      }
      
      private function §2,§() : void
      {
         §5;§.§@g§(§^j§);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:§;]§ = null;
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §>!T§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         §3?§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScore");
         §3?§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScoreEffects");
         for each(_loc3_ in this.§!""§)
         {
            _loc3_.update(param1);
         }
         if(this.§'!&§ > -1)
         {
            this.§=!-§(param1);
         }
         if(mNextState.length > 0)
         {
            §5!U§.§,!E§.clearLevel();
            return §>!T§.STATE_STATUS_COMPLETED;
         }
         return §>!T§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§4!-§();
         this.§'!&§ = 0;
         this.mNewScoreCounter = 0;
         if(this.§<!h§)
         {
            this.§<!h§.stop();
            this.§<!h§ = null;
         }
         if(this.§[!G§)
         {
            this.§[!G§.stop();
            this.§[!G§ = null;
         }
         §5;§.§@g§(§^j§);
         this.§^!b§(§""3§.COMPONENT_STATE_ACTIVE_DEFAULT);
         §3?§.setText("0","TextField_LevelEndScore");
         §3?§.setText("0","TextField_LevelEndScoreEffects");
         if(this.§!<§)
         {
            if(§3?§.movieClip.contains(this.§!<§))
            {
               §3?§.movieClip.removeChild(this.§!<§);
            }
            this.§!<§.clean();
            this.§!<§ = null;
         }
      }
      
      protected function §^!b§(param1:String) : void
      {
         (§3?§.getItemByName("Button_Menu") as §8K§).setComponentVisualState(param1);
         (§3?§.getItemByName("Button_Replay") as §8K§).setComponentVisualState(param1);
         (§3?§.getItemByName("Button_NextLevel") as §8K§).setComponentVisualState(param1);
         (§3?§.getItemByName("Button_CutScene") as §8K§).setComponentVisualState(param1);
      }
      
      private function §4!-§() : void
      {
         var splash:§;]§ = null;
         if(this.§5c§)
         {
            this.§5c§.stop();
            try
            {
               this.§5c§.removeEventListener(TimerEvent.TIMER,this.§8!%§);
            }
            catch(e:Error)
            {
            }
         }
         for each(splash in this.§!""§)
         {
            if(§3?§.contains(splash))
            {
               §3?§.removeChild(splash);
            }
            splash.clean();
         }
         this.§!""§ = new Vector.<§;]§>();
         this.§!E§();
      }
      
      protected function §!E§() : void
      {
         (§3?§.getItemByName("TextField_BestScore") as §<"-§).setVisibility(false);
         (§3?§.getItemByName("MovieClip_BestScoreStars") as §%!7§).setVisibility(false);
         (§3?§.getItemByName("TextField_NewHighScore") as §<"-§).setVisibility(false);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      protected function §!!M§() : void
      {
         §8D§.§@P§();
         mNextState = this.§]"§();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§0p§) : void
      {
         var _loc4_:String = null;
         switch(param2)
         {
            case "NEXT_LEVEL":
               this.§!!M§();
               break;
            case "REPLAY":
               §8D§.§+!u§();
               mNextState = this.§+v§();
               break;
            case "WATCH_REPLAY":
               §8D§.§+!u§();
               mNextState = this.§+v§();
               if(_loc4_ = §5!U§.§,!E§.§7!y§())
               {
                  §5!U§.§,!E§.§2!9§(_loc4_);
               }
               break;
            case "MENU":
               §5;§.§8X§();
               mNextState = this.§<""§();
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§2p§.§`W§();
         }
      }
      
      protected function §+v§() : String
      {
         return §8D§.§>H§;
      }
      
      protected function §]"§() : String
      {
         return StateCutScene.§>H§;
      }
      
      public function §<""§() : String
      {
         return §8";§.§>H§;
      }
   }
}
