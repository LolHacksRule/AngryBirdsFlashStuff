package §#!]§
{
   import §!R§.§#!L§;
   import §!R§.§-!T§;
   import §+!2§.§%!-§;
   import §+!2§.§0!%§;
   import §+T§.§'o§;
   import §+T§.§1!7§;
   import §+T§.§?!_§;
   import §3!0§.§`i§;
   import §4Y§.§ `§;
   import §4Y§.§%n§;
   import §4Y§.§&0§;
   import §4Y§.§7`§;
   import §7"6§.§^!_§;
   import §;X§.§4!@§;
   import §@!0§.§%"!§;
   import §@!0§.§^!T§;
   import §`!s§.§9!i§;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §]!Q§ extends §3_§
   {
      
      public static const §]!y§:String = "LevelEndState";
      
      public static const §&m§:Number = 30;
      
      protected static const §"D§:String = "ScoreLoopCountChannel";
      
      protected static const §!!Y§:String = "EndScreenEffectChannel";
       
      
      private var §3"!§:§^!T§;
      
      private var §!"'§:Number;
      
      private var §8^§:Number = 0.0;
      
      private var §>!9§:Number = 0.0;
      
      private var §'l§:Boolean = false;
      
      private var §;$§:Timer;
      
      private var §4!?§:§1!7§;
      
      protected var §=!x§:Array;
      
      protected var §>!h§:§'o§;
      
      protected var §6V§:Vector.<§'o§>;
      
      public var mNewScoreCounter:int;
      
      private var §`!y§:int;
      
      private var §[E§:Boolean;
      
      protected var §7f§:Boolean;
      
      private var §8!i§:§9!i§;
      
      protected var §;!g§:Boolean;
      
      private var § !x§:§^!T§;
      
      protected var §'!i§:Boolean;
      
      protected var §>Z§:int;
      
      public function §]!Q§(param1:§-g§, param2:§^!_§, param3:Boolean = false, param4:String = "LevelEndState")
      {
         this.§=!x§ = [];
         this.§8!i§ = new §9!i§();
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         §4!q§ = new §0!%§(this);
         §4!q§.init(this.§';§());
         this.§!H§();
         this.§6V§ = new Vector.<§'o§>();
         §4!@§.§=x§(§"D§,1,1);
         §4!@§.§=x§(§!!Y§,3,1);
      }
      
      protected function §!H§() : void
      {
         this.§=!x§.push((§4!q§.getItemByName("Button_Menu") as § `§).x);
         this.§=!x§.push((§4!q§.getItemByName("Button_Replay") as § `§).x);
         this.§=!x§.push((§4!q§.getItemByName("Button_NextLevel") as § `§).x);
         this.§=!x§.push((§4!q§.getItemByName("Button_CutScene") as § `§).x);
      }
      
      protected function §';§() : XML
      {
         return §%!-§.§#t§.Views.View_LevelEnd[0];
      }
      
      protected function §?,§() : void
      {
         if(!§-!2§.§7O§.§ !n§.userProgress.§@6§(§#n§.currentLevel))
         {
            (§4!q§.getItemByName("Button_Menu") as § `§).setVisibility(false);
            (§4!q§.getItemByName("Button_Replay") as § `§).setVisibility(true);
            (§4!q§.getItemByName("Button_NextLevel") as § `§).setVisibility(false);
            (§4!q§.getItemByName("Button_CutScene") as § `§).setVisibility(true);
            (§4!q§.getItemByName("Button_Replay") as § `§).x = this.§=!x§[0] + Math.abs(this.§=!x§[1] - this.§=!x§[0]) / 2;
            (§4!q§.getItemByName("Button_CutScene") as § `§).x = this.§=!x§[1] + Math.abs(this.§=!x§[2] - this.§=!x§[1]) / 2;
         }
         else
         {
            (§4!q§.getItemByName("Button_Menu") as § `§).setVisibility(true);
            (§4!q§.getItemByName("Button_Replay") as § `§).setVisibility(true);
            (§4!q§.getItemByName("Button_NextLevel") as § `§).setVisibility(false);
            (§4!q§.getItemByName("Button_CutScene") as § `§).setVisibility(true);
            (§4!q§.getItemByName("Button_Menu") as § `§).x = this.§=!x§[0];
            (§4!q§.getItemByName("Button_Replay") as § `§).x = this.§=!x§[1];
            (§4!q§.getItemByName("Button_CutScene") as § `§).x = this.§=!x§[2];
         }
      }
      
      protected function §#&§() : void
      {
         (§4!q§.getItemByName("Button_Menu") as § `§).setVisibility(true);
         (§4!q§.getItemByName("Button_Replay") as § `§).setVisibility(true);
         (§4!q§.getItemByName("Button_CutScene") as § `§).setVisibility(false);
         if(§#n§.getNextLevelId())
         {
            (§4!q§.getItemByName("Button_NextLevel") as § `§).setVisibility(true);
            (§4!q§.getItemByName("Button_Menu") as § `§).x = this.§=!x§[0];
            (§4!q§.getItemByName("Button_Replay") as § `§).x = this.§=!x§[1];
            (§4!q§.getItemByName("Button_NextLevel") as § `§).x = this.§=!x§[2];
         }
         else
         {
            (§4!q§.getItemByName("Button_NextLevel") as § `§).setVisibility(false);
            (§4!q§.getItemByName("Button_Menu") as § `§).x = this.§=!x§[0] + Math.abs(this.§=!x§[1] - this.§=!x§[0]) / 2;
            (§4!q§.getItemByName("Button_Replay") as § `§).x = this.§=!x§[1] + Math.abs(this.§=!x§[2] - this.§=!x§[1]) / 2;
         }
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.§'!i§ = false;
         §`i§.pause();
         this.§4!?§ = new §1!7§(0,0,0,0);
         §4!q§.movieClip.addChildAt(this.§4!?§,§4!q§.movieClip.numChildren - 1);
         if(§#n§.isCutSceneNext())
         {
            this.§?,§();
         }
         else
         {
            this.§#&§();
         }
         this.mNewScoreCounter = 0;
         this.§[E§ = false;
         §4!@§.§`!w§("LevelCompletedTheme1");
         this.§4!?§.§2u§(0.7);
         this.§8^§ = 0;
         this.§>!9§ = 0;
         this.§;!y§();
      }
      
      private function §;!y§() : void
      {
         this.§7f§ = false;
         this.§2!C§();
         this.§;$§ = new Timer(500);
         this.§`!y§ = 0;
         this.§;$§.addEventListener(TimerEvent.TIMER,this.§3`§);
         this.§;$§.start();
      }
      
      protected function §97§() : void
      {
         if(§-!2§.§7O§.§ !n§.userProgress.§4F§(§#n§.currentLevel) == 100)
         {
            (§4!q§.getItemByName("MovieClip_ResultMEFeather") as §7`§).mClip.gotoAndStop("On");
         }
         else
         {
            (§4!q§.getItemByName("MovieClip_ResultMEFeather") as §7`§).mClip.gotoAndStop("Off");
         }
      }
      
      protected function § '§(param1:int, param2:int) : void
      {
         if(this.§;!g§)
         {
            param2 = param1;
            §-!2§.§7O§.§ !n§.userProgress.setScoreForLevel(§#n§.currentLevel,param2);
            §4!q§.setText("New Highscore!","TextField_BestScore");
         }
         else
         {
            §4!q§.setText("Best " + param2.toString(),"TextField_BestScore");
            this.§>Z§ = §#n§.getNumStarsForLevel(§#n§.currentLevel,param2);
            switch(this.§>Z§)
            {
               case 1:
                  (§4!q§.getItemByName("MovieClip_BestScoreStars") as §7`§).§",§("OneStar");
                  break;
               case 2:
                  (§4!q§.getItemByName("MovieClip_BestScoreStars") as §7`§).§",§("TwoStar");
                  break;
               case 3:
                  (§4!q§.getItemByName("MovieClip_BestScoreStars") as §7`§).§",§("ThreeStar");
            }
         }
      }
      
      protected function §2!C§() : void
      {
         var _loc1_:int = §-!2§.§7O§.§ !n§.userProgress.getScoreForLevel(§#n§.currentLevel);
         var _loc2_:int = §`i§.controller.getScore(10);
         this.§;!g§ = _loc2_ > _loc1_;
         this.§ '§(_loc2_,_loc1_);
         this.§97§();
         var _loc3_:int = §`i§.controller.getEagleScore();
         var _loc4_:int = §-!2§.§7O§.§ !n§.userProgress.§4F§(§#n§.currentLevel);
         var _loc5_:*;
         if(_loc5_ = _loc3_ > _loc4_)
         {
            _loc4_ = _loc3_;
            §-!2§.§7O§.§ !n§.userProgress.§]!7§(§#n§.currentLevel,_loc4_);
         }
         var _loc6_:int = §-!2§.§7O§.§ !n§.userProgress.§-t§(§#n§.currentLevel,_loc2_);
         (§4!q§.getItemByName("MovieClip_NewHighScoreBadge") as §7`§).setVisibility(false);
         (§4!q§.getItemByName("MovieClip_StarLeft") as §7`§).mClip.gotoAndStop("UnLit");
         (§4!q§.getItemByName("MovieClip_StarCenter") as §7`§).mClip.gotoAndStop("UnLit");
         (§4!q§.getItemByName("MovieClip_StarRight") as §7`§).mClip.gotoAndStop("UnLit");
      }
      
      protected function §[!N§() : void
      {
         if(this.§;!g§)
         {
            §4!@§.§`!w§("Hiscore_Badge",§!!Y§);
            §4!q§.setText("New Highscore!","TextField_NewHighScore");
            (§4!q§.getItemByName("TextField_NewHighScore") as §&0§).setVisibility(true);
            (§4!q§.getItemByName("MovieClip_BestScoreStars") as §7`§).setVisibility(false);
            this.§9!e§();
         }
         else
         {
            (§4!q§.getItemByName("TextField_BestScore") as §&0§).setVisibility(true);
            (§4!q§.getItemByName("MovieClip_BestScoreStars") as §7`§).setVisibility(true);
         }
      }
      
      protected function §9!e§() : void
      {
         this.§8^§ = 0;
         this.§>!9§ = 0;
         this.§!"'§ = §&m§;
      }
      
      private function §<!"§(param1:Number) : void
      {
         (§4!q§.getItemByName("Container_LevelEndStripe") as §%n§).x = (§4!q§.getItemByName("Container_LevelEndStripe") as §%n§).x - this.§8^§;
         (§4!q§.getItemByName("Container_LevelEndStripe") as §%n§).y = (§4!q§.getItemByName("Container_LevelEndStripe") as §%n§).y - this.§>!9§;
         if(this.§!"'§ > 0)
         {
            this.§8^§ = (Math.random() - 0.5) * (this.§!"'§ / §&m§) * 20;
            this.§>!9§ = (Math.random() - 0.5) * (this.§!"'§ / §&m§) * 20;
            (§4!q§.getItemByName("Container_LevelEndStripe") as §%n§).x = (§4!q§.getItemByName("Container_LevelEndStripe") as §%n§).x + this.§8^§;
            (§4!q§.getItemByName("Container_LevelEndStripe") as §%n§).y = (§4!q§.getItemByName("Container_LevelEndStripe") as §%n§).y + this.§>!9§;
         }
         else
         {
            this.§8^§ = 0;
            this.§>!9§ = 0;
         }
         this.§!"'§ -= param1 / 10;
      }
      
      private function §3`§(param1:TimerEvent) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:String = null;
         var _loc8_:String = null;
         var _loc9_:String = null;
         var _loc4_:Number = §#n§.getGoldScoreForLevel(§#n§.currentLevel);
         var _loc5_:Number = §#n§.getSilverScoreForLevel(§#n§.currentLevel);
         if((§4!q§.getItemByName("MovieClip_StarLeft") as §7`§).mClip.currentLabel == "UnLit")
         {
            §4!@§.§`!w§("Hiscore_Count",§"D§,100);
            this.§;$§.delay = 1000;
            this.§8!i§.§7v§(§`i§.controller.getScore(10));
            _loc6_ = this.§8!i§.getValue() / _loc4_ * 2;
            if(_loc4_ <= 0)
            {
               _loc6_ = 1;
            }
            this.§ !x§ = §%"!§.§&!;§.§"!]§(this,{"mNewScoreCounter":this.§8!i§.getValue()},{"mNewScoreCounter":0},_loc6_);
            this.§ !x§.onComplete = this.§,6§;
            this.§ !x§.play();
            _loc7_ = this.§>E§();
            _loc2_ = (§4!q§.getItemByName("MovieClip_StarLeft") as §7`§).x + (§4!q§.getItemByName("Container_LevelEndStripe") as §%n§).x;
            _loc3_ = (§4!q§.getItemByName("MovieClip_StarLeft") as §7`§).y + (§4!q§.getItemByName("Container_LevelEndStripe") as §%n§).y;
            this.§>!h§ = new §'o§(§-!2§.§2d§,§-!2§.§^s§,_loc2_,_loc3_,§'o§.§4!3§,§'o§.§=;§,_loc7_);
            §4!q§.addChild(this.§>!h§);
            this.§6V§.push(this.§>!h§);
         }
         else if(this.§8!i§.getValue() >= _loc5_ && (§4!q§.getItemByName("MovieClip_StarCenter") as §7`§).mClip.currentLabel == "UnLit")
         {
            _loc8_ = this.§#!?§();
            _loc2_ = (§4!q§.getItemByName("MovieClip_StarCenter") as §7`§).x + (§4!q§.getItemByName("Container_LevelEndStripe") as §%n§).x;
            _loc3_ = (§4!q§.getItemByName("MovieClip_StarCenter") as §7`§).y + (§4!q§.getItemByName("Container_LevelEndStripe") as §%n§).y;
            this.§>!h§ = new §'o§(§-!2§.§2d§,§-!2§.§^s§,_loc2_,_loc3_,§'o§.§!"1§,§'o§.§=;§,_loc8_);
            §4!q§.addChild(this.§>!h§);
            this.§6V§.push(this.§>!h§);
         }
         else if(this.§8!i§.getValue() >= _loc4_ && (§4!q§.getItemByName("MovieClip_StarRight") as §7`§).mClip.currentLabel == "UnLit")
         {
            this.§'!i§ = true;
            _loc9_ = this.§+!N§();
            _loc2_ = (§4!q§.getItemByName("MovieClip_StarRight") as §7`§).x + (§4!q§.getItemByName("Container_LevelEndStripe") as §%n§).x;
            _loc3_ = (§4!q§.getItemByName("MovieClip_StarRight") as §7`§).y + (§4!q§.getItemByName("Container_LevelEndStripe") as §%n§).y;
            this.§>!h§ = new §'o§(§-!2§.§2d§,§-!2§.§^s§,_loc2_,_loc3_,§'o§.§ "8§,§'o§.§=;§,_loc9_);
            §4!q§.addChild(this.§>!h§);
            this.§6V§.push(this.§>!h§);
         }
         else if(!this.§[E§)
         {
            this.§[E§ = true;
         }
         else
         {
            this.§;$§.stop();
            if(this.§;!g§ && !this.§7f§)
            {
               (§4!q§.getItemByName("MovieClip_NewHighScoreBadge") as §7`§).setVisibility(true);
            }
            else
            {
               (§4!q§.getItemByName("MovieClip_NewHighScoreBadge") as §7`§).setVisibility(false);
            }
            this.§3"!§ = §%"!§.§&!;§.§"!]§((§4!q§.getItemByName("MovieClip_NewHighScoreBadge") as §7`§).mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":7,
               "scaleY":7
            },0.1);
            this.§3"!§.onComplete = this.§[!N§;
            this.§3"!§.play();
         }
         ++this.§`!y§;
      }
      
      protected function §>E§() : String
      {
         §4!@§.§`!w§("Hiscore_Star_Splash1",§!!Y§);
         (§4!q§.getItemByName("MovieClip_StarLeft") as §7`§).mClip.gotoAndStop("Lit");
         return §?!_§.§^!Y§;
      }
      
      protected function §#!?§() : String
      {
         §4!@§.§`!w§("Hiscore_Star_Splash2",§!!Y§);
         (§4!q§.getItemByName("MovieClip_StarCenter") as §7`§).mClip.gotoAndStop("Lit");
         return §?!_§.§^!Y§;
      }
      
      protected function §+!N§() : String
      {
         §4!@§.§`!w§("Hiscore_Star_Splash3",§!!Y§);
         (§4!q§.getItemByName("MovieClip_StarRight") as §7`§).mClip.gotoAndStop("Lit");
         return §?!_§.§^!Y§;
      }
      
      private function §,6§() : void
      {
         §4!@§.§`[§(§"D§);
      }
      
      override protected function update(param1:Number) : void
      {
         var _loc2_:§'o§ = null;
         super.update(param1);
         §4!q§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScore");
         §4!q§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScoreEffects");
         for each(_loc2_ in this.§6V§)
         {
            _loc2_.update(param1);
         }
         if(this.§!"'§ >= 0)
         {
            this.§<!"§(param1);
         }
         if(nextState.length > 0)
         {
            §`i§.§&!L§.clearLevel();
         }
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§80§();
         this.§!"'§ = 0;
         this.mNewScoreCounter = 0;
         if(this.§ !x§)
         {
            this.§ !x§.stop();
            this.§ !x§ = null;
         }
         if(this.§3"!§)
         {
            this.§3"!§.stop();
            this.§3"!§ = null;
         }
         §4!@§.§`[§(§"D§);
         this.§#B§(§-!T§.COMPONENT_STATE_ACTIVE_DEFAULT);
         §4!q§.setText("0","TextField_LevelEndScore");
         §4!q§.setText("0","TextField_LevelEndScoreEffects");
         if(this.§4!?§)
         {
            if(§4!q§.movieClip.contains(this.§4!?§))
            {
               §4!q§.movieClip.removeChild(this.§4!?§);
            }
            this.§4!?§.§6!h§();
            this.§4!?§ = null;
         }
      }
      
      protected function §#B§(param1:String) : void
      {
         (§4!q§.getItemByName("Button_Menu") as § `§).setComponentVisualState(param1);
         (§4!q§.getItemByName("Button_Replay") as § `§).setComponentVisualState(param1);
         (§4!q§.getItemByName("Button_NextLevel") as § `§).setComponentVisualState(param1);
         (§4!q§.getItemByName("Button_CutScene") as § `§).setComponentVisualState(param1);
      }
      
      private function §80§() : void
      {
         var splash:§'o§ = null;
         if(this.§;$§)
         {
            this.§;$§.stop();
            try
            {
               this.§;$§.removeEventListener(TimerEvent.TIMER,this.§3`§);
            }
            catch(e:Error)
            {
            }
         }
         for each(splash in this.§6V§)
         {
            if(§4!q§.contains(splash))
            {
               §4!q§.removeChild(splash);
            }
            splash.§6!h§();
         }
         this.§6V§ = new Vector.<§'o§>();
         this.§8_§();
      }
      
      protected function §8_§() : void
      {
         (§4!q§.getItemByName("TextField_BestScore") as §&0§).setVisibility(false);
         (§4!q§.getItemByName("MovieClip_BestScoreStars") as §7`§).setVisibility(false);
         (§4!q§.getItemByName("TextField_NewHighScore") as §&0§).setVisibility(false);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      protected function §?"1§() : void
      {
         §4o§();
         §]a§(this.§^"0§());
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§#!L§) : void
      {
         var _loc4_:String = null;
         switch(param2)
         {
            case "NEXT_LEVEL":
               this.§?"1§();
               break;
            case "REPLAY":
               §]a§(this.§%4§());
               break;
            case "WATCH_REPLAY":
               §]a§(this.§%4§());
               if(_loc4_ = §`i§.§&!L§.§'!?§())
               {
                  §`i§.§&!L§.§ !T§(_loc4_);
               }
               break;
            case "MENU":
               §4!@§.§ true§();
               §]a§(this.§8!8§());
               break;
            case "FULLSCREEN_BUTTON":
               §-!2§.§7O§.§#!p§();
         }
      }
      
      protected function §%4§() : String
      {
         return §6U§.§]!y§;
      }
      
      protected function §^"0§() : String
      {
         return StateCutScene.§]!y§;
      }
      
      public function §8!8§() : String
      {
         return §=A§.§]!y§;
      }
   }
}
