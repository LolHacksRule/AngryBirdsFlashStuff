package §]!V§
{
   import §!!&§.§0!_§;
   import §!P§.§5!1§;
   import §'!u§.§&S§;
   import §-b§.§"!d§;
   import §-b§.§4`§;
   import §7"1§.§+7§;
   import §7"1§.§7q§;
   import §7"1§.§@!9§;
   import §;s§.§%!c§;
   import §<!0§.§'!%§;
   import §<!0§.§3!W§;
   import §>P§.§%`§;
   import §>P§.§4!]§;
   import §>P§.§73§;
   import §>P§.§]"4§;
   import §^6§.§;!j§;
   import §^6§.§=!A§;
   import com.angrybirds.§#Z§;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §3"&§ extends §>!9§
   {
      
      public static const §+a§:String = "LevelEndState";
      
      public static const § !s§:Number = 30;
      
      protected static const §?z§:String = "ScoreLoopCountChannel";
      
      protected static const §2H§:String = "EndScreenEffectChannel";
       
      
      private var §1!9§:§4`§;
      
      private var §#!8§:Number;
      
      private var §1n§:Number = 0.0;
      
      private var §;!E§:Number = 0.0;
      
      private var §9a§:Boolean = false;
      
      private var §&#§:Timer;
      
      private var §5!,§:§@!9§;
      
      protected var §<Z§:Array;
      
      protected var §1! §:§+7§;
      
      protected var §-!w§:Vector.<§+7§>;
      
      public var mNewScoreCounter:int;
      
      private var §2!O§:int;
      
      private var §9;§:Boolean;
      
      protected var §2"0§:Boolean;
      
      private var §@G§:§0!_§;
      
      protected var §!I§:Boolean;
      
      private var § x§:§4`§;
      
      protected var §+"§:Boolean;
      
      protected var §2!b§:int;
      
      public function §3"&§(param1:§5!1§, param2:§&S§, param3:Boolean = false, param4:String = "LevelEndState")
      {
         this.§<Z§ = [];
         this.§@G§ = new §0!_§();
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         §5+§ = new §;!j§(this);
         §5+§.init(this.§[x§());
         this.§5"&§();
         this.§-!w§ = new Vector.<§+7§>();
         §%!c§.§"!u§(§?z§,1,1);
         §%!c§.§"!u§(§2H§,3,1);
      }
      
      protected function §5"&§() : void
      {
         this.§<Z§.push((§5+§.getItemByName("Button_Menu") as §73§).x);
         this.§<Z§.push((§5+§.getItemByName("Button_Replay") as §73§).x);
         this.§<Z§.push((§5+§.getItemByName("Button_NextLevel") as §73§).x);
         this.§<Z§.push((§5+§.getItemByName("Button_CutScene") as §73§).x);
      }
      
      protected function §[x§() : XML
      {
         return §=!A§.§`O§.Views.View_LevelEnd[0];
      }
      
      protected function §#!W§() : void
      {
         if(!§,!X§.§>!G§.§>!I§.userProgress.§,g§(§97§.currentLevel))
         {
            (§5+§.getItemByName("Button_Menu") as §73§).setVisibility(false);
            (§5+§.getItemByName("Button_Replay") as §73§).setVisibility(true);
            (§5+§.getItemByName("Button_NextLevel") as §73§).setVisibility(false);
            (§5+§.getItemByName("Button_CutScene") as §73§).setVisibility(true);
            (§5+§.getItemByName("Button_Replay") as §73§).x = this.§<Z§[0] + Math.abs(this.§<Z§[1] - this.§<Z§[0]) / 2;
            (§5+§.getItemByName("Button_CutScene") as §73§).x = this.§<Z§[1] + Math.abs(this.§<Z§[2] - this.§<Z§[1]) / 2;
         }
         else
         {
            (§5+§.getItemByName("Button_Menu") as §73§).setVisibility(true);
            (§5+§.getItemByName("Button_Replay") as §73§).setVisibility(true);
            (§5+§.getItemByName("Button_NextLevel") as §73§).setVisibility(false);
            (§5+§.getItemByName("Button_CutScene") as §73§).setVisibility(true);
            (§5+§.getItemByName("Button_Menu") as §73§).x = this.§<Z§[0];
            (§5+§.getItemByName("Button_Replay") as §73§).x = this.§<Z§[1];
            (§5+§.getItemByName("Button_CutScene") as §73§).x = this.§<Z§[2];
         }
      }
      
      protected function §?$§() : void
      {
         (§5+§.getItemByName("Button_Menu") as §73§).setVisibility(true);
         (§5+§.getItemByName("Button_Replay") as §73§).setVisibility(true);
         (§5+§.getItemByName("Button_CutScene") as §73§).setVisibility(false);
         if(§97§.getNextLevelId())
         {
            (§5+§.getItemByName("Button_NextLevel") as §73§).setVisibility(true);
            (§5+§.getItemByName("Button_Menu") as §73§).x = this.§<Z§[0];
            (§5+§.getItemByName("Button_Replay") as §73§).x = this.§<Z§[1];
            (§5+§.getItemByName("Button_NextLevel") as §73§).x = this.§<Z§[2];
         }
         else
         {
            (§5+§.getItemByName("Button_NextLevel") as §73§).setVisibility(false);
            (§5+§.getItemByName("Button_Menu") as §73§).x = this.§<Z§[0] + Math.abs(this.§<Z§[1] - this.§<Z§[0]) / 2;
            (§5+§.getItemByName("Button_Replay") as §73§).x = this.§<Z§[1] + Math.abs(this.§<Z§[2] - this.§<Z§[1]) / 2;
         }
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.§+"§ = false;
         §#Z§.pause();
         this.§5!,§ = new §@!9§(0,0,0,0);
         §5+§.movieClip.addChildAt(this.§5!,§,§5+§.movieClip.numChildren - 1);
         if(§97§.isCutSceneNext())
         {
            this.§#!W§();
         }
         else
         {
            this.§?$§();
         }
         this.mNewScoreCounter = 0;
         this.§9;§ = false;
         §%!c§.§8" §("LevelCompletedTheme1");
         this.§5!,§.§;!$§(0.7);
         this.§1n§ = 0;
         this.§;!E§ = 0;
         this.§=@§();
      }
      
      private function §=@§() : void
      {
         this.§2"0§ = false;
         this.§4!l§();
         this.§&#§ = new Timer(500);
         this.§2!O§ = 0;
         this.§&#§.addEventListener(TimerEvent.TIMER,this.§=o§);
         this.§&#§.start();
      }
      
      protected function §4" §() : void
      {
         if(§,!X§.§>!G§.§>!I§.userProgress.§+T§(§97§.currentLevel) == 100)
         {
            (§5+§.getItemByName("MovieClip_ResultMEFeather") as §4!]§).mClip.gotoAndStop("On");
         }
         else
         {
            (§5+§.getItemByName("MovieClip_ResultMEFeather") as §4!]§).mClip.gotoAndStop("Off");
         }
      }
      
      protected function §6!f§(param1:int, param2:int) : void
      {
         if(this.§!I§)
         {
            param2 = param1;
            §,!X§.§>!G§.§>!I§.userProgress.setScoreForLevel(§97§.currentLevel,param2);
            §5+§.setText("New Highscore!","TextField_BestScore");
         }
         else
         {
            §5+§.setText("Best " + param2.toString(),"TextField_BestScore");
            this.§2!b§ = §97§.getNumStarsForLevel(§97§.currentLevel,param2);
            switch(this.§2!b§)
            {
               case 1:
                  (§5+§.getItemByName("MovieClip_BestScoreStars") as §4!]§).§-q§("OneStar");
                  break;
               case 2:
                  (§5+§.getItemByName("MovieClip_BestScoreStars") as §4!]§).§-q§("TwoStar");
                  break;
               case 3:
                  (§5+§.getItemByName("MovieClip_BestScoreStars") as §4!]§).§-q§("ThreeStar");
            }
         }
      }
      
      protected function §4!l§() : void
      {
         var _loc1_:int = §,!X§.§>!G§.§>!I§.userProgress.getScoreForLevel(§97§.currentLevel);
         var _loc2_:int = §#Z§.controller.getScore(10);
         this.§!I§ = _loc2_ > _loc1_;
         this.§6!f§(_loc2_,_loc1_);
         this.§4" §();
         var _loc3_:int = §#Z§.controller.getEagleScore();
         var _loc4_:int = §,!X§.§>!G§.§>!I§.userProgress.§+T§(§97§.currentLevel);
         var _loc5_:*;
         if(_loc5_ = _loc3_ > _loc4_)
         {
            _loc4_ = _loc3_;
            §,!X§.§>!G§.§>!I§.userProgress.§;n§(§97§.currentLevel,_loc4_);
         }
         var _loc6_:int = §,!X§.§>!G§.§>!I§.userProgress.§3i§(§97§.currentLevel,_loc2_);
         (§5+§.getItemByName("MovieClip_NewHighScoreBadge") as §4!]§).setVisibility(false);
         (§5+§.getItemByName("MovieClip_StarLeft") as §4!]§).mClip.gotoAndStop("UnLit");
         (§5+§.getItemByName("MovieClip_StarCenter") as §4!]§).mClip.gotoAndStop("UnLit");
         (§5+§.getItemByName("MovieClip_StarRight") as §4!]§).mClip.gotoAndStop("UnLit");
      }
      
      protected function §-"4§() : void
      {
         if(this.§!I§)
         {
            §%!c§.§8" §("Hiscore_Badge",§2H§);
            §5+§.setText("New Highscore!","TextField_NewHighScore");
            (§5+§.getItemByName("TextField_NewHighScore") as §%`§).setVisibility(true);
            (§5+§.getItemByName("MovieClip_BestScoreStars") as §4!]§).setVisibility(false);
            this.§5v§();
         }
         else
         {
            (§5+§.getItemByName("TextField_BestScore") as §%`§).setVisibility(true);
            (§5+§.getItemByName("MovieClip_BestScoreStars") as §4!]§).setVisibility(true);
         }
      }
      
      protected function §5v§() : void
      {
         this.§1n§ = 0;
         this.§;!E§ = 0;
         this.§#!8§ = § !s§;
      }
      
      private function §]u§(param1:Number) : void
      {
         (§5+§.getItemByName("Container_LevelEndStripe") as §]"4§).x = (§5+§.getItemByName("Container_LevelEndStripe") as §]"4§).x - this.§1n§;
         (§5+§.getItemByName("Container_LevelEndStripe") as §]"4§).y = (§5+§.getItemByName("Container_LevelEndStripe") as §]"4§).y - this.§;!E§;
         if(this.§#!8§ > 0)
         {
            this.§1n§ = (Math.random() - 0.5) * (this.§#!8§ / § !s§) * 20;
            this.§;!E§ = (Math.random() - 0.5) * (this.§#!8§ / § !s§) * 20;
            (§5+§.getItemByName("Container_LevelEndStripe") as §]"4§).x = (§5+§.getItemByName("Container_LevelEndStripe") as §]"4§).x + this.§1n§;
            (§5+§.getItemByName("Container_LevelEndStripe") as §]"4§).y = (§5+§.getItemByName("Container_LevelEndStripe") as §]"4§).y + this.§;!E§;
         }
         else
         {
            this.§1n§ = 0;
            this.§;!E§ = 0;
         }
         this.§#!8§ -= param1 / 10;
      }
      
      private function §=o§(param1:TimerEvent) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:String = null;
         var _loc8_:String = null;
         var _loc9_:String = null;
         var _loc4_:Number = §97§.getGoldScoreForLevel(§97§.currentLevel);
         var _loc5_:Number = §97§.getSilverScoreForLevel(§97§.currentLevel);
         if((§5+§.getItemByName("MovieClip_StarLeft") as §4!]§).mClip.currentLabel == "UnLit")
         {
            §%!c§.§8" §("Hiscore_Count",§?z§,100);
            this.§&#§.delay = 1000;
            this.§@G§.§[b§(§#Z§.controller.getScore(10));
            _loc6_ = this.§@G§.getValue() / _loc4_ * 2;
            if(_loc4_ <= 0)
            {
               _loc6_ = 1;
            }
            this.§ x§ = §"!d§.§>!P§.§7R§(this,{"mNewScoreCounter":this.§@G§.getValue()},{"mNewScoreCounter":0},_loc6_);
            this.§ x§.onComplete = this.§8!o§;
            this.§ x§.play();
            _loc7_ = this.§=P§();
            _loc2_ = (§5+§.getItemByName("MovieClip_StarLeft") as §4!]§).x + (§5+§.getItemByName("Container_LevelEndStripe") as §]"4§).x;
            _loc3_ = (§5+§.getItemByName("MovieClip_StarLeft") as §4!]§).y + (§5+§.getItemByName("Container_LevelEndStripe") as §]"4§).y;
            this.§1! § = new §+7§(§,!X§.§-t§,§,!X§.§^!Q§,_loc2_,_loc3_,§+7§.§^"#§,§+7§.§5!t§,_loc7_);
            §5+§.addChild(this.§1! §);
            this.§-!w§.push(this.§1! §);
         }
         else if(this.§@G§.getValue() >= _loc5_ && (§5+§.getItemByName("MovieClip_StarCenter") as §4!]§).mClip.currentLabel == "UnLit")
         {
            _loc8_ = this.§88§();
            _loc2_ = (§5+§.getItemByName("MovieClip_StarCenter") as §4!]§).x + (§5+§.getItemByName("Container_LevelEndStripe") as §]"4§).x;
            _loc3_ = (§5+§.getItemByName("MovieClip_StarCenter") as §4!]§).y + (§5+§.getItemByName("Container_LevelEndStripe") as §]"4§).y;
            this.§1! § = new §+7§(§,!X§.§-t§,§,!X§.§^!Q§,_loc2_,_loc3_,§+7§.§<S§,§+7§.§5!t§,_loc8_);
            §5+§.addChild(this.§1! §);
            this.§-!w§.push(this.§1! §);
         }
         else if(this.§@G§.getValue() >= _loc4_ && (§5+§.getItemByName("MovieClip_StarRight") as §4!]§).mClip.currentLabel == "UnLit")
         {
            this.§+"§ = true;
            _loc9_ = this.§8!u§();
            _loc2_ = (§5+§.getItemByName("MovieClip_StarRight") as §4!]§).x + (§5+§.getItemByName("Container_LevelEndStripe") as §]"4§).x;
            _loc3_ = (§5+§.getItemByName("MovieClip_StarRight") as §4!]§).y + (§5+§.getItemByName("Container_LevelEndStripe") as §]"4§).y;
            this.§1! § = new §+7§(§,!X§.§-t§,§,!X§.§^!Q§,_loc2_,_loc3_,§+7§.§[!>§,§+7§.§5!t§,_loc9_);
            §5+§.addChild(this.§1! §);
            this.§-!w§.push(this.§1! §);
         }
         else if(!this.§9;§)
         {
            this.§9;§ = true;
         }
         else
         {
            this.§&#§.stop();
            if(this.§!I§ && !this.§2"0§)
            {
               (§5+§.getItemByName("MovieClip_NewHighScoreBadge") as §4!]§).setVisibility(true);
            }
            else
            {
               (§5+§.getItemByName("MovieClip_NewHighScoreBadge") as §4!]§).setVisibility(false);
            }
            this.§1!9§ = §"!d§.§>!P§.§7R§((§5+§.getItemByName("MovieClip_NewHighScoreBadge") as §4!]§).mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":7,
               "scaleY":7
            },0.1);
            this.§1!9§.onComplete = this.§-"4§;
            this.§1!9§.play();
         }
         ++this.§2!O§;
      }
      
      protected function §=P§() : String
      {
         §%!c§.§8" §("Hiscore_Star_Splash1",§2H§);
         (§5+§.getItemByName("MovieClip_StarLeft") as §4!]§).mClip.gotoAndStop("Lit");
         return §7q§.§ !<§;
      }
      
      protected function §88§() : String
      {
         §%!c§.§8" §("Hiscore_Star_Splash2",§2H§);
         (§5+§.getItemByName("MovieClip_StarCenter") as §4!]§).mClip.gotoAndStop("Lit");
         return §7q§.§ !<§;
      }
      
      protected function §8!u§() : String
      {
         §%!c§.§8" §("Hiscore_Star_Splash3",§2H§);
         (§5+§.getItemByName("MovieClip_StarRight") as §4!]§).mClip.gotoAndStop("Lit");
         return §7q§.§ !<§;
      }
      
      private function §8!o§() : void
      {
         §%!c§.§#!G§(§?z§);
      }
      
      override protected function update(param1:Number) : void
      {
         var _loc2_:§+7§ = null;
         super.update(param1);
         §5+§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScore");
         §5+§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScoreEffects");
         for each(_loc2_ in this.§-!w§)
         {
            _loc2_.update(param1);
         }
         if(this.§#!8§ >= 0)
         {
            this.§]u§(param1);
         }
         if(nextState.length > 0)
         {
            §#Z§.§'0§.clearLevel();
         }
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§0!;§();
         this.§#!8§ = 0;
         this.mNewScoreCounter = 0;
         if(this.§ x§)
         {
            this.§ x§.stop();
            this.§ x§ = null;
         }
         if(this.§1!9§)
         {
            this.§1!9§.stop();
            this.§1!9§ = null;
         }
         §%!c§.§#!G§(§?z§);
         this.§2V§(§3!W§.COMPONENT_STATE_ACTIVE_DEFAULT);
         §5+§.setText("0","TextField_LevelEndScore");
         §5+§.setText("0","TextField_LevelEndScoreEffects");
         if(this.§5!,§)
         {
            if(§5+§.movieClip.contains(this.§5!,§))
            {
               §5+§.movieClip.removeChild(this.§5!,§);
            }
            this.§5!,§.§^!%§();
            this.§5!,§ = null;
         }
      }
      
      protected function §2V§(param1:String) : void
      {
         (§5+§.getItemByName("Button_Menu") as §73§).setComponentVisualState(param1);
         (§5+§.getItemByName("Button_Replay") as §73§).setComponentVisualState(param1);
         (§5+§.getItemByName("Button_NextLevel") as §73§).setComponentVisualState(param1);
         (§5+§.getItemByName("Button_CutScene") as §73§).setComponentVisualState(param1);
      }
      
      private function §0!;§() : void
      {
         var splash:§+7§ = null;
         if(this.§&#§)
         {
            this.§&#§.stop();
            try
            {
               this.§&#§.removeEventListener(TimerEvent.TIMER,this.§=o§);
            }
            catch(e:Error)
            {
            }
         }
         for each(splash in this.§-!w§)
         {
            if(§5+§.contains(splash))
            {
               §5+§.removeChild(splash);
            }
            splash.§^!%§();
         }
         this.§-!w§ = new Vector.<§+7§>();
         this.§4!8§();
      }
      
      protected function §4!8§() : void
      {
         (§5+§.getItemByName("TextField_BestScore") as §%`§).setVisibility(false);
         (§5+§.getItemByName("MovieClip_BestScoreStars") as §4!]§).setVisibility(false);
         (§5+§.getItemByName("TextField_NewHighScore") as §%`§).setVisibility(false);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      protected function §-d§() : void
      {
         §8!,§();
         §8!`§(this.§&!i§());
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§'!%§) : void
      {
         var _loc4_:String = null;
         switch(param2)
         {
            case "NEXT_LEVEL":
               this.§-d§();
               break;
            case "REPLAY":
               §8!`§(this.§2!p§());
               break;
            case "WATCH_REPLAY":
               §8!`§(this.§2!p§());
               if(_loc4_ = §#Z§.§'0§.§ 6§())
               {
                  §#Z§.§'0§.§0G§(_loc4_);
               }
               break;
            case "MENU":
               §%!c§.§0O§();
               §8!`§(this.§0!P§());
               break;
            case "FULLSCREEN_BUTTON":
               §,!X§.§>!G§.§4I§();
         }
      }
      
      protected function §2!p§() : String
      {
         return §5!h§.§+a§;
      }
      
      protected function §&!i§() : String
      {
         return StateCutScene.§+a§;
      }
      
      public function §0!P§() : String
      {
         return §&g§.§+a§;
      }
   }
}
