package §`!6§
{
   import §&!'§.§3!0§;
   import §&!'§.§]S§;
   import §&!'§.§case§;
   import §-!F§.§?!k§;
   import §3!!§.§+!F§;
   import §3!!§.§5" §;
   import §3!!§.§?v§;
   import §3!!§.native;
   import §9![§.§1!i§;
   import §=3§.§]!X§;
   import §=3§.§`!F§;
   import §>!a§.§5l§;
   import §@f§.§&!"§;
   import §@f§.§4d§;
   import §[" §.§"!j§;
   import §[" §.§1"1§;
   import §]!d§.§-!<§;
   import com.angrybirds.§4!l§;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §<!9§ extends §-!c§
   {
      
      public static const §]O§:String = "LevelEndState";
      
      public static const §=L§:Number = 30;
      
      protected static const §3b§:String = "ScoreLoopCountChannel";
      
      protected static const §-!§:String = "EndScreenEffectChannel";
       
      
      private var §[J§:§]!X§;
      
      private var §8!"§:Number;
      
      private var §"[§:Number = 0.0;
      
      private var §`! §:Number = 0.0;
      
      private var §=p§:Boolean = false;
      
      private var §@!w§:Timer;
      
      private var §1x§:§]S§;
      
      protected var §!7§:Array;
      
      protected var §2!k§:§3!0§;
      
      protected var §#<§:Vector.<§3!0§>;
      
      public var mNewScoreCounter:int;
      
      private var §&w§:int;
      
      private var §7!0§:Boolean;
      
      protected var §+!2§:Boolean;
      
      private var §#7§:§?!k§;
      
      protected var §8"2§:Boolean;
      
      private var §"#§:§]!X§;
      
      protected var §'"&§:Boolean;
      
      protected var §<!+§:int;
      
      public function §<!9§(param1:§5l§, param2:§-!<§, param3:Boolean = false, param4:String = "LevelEndState")
      {
         this.§!7§ = [];
         this.§#7§ = new §?!k§();
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         §!^§ = new §1"1§(this);
         §!^§.init(this.§@A§());
         this.§-!^§();
         this.§#<§ = new Vector.<§3!0§>();
         §1!i§.§[=§(§3b§,1,1);
         §1!i§.§[=§(§-!§,3,1);
      }
      
      protected function §-!^§() : void
      {
         this.§!7§.push((§!^§.getItemByName("Button_Menu") as §?v§).x);
         this.§!7§.push((§!^§.getItemByName("Button_Replay") as §?v§).x);
         this.§!7§.push((§!^§.getItemByName("Button_NextLevel") as §?v§).x);
         this.§!7§.push((§!^§.getItemByName("Button_CutScene") as §?v§).x);
      }
      
      protected function §@A§() : XML
      {
         return §"!j§.§3=§.Views.View_LevelEnd[0];
      }
      
      protected function §>!d§() : void
      {
         if(!§&N§.§#Y§.§`"$§.userProgress.§^"!§(§^!§.currentLevel))
         {
            (§!^§.getItemByName("Button_Menu") as §?v§).setVisibility(false);
            (§!^§.getItemByName("Button_Replay") as §?v§).setVisibility(true);
            (§!^§.getItemByName("Button_NextLevel") as §?v§).setVisibility(false);
            (§!^§.getItemByName("Button_CutScene") as §?v§).setVisibility(true);
            (§!^§.getItemByName("Button_Replay") as §?v§).x = this.§!7§[0] + Math.abs(this.§!7§[1] - this.§!7§[0]) / 2;
            (§!^§.getItemByName("Button_CutScene") as §?v§).x = this.§!7§[1] + Math.abs(this.§!7§[2] - this.§!7§[1]) / 2;
         }
         else
         {
            (§!^§.getItemByName("Button_Menu") as §?v§).setVisibility(true);
            (§!^§.getItemByName("Button_Replay") as §?v§).setVisibility(true);
            (§!^§.getItemByName("Button_NextLevel") as §?v§).setVisibility(false);
            (§!^§.getItemByName("Button_CutScene") as §?v§).setVisibility(true);
            (§!^§.getItemByName("Button_Menu") as §?v§).x = this.§!7§[0];
            (§!^§.getItemByName("Button_Replay") as §?v§).x = this.§!7§[1];
            (§!^§.getItemByName("Button_CutScene") as §?v§).x = this.§!7§[2];
         }
      }
      
      protected function §2!A§() : void
      {
         (§!^§.getItemByName("Button_Menu") as §?v§).setVisibility(true);
         (§!^§.getItemByName("Button_Replay") as §?v§).setVisibility(true);
         (§!^§.getItemByName("Button_CutScene") as §?v§).setVisibility(false);
         if(§^!§.getNextLevelId())
         {
            (§!^§.getItemByName("Button_NextLevel") as §?v§).setVisibility(true);
            (§!^§.getItemByName("Button_Menu") as §?v§).x = this.§!7§[0];
            (§!^§.getItemByName("Button_Replay") as §?v§).x = this.§!7§[1];
            (§!^§.getItemByName("Button_NextLevel") as §?v§).x = this.§!7§[2];
         }
         else
         {
            (§!^§.getItemByName("Button_NextLevel") as §?v§).setVisibility(false);
            (§!^§.getItemByName("Button_Menu") as §?v§).x = this.§!7§[0] + Math.abs(this.§!7§[1] - this.§!7§[0]) / 2;
            (§!^§.getItemByName("Button_Replay") as §?v§).x = this.§!7§[1] + Math.abs(this.§!7§[2] - this.§!7§[1]) / 2;
         }
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.§'"&§ = false;
         §4!l§.pause();
         this.§1x§ = new §]S§(0,0,0,0);
         §!^§.movieClip.addChildAt(this.§1x§,§!^§.movieClip.numChildren - 1);
         if(§^!§.isCutSceneNext())
         {
            this.§>!d§();
         }
         else
         {
            this.§2!A§();
         }
         this.mNewScoreCounter = 0;
         this.§7!0§ = false;
         §1!i§.§+!Y§("LevelCompletedTheme1");
         this.§1x§.§3"5§(0.7);
         this.§"[§ = 0;
         this.§`! § = 0;
         this.§>!V§();
      }
      
      private function §>!V§() : void
      {
         this.§+!2§ = false;
         this.§5"+§();
         this.§@!w§ = new Timer(500);
         this.§&w§ = 0;
         this.§@!w§.addEventListener(TimerEvent.TIMER,this.§?!l§);
         this.§@!w§.start();
      }
      
      protected function §[>§() : void
      {
         if(§&N§.§#Y§.§`"$§.userProgress.§%"-§(§^!§.currentLevel) == 100)
         {
            (§!^§.getItemByName("MovieClip_ResultMEFeather") as §+!F§).mClip.gotoAndStop("On");
         }
         else
         {
            (§!^§.getItemByName("MovieClip_ResultMEFeather") as §+!F§).mClip.gotoAndStop("Off");
         }
      }
      
      protected function §>!h§(param1:int, param2:int) : void
      {
         if(this.§8"2§)
         {
            param2 = param1;
            §&N§.§#Y§.§`"$§.userProgress.setScoreForLevel(§^!§.currentLevel,param2);
            §!^§.setText("New Highscore!","TextField_BestScore");
         }
         else
         {
            §!^§.setText("Best " + param2.toString(),"TextField_BestScore");
            this.§<!+§ = §^!§.getNumStarsForLevel(§^!§.currentLevel,param2);
            switch(this.§<!+§)
            {
               case 1:
                  (§!^§.getItemByName("MovieClip_BestScoreStars") as §+!F§).§`!x§("OneStar");
                  break;
               case 2:
                  (§!^§.getItemByName("MovieClip_BestScoreStars") as §+!F§).§`!x§("TwoStar");
                  break;
               case 3:
                  (§!^§.getItemByName("MovieClip_BestScoreStars") as §+!F§).§`!x§("ThreeStar");
            }
         }
      }
      
      protected function §5"+§() : void
      {
         var _loc1_:int = §&N§.§#Y§.§`"$§.userProgress.getScoreForLevel(§^!§.currentLevel);
         var _loc2_:int = §4!l§.controller.getScore(10);
         this.§8"2§ = _loc2_ > _loc1_;
         this.§>!h§(_loc2_,_loc1_);
         this.§[>§();
         var _loc3_:int = §4!l§.controller.getEagleScore();
         var _loc4_:int = §&N§.§#Y§.§`"$§.userProgress.§%"-§(§^!§.currentLevel);
         var _loc5_:*;
         if(_loc5_ = _loc3_ > _loc4_)
         {
            _loc4_ = _loc3_;
            §&N§.§#Y§.§`"$§.userProgress.§3!§(§^!§.currentLevel,_loc4_);
         }
         var _loc6_:int = §&N§.§#Y§.§`"$§.userProgress.§7?§(§^!§.currentLevel,_loc2_);
         (§!^§.getItemByName("MovieClip_NewHighScoreBadge") as §+!F§).setVisibility(false);
         (§!^§.getItemByName("MovieClip_StarLeft") as §+!F§).mClip.gotoAndStop("UnLit");
         (§!^§.getItemByName("MovieClip_StarCenter") as §+!F§).mClip.gotoAndStop("UnLit");
         (§!^§.getItemByName("MovieClip_StarRight") as §+!F§).mClip.gotoAndStop("UnLit");
      }
      
      protected function §;!v§() : void
      {
         if(this.§8"2§)
         {
            §1!i§.§+!Y§("Hiscore_Badge",§-!§);
            §!^§.setText("New Highscore!","TextField_NewHighScore");
            (§!^§.getItemByName("TextField_NewHighScore") as native).setVisibility(true);
            (§!^§.getItemByName("MovieClip_BestScoreStars") as §+!F§).setVisibility(false);
            this.§3d§();
         }
         else
         {
            (§!^§.getItemByName("TextField_BestScore") as native).setVisibility(true);
            (§!^§.getItemByName("MovieClip_BestScoreStars") as §+!F§).setVisibility(true);
         }
      }
      
      protected function §3d§() : void
      {
         this.§"[§ = 0;
         this.§`! § = 0;
         this.§8!"§ = §=L§;
      }
      
      private function §#!K§(param1:Number) : void
      {
         (§!^§.getItemByName("Container_LevelEndStripe") as §5" §).x = (§!^§.getItemByName("Container_LevelEndStripe") as §5" §).x - this.§"[§;
         (§!^§.getItemByName("Container_LevelEndStripe") as §5" §).y = (§!^§.getItemByName("Container_LevelEndStripe") as §5" §).y - this.§`! §;
         if(this.§8!"§ > 0)
         {
            this.§"[§ = (Math.random() - 0.5) * (this.§8!"§ / §=L§) * 20;
            this.§`! § = (Math.random() - 0.5) * (this.§8!"§ / §=L§) * 20;
            (§!^§.getItemByName("Container_LevelEndStripe") as §5" §).x = (§!^§.getItemByName("Container_LevelEndStripe") as §5" §).x + this.§"[§;
            (§!^§.getItemByName("Container_LevelEndStripe") as §5" §).y = (§!^§.getItemByName("Container_LevelEndStripe") as §5" §).y + this.§`! §;
         }
         else
         {
            this.§"[§ = 0;
            this.§`! § = 0;
         }
         this.§8!"§ -= param1 / 10;
      }
      
      private function §?!l§(param1:TimerEvent) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:String = null;
         var _loc8_:String = null;
         var _loc9_:String = null;
         var _loc4_:Number = §^!§.getGoldScoreForLevel(§^!§.currentLevel);
         var _loc5_:Number = §^!§.getSilverScoreForLevel(§^!§.currentLevel);
         if((§!^§.getItemByName("MovieClip_StarLeft") as §+!F§).mClip.currentLabel == "UnLit")
         {
            §1!i§.§+!Y§("Hiscore_Count",§3b§,100);
            this.§@!w§.delay = 1000;
            this.§#7§.§4!Y§(§4!l§.controller.getScore(10));
            _loc6_ = this.§#7§.getValue() / _loc4_ * 2;
            if(_loc4_ <= 0)
            {
               _loc6_ = 1;
            }
            this.§"#§ = §`!F§.§=J§.§-r§(this,{"mNewScoreCounter":this.§#7§.getValue()},{"mNewScoreCounter":0},_loc6_);
            this.§"#§.onComplete = this.§[!k§;
            this.§"#§.play();
            _loc7_ = this.§-s§();
            _loc2_ = (§!^§.getItemByName("MovieClip_StarLeft") as §+!F§).x + (§!^§.getItemByName("Container_LevelEndStripe") as §5" §).x;
            _loc3_ = (§!^§.getItemByName("MovieClip_StarLeft") as §+!F§).y + (§!^§.getItemByName("Container_LevelEndStripe") as §5" §).y;
            this.§2!k§ = new §3!0§(§&N§.§,!o§,§&N§.§3!O§,_loc2_,_loc3_,§3!0§.§ c§,§3!0§.§^J§,_loc7_);
            §!^§.addChild(this.§2!k§);
            this.§#<§.push(this.§2!k§);
         }
         else if(this.§#7§.getValue() >= _loc5_ && (§!^§.getItemByName("MovieClip_StarCenter") as §+!F§).mClip.currentLabel == "UnLit")
         {
            _loc8_ = this.§;&§();
            _loc2_ = (§!^§.getItemByName("MovieClip_StarCenter") as §+!F§).x + (§!^§.getItemByName("Container_LevelEndStripe") as §5" §).x;
            _loc3_ = (§!^§.getItemByName("MovieClip_StarCenter") as §+!F§).y + (§!^§.getItemByName("Container_LevelEndStripe") as §5" §).y;
            this.§2!k§ = new §3!0§(§&N§.§,!o§,§&N§.§3!O§,_loc2_,_loc3_,§3!0§.§]" §,§3!0§.§^J§,_loc8_);
            §!^§.addChild(this.§2!k§);
            this.§#<§.push(this.§2!k§);
         }
         else if(this.§#7§.getValue() >= _loc4_ && (§!^§.getItemByName("MovieClip_StarRight") as §+!F§).mClip.currentLabel == "UnLit")
         {
            this.§'"&§ = true;
            _loc9_ = this.§3E§();
            _loc2_ = (§!^§.getItemByName("MovieClip_StarRight") as §+!F§).x + (§!^§.getItemByName("Container_LevelEndStripe") as §5" §).x;
            _loc3_ = (§!^§.getItemByName("MovieClip_StarRight") as §+!F§).y + (§!^§.getItemByName("Container_LevelEndStripe") as §5" §).y;
            this.§2!k§ = new §3!0§(§&N§.§,!o§,§&N§.§3!O§,_loc2_,_loc3_,§3!0§.§!u§,§3!0§.§^J§,_loc9_);
            §!^§.addChild(this.§2!k§);
            this.§#<§.push(this.§2!k§);
         }
         else if(!this.§7!0§)
         {
            this.§7!0§ = true;
         }
         else
         {
            this.§@!w§.stop();
            if(this.§8"2§ && !this.§+!2§)
            {
               (§!^§.getItemByName("MovieClip_NewHighScoreBadge") as §+!F§).setVisibility(true);
            }
            else
            {
               (§!^§.getItemByName("MovieClip_NewHighScoreBadge") as §+!F§).setVisibility(false);
            }
            this.§[J§ = §`!F§.§=J§.§-r§((§!^§.getItemByName("MovieClip_NewHighScoreBadge") as §+!F§).mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":7,
               "scaleY":7
            },0.1);
            this.§[J§.onComplete = this.§;!v§;
            this.§[J§.play();
         }
         ++this.§&w§;
      }
      
      protected function §-s§() : String
      {
         §1!i§.§+!Y§("Hiscore_Star_Splash1",§-!§);
         (§!^§.getItemByName("MovieClip_StarLeft") as §+!F§).mClip.gotoAndStop("Lit");
         return §case§.§?!B§;
      }
      
      protected function §;&§() : String
      {
         §1!i§.§+!Y§("Hiscore_Star_Splash2",§-!§);
         (§!^§.getItemByName("MovieClip_StarCenter") as §+!F§).mClip.gotoAndStop("Lit");
         return §case§.§?!B§;
      }
      
      protected function §3E§() : String
      {
         §1!i§.§+!Y§("Hiscore_Star_Splash3",§-!§);
         (§!^§.getItemByName("MovieClip_StarRight") as §+!F§).mClip.gotoAndStop("Lit");
         return §case§.§?!B§;
      }
      
      private function §[!k§() : void
      {
         §1!i§.§=!3§(§3b§);
      }
      
      override protected function update(param1:Number) : void
      {
         var _loc2_:§3!0§ = null;
         super.update(param1);
         §!^§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScore");
         §!^§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScoreEffects");
         for each(_loc2_ in this.§#<§)
         {
            _loc2_.update(param1);
         }
         if(this.§8!"§ >= 0)
         {
            this.§#!K§(param1);
         }
         if(nextState.length > 0)
         {
            §4!l§.§,!8§.clearLevel();
         }
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§5w§();
         this.§8!"§ = 0;
         this.mNewScoreCounter = 0;
         if(this.§"#§)
         {
            this.§"#§.stop();
            this.§"#§ = null;
         }
         if(this.§[J§)
         {
            this.§[J§.stop();
            this.§[J§ = null;
         }
         §1!i§.§=!3§(§3b§);
         this.§'!`§(§4d§.COMPONENT_STATE_ACTIVE_DEFAULT);
         §!^§.setText("0","TextField_LevelEndScore");
         §!^§.setText("0","TextField_LevelEndScoreEffects");
         if(this.§1x§)
         {
            if(§!^§.movieClip.contains(this.§1x§))
            {
               §!^§.movieClip.removeChild(this.§1x§);
            }
            this.§1x§.§3!<§();
            this.§1x§ = null;
         }
      }
      
      protected function §'!`§(param1:String) : void
      {
         (§!^§.getItemByName("Button_Menu") as §?v§).setComponentVisualState(param1);
         (§!^§.getItemByName("Button_Replay") as §?v§).setComponentVisualState(param1);
         (§!^§.getItemByName("Button_NextLevel") as §?v§).setComponentVisualState(param1);
         (§!^§.getItemByName("Button_CutScene") as §?v§).setComponentVisualState(param1);
      }
      
      private function §5w§() : void
      {
         var splash:§3!0§ = null;
         if(this.§@!w§)
         {
            this.§@!w§.stop();
            try
            {
               this.§@!w§.removeEventListener(TimerEvent.TIMER,this.§?!l§);
            }
            catch(e:Error)
            {
            }
         }
         for each(splash in this.§#<§)
         {
            if(§!^§.contains(splash))
            {
               §!^§.removeChild(splash);
            }
            splash.§3!<§();
         }
         this.§#<§ = new Vector.<§3!0§>();
         this.§%" §();
      }
      
      protected function §%" §() : void
      {
         (§!^§.getItemByName("TextField_BestScore") as native).setVisibility(false);
         (§!^§.getItemByName("MovieClip_BestScoreStars") as §+!F§).setVisibility(false);
         (§!^§.getItemByName("TextField_NewHighScore") as native).setVisibility(false);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      protected function §[!_§() : void
      {
         §4!g§();
         §8=§(this.§!"%§());
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§&!"§) : void
      {
         var _loc4_:String = null;
         switch(param2)
         {
            case "NEXT_LEVEL":
               this.§[!_§();
               break;
            case "REPLAY":
               §8=§(this.§?O§());
               break;
            case "WATCH_REPLAY":
               §8=§(this.§?O§());
               if(_loc4_ = §4!l§.§,!8§.§!!T§())
               {
                  §4!l§.§,!8§.§<!I§(_loc4_);
               }
               break;
            case "MENU":
               §1!i§.§ !S§();
               §8=§(this.§9W§());
               break;
            case "FULLSCREEN_BUTTON":
               §&N§.§#Y§.§&<§();
         }
      }
      
      protected function §?O§() : String
      {
         return §-%§.§]O§;
      }
      
      protected function §!"%§() : String
      {
         return StateCutScene.§]O§;
      }
      
      public function §9W§() : String
      {
         return §?E§.§]O§;
      }
   }
}
