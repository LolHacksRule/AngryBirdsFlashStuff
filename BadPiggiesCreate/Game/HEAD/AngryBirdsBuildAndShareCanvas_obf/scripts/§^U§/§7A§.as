package §^U§
{
   import §#";§.§0"#§;
   import §&!<§.§>!V§;
   import §&!<§.§]!M§;
   import §'V§.§7I§;
   import §'V§.§=!r§;
   import §,P§.§'_§;
   import §;<§.§'B§;
   import §<!1§.§9!=§;
   import §<!]§.§2U§;
   import §<!]§.§]!v§;
   import §<i§.§`!r§;
   import §=!7§.§!!]§;
   import §=!7§.§6W§;
   import §=!7§.§9"8§;
   import §=!7§.§@u§;
   import §@y§.§0=§;
   import §@y§.§>!D§;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §7A§ extends §'B§
   {
      
      public static const §%!Q§:String = "LevelEndStateRio";
      
      public static const §#"?§:Number = 30;
      
      protected static const §]!9§:String = "ScoreLoopCountChannel";
      
      protected static const §4!P§:String = "EndScreenEffectChannel";
       
      
      private var §["§:§=!r§;
      
      private var §0+§:Number;
      
      private var §<V§:Number = 0.0;
      
      private var §!"@§:Number = 0.0;
      
      private var §%?§:Boolean = false;
      
      private var §1!"§:Timer;
      
      private var §<E§:§]!v§;
      
      protected var §<!V§:Array;
      
      protected var §@"#§:§2U§;
      
      protected var §!!N§:Vector.<§2U§>;
      
      public var mNewScoreCounter:int;
      
      private var §7!S§:int;
      
      private var §%!t§:Boolean;
      
      protected var §;!d§:Boolean;
      
      private var §4!?§:§9!=§;
      
      protected var §[x§:Boolean;
      
      private var §1!8§:§=!r§;
      
      protected var §9!H§:Boolean;
      
      protected var §<u§:int;
      
      public function §7A§(param1:Boolean = false, param2:String = "LevelEndStateRio")
      {
         this.§<!V§ = [];
         this.§4!?§ = new §9!=§();
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §`!v§ = new §>!V§(this);
         §`!v§.init(this.§+!;§());
         this.§%R§();
         this.§!!N§ = new Vector.<§2U§>();
         §0"#§.§4!m§(§]!9§,1,1);
         §0"#§.§4!m§(§4!P§,3,1);
      }
      
      protected function §%R§() : void
      {
         this.§<!V§.push((§`!v§.getItemByName("Button_Menu") as §9"8§).x);
         this.§<!V§.push((§`!v§.getItemByName("Button_Replay") as §9"8§).x);
         this.§<!V§.push((§`!v§.getItemByName("Button_NextLevel") as §9"8§).x);
         this.§<!V§.push((§`!v§.getItemByName("Button_CutScene") as §9"8§).x);
      }
      
      protected function §+!;§() : XML
      {
         return §]!M§.§"!V§.Views.View_LevelEndRio[0];
      }
      
      protected function §0"%§() : void
      {
         if(!AngryBirdsFP11.§>!7§.§]"9§(§`!r§.§0B§))
         {
            (§`!v§.getItemByName("Button_Menu") as §9"8§).setVisibility(false);
            (§`!v§.getItemByName("Button_Replay") as §9"8§).setVisibility(true);
            (§`!v§.getItemByName("Button_NextLevel") as §9"8§).setVisibility(false);
            (§`!v§.getItemByName("Button_CutScene") as §9"8§).setVisibility(true);
            (§`!v§.getItemByName("Button_Replay") as §9"8§).x = this.§<!V§[0] + Math.abs(this.§<!V§[1] - this.§<!V§[0]) / 2;
            (§`!v§.getItemByName("Button_CutScene") as §9"8§).x = this.§<!V§[1] + Math.abs(this.§<!V§[2] - this.§<!V§[1]) / 2;
         }
         else
         {
            (§`!v§.getItemByName("Button_Menu") as §9"8§).setVisibility(true);
            (§`!v§.getItemByName("Button_Replay") as §9"8§).setVisibility(true);
            (§`!v§.getItemByName("Button_NextLevel") as §9"8§).setVisibility(false);
            (§`!v§.getItemByName("Button_CutScene") as §9"8§).setVisibility(true);
            (§`!v§.getItemByName("Button_Menu") as §9"8§).x = this.§<!V§[0];
            (§`!v§.getItemByName("Button_Replay") as §9"8§).x = this.§<!V§[1];
            (§`!v§.getItemByName("Button_CutScene") as §9"8§).x = this.§<!V§[2];
         }
      }
      
      protected function §@!p§() : void
      {
         (§`!v§.getItemByName("Button_Menu") as §9"8§).setVisibility(true);
         (§`!v§.getItemByName("Button_Replay") as §9"8§).setVisibility(true);
         (§`!v§.getItemByName("Button_CutScene") as §9"8§).setVisibility(false);
         if(§`!r§.§8E§())
         {
            (§`!v§.getItemByName("Button_NextLevel") as §9"8§).setVisibility(true);
            (§`!v§.getItemByName("Button_Menu") as §9"8§).x = this.§<!V§[0];
            (§`!v§.getItemByName("Button_Replay") as §9"8§).x = this.§<!V§[1];
            (§`!v§.getItemByName("Button_NextLevel") as §9"8§).x = this.§<!V§[2];
         }
         else
         {
            (§`!v§.getItemByName("Button_NextLevel") as §9"8§).setVisibility(false);
            (§`!v§.getItemByName("Button_Menu") as §9"8§).x = this.§<!V§[0] + Math.abs(this.§<!V§[1] - this.§<!V§[0]) / 2;
            (§`!v§.getItemByName("Button_Replay") as §9"8§).x = this.§<!V§[1] + Math.abs(this.§<!V§[2] - this.§<!V§[1]) / 2;
         }
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§9!H§ = false;
         §'_§.pause();
         this.§<E§ = new §]!v§(0,0,0,0);
         §`!v§.movieClip.addChildAt(this.§<E§,§`!v§.movieClip.numChildren - 1);
         if(§`!r§.§,!9§())
         {
            this.§0"%§();
         }
         else
         {
            this.§@!p§();
         }
         this.mNewScoreCounter = 0;
         this.§%!t§ = false;
         §0"#§.§9"2§(this.§6!b§);
         this.§<E§.§[!r§(0.7);
         this.§<V§ = 0;
         this.§!"@§ = 0;
         this.§&D§();
      }
      
      protected function get §6!b§() : String
      {
         return "LevelCompletedTheme1";
      }
      
      private function §&D§() : void
      {
         this.§;!d§ = false;
         this.§[V§();
         this.§1!"§ = new Timer(500);
         this.§7!S§ = 0;
         this.§1!"§.addEventListener(TimerEvent.TIMER,this.§5N§);
         this.§1!"§.start();
      }
      
      protected function §;"'§() : void
      {
         if(AngryBirdsFP11.§>!7§.§6!G§(§`!r§.§0B§) == 100)
         {
            (§`!v§.getItemByName("MovieClip_ResultMEFeather") as §@u§).mClip.gotoAndStop("On");
         }
         else
         {
            (§`!v§.getItemByName("MovieClip_ResultMEFeather") as §@u§).mClip.gotoAndStop("Off");
         }
      }
      
      protected function §4!`§(param1:int, param2:int) : void
      {
         if(this.§[x§)
         {
            param2 = param1;
            AngryBirdsFP11.§>!7§.§0!Y§(§`!r§.§0B§,param2);
            §`!v§.setText("New Highscore!","TextField_BestScore");
         }
         else
         {
            §`!v§.setText("Best " + param2.toString(),"TextField_BestScore");
            this.§<u§ = §`!r§.§%!g§(§`!r§.§0B§,param2);
            switch(this.§<u§)
            {
               case 1:
                  (§`!v§.getItemByName("MovieClip_BestScoreStars") as §@u§).§3"5§("OneStar");
                  break;
               case 2:
                  (§`!v§.getItemByName("MovieClip_BestScoreStars") as §@u§).§3"5§("TwoStar");
                  break;
               case 3:
                  (§`!v§.getItemByName("MovieClip_BestScoreStars") as §@u§).§3"5§("ThreeStar");
            }
         }
      }
      
      protected function §[V§() : void
      {
         var _loc1_:int = AngryBirdsFP11.§>!7§.§="?§(§`!r§.§0B§);
         var _loc2_:int = §'_§.§=R§.getScore();
         this.§[x§ = _loc2_ > _loc1_;
         this.§4!`§(_loc2_,_loc1_);
         this.§;"'§();
         var _loc3_:int = §'_§.§=R§.getEagleScore();
         var _loc4_:int = AngryBirdsFP11.§>!7§.§6!G§(§`!r§.§0B§);
         var _loc5_:*;
         if(_loc5_ = _loc3_ > _loc4_)
         {
            _loc4_ = _loc3_;
            AngryBirdsFP11.§>!7§.§;"6§(§`!r§.§0B§,_loc4_);
         }
         var _loc6_:int = AngryBirdsFP11.§>!7§.§6!I§(§`!r§.§0B§,_loc2_);
         (§`!v§.getItemByName("MovieClip_NewHighScoreBadge") as §@u§).setVisibility(false);
         (§`!v§.getItemByName("MovieClip_StarLeft") as §@u§).mClip.gotoAndStop("UnLit");
         (§`!v§.getItemByName("MovieClip_StarCenter") as §@u§).mClip.gotoAndStop("UnLit");
         (§`!v§.getItemByName("MovieClip_StarRight") as §@u§).mClip.gotoAndStop("UnLit");
      }
      
      protected function §!",§() : void
      {
         if(this.§[x§)
         {
            §0"#§.§9"2§("Hiscore_Badge",§4!P§);
            §`!v§.setText("New Highscore!","TextField_NewHighScore");
            (§`!v§.getItemByName("TextField_NewHighScore") as §!!]§).setVisibility(true);
            (§`!v§.getItemByName("MovieClip_BestScoreStars") as §@u§).setVisibility(false);
            this.§5!I§();
         }
         else
         {
            (§`!v§.getItemByName("TextField_BestScore") as §!!]§).setVisibility(true);
            (§`!v§.getItemByName("MovieClip_BestScoreStars") as §@u§).setVisibility(true);
         }
      }
      
      protected function §5!I§() : void
      {
         this.§<V§ = 0;
         this.§!"@§ = 0;
         this.§0+§ = §#"?§;
      }
      
      private function §'9§(param1:Number) : void
      {
         (§`!v§.getItemByName("Container_LevelEndStripe") as §6W§).x = (§`!v§.getItemByName("Container_LevelEndStripe") as §6W§).x - this.§<V§;
         (§`!v§.getItemByName("Container_LevelEndStripe") as §6W§).y = (§`!v§.getItemByName("Container_LevelEndStripe") as §6W§).y - this.§!"@§;
         if(this.§0+§ > 0)
         {
            this.§<V§ = (Math.random() - 0.5) * (this.§0+§ / §#"?§) * 20;
            this.§!"@§ = (Math.random() - 0.5) * (this.§0+§ / §#"?§) * 20;
            (§`!v§.getItemByName("Container_LevelEndStripe") as §6W§).x = (§`!v§.getItemByName("Container_LevelEndStripe") as §6W§).x + this.§<V§;
            (§`!v§.getItemByName("Container_LevelEndStripe") as §6W§).y = (§`!v§.getItemByName("Container_LevelEndStripe") as §6W§).y + this.§!"@§;
         }
         else
         {
            this.§0+§ = -1;
            this.§&"=§();
            this.§<V§ = 0;
            this.§!"@§ = 0;
         }
         this.§0+§ -= param1 / 10;
      }
      
      protected function §&"=§() : void
      {
      }
      
      private function §5N§(param1:TimerEvent) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc4_:Number = §`!r§.getLevelForId(§`!r§.§0B§).mScoreGold;
         var _loc5_:Number = §`!r§.getLevelForId(§`!r§.§0B§).mScoreSilver;
         if((§`!v§.getItemByName("MovieClip_StarLeft") as §@u§).mClip.currentLabel == "UnLit")
         {
            §0"#§.§9"2§("Hiscore_Count",§]!9§,100);
            §0"#§.§9"2§("Hiscore_Star_Splash1",§4!P§);
            this.§1!"§.delay = 1000;
            this.§4!?§.§2">§(§'_§.§=R§.getScore());
            _loc6_ = this.§4!?§.getValue() / _loc4_ * 2;
            if(_loc4_ <= 0)
            {
               _loc6_ = 1;
            }
            this.§1!8§ = §7I§.§[E§.§ ";§(this,{"mNewScoreCounter":this.§4!?§.getValue()},{"mNewScoreCounter":0},_loc6_);
            this.§1!8§.onComplete = this.§`!1§;
            this.§1!8§.play();
            (§`!v§.getItemByName("MovieClip_StarLeft") as §@u§).mClip.gotoAndStop("Lit");
            _loc2_ = (§`!v§.getItemByName("MovieClip_StarLeft") as §@u§).x + (§`!v§.getItemByName("Container_LevelEndStripe") as §6W§).x;
            _loc3_ = (§`!v§.getItemByName("MovieClip_StarLeft") as §@u§).y + (§`!v§.getItemByName("Container_LevelEndStripe") as §6W§).y;
            this.§@"#§ = new §2U§(AngryBirdsFP11.§6j§,AngryBirdsFP11.§+#§,_loc2_,_loc3_,§2U§.§%!b§);
            §`!v§.addChild(this.§@"#§);
            this.§!!N§.push(this.§@"#§);
         }
         else if(this.§4!?§.getValue() >= _loc5_ && (§`!v§.getItemByName("MovieClip_StarCenter") as §@u§).mClip.currentLabel == "UnLit")
         {
            §0"#§.§9"2§("Hiscore_Star_Splash2",§4!P§);
            (§`!v§.getItemByName("MovieClip_StarCenter") as §@u§).mClip.gotoAndStop("Lit");
            _loc2_ = (§`!v§.getItemByName("MovieClip_StarCenter") as §@u§).x + (§`!v§.getItemByName("Container_LevelEndStripe") as §6W§).x;
            _loc3_ = (§`!v§.getItemByName("MovieClip_StarCenter") as §@u§).y + (§`!v§.getItemByName("Container_LevelEndStripe") as §6W§).y;
            this.§@"#§ = new §2U§(AngryBirdsFP11.§6j§,AngryBirdsFP11.§+#§,_loc2_,_loc3_,§2U§.§%D§);
            §`!v§.addChild(this.§@"#§);
            this.§!!N§.push(this.§@"#§);
         }
         else if(this.§4!?§.getValue() >= _loc4_ && (§`!v§.getItemByName("MovieClip_StarRight") as §@u§).mClip.currentLabel == "UnLit")
         {
            this.§9!H§ = true;
            §0"#§.§9"2§("Hiscore_Star_Splash3",§4!P§);
            (§`!v§.getItemByName("MovieClip_StarRight") as §@u§).mClip.gotoAndStop("Lit");
            _loc2_ = (§`!v§.getItemByName("MovieClip_StarRight") as §@u§).x + (§`!v§.getItemByName("Container_LevelEndStripe") as §6W§).x;
            _loc3_ = (§`!v§.getItemByName("MovieClip_StarRight") as §@u§).y + (§`!v§.getItemByName("Container_LevelEndStripe") as §6W§).y;
            this.§@"#§ = new §2U§(AngryBirdsFP11.§6j§,AngryBirdsFP11.§+#§,_loc2_,_loc3_,§2U§.§?E§);
            §`!v§.addChild(this.§@"#§);
            this.§!!N§.push(this.§@"#§);
         }
         else if(!this.§%!t§)
         {
            this.§%!t§ = true;
         }
         else
         {
            this.§1!"§.stop();
            if(this.§[x§ && !this.§;!d§)
            {
               (§`!v§.getItemByName("MovieClip_NewHighScoreBadge") as §@u§).setVisibility(true);
            }
            else
            {
               (§`!v§.getItemByName("MovieClip_NewHighScoreBadge") as §@u§).setVisibility(false);
            }
            this.§["§ = §7I§.§[E§.§ ";§((§`!v§.getItemByName("MovieClip_NewHighScoreBadge") as §@u§).mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":7,
               "scaleY":7
            },0.1);
            this.§["§.onComplete = this.§!",§;
            this.§["§.play();
         }
         ++this.§7!S§;
      }
      
      private function §`!1§() : void
      {
         §0"#§.§<"0§(§]!9§);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:§2U§ = null;
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §'B§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         §`!v§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScore");
         §`!v§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScoreEffects");
         for each(_loc3_ in this.§!!N§)
         {
            _loc3_.update(param1);
         }
         if(this.§0+§ > -1)
         {
            this.§'9§(param1);
         }
         if(mNextState.length > 0)
         {
            §'_§.§=M§.clearLevel();
            return §'B§.STATE_STATUS_COMPLETED;
         }
         return §'B§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§&V§();
         this.§0+§ = 0;
         this.mNewScoreCounter = 0;
         if(this.§1!8§)
         {
            this.§1!8§.stop();
            this.§1!8§ = null;
         }
         if(this.§["§)
         {
            this.§["§.stop();
            this.§["§ = null;
         }
         §0"#§.§<"0§(§]!9§);
         this.§>!I§(§>!D§.COMPONENT_STATE_ACTIVE_DEFAULT);
         §`!v§.setText("0","TextField_LevelEndScore");
         §`!v§.setText("0","TextField_LevelEndScoreEffects");
         if(this.§<E§)
         {
            if(§`!v§.movieClip.contains(this.§<E§))
            {
               §`!v§.movieClip.removeChild(this.§<E§);
            }
            this.§<E§.clean();
            this.§<E§ = null;
         }
      }
      
      protected function §>!I§(param1:String) : void
      {
         (§`!v§.getItemByName("Button_Menu") as §9"8§).setComponentVisualState(param1);
         (§`!v§.getItemByName("Button_Replay") as §9"8§).setComponentVisualState(param1);
         (§`!v§.getItemByName("Button_NextLevel") as §9"8§).setComponentVisualState(param1);
         (§`!v§.getItemByName("Button_CutScene") as §9"8§).setComponentVisualState(param1);
      }
      
      private function §&V§() : void
      {
         var splash:§2U§ = null;
         if(this.§1!"§)
         {
            this.§1!"§.stop();
            try
            {
               this.§1!"§.removeEventListener(TimerEvent.TIMER,this.§5N§);
            }
            catch(e:Error)
            {
            }
         }
         for each(splash in this.§!!N§)
         {
            if(§`!v§.contains(splash))
            {
               §`!v§.removeChild(splash);
            }
            splash.clean();
         }
         this.§!!N§ = new Vector.<§2U§>();
         this.§8"6§();
      }
      
      protected function §8"6§() : void
      {
         (§`!v§.getItemByName("TextField_BestScore") as §!!]§).setVisibility(false);
         (§`!v§.getItemByName("MovieClip_BestScoreStars") as §@u§).setVisibility(false);
         (§`!v§.getItemByName("TextField_NewHighScore") as §!!]§).setVisibility(false);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      protected function §2!!§() : void
      {
         §`!;§.§;c§();
         mNextState = this.§<!p§();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§0=§) : void
      {
         var _loc4_:String = null;
         switch(param2)
         {
            case "NEXT_LEVEL":
               this.§2!!§();
               break;
            case "REPLAY":
               §`!;§.§%P§();
               mNextState = this.§7T§();
               break;
            case "WATCH_REPLAY":
               §`!;§.§%P§();
               mNextState = this.§7T§();
               if(_loc4_ = §'_§.§=M§.§#j§())
               {
                  §'_§.§=M§.§4!;§(_loc4_);
               }
               break;
            case "MENU":
               §0"#§.§4"#§();
               mNextState = this.§6!u§();
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§@"7§.§>!5§();
         }
      }
      
      protected function §7T§() : String
      {
         return §`!;§.§%!Q§;
      }
      
      protected function §<!p§() : String
      {
         return StateCutScene.§%!Q§;
      }
      
      public function §6!u§() : String
      {
         return §1!i§.§%!Q§;
      }
   }
}
