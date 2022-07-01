package §,r§
{
   import §%!,§.§,v§;
   import §%B§.§^k§;
   import §-!^§.§<s§;
   import §0E§.§-!F§;
   import §0Z§.§+I§;
   import §0Z§.§-!M§;
   import §2I§.§,"+§;
   import §2I§.§0-§;
   import §5!8§.§+!?§;
   import §5!8§.§6m§;
   import §5!8§.§;!P§;
   import §5!8§.§;!Z§;
   import §7"1§.§%W§;
   import §@">§.§#! §;
   import §@">§.§%!u§;
   import §^x§.§;_§;
   import §^x§.§<!w§;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §]!S§ extends §,v§
   {
      
      public static const §8n§:String = "LevelEndStateRio";
      
      public static const § "=§:Number = 30;
      
      protected static const §@!`§:String = "ScoreLoopCountChannel";
      
      protected static const §+i§:String = "EndScreenEffectChannel";
       
      
      private var §8!9§:§+I§;
      
      private var §8!@§:Number;
      
      private var §!d§:Number = 0.0;
      
      private var § !X§:Number = 0.0;
      
      private var § q§:Boolean = false;
      
      private var §;h§:Timer;
      
      private var §1!<§:§,"+§;
      
      protected var §]!>§:Array;
      
      protected var §&!D§:§0-§;
      
      protected var §'v§:Vector.<§0-§>;
      
      public var mNewScoreCounter:int;
      
      private var §1!#§:int;
      
      private var §`[§:Boolean;
      
      protected var §=!r§:Boolean;
      
      private var §+!Y§:§<s§;
      
      protected var §0Q§:Boolean;
      
      private var §?!M§:§+I§;
      
      protected var §-`§:Boolean;
      
      protected var §8<§:int;
      
      public function §]!S§(param1:Boolean = false, param2:String = "LevelEndStateRio")
      {
         this.§]!>§ = [];
         this.§+!Y§ = new §<s§();
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §?F§ = new §%!u§(this);
         §?F§.init(this.§2t§());
         this.§,"#§();
         this.§'v§ = new Vector.<§0-§>();
         §^k§.§>7§(§@!`§,1,1);
         §^k§.§>7§(§+i§,3,1);
      }
      
      protected function §,"#§() : void
      {
         this.§]!>§.push((§?F§.getItemByName("Button_Menu") as §;!Z§).x);
         this.§]!>§.push((§?F§.getItemByName("Button_Replay") as §;!Z§).x);
         this.§]!>§.push((§?F§.getItemByName("Button_NextLevel") as §;!Z§).x);
         this.§]!>§.push((§?F§.getItemByName("Button_CutScene") as §;!Z§).x);
      }
      
      protected function §2t§() : XML
      {
         return §#! §.§5!;§.Views.View_LevelEndRio[0];
      }
      
      protected function §9!`§() : void
      {
         if(!AngryBirdsFP11.§`!j§.§]"7§(§-!F§.§"!L§))
         {
            (§?F§.getItemByName("Button_Menu") as §;!Z§).setVisibility(false);
            (§?F§.getItemByName("Button_Replay") as §;!Z§).setVisibility(true);
            (§?F§.getItemByName("Button_NextLevel") as §;!Z§).setVisibility(false);
            (§?F§.getItemByName("Button_CutScene") as §;!Z§).setVisibility(true);
            (§?F§.getItemByName("Button_Replay") as §;!Z§).x = this.§]!>§[0] + Math.abs(this.§]!>§[1] - this.§]!>§[0]) / 2;
            (§?F§.getItemByName("Button_CutScene") as §;!Z§).x = this.§]!>§[1] + Math.abs(this.§]!>§[2] - this.§]!>§[1]) / 2;
         }
         else
         {
            (§?F§.getItemByName("Button_Menu") as §;!Z§).setVisibility(true);
            (§?F§.getItemByName("Button_Replay") as §;!Z§).setVisibility(true);
            (§?F§.getItemByName("Button_NextLevel") as §;!Z§).setVisibility(false);
            (§?F§.getItemByName("Button_CutScene") as §;!Z§).setVisibility(true);
            (§?F§.getItemByName("Button_Menu") as §;!Z§).x = this.§]!>§[0];
            (§?F§.getItemByName("Button_Replay") as §;!Z§).x = this.§]!>§[1];
            (§?F§.getItemByName("Button_CutScene") as §;!Z§).x = this.§]!>§[2];
         }
      }
      
      protected function §[!w§() : void
      {
         (§?F§.getItemByName("Button_Menu") as §;!Z§).setVisibility(true);
         (§?F§.getItemByName("Button_Replay") as §;!Z§).setVisibility(true);
         (§?F§.getItemByName("Button_CutScene") as §;!Z§).setVisibility(false);
         if(§-!F§.§?!K§())
         {
            (§?F§.getItemByName("Button_NextLevel") as §;!Z§).setVisibility(true);
            (§?F§.getItemByName("Button_Menu") as §;!Z§).x = this.§]!>§[0];
            (§?F§.getItemByName("Button_Replay") as §;!Z§).x = this.§]!>§[1];
            (§?F§.getItemByName("Button_NextLevel") as §;!Z§).x = this.§]!>§[2];
         }
         else
         {
            (§?F§.getItemByName("Button_NextLevel") as §;!Z§).setVisibility(false);
            (§?F§.getItemByName("Button_Menu") as §;!Z§).x = this.§]!>§[0] + Math.abs(this.§]!>§[1] - this.§]!>§[0]) / 2;
            (§?F§.getItemByName("Button_Replay") as §;!Z§).x = this.§]!>§[1] + Math.abs(this.§]!>§[2] - this.§]!>§[1]) / 2;
         }
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§-`§ = false;
         §%W§.pause();
         this.§1!<§ = new §,"+§(0,0,0,0);
         §?F§.movieClip.addChildAt(this.§1!<§,§?F§.movieClip.numChildren - 1);
         if(§-!F§.§5j§())
         {
            this.§9!`§();
         }
         else
         {
            this.§[!w§();
         }
         this.mNewScoreCounter = 0;
         this.§`[§ = false;
         §^k§.playSound("LevelCompletedTheme1");
         this.§1!<§.§%r§(0.7);
         this.§!d§ = 0;
         this.§ !X§ = 0;
         this.§%!y§();
      }
      
      private function §%!y§() : void
      {
         this.§=!r§ = false;
         this.§-!_§();
         this.§;h§ = new Timer(500);
         this.§1!#§ = 0;
         this.§;h§.addEventListener(TimerEvent.TIMER,this.§`"1§);
         this.§;h§.start();
      }
      
      protected function §'"9§() : void
      {
         if(AngryBirdsFP11.§`!j§.§<!q§(§-!F§.§"!L§) == 100)
         {
            (§?F§.getItemByName("MovieClip_ResultMEFeather") as §;!P§).mClip.gotoAndStop("On");
         }
         else
         {
            (§?F§.getItemByName("MovieClip_ResultMEFeather") as §;!P§).mClip.gotoAndStop("Off");
         }
      }
      
      protected function §5";§(param1:int, param2:int) : void
      {
         if(this.§0Q§)
         {
            param2 = param1;
            AngryBirdsFP11.§`!j§.§`!M§(§-!F§.§"!L§,param2);
            §?F§.setText("New Highscore!","TextField_BestScore");
         }
         else
         {
            §?F§.setText("Best " + param2.toString(),"TextField_BestScore");
            this.§8<§ = §-!F§.§<!t§(§-!F§.§"!L§,param2);
            switch(this.§8<§)
            {
               case 1:
                  (§?F§.getItemByName("MovieClip_BestScoreStars") as §;!P§).§@!"§("OneStar");
                  break;
               case 2:
                  (§?F§.getItemByName("MovieClip_BestScoreStars") as §;!P§).§@!"§("TwoStar");
                  break;
               case 3:
                  (§?F§.getItemByName("MovieClip_BestScoreStars") as §;!P§).§@!"§("ThreeStar");
            }
         }
      }
      
      protected function §-!_§() : void
      {
         var _loc1_:int = AngryBirdsFP11.§`!j§.§import§(§-!F§.§"!L§);
         var _loc2_:int = §%W§.§6h§.getScore();
         this.§0Q§ = _loc2_ > _loc1_;
         this.§5";§(_loc2_,_loc1_);
         this.§'"9§();
         var _loc3_:int = §%W§.§6h§.getEagleScore();
         var _loc4_:int = AngryBirdsFP11.§`!j§.§<!q§(§-!F§.§"!L§);
         var _loc5_:*;
         if(_loc5_ = _loc3_ > _loc4_)
         {
            _loc4_ = _loc3_;
            AngryBirdsFP11.§`!j§.§95§(§-!F§.§"!L§,_loc4_);
         }
         var _loc6_:int = AngryBirdsFP11.§`!j§.§4a§(§-!F§.§"!L§,_loc2_);
         (§?F§.getItemByName("MovieClip_NewHighScoreBadge") as §;!P§).setVisibility(false);
         (§?F§.getItemByName("MovieClip_StarLeft") as §;!P§).mClip.gotoAndStop("UnLit");
         (§?F§.getItemByName("MovieClip_StarCenter") as §;!P§).mClip.gotoAndStop("UnLit");
         (§?F§.getItemByName("MovieClip_StarRight") as §;!P§).mClip.gotoAndStop("UnLit");
      }
      
      protected function §^""§() : void
      {
         if(this.§0Q§)
         {
            §^k§.playSound("Hiscore_Badge",§+i§);
            §?F§.setText("New Highscore!","TextField_NewHighScore");
            (§?F§.getItemByName("TextField_NewHighScore") as §6m§).setVisibility(true);
            (§?F§.getItemByName("MovieClip_BestScoreStars") as §;!P§).setVisibility(false);
            this.§20§();
         }
         else
         {
            (§?F§.getItemByName("TextField_BestScore") as §6m§).setVisibility(true);
            (§?F§.getItemByName("MovieClip_BestScoreStars") as §;!P§).setVisibility(true);
         }
      }
      
      protected function §20§() : void
      {
         this.§!d§ = 0;
         this.§ !X§ = 0;
         this.§8!@§ = § "=§;
      }
      
      private function §9""§(param1:Number) : void
      {
         (§?F§.getItemByName("Container_LevelEndStripe") as §+!?§).x = (§?F§.getItemByName("Container_LevelEndStripe") as §+!?§).x - this.§!d§;
         (§?F§.getItemByName("Container_LevelEndStripe") as §+!?§).y = (§?F§.getItemByName("Container_LevelEndStripe") as §+!?§).y - this.§ !X§;
         if(this.§8!@§ > 0)
         {
            this.§!d§ = (Math.random() - 0.5) * (this.§8!@§ / § "=§) * 20;
            this.§ !X§ = (Math.random() - 0.5) * (this.§8!@§ / § "=§) * 20;
            (§?F§.getItemByName("Container_LevelEndStripe") as §+!?§).x = (§?F§.getItemByName("Container_LevelEndStripe") as §+!?§).x + this.§!d§;
            (§?F§.getItemByName("Container_LevelEndStripe") as §+!?§).y = (§?F§.getItemByName("Container_LevelEndStripe") as §+!?§).y + this.§ !X§;
         }
         else
         {
            this.§8!@§ = -1;
            this.§"b§();
            this.§!d§ = 0;
            this.§ !X§ = 0;
         }
         this.§8!@§ -= param1 / 10;
      }
      
      protected function §"b§() : void
      {
      }
      
      private function §`"1§(param1:TimerEvent) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc4_:Number = §-!F§.§,!_§(§-!F§.§"!L§).mScoreGold;
         var _loc5_:Number = §-!F§.§,!_§(§-!F§.§"!L§).mScoreSilver;
         if((§?F§.getItemByName("MovieClip_StarLeft") as §;!P§).mClip.currentLabel == "UnLit")
         {
            §^k§.playSound("Hiscore_Count",§@!`§,100);
            §^k§.playSound("Hiscore_Star_Splash1",§+i§);
            this.§;h§.delay = 1000;
            this.§+!Y§.§8>§(§%W§.§6h§.getScore());
            _loc6_ = this.§+!Y§.getValue() / _loc4_ * 2;
            if(_loc4_ <= 0)
            {
               _loc6_ = 1;
            }
            this.§?!M§ = §-!M§.§ "!§.§+d§(this,{"mNewScoreCounter":this.§+!Y§.getValue()},{"mNewScoreCounter":0},_loc6_);
            this.§?!M§.onComplete = this.§&F§;
            this.§?!M§.play();
            (§?F§.getItemByName("MovieClip_StarLeft") as §;!P§).mClip.gotoAndStop("Lit");
            _loc2_ = (§?F§.getItemByName("MovieClip_StarLeft") as §;!P§).x + (§?F§.getItemByName("Container_LevelEndStripe") as §+!?§).x;
            _loc3_ = (§?F§.getItemByName("MovieClip_StarLeft") as §;!P§).y + (§?F§.getItemByName("Container_LevelEndStripe") as §+!?§).y;
            this.§&!D§ = new §0-§(AngryBirdsFP11.§<J§,AngryBirdsFP11.§%T§,_loc2_,_loc3_,§0-§.§`!c§);
            §?F§.addChild(this.§&!D§);
            this.§'v§.push(this.§&!D§);
         }
         else if(this.§+!Y§.getValue() >= _loc5_ && (§?F§.getItemByName("MovieClip_StarCenter") as §;!P§).mClip.currentLabel == "UnLit")
         {
            §^k§.playSound("Hiscore_Star_Splash2",§+i§);
            (§?F§.getItemByName("MovieClip_StarCenter") as §;!P§).mClip.gotoAndStop("Lit");
            _loc2_ = (§?F§.getItemByName("MovieClip_StarCenter") as §;!P§).x + (§?F§.getItemByName("Container_LevelEndStripe") as §+!?§).x;
            _loc3_ = (§?F§.getItemByName("MovieClip_StarCenter") as §;!P§).y + (§?F§.getItemByName("Container_LevelEndStripe") as §+!?§).y;
            this.§&!D§ = new §0-§(AngryBirdsFP11.§<J§,AngryBirdsFP11.§%T§,_loc2_,_loc3_,§0-§.§8!Q§);
            §?F§.addChild(this.§&!D§);
            this.§'v§.push(this.§&!D§);
         }
         else if(this.§+!Y§.getValue() >= _loc4_ && (§?F§.getItemByName("MovieClip_StarRight") as §;!P§).mClip.currentLabel == "UnLit")
         {
            this.§-`§ = true;
            §^k§.playSound("Hiscore_Star_Splash3",§+i§);
            (§?F§.getItemByName("MovieClip_StarRight") as §;!P§).mClip.gotoAndStop("Lit");
            _loc2_ = (§?F§.getItemByName("MovieClip_StarRight") as §;!P§).x + (§?F§.getItemByName("Container_LevelEndStripe") as §+!?§).x;
            _loc3_ = (§?F§.getItemByName("MovieClip_StarRight") as §;!P§).y + (§?F§.getItemByName("Container_LevelEndStripe") as §+!?§).y;
            this.§&!D§ = new §0-§(AngryBirdsFP11.§<J§,AngryBirdsFP11.§%T§,_loc2_,_loc3_,§0-§.§0k§);
            §?F§.addChild(this.§&!D§);
            this.§'v§.push(this.§&!D§);
         }
         else if(!this.§`[§)
         {
            this.§`[§ = true;
         }
         else
         {
            this.§;h§.stop();
            if(this.§0Q§ && !this.§=!r§)
            {
               (§?F§.getItemByName("MovieClip_NewHighScoreBadge") as §;!P§).setVisibility(true);
            }
            else
            {
               (§?F§.getItemByName("MovieClip_NewHighScoreBadge") as §;!P§).setVisibility(false);
            }
            this.§8!9§ = §-!M§.§ "!§.§+d§((§?F§.getItemByName("MovieClip_NewHighScoreBadge") as §;!P§).mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":7,
               "scaleY":7
            },0.1);
            this.§8!9§.onComplete = this.§^""§;
            this.§8!9§.play();
         }
         ++this.§1!#§;
      }
      
      private function §&F§() : void
      {
         §^k§.§"E§(§@!`§);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:§0-§ = null;
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §,v§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         §?F§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScore");
         §?F§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScoreEffects");
         for each(_loc3_ in this.§'v§)
         {
            _loc3_.update(param1);
         }
         if(this.§8!@§ > -1)
         {
            this.§9""§(param1);
         }
         if(mNextState.length > 0)
         {
            §%W§.§5"8§.clearLevel();
            return §,v§.STATE_STATUS_COMPLETED;
         }
         return §,v§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§9Q§();
         this.§8!@§ = 0;
         this.mNewScoreCounter = 0;
         if(this.§?!M§)
         {
            this.§?!M§.stop();
            this.§?!M§ = null;
         }
         if(this.§8!9§)
         {
            this.§8!9§.stop();
            this.§8!9§ = null;
         }
         §^k§.§"E§(§@!`§);
         this.§`h§(§;_§.COMPONENT_STATE_ACTIVE_DEFAULT);
         §?F§.setText("0","TextField_LevelEndScore");
         §?F§.setText("0","TextField_LevelEndScoreEffects");
         if(this.§1!<§)
         {
            if(§?F§.movieClip.contains(this.§1!<§))
            {
               §?F§.movieClip.removeChild(this.§1!<§);
            }
            this.§1!<§.clean();
            this.§1!<§ = null;
         }
      }
      
      protected function §`h§(param1:String) : void
      {
         (§?F§.getItemByName("Button_Menu") as §;!Z§).setComponentVisualState(param1);
         (§?F§.getItemByName("Button_Replay") as §;!Z§).setComponentVisualState(param1);
         (§?F§.getItemByName("Button_NextLevel") as §;!Z§).setComponentVisualState(param1);
         (§?F§.getItemByName("Button_CutScene") as §;!Z§).setComponentVisualState(param1);
      }
      
      private function §9Q§() : void
      {
         var splash:§0-§ = null;
         if(this.§;h§)
         {
            this.§;h§.stop();
            try
            {
               this.§;h§.removeEventListener(TimerEvent.TIMER,this.§`"1§);
            }
            catch(e:Error)
            {
            }
         }
         for each(splash in this.§'v§)
         {
            if(§?F§.contains(splash))
            {
               §?F§.removeChild(splash);
            }
            splash.clean();
         }
         this.§'v§ = new Vector.<§0-§>();
         this.§8"6§();
      }
      
      protected function §8"6§() : void
      {
         (§?F§.getItemByName("TextField_BestScore") as §6m§).setVisibility(false);
         (§?F§.getItemByName("MovieClip_BestScoreStars") as §;!P§).setVisibility(false);
         (§?F§.getItemByName("TextField_NewHighScore") as §6m§).setVisibility(false);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      protected function §8!_§() : void
      {
         §'!O§.§7!-§();
         mNextState = this.§'!3§();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§<!w§) : void
      {
         var _loc4_:String = null;
         switch(param2)
         {
            case "NEXT_LEVEL":
               this.§8!_§();
               break;
            case "REPLAY":
               §'!O§.§8U§();
               mNextState = this.§2!=§();
               break;
            case "WATCH_REPLAY":
               §'!O§.§8U§();
               mNextState = this.§2!=§();
               if(_loc4_ = §%W§.§5"8§.§0"?§())
               {
                  §%W§.§5"8§.§["9§(_loc4_);
               }
               break;
            case "MENU":
               §^k§.§3,§();
               mNextState = this.§>b§();
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§"!V§.§=!C§();
         }
      }
      
      protected function §2!=§() : String
      {
         return §'!O§.§8n§;
      }
      
      protected function §'!3§() : String
      {
         return StateCutScene.§8n§;
      }
      
      public function §>b§() : String
      {
         return §+!F§.§8n§;
      }
   }
}
