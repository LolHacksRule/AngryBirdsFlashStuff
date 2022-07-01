package §""6§
{
   import §'x§.§?z§;
   import §+!d§.§"r§;
   import §+!d§.§6=§;
   import §+%§.§+"%§;
   import §2!O§.§,w§;
   import §2i§.§%!+§;
   import §;!A§.§ !F§;
   import §;!A§.§%!`§;
   import §;!A§.§2v§;
   import §;!A§.§;!u§;
   import §;"$§.§8!O§;
   import §;"$§.§`5§;
   import §<!k§.§!!g§;
   import §<!k§.§0"7§;
   import §?!k§.§0!t§;
   import §?h§.§%!Z§;
   import §?h§.§8!K§;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §7"#§ extends §,w§
   {
      
      public static const §^z§:String = "LevelEndStateRio";
      
      public static const §7!J§:Number = 30;
      
      protected static const §^!q§:String = "ScoreLoopCountChannel";
      
      protected static const §'!,§:String = "EndScreenEffectChannel";
       
      
      private var §#<§:§8!K§;
      
      private var §[!n§:Number;
      
      private var §&" §:Number = 0.0;
      
      private var §2!P§:Number = 0.0;
      
      private var §?G§:Boolean = false;
      
      private var §`i§:Timer;
      
      private var §;v§:§!!g§;
      
      protected var §'W§:Array;
      
      protected var §=3§:§0"7§;
      
      protected var §1!g§:Vector.<§0"7§>;
      
      public var mNewScoreCounter:int;
      
      private var §>A§:int;
      
      private var §^f§:Boolean;
      
      protected var §2P§:Boolean;
      
      private var §4!i§:§%!+§;
      
      protected var §<N§:Boolean;
      
      private var §7!l§:§8!K§;
      
      protected var §<G§:Boolean;
      
      protected var §,!?§:int;
      
      public function §7"#§(param1:Boolean = false, param2:String = "LevelEndStateRio")
      {
         this.§'W§ = [];
         this.§4!i§ = new §%!+§();
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §%""§ = new §`5§(this);
         §%""§.init(this.§[",§());
         this.§<!l§();
         this.§1!g§ = new Vector.<§0"7§>();
         §0!t§.§2Q§(§^!q§,1,1);
         §0!t§.§2Q§(§'!,§,3,1);
      }
      
      protected function §<!l§() : void
      {
         this.§'W§.push((§%""§.getItemByName("Button_Menu") as §2v§).x);
         this.§'W§.push((§%""§.getItemByName("Button_Replay") as §2v§).x);
         this.§'W§.push((§%""§.getItemByName("Button_NextLevel") as §2v§).x);
         this.§'W§.push((§%""§.getItemByName("Button_CutScene") as §2v§).x);
      }
      
      protected function §[",§() : XML
      {
         return §8!O§.§'!J§.Views.View_LevelEndRio[0];
      }
      
      protected function §=""§() : void
      {
         if(!AngryBirdsFP11.§8!I§.§`!#§(§+"%§.§9!'§))
         {
            (§%""§.getItemByName("Button_Menu") as §2v§).setVisibility(false);
            (§%""§.getItemByName("Button_Replay") as §2v§).setVisibility(true);
            (§%""§.getItemByName("Button_NextLevel") as §2v§).setVisibility(false);
            (§%""§.getItemByName("Button_CutScene") as §2v§).setVisibility(true);
            (§%""§.getItemByName("Button_Replay") as §2v§).x = this.§'W§[0] + Math.abs(this.§'W§[1] - this.§'W§[0]) / 2;
            (§%""§.getItemByName("Button_CutScene") as §2v§).x = this.§'W§[1] + Math.abs(this.§'W§[2] - this.§'W§[1]) / 2;
         }
         else
         {
            (§%""§.getItemByName("Button_Menu") as §2v§).setVisibility(true);
            (§%""§.getItemByName("Button_Replay") as §2v§).setVisibility(true);
            (§%""§.getItemByName("Button_NextLevel") as §2v§).setVisibility(false);
            (§%""§.getItemByName("Button_CutScene") as §2v§).setVisibility(true);
            (§%""§.getItemByName("Button_Menu") as §2v§).x = this.§'W§[0];
            (§%""§.getItemByName("Button_Replay") as §2v§).x = this.§'W§[1];
            (§%""§.getItemByName("Button_CutScene") as §2v§).x = this.§'W§[2];
         }
      }
      
      protected function §^!D§() : void
      {
         (§%""§.getItemByName("Button_Menu") as §2v§).setVisibility(true);
         (§%""§.getItemByName("Button_Replay") as §2v§).setVisibility(true);
         (§%""§.getItemByName("Button_CutScene") as §2v§).setVisibility(false);
         if(§+"%§.§^!`§())
         {
            (§%""§.getItemByName("Button_NextLevel") as §2v§).setVisibility(true);
            (§%""§.getItemByName("Button_Menu") as §2v§).x = this.§'W§[0];
            (§%""§.getItemByName("Button_Replay") as §2v§).x = this.§'W§[1];
            (§%""§.getItemByName("Button_NextLevel") as §2v§).x = this.§'W§[2];
         }
         else
         {
            (§%""§.getItemByName("Button_NextLevel") as §2v§).setVisibility(false);
            (§%""§.getItemByName("Button_Menu") as §2v§).x = this.§'W§[0] + Math.abs(this.§'W§[1] - this.§'W§[0]) / 2;
            (§%""§.getItemByName("Button_Replay") as §2v§).x = this.§'W§[1] + Math.abs(this.§'W§[2] - this.§'W§[1]) / 2;
         }
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§<G§ = false;
         §?z§.pause();
         this.§;v§ = new §!!g§(0,0,0,0);
         §%""§.movieClip.addChildAt(this.§;v§,§%""§.movieClip.numChildren - 1);
         if(§+"%§.§#x§())
         {
            this.§=""§();
         }
         else
         {
            this.§^!D§();
         }
         this.mNewScoreCounter = 0;
         this.§^f§ = false;
         §0!t§.playSound("LevelCompletedTheme1");
         this.§;v§.§6"+§(0.7);
         this.§&" § = 0;
         this.§2!P§ = 0;
         this.§"!§();
      }
      
      private function §"!§() : void
      {
         this.§2P§ = false;
         this.§1!Q§();
         this.§`i§ = new Timer(500);
         this.§>A§ = 0;
         this.§`i§.addEventListener(TimerEvent.TIMER,this.§8R§);
         this.§`i§.start();
      }
      
      protected function §^"&§() : void
      {
         if(AngryBirdsFP11.§8!I§.§>"&§(§+"%§.§9!'§) == 100)
         {
            (§%""§.getItemByName("MovieClip_ResultMEFeather") as §%!`§).mClip.gotoAndStop("On");
         }
         else
         {
            (§%""§.getItemByName("MovieClip_ResultMEFeather") as §%!`§).mClip.gotoAndStop("Off");
         }
      }
      
      protected function §^"1§(param1:int, param2:int) : void
      {
         if(this.§<N§)
         {
            param2 = param1;
            AngryBirdsFP11.§8!I§.§3!n§(§+"%§.§9!'§,param2);
            §%""§.setText("New Highscore!","TextField_BestScore");
         }
         else
         {
            §%""§.setText("Best " + param2.toString(),"TextField_BestScore");
            this.§,!?§ = §+"%§.§6Z§(§+"%§.§9!'§,param2);
            switch(this.§,!?§)
            {
               case 1:
                  (§%""§.getItemByName("MovieClip_BestScoreStars") as §%!`§).§try§("OneStar");
                  break;
               case 2:
                  (§%""§.getItemByName("MovieClip_BestScoreStars") as §%!`§).§try§("TwoStar");
                  break;
               case 3:
                  (§%""§.getItemByName("MovieClip_BestScoreStars") as §%!`§).§try§("ThreeStar");
            }
         }
      }
      
      protected function §1!Q§() : void
      {
         var _loc1_:int = AngryBirdsFP11.§8!I§.§`!K§(§+"%§.§9!'§);
         var _loc2_:int = §?z§.§6!#§.getScore();
         this.§<N§ = _loc2_ > _loc1_;
         this.§^"1§(_loc2_,_loc1_);
         this.§^"&§();
         var _loc3_:int = §?z§.§6!#§.getEagleScore();
         var _loc4_:int = AngryBirdsFP11.§8!I§.§>"&§(§+"%§.§9!'§);
         var _loc5_:*;
         if(_loc5_ = _loc3_ > _loc4_)
         {
            _loc4_ = _loc3_;
            AngryBirdsFP11.§8!I§.§#P§(§+"%§.§9!'§,_loc4_);
         }
         var _loc6_:int = AngryBirdsFP11.§8!I§.§]5§(§+"%§.§9!'§,_loc2_);
         (§%""§.getItemByName("MovieClip_NewHighScoreBadge") as §%!`§).setVisibility(false);
         (§%""§.getItemByName("MovieClip_StarLeft") as §%!`§).mClip.gotoAndStop("UnLit");
         (§%""§.getItemByName("MovieClip_StarCenter") as §%!`§).mClip.gotoAndStop("UnLit");
         (§%""§.getItemByName("MovieClip_StarRight") as §%!`§).mClip.gotoAndStop("UnLit");
      }
      
      protected function §"!0§() : void
      {
         if(this.§<N§)
         {
            §0!t§.playSound("Hiscore_Badge",§'!,§);
            §%""§.setText("New Highscore!","TextField_NewHighScore");
            (§%""§.getItemByName("TextField_NewHighScore") as § !F§).setVisibility(true);
            (§%""§.getItemByName("MovieClip_BestScoreStars") as §%!`§).setVisibility(false);
            this.§25§();
         }
         else
         {
            (§%""§.getItemByName("TextField_BestScore") as § !F§).setVisibility(true);
            (§%""§.getItemByName("MovieClip_BestScoreStars") as §%!`§).setVisibility(true);
         }
      }
      
      protected function §25§() : void
      {
         this.§&" § = 0;
         this.§2!P§ = 0;
         this.§[!n§ = §7!J§;
      }
      
      private function §>V§(param1:Number) : void
      {
         (§%""§.getItemByName("Container_LevelEndStripe") as §;!u§).x = (§%""§.getItemByName("Container_LevelEndStripe") as §;!u§).x - this.§&" §;
         (§%""§.getItemByName("Container_LevelEndStripe") as §;!u§).y = (§%""§.getItemByName("Container_LevelEndStripe") as §;!u§).y - this.§2!P§;
         if(this.§[!n§ > 0)
         {
            this.§&" § = (Math.random() - 0.5) * (this.§[!n§ / §7!J§) * 20;
            this.§2!P§ = (Math.random() - 0.5) * (this.§[!n§ / §7!J§) * 20;
            (§%""§.getItemByName("Container_LevelEndStripe") as §;!u§).x = (§%""§.getItemByName("Container_LevelEndStripe") as §;!u§).x + this.§&" §;
            (§%""§.getItemByName("Container_LevelEndStripe") as §;!u§).y = (§%""§.getItemByName("Container_LevelEndStripe") as §;!u§).y + this.§2!P§;
         }
         else
         {
            this.§[!n§ = -1;
            this.§++§();
            this.§&" § = 0;
            this.§2!P§ = 0;
         }
         this.§[!n§ -= param1 / 10;
      }
      
      protected function §++§() : void
      {
      }
      
      private function §8R§(param1:TimerEvent) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc4_:Number = §+"%§.§,>§(§+"%§.§9!'§).mScoreGold;
         var _loc5_:Number = §+"%§.§,>§(§+"%§.§9!'§).mScoreSilver;
         if((§%""§.getItemByName("MovieClip_StarLeft") as §%!`§).mClip.currentLabel == "UnLit")
         {
            §0!t§.playSound("Hiscore_Count",§^!q§,100);
            §0!t§.playSound("Hiscore_Star_Splash1",§'!,§);
            this.§`i§.delay = 1000;
            this.§4!i§.§`H§(§?z§.§6!#§.getScore());
            _loc6_ = this.§4!i§.getValue() / _loc4_ * 2;
            if(_loc4_ <= 0)
            {
               _loc6_ = 1;
            }
            this.§7!l§ = §%!Z§.§if §.§"<§(this,{"mNewScoreCounter":this.§4!i§.getValue()},{"mNewScoreCounter":0},_loc6_);
            this.§7!l§.onComplete = this.§>!k§;
            this.§7!l§.play();
            (§%""§.getItemByName("MovieClip_StarLeft") as §%!`§).mClip.gotoAndStop("Lit");
            _loc2_ = (§%""§.getItemByName("MovieClip_StarLeft") as §%!`§).x + (§%""§.getItemByName("Container_LevelEndStripe") as §;!u§).x;
            _loc3_ = (§%""§.getItemByName("MovieClip_StarLeft") as §%!`§).y + (§%""§.getItemByName("Container_LevelEndStripe") as §;!u§).y;
            this.§=3§ = new §0"7§(AngryBirdsFP11.§#k§,AngryBirdsFP11.§!7§,_loc2_,_loc3_,§0"7§.§^"§);
            §%""§.addChild(this.§=3§);
            this.§1!g§.push(this.§=3§);
         }
         else if(this.§4!i§.getValue() >= _loc5_ && (§%""§.getItemByName("MovieClip_StarCenter") as §%!`§).mClip.currentLabel == "UnLit")
         {
            §0!t§.playSound("Hiscore_Star_Splash2",§'!,§);
            (§%""§.getItemByName("MovieClip_StarCenter") as §%!`§).mClip.gotoAndStop("Lit");
            _loc2_ = (§%""§.getItemByName("MovieClip_StarCenter") as §%!`§).x + (§%""§.getItemByName("Container_LevelEndStripe") as §;!u§).x;
            _loc3_ = (§%""§.getItemByName("MovieClip_StarCenter") as §%!`§).y + (§%""§.getItemByName("Container_LevelEndStripe") as §;!u§).y;
            this.§=3§ = new §0"7§(AngryBirdsFP11.§#k§,AngryBirdsFP11.§!7§,_loc2_,_loc3_,§0"7§.§,0§);
            §%""§.addChild(this.§=3§);
            this.§1!g§.push(this.§=3§);
         }
         else if(this.§4!i§.getValue() >= _loc4_ && (§%""§.getItemByName("MovieClip_StarRight") as §%!`§).mClip.currentLabel == "UnLit")
         {
            this.§<G§ = true;
            §0!t§.playSound("Hiscore_Star_Splash3",§'!,§);
            (§%""§.getItemByName("MovieClip_StarRight") as §%!`§).mClip.gotoAndStop("Lit");
            _loc2_ = (§%""§.getItemByName("MovieClip_StarRight") as §%!`§).x + (§%""§.getItemByName("Container_LevelEndStripe") as §;!u§).x;
            _loc3_ = (§%""§.getItemByName("MovieClip_StarRight") as §%!`§).y + (§%""§.getItemByName("Container_LevelEndStripe") as §;!u§).y;
            this.§=3§ = new §0"7§(AngryBirdsFP11.§#k§,AngryBirdsFP11.§!7§,_loc2_,_loc3_,§0"7§.§5Y§);
            §%""§.addChild(this.§=3§);
            this.§1!g§.push(this.§=3§);
         }
         else if(!this.§^f§)
         {
            this.§^f§ = true;
         }
         else
         {
            this.§`i§.stop();
            if(this.§<N§ && !this.§2P§)
            {
               (§%""§.getItemByName("MovieClip_NewHighScoreBadge") as §%!`§).setVisibility(true);
            }
            else
            {
               (§%""§.getItemByName("MovieClip_NewHighScoreBadge") as §%!`§).setVisibility(false);
            }
            this.§#<§ = §%!Z§.§if §.§"<§((§%""§.getItemByName("MovieClip_NewHighScoreBadge") as §%!`§).mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":7,
               "scaleY":7
            },0.1);
            this.§#<§.onComplete = this.§"!0§;
            this.§#<§.play();
         }
         ++this.§>A§;
      }
      
      private function §>!k§() : void
      {
         §0!t§.§?!u§(§^!q§);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:§0"7§ = null;
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §,w§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         §%""§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScore");
         §%""§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScoreEffects");
         for each(_loc3_ in this.§1!g§)
         {
            _loc3_.update(param1);
         }
         if(this.§[!n§ > -1)
         {
            this.§>V§(param1);
         }
         if(mNextState.length > 0)
         {
            §?z§.§=7§.clearLevel();
            return §,w§.STATE_STATUS_COMPLETED;
         }
         return §,w§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§5"0§();
         this.§[!n§ = 0;
         this.mNewScoreCounter = 0;
         if(this.§7!l§)
         {
            this.§7!l§.stop();
            this.§7!l§ = null;
         }
         if(this.§#<§)
         {
            this.§#<§.stop();
            this.§#<§ = null;
         }
         §0!t§.§?!u§(§^!q§);
         this.§<"1§(§"r§.COMPONENT_STATE_ACTIVE_DEFAULT);
         §%""§.setText("0","TextField_LevelEndScore");
         §%""§.setText("0","TextField_LevelEndScoreEffects");
         if(this.§;v§)
         {
            if(§%""§.movieClip.contains(this.§;v§))
            {
               §%""§.movieClip.removeChild(this.§;v§);
            }
            this.§;v§.clean();
            this.§;v§ = null;
         }
      }
      
      protected function §<"1§(param1:String) : void
      {
         (§%""§.getItemByName("Button_Menu") as §2v§).setComponentVisualState(param1);
         (§%""§.getItemByName("Button_Replay") as §2v§).setComponentVisualState(param1);
         (§%""§.getItemByName("Button_NextLevel") as §2v§).setComponentVisualState(param1);
         (§%""§.getItemByName("Button_CutScene") as §2v§).setComponentVisualState(param1);
      }
      
      private function §5"0§() : void
      {
         var splash:§0"7§ = null;
         if(this.§`i§)
         {
            this.§`i§.stop();
            try
            {
               this.§`i§.removeEventListener(TimerEvent.TIMER,this.§8R§);
            }
            catch(e:Error)
            {
            }
         }
         for each(splash in this.§1!g§)
         {
            if(§%""§.contains(splash))
            {
               §%""§.removeChild(splash);
            }
            splash.clean();
         }
         this.§1!g§ = new Vector.<§0"7§>();
         this.§+!T§();
      }
      
      protected function §+!T§() : void
      {
         (§%""§.getItemByName("TextField_BestScore") as § !F§).setVisibility(false);
         (§%""§.getItemByName("MovieClip_BestScoreStars") as §%!`§).setVisibility(false);
         (§%""§.getItemByName("TextField_NewHighScore") as § !F§).setVisibility(false);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      protected function §47§() : void
      {
         §!Z§.§0""§();
         mNextState = this.§5!,§();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§6=§) : void
      {
         var _loc4_:String = null;
         switch(param2)
         {
            case "NEXT_LEVEL":
               this.§47§();
               break;
            case "REPLAY":
               §!Z§.§0!f§();
               mNextState = this.§,!#§();
               break;
            case "WATCH_REPLAY":
               §!Z§.§0!f§();
               mNextState = this.§,!#§();
               if(_loc4_ = §?z§.§=7§.§4B§())
               {
                  §?z§.§=7§.§`q§(_loc4_);
               }
               break;
            case "MENU":
               §0!t§.§,!S§();
               mNextState = this.§,!R§();
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§@!N§.§2!1§();
         }
      }
      
      protected function §,!#§() : String
      {
         return §!Z§.§^z§;
      }
      
      protected function §5!,§() : String
      {
         return StateCutScene.§^z§;
      }
      
      public function §,!R§() : String
      {
         return §`!%§.§^z§;
      }
   }
}
