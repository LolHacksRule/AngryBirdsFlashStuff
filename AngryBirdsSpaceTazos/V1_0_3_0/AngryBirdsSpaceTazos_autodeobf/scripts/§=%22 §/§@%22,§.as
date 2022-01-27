package §=" §
{
   import §'!n§.§??§;
   import §+k§.§0"4§;
   import §+k§.§7x§;
   import §,!7§.§%!J§;
   import §,!7§.§2a§;
   import §,!7§.§5!k§;
   import §,!7§.§8,§;
   import §4",§.§,!j§;
   import §6B§.§5![§;
   import §6B§.§?"2§;
   import §7!C§.§8!w§;
   import §71§.§;l§;
   import §9!L§.§&" §;
   import §9!L§.§8u§;
   import §9!U§.§15§;
   import §9!U§.§@F§;
   import §>"!§.§@!9§;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §@",§ extends §[!B§
   {
      
      public static const STATE_NAME:String = "LevelEndState";
      
      public static const § !w§:Number = 30;
      
      protected static const §6"=§:String = "ScoreLoopCountChannel";
      
      protected static const §6"<§:String = "EndScreenEffectChannel";
       
      
      private var §1!t§:§15§;
      
      private var § !f§:Number;
      
      private var §1!e§:Number = 0.0;
      
      private var §7!w§:Number = 0.0;
      
      private var §`8§:Boolean = false;
      
      private var §+!2§:Timer;
      
      private var §`!5§:§8u§;
      
      protected var §3&§:Array;
      
      protected var §;"B§:§&" §;
      
      protected var §`!>§:Vector.<§&" §>;
      
      public var mNewScoreCounter:int;
      
      private var §,q§:int;
      
      private var §2"C§:Boolean;
      
      protected var §@i§:Boolean;
      
      private var §20§:§??§;
      
      protected var §-[§:Boolean;
      
      private var §%!V§:§15§;
      
      protected var §!!8§:Boolean;
      
      protected var §,7§:int;
      
      public function §@",§(param1:§,!j§, param2:§;l§, param3:Boolean = false, param4:String = "LevelEndState")
      {
         this.§3&§ = [];
         this.§20§ = new §??§();
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         §6!J§ = new §0"4§(this);
         §6!J§.init(this.§98§());
         this.§[W§();
         this.§`!>§ = new Vector.<§&" §>();
         §@!9§.§#!-§(§6"=§,1,1);
         §@!9§.§#!-§(§6"<§,3,1);
      }
      
      protected function §[W§() : void
      {
         this.§3&§.push((§6!J§.getItemByName("Button_Menu") as §%!J§).x);
         this.§3&§.push((§6!J§.getItemByName("Button_Replay") as §%!J§).x);
         this.§3&§.push((§6!J§.getItemByName("Button_NextLevel") as §%!J§).x);
         this.§3&§.push((§6!J§.getItemByName("Button_CutScene") as §%!J§).x);
      }
      
      protected function §98§() : XML
      {
         return §7x§.§+2§.Views.View_LevelEnd[0];
      }
      
      protected function §=!S§() : void
      {
         if(!§&"<§.§<!7§.§,!9§.userProgress.§[!G§(§]m§.currentLevel))
         {
            (§6!J§.getItemByName("Button_Menu") as §%!J§).setVisibility(false);
            (§6!J§.getItemByName("Button_Replay") as §%!J§).setVisibility(true);
            (§6!J§.getItemByName("Button_NextLevel") as §%!J§).setVisibility(false);
            (§6!J§.getItemByName("Button_CutScene") as §%!J§).setVisibility(true);
            (§6!J§.getItemByName("Button_Replay") as §%!J§).x = this.§3&§[0] + Math.abs(this.§3&§[1] - this.§3&§[0]) / 2;
            (§6!J§.getItemByName("Button_CutScene") as §%!J§).x = this.§3&§[1] + Math.abs(this.§3&§[2] - this.§3&§[1]) / 2;
         }
         else
         {
            (§6!J§.getItemByName("Button_Menu") as §%!J§).setVisibility(true);
            (§6!J§.getItemByName("Button_Replay") as §%!J§).setVisibility(true);
            (§6!J§.getItemByName("Button_NextLevel") as §%!J§).setVisibility(false);
            (§6!J§.getItemByName("Button_CutScene") as §%!J§).setVisibility(true);
            (§6!J§.getItemByName("Button_Menu") as §%!J§).x = this.§3&§[0];
            (§6!J§.getItemByName("Button_Replay") as §%!J§).x = this.§3&§[1];
            (§6!J§.getItemByName("Button_CutScene") as §%!J§).x = this.§3&§[2];
         }
      }
      
      protected function §!I§() : void
      {
         (§6!J§.getItemByName("Button_Menu") as §%!J§).setVisibility(true);
         (§6!J§.getItemByName("Button_Replay") as §%!J§).setVisibility(true);
         (§6!J§.getItemByName("Button_CutScene") as §%!J§).setVisibility(false);
         if(§]m§.getNextLevelId())
         {
            (§6!J§.getItemByName("Button_NextLevel") as §%!J§).setVisibility(true);
            (§6!J§.getItemByName("Button_Menu") as §%!J§).x = this.§3&§[0];
            (§6!J§.getItemByName("Button_Replay") as §%!J§).x = this.§3&§[1];
            (§6!J§.getItemByName("Button_NextLevel") as §%!J§).x = this.§3&§[2];
         }
         else
         {
            (§6!J§.getItemByName("Button_NextLevel") as §%!J§).setVisibility(false);
            (§6!J§.getItemByName("Button_Menu") as §%!J§).x = this.§3&§[0] + Math.abs(this.§3&§[1] - this.§3&§[0]) / 2;
            (§6!J§.getItemByName("Button_Replay") as §%!J§).x = this.§3&§[1] + Math.abs(this.§3&§[2] - this.§3&§[1]) / 2;
         }
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.§!!8§ = false;
         §8!w§.pause();
         this.§`!5§ = new §8u§(0,0,0,0);
         §6!J§.movieClip.addChildAt(this.§`!5§,§6!J§.movieClip.numChildren - 1);
         if(§]m§.isCutSceneNext())
         {
            this.§=!S§();
         }
         else
         {
            this.§!I§();
         }
         this.mNewScoreCounter = 0;
         this.§2"C§ = false;
         §@!9§.playSound("LevelCompletedTheme1");
         this.§`!5§.§<"&§(0.7);
         this.§1!e§ = 0;
         this.§7!w§ = 0;
         this.§@L§();
      }
      
      private function §@L§() : void
      {
         this.§@i§ = false;
         this.§@o§();
         this.§+!2§ = new Timer(500);
         this.§,q§ = 0;
         this.§+!2§.addEventListener(TimerEvent.TIMER,this.§30§);
         this.§+!2§.start();
      }
      
      protected function §-"C§() : void
      {
         if(§&"<§.§<!7§.§,!9§.userProgress.§%!O§(§]m§.currentLevel) == 100)
         {
            (§6!J§.getItemByName("MovieClip_ResultMEFeather") as §8,§).mClip.gotoAndStop("On");
         }
         else
         {
            (§6!J§.getItemByName("MovieClip_ResultMEFeather") as §8,§).mClip.gotoAndStop("Off");
         }
      }
      
      protected function §[!H§(param1:int, param2:int) : void
      {
         if(this.§-[§)
         {
            param2 = param1;
            §&"<§.§<!7§.§,!9§.userProgress.§0"3§(§]m§.currentLevel,param2);
            §6!J§.setText("New Highscore!","TextField_BestScore");
         }
         else
         {
            §6!J§.setText("Best " + param2.toString(),"TextField_BestScore");
            this.§,7§ = §]m§.getNumStarsForLevel(§]m§.currentLevel,param2);
            switch(this.§,7§)
            {
               case 1:
                  (§6!J§.getItemByName("MovieClip_BestScoreStars") as §8,§).§9R§("OneStar");
                  break;
               case 2:
                  (§6!J§.getItemByName("MovieClip_BestScoreStars") as §8,§).§9R§("TwoStar");
                  break;
               case 3:
                  (§6!J§.getItemByName("MovieClip_BestScoreStars") as §8,§).§9R§("ThreeStar");
            }
         }
      }
      
      protected function §@o§() : void
      {
         var _loc1_:int = §&"<§.§<!7§.§,!9§.userProgress.getScoreForLevel(§]m§.currentLevel);
         var _loc2_:int = §8!w§.§79§.getScore(10);
         this.§-[§ = _loc2_ > _loc1_;
         this.§[!H§(_loc2_,_loc1_);
         this.§-"C§();
         var _loc3_:int = §8!w§.§79§.getEagleScore();
         var _loc4_:int = §&"<§.§<!7§.§,!9§.userProgress.§%!O§(§]m§.currentLevel);
         var _loc5_:*;
         if(_loc5_ = _loc3_ > _loc4_)
         {
            _loc4_ = _loc3_;
            §&"<§.§<!7§.§,!9§.userProgress.§ ""§(§]m§.currentLevel,_loc4_);
         }
         var _loc6_:int = §&"<§.§<!7§.§,!9§.userProgress.§7=§(§]m§.currentLevel,_loc2_);
         (§6!J§.getItemByName("MovieClip_NewHighScoreBadge") as §8,§).setVisibility(false);
         (§6!J§.getItemByName("MovieClip_StarLeft") as §8,§).mClip.gotoAndStop("UnLit");
         (§6!J§.getItemByName("MovieClip_StarCenter") as §8,§).mClip.gotoAndStop("UnLit");
         (§6!J§.getItemByName("MovieClip_StarRight") as §8,§).mClip.gotoAndStop("UnLit");
      }
      
      protected function §1"%§() : void
      {
         if(this.§-[§)
         {
            §@!9§.playSound("Hiscore_Badge",§6"<§);
            §6!J§.setText("New Highscore!","TextField_NewHighScore");
            (§6!J§.getItemByName("TextField_NewHighScore") as §2a§).setVisibility(true);
            (§6!J§.getItemByName("MovieClip_BestScoreStars") as §8,§).setVisibility(false);
            this.§7!'§();
         }
         else
         {
            (§6!J§.getItemByName("TextField_BestScore") as §2a§).setVisibility(true);
            (§6!J§.getItemByName("MovieClip_BestScoreStars") as §8,§).setVisibility(true);
         }
      }
      
      protected function §7!'§() : void
      {
         this.§1!e§ = 0;
         this.§7!w§ = 0;
         this.§ !f§ = § !w§;
      }
      
      private function §;!^§(param1:Number) : void
      {
         (§6!J§.getItemByName("Container_LevelEndStripe") as §5!k§).x = (§6!J§.getItemByName("Container_LevelEndStripe") as §5!k§).x - this.§1!e§;
         (§6!J§.getItemByName("Container_LevelEndStripe") as §5!k§).y = (§6!J§.getItemByName("Container_LevelEndStripe") as §5!k§).y - this.§7!w§;
         if(this.§ !f§ > 0)
         {
            this.§1!e§ = (Math.random() - 0.5) * (this.§ !f§ / § !w§) * 20;
            this.§7!w§ = (Math.random() - 0.5) * (this.§ !f§ / § !w§) * 20;
            (§6!J§.getItemByName("Container_LevelEndStripe") as §5!k§).x = (§6!J§.getItemByName("Container_LevelEndStripe") as §5!k§).x + this.§1!e§;
            (§6!J§.getItemByName("Container_LevelEndStripe") as §5!k§).y = (§6!J§.getItemByName("Container_LevelEndStripe") as §5!k§).y + this.§7!w§;
         }
         else
         {
            this.§1!e§ = 0;
            this.§7!w§ = 0;
         }
         this.§ !f§ -= param1 / 10;
      }
      
      private function §30§(param1:TimerEvent) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc4_:Number = §]m§.getGoldScoreForLevel(§]m§.currentLevel);
         var _loc5_:Number = §]m§.getSilverScoreForLevel(§]m§.currentLevel);
         if((§6!J§.getItemByName("MovieClip_StarLeft") as §8,§).mClip.currentLabel == "UnLit")
         {
            §@!9§.playSound("Hiscore_Count",§6"=§,100);
            §@!9§.playSound("Hiscore_Star_Splash1",§6"<§);
            this.§+!2§.delay = 1000;
            this.§20§.§8!K§(§8!w§.§79§.getScore(10));
            _loc6_ = this.§20§.getValue() / _loc4_ * 2;
            if(_loc4_ <= 0)
            {
               _loc6_ = 1;
            }
            this.§%!V§ = §@F§.§8!J§.§&6§(this,{"mNewScoreCounter":this.§20§.getValue()},{"mNewScoreCounter":0},_loc6_);
            this.§%!V§.onComplete = this.§[u§;
            this.§%!V§.play();
            (§6!J§.getItemByName("MovieClip_StarLeft") as §8,§).mClip.gotoAndStop("Lit");
            _loc2_ = (§6!J§.getItemByName("MovieClip_StarLeft") as §8,§).x + (§6!J§.getItemByName("Container_LevelEndStripe") as §5!k§).x;
            _loc3_ = (§6!J§.getItemByName("MovieClip_StarLeft") as §8,§).y + (§6!J§.getItemByName("Container_LevelEndStripe") as §5!k§).y;
            this.§;"B§ = new §&" §(§&"<§.screenWidth,§&"<§.screenHeight,_loc2_,_loc3_,§&" §.§@A§);
            §6!J§.addChild(this.§;"B§);
            this.§`!>§.push(this.§;"B§);
         }
         else if(this.§20§.getValue() >= _loc5_ && (§6!J§.getItemByName("MovieClip_StarCenter") as §8,§).mClip.currentLabel == "UnLit")
         {
            §@!9§.playSound("Hiscore_Star_Splash2",§6"<§);
            (§6!J§.getItemByName("MovieClip_StarCenter") as §8,§).mClip.gotoAndStop("Lit");
            _loc2_ = (§6!J§.getItemByName("MovieClip_StarCenter") as §8,§).x + (§6!J§.getItemByName("Container_LevelEndStripe") as §5!k§).x;
            _loc3_ = (§6!J§.getItemByName("MovieClip_StarCenter") as §8,§).y + (§6!J§.getItemByName("Container_LevelEndStripe") as §5!k§).y;
            this.§;"B§ = new §&" §(§&"<§.screenWidth,§&"<§.screenHeight,_loc2_,_loc3_,§&" §.§1+§);
            §6!J§.addChild(this.§;"B§);
            this.§`!>§.push(this.§;"B§);
         }
         else if(this.§20§.getValue() >= _loc4_ && (§6!J§.getItemByName("MovieClip_StarRight") as §8,§).mClip.currentLabel == "UnLit")
         {
            this.§!!8§ = true;
            §@!9§.playSound("Hiscore_Star_Splash3",§6"<§);
            (§6!J§.getItemByName("MovieClip_StarRight") as §8,§).mClip.gotoAndStop("Lit");
            _loc2_ = (§6!J§.getItemByName("MovieClip_StarRight") as §8,§).x + (§6!J§.getItemByName("Container_LevelEndStripe") as §5!k§).x;
            _loc3_ = (§6!J§.getItemByName("MovieClip_StarRight") as §8,§).y + (§6!J§.getItemByName("Container_LevelEndStripe") as §5!k§).y;
            this.§;"B§ = new §&" §(§&"<§.screenWidth,§&"<§.screenHeight,_loc2_,_loc3_,§&" §.§%!+§);
            §6!J§.addChild(this.§;"B§);
            this.§`!>§.push(this.§;"B§);
         }
         else if(!this.§2"C§)
         {
            this.§2"C§ = true;
         }
         else
         {
            this.§+!2§.stop();
            if(this.§-[§ && !this.§@i§)
            {
               (§6!J§.getItemByName("MovieClip_NewHighScoreBadge") as §8,§).setVisibility(true);
            }
            else
            {
               (§6!J§.getItemByName("MovieClip_NewHighScoreBadge") as §8,§).setVisibility(false);
            }
            this.§1!t§ = §@F§.§8!J§.§&6§((§6!J§.getItemByName("MovieClip_NewHighScoreBadge") as §8,§).mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":7,
               "scaleY":7
            },0.1);
            this.§1!t§.onComplete = this.§1"%§;
            this.§1!t§.play();
         }
         ++this.§,q§;
      }
      
      private function §[u§() : void
      {
         §@!9§.§"!y§(§6"=§);
      }
      
      override protected function update(param1:Number) : void
      {
         var _loc2_:§&" § = null;
         super.update(param1);
         §6!J§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScore");
         §6!J§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScoreEffects");
         for each(_loc2_ in this.§`!>§)
         {
            _loc2_.update(param1);
         }
         if(this.§ !f§ >= 0)
         {
            this.§;!^§(param1);
         }
         if(nextState.length > 0)
         {
            §8!w§.§5!V§.clearLevel();
         }
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§=!b§();
         this.§ !f§ = 0;
         this.mNewScoreCounter = 0;
         if(this.§%!V§)
         {
            this.§%!V§.stop();
            this.§%!V§ = null;
         }
         if(this.§1!t§)
         {
            this.§1!t§.stop();
            this.§1!t§ = null;
         }
         §@!9§.§"!y§(§6"=§);
         this.§ !L§(§5![§.COMPONENT_STATE_ACTIVE_DEFAULT);
         §6!J§.setText("0","TextField_LevelEndScore");
         §6!J§.setText("0","TextField_LevelEndScoreEffects");
         if(this.§`!5§)
         {
            if(§6!J§.movieClip.contains(this.§`!5§))
            {
               §6!J§.movieClip.removeChild(this.§`!5§);
            }
            this.§`!5§.§&!§();
            this.§`!5§ = null;
         }
      }
      
      protected function § !L§(param1:String) : void
      {
         (§6!J§.getItemByName("Button_Menu") as §%!J§).setComponentVisualState(param1);
         (§6!J§.getItemByName("Button_Replay") as §%!J§).setComponentVisualState(param1);
         (§6!J§.getItemByName("Button_NextLevel") as §%!J§).setComponentVisualState(param1);
         (§6!J§.getItemByName("Button_CutScene") as §%!J§).setComponentVisualState(param1);
      }
      
      private function §=!b§() : void
      {
         var splash:§&" § = null;
         if(this.§+!2§)
         {
            this.§+!2§.stop();
            try
            {
               this.§+!2§.removeEventListener(TimerEvent.TIMER,this.§30§);
            }
            catch(e:Error)
            {
            }
         }
         for each(splash in this.§`!>§)
         {
            if(§6!J§.contains(splash))
            {
               §6!J§.removeChild(splash);
            }
            splash.§&!§();
         }
         this.§`!>§ = new Vector.<§&" §>();
         this.§'R§();
      }
      
      protected function §'R§() : void
      {
         (§6!J§.getItemByName("TextField_BestScore") as §2a§).setVisibility(false);
         (§6!J§.getItemByName("MovieClip_BestScoreStars") as §8,§).setVisibility(false);
         (§6!J§.getItemByName("TextField_NewHighScore") as §2a§).setVisibility(false);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      protected function §'E§() : void
      {
         §5u§();
         §'Q§(this.§?i§());
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§?"2§) : void
      {
         var _loc4_:String = null;
         switch(param2)
         {
            case "NEXT_LEVEL":
               this.§'E§();
               break;
            case "REPLAY":
               §'Q§(this.§@!j§());
               break;
            case "WATCH_REPLAY":
               §'Q§(this.§@!j§());
               if(_loc4_ = §8!w§.§5!V§.§ !I§())
               {
                  §8!w§.§5!V§.§<Q§(_loc4_);
               }
               break;
            case "MENU":
               §@!9§.§["6§();
               §'Q§(this.§=N§());
               break;
            case "FULLSCREEN_BUTTON":
               §&"<§.§<!7§.§7!H§();
         }
      }
      
      protected function §@!j§() : String
      {
         return § Q§.STATE_NAME;
      }
      
      protected function §?i§() : String
      {
         return StateCutScene.STATE_NAME;
      }
      
      public function §=N§() : String
      {
         return §]!"§.STATE_NAME;
      }
   }
}
