package §7!c§
{
   import §!i§.§1s§;
   import §!i§.§3!A§;
   import §!i§.§?"%§;
   import §!i§.§^!d§;
   import §"!>§.§<!o§;
   import §'#§.§4!!§;
   import §+!9§.§;0§;
   import §+w§.§,!@§;
   import §+w§.§?e§;
   import §4!t§.§95§;
   import §4!t§.§>r§;
   import §9!G§.§"!S§;
   import §;!0§.;
   import §<§.§8"+§;
   import §<§.§<K§;
   import §]!O§.§'X§;
   import §]!O§.§^!j§;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §="1§ extends §%<§
   {
      
      public static const STATE_NAME:String = "LevelEndState";
      
      public static const §1F§:Number = 30;
      
      protected static const §'!k§:String = "ScoreLoopCountChannel";
      
      protected static const §+e§:String = "EndScreenEffectChannel";
       
      
      private var §8!p§:§8"+§;
      
      private var §[m§:Number;
      
      private var §1!n§:Number = 0.0;
      
      private var §!!'§:Number = 0.0;
      
      private var §3"5§:Boolean = false;
      
      private var §%k§:Timer;
      
      private var §0"#§:§^!j§;
      
      protected var §+!O§:Array;
      
      protected var §76§:§'X§;
      
      protected var §21§:Vector.<§'X§>;
      
      public var mNewScoreCounter:int;
      
      private var §^v§:int;
      
      private var §+!+§:Boolean;
      
      protected var §2n§:Boolean;
      
      private var §[!4§:§4!!§;
      
      protected var §!"!§:Boolean;
      
      private var §4&§:§8"+§;
      
      protected var §1!B§:Boolean;
      
      protected var §![§:int;
      
      public function §="1§(param1:§#2§, param2:§<!o§, param3:Boolean = false, param4:String = "LevelEndState")
      {
         this.§+!O§ = [];
         this.§[!4§ = new §4!!§();
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         §4§ = new §,!@§(this);
         §4§.init(this.§,3§());
         this.§0!'§();
         this.§21§ = new Vector.<§'X§>();
         §"!S§.§4+§(§'!k§,1,1);
         §"!S§.§4+§(§+e§,3,1);
      }
      
      protected function §0!'§() : void
      {
         this.§+!O§.push((§4§.getItemByName("Button_Menu") as §3!A§).x);
         this.§+!O§.push((§4§.getItemByName("Button_Replay") as §3!A§).x);
         this.§+!O§.push((§4§.getItemByName("Button_NextLevel") as §3!A§).x);
         this.§+!O§.push((§4§.getItemByName("Button_CutScene") as §3!A§).x);
      }
      
      protected function §,3§() : XML
      {
         return §?e§.§'"G§.Views.View_LevelEnd[0];
      }
      
      protected function §<!Q§() : void
      {
         if(!§&!h§.§ u§.§-!V§.userProgress.§%!+§(§,W§.currentLevel))
         {
            (§4§.getItemByName("Button_Menu") as §3!A§).setVisibility(false);
            (§4§.getItemByName("Button_Replay") as §3!A§).setVisibility(true);
            (§4§.getItemByName("Button_NextLevel") as §3!A§).setVisibility(false);
            (§4§.getItemByName("Button_CutScene") as §3!A§).setVisibility(true);
            (§4§.getItemByName("Button_Replay") as §3!A§).x = this.§+!O§[0] + Math.abs(this.§+!O§[1] - this.§+!O§[0]) / 2;
            (§4§.getItemByName("Button_CutScene") as §3!A§).x = this.§+!O§[1] + Math.abs(this.§+!O§[2] - this.§+!O§[1]) / 2;
         }
         else
         {
            (§4§.getItemByName("Button_Menu") as §3!A§).setVisibility(true);
            (§4§.getItemByName("Button_Replay") as §3!A§).setVisibility(true);
            (§4§.getItemByName("Button_NextLevel") as §3!A§).setVisibility(false);
            (§4§.getItemByName("Button_CutScene") as §3!A§).setVisibility(true);
            (§4§.getItemByName("Button_Menu") as §3!A§).x = this.§+!O§[0];
            (§4§.getItemByName("Button_Replay") as §3!A§).x = this.§+!O§[1];
            (§4§.getItemByName("Button_CutScene") as §3!A§).x = this.§+!O§[2];
         }
      }
      
      protected function §`!I§() : void
      {
         (§4§.getItemByName("Button_Menu") as §3!A§).setVisibility(true);
         (§4§.getItemByName("Button_Replay") as §3!A§).setVisibility(true);
         (§4§.getItemByName("Button_CutScene") as §3!A§).setVisibility(false);
         if(§,W§.getNextLevelId())
         {
            (§4§.getItemByName("Button_NextLevel") as §3!A§).setVisibility(true);
            (§4§.getItemByName("Button_Menu") as §3!A§).x = this.§+!O§[0];
            (§4§.getItemByName("Button_Replay") as §3!A§).x = this.§+!O§[1];
            (§4§.getItemByName("Button_NextLevel") as §3!A§).x = this.§+!O§[2];
         }
         else
         {
            (§4§.getItemByName("Button_NextLevel") as §3!A§).setVisibility(false);
            (§4§.getItemByName("Button_Menu") as §3!A§).x = this.§+!O§[0] + Math.abs(this.§+!O§[1] - this.§+!O§[0]) / 2;
            (§4§.getItemByName("Button_Replay") as §3!A§).x = this.§+!O§[1] + Math.abs(this.§+!O§[2] - this.§+!O§[1]) / 2;
         }
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.§1!B§ = false;
         §;0§.pause();
         this.§0"#§ = new §^!j§(0,0,0,0);
         §4§.movieClip.addChildAt(this.§0"#§,§4§.movieClip.numChildren - 1);
         if(§,W§.isCutSceneNext())
         {
            this.§<!Q§();
         }
         else
         {
            this.§`!I§();
         }
         this.mNewScoreCounter = 0;
         this.§+!+§ = false;
         §"!S§.playSound("LevelCompletedTheme1");
         this.§0"#§.§#A§(0.7);
         this.§1!n§ = 0;
         this.§!!'§ = 0;
         this.§=L§();
      }
      
      private function §=L§() : void
      {
         this.§2n§ = false;
         this.§,b§();
         this.§%k§ = new Timer(500);
         this.§^v§ = 0;
         this.§%k§.addEventListener(TimerEvent.TIMER,this.§^O§);
         this.§%k§.start();
      }
      
      protected function §["=§() : void
      {
         if(§&!h§.§ u§.§-!V§.userProgress.§-A§(§,W§.currentLevel) == 100)
         {
            (§4§.getItemByName("MovieClip_ResultMEFeather") as §^!d§).mClip.gotoAndStop("On");
         }
         else
         {
            (§4§.getItemByName("MovieClip_ResultMEFeather") as §^!d§).mClip.gotoAndStop("Off");
         }
      }
      
      protected function §+!_§(param1:int, param2:int) : void
      {
         if(this.§!"!§)
         {
            param2 = param1;
            §&!h§.§ u§.§-!V§.userProgress.§!!q§(§,W§.currentLevel,param2);
            §4§.setText("New Highscore!","TextField_BestScore");
         }
         else
         {
            §4§.setText("Best " + param2.toString(),"TextField_BestScore");
            this.§![§ = §,W§.getNumStarsForLevel(§,W§.currentLevel,param2);
            switch(this.§![§)
            {
               case 1:
                  (§4§.getItemByName("MovieClip_BestScoreStars") as §^!d§).§6!L§("OneStar");
                  break;
               case 2:
                  (§4§.getItemByName("MovieClip_BestScoreStars") as §^!d§).§6!L§("TwoStar");
                  break;
               case 3:
                  (§4§.getItemByName("MovieClip_BestScoreStars") as §^!d§).§6!L§("ThreeStar");
            }
         }
      }
      
      protected function §,b§() : void
      {
         var _loc1_:int = §&!h§.§ u§.§-!V§.userProgress.getScoreForLevel(§,W§.currentLevel);
         var _loc2_:int = §;0§.§%O§.getScore(10);
         this.§!"!§ = _loc2_ > _loc1_;
         this.§+!_§(_loc2_,_loc1_);
         this.§["=§();
         var _loc3_:int = §;0§.§%O§.getEagleScore();
         var _loc4_:int = §&!h§.§ u§.§-!V§.userProgress.§-A§(§,W§.currentLevel);
         var _loc5_:*;
         if(_loc5_ = _loc3_ > _loc4_)
         {
            _loc4_ = _loc3_;
            §&!h§.§ u§.§-!V§.userProgress.§-"6§(§,W§.currentLevel,_loc4_);
         }
         var _loc6_:int = §&!h§.§ u§.§-!V§.userProgress.§]!F§(§,W§.currentLevel,_loc2_);
         (§4§.getItemByName("MovieClip_NewHighScoreBadge") as §^!d§).setVisibility(false);
         (§4§.getItemByName("MovieClip_StarLeft") as §^!d§).mClip.gotoAndStop("UnLit");
         (§4§.getItemByName("MovieClip_StarCenter") as §^!d§).mClip.gotoAndStop("UnLit");
         (§4§.getItemByName("MovieClip_StarRight") as §^!d§).mClip.gotoAndStop("UnLit");
      }
      
      protected function §5D§() : void
      {
         if(this.§!"!§)
         {
            §"!S§.playSound("Hiscore_Badge",§+e§);
            §4§.setText("New Highscore!","TextField_NewHighScore");
            (§4§.getItemByName("TextField_NewHighScore") as §?"%§).setVisibility(true);
            (§4§.getItemByName("MovieClip_BestScoreStars") as §^!d§).setVisibility(false);
            this.§?&§();
         }
         else
         {
            (§4§.getItemByName("TextField_BestScore") as §?"%§).setVisibility(true);
            (§4§.getItemByName("MovieClip_BestScoreStars") as §^!d§).setVisibility(true);
         }
      }
      
      protected function §?&§() : void
      {
         this.§1!n§ = 0;
         this.§!!'§ = 0;
         this.§[m§ = §1F§;
      }
      
      private function §8J§(param1:Number) : void
      {
         (§4§.getItemByName("Container_LevelEndStripe") as §1s§).x = (§4§.getItemByName("Container_LevelEndStripe") as §1s§).x - this.§1!n§;
         (§4§.getItemByName("Container_LevelEndStripe") as §1s§).y = (§4§.getItemByName("Container_LevelEndStripe") as §1s§).y - this.§!!'§;
         if(this.§[m§ > 0)
         {
            this.§1!n§ = (Math.random() - 0.5) * (this.§[m§ / §1F§) * 20;
            this.§!!'§ = (Math.random() - 0.5) * (this.§[m§ / §1F§) * 20;
            (§4§.getItemByName("Container_LevelEndStripe") as §1s§).x = (§4§.getItemByName("Container_LevelEndStripe") as §1s§).x + this.§1!n§;
            (§4§.getItemByName("Container_LevelEndStripe") as §1s§).y = (§4§.getItemByName("Container_LevelEndStripe") as §1s§).y + this.§!!'§;
         }
         else
         {
            this.§1!n§ = 0;
            this.§!!'§ = 0;
         }
         this.§[m§ -= param1 / 10;
      }
      
      private function §^O§(param1:TimerEvent) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc4_:Number = §,W§.getGoldScoreForLevel(§,W§.currentLevel);
         var _loc5_:Number = §,W§.getSilverScoreForLevel(§,W§.currentLevel);
         if((§4§.getItemByName("MovieClip_StarLeft") as §^!d§).mClip.currentLabel == "UnLit")
         {
            §"!S§.playSound("Hiscore_Count",§'!k§,100);
            §"!S§.playSound("Hiscore_Star_Splash1",§+e§);
            this.§%k§.delay = 1000;
            this.§[!4§.§[!s§(§;0§.§%O§.getScore(10));
            _loc6_ = this.§[!4§.getValue() / _loc4_ * 2;
            if(_loc4_ <= 0)
            {
               _loc6_ = 1;
            }
            this.§4&§ = §<K§.§<"B§.§`!c§(this,{"mNewScoreCounter":this.§[!4§.getValue()},{"mNewScoreCounter":0},_loc6_);
            this.§4&§.onComplete = this.§=P§;
            this.§4&§.play();
            (§4§.getItemByName("MovieClip_StarLeft") as §^!d§).mClip.gotoAndStop("Lit");
            _loc2_ = (§4§.getItemByName("MovieClip_StarLeft") as §^!d§).x + (§4§.getItemByName("Container_LevelEndStripe") as §1s§).x;
            _loc3_ = (§4§.getItemByName("MovieClip_StarLeft") as §^!d§).y + (§4§.getItemByName("Container_LevelEndStripe") as §1s§).y;
            this.§76§ = new §'X§(§&!h§.screenWidth,§&!h§.screenHeight,_loc2_,_loc3_,§'X§.§[!0§);
            §4§.addChild(this.§76§);
            this.§21§.push(this.§76§);
         }
         else if(this.§[!4§.getValue() >= _loc5_ && (§4§.getItemByName("MovieClip_StarCenter") as §^!d§).mClip.currentLabel == "UnLit")
         {
            §"!S§.playSound("Hiscore_Star_Splash2",§+e§);
            (§4§.getItemByName("MovieClip_StarCenter") as §^!d§).mClip.gotoAndStop("Lit");
            _loc2_ = (§4§.getItemByName("MovieClip_StarCenter") as §^!d§).x + (§4§.getItemByName("Container_LevelEndStripe") as §1s§).x;
            _loc3_ = (§4§.getItemByName("MovieClip_StarCenter") as §^!d§).y + (§4§.getItemByName("Container_LevelEndStripe") as §1s§).y;
            this.§76§ = new §'X§(§&!h§.screenWidth,§&!h§.screenHeight,_loc2_,_loc3_,§'X§.§4j§);
            §4§.addChild(this.§76§);
            this.§21§.push(this.§76§);
         }
         else if(this.§[!4§.getValue() >= _loc4_ && (§4§.getItemByName("MovieClip_StarRight") as §^!d§).mClip.currentLabel == "UnLit")
         {
            this.§1!B§ = true;
            §"!S§.playSound("Hiscore_Star_Splash3",§+e§);
            (§4§.getItemByName("MovieClip_StarRight") as §^!d§).mClip.gotoAndStop("Lit");
            _loc2_ = (§4§.getItemByName("MovieClip_StarRight") as §^!d§).x + (§4§.getItemByName("Container_LevelEndStripe") as §1s§).x;
            _loc3_ = (§4§.getItemByName("MovieClip_StarRight") as §^!d§).y + (§4§.getItemByName("Container_LevelEndStripe") as §1s§).y;
            this.§76§ = new §'X§(§&!h§.screenWidth,§&!h§.screenHeight,_loc2_,_loc3_,§'X§.§=!N§);
            §4§.addChild(this.§76§);
            this.§21§.push(this.§76§);
         }
         else if(!this.§+!+§)
         {
            this.§+!+§ = true;
         }
         else
         {
            this.§%k§.stop();
            if(this.§!"!§ && !this.§2n§)
            {
               (§4§.getItemByName("MovieClip_NewHighScoreBadge") as §^!d§).setVisibility(true);
            }
            else
            {
               (§4§.getItemByName("MovieClip_NewHighScoreBadge") as §^!d§).setVisibility(false);
            }
            this.§8!p§ = §<K§.§<"B§.§`!c§((§4§.getItemByName("MovieClip_NewHighScoreBadge") as §^!d§).mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":7,
               "scaleY":7
            },0.1);
            this.§8!p§.onComplete = this.§5D§;
            this.§8!p§.play();
         }
         ++this.§^v§;
      }
      
      private function §=P§() : void
      {
         §"!S§.§]R§(§'!k§);
      }
      
      override protected function update(param1:Number) : void
      {
         var _loc2_:§'X§ = null;
         super.update(param1);
         §4§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScore");
         §4§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScoreEffects");
         for each(_loc2_ in this.§21§)
         {
            _loc2_.update(param1);
         }
         if(this.§[m§ >= 0)
         {
            this.§8J§(param1);
         }
         if(nextState.length > 0)
         {
            §;0§.§@!^§.clearLevel();
         }
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§0!R§();
         this.§[m§ = 0;
         this.mNewScoreCounter = 0;
         if(this.§4&§)
         {
            this.§4&§.stop();
            this.§4&§ = null;
         }
         if(this.§8!p§)
         {
            this.§8!p§.stop();
            this.§8!p§ = null;
         }
         §"!S§.§]R§(§'!k§);
         this.§5"2§(§>r§.COMPONENT_STATE_ACTIVE_DEFAULT);
         §4§.setText("0","TextField_LevelEndScore");
         §4§.setText("0","TextField_LevelEndScoreEffects");
         if(this.§0"#§)
         {
            if(§4§.movieClip.contains(this.§0"#§))
            {
               §4§.movieClip.removeChild(this.§0"#§);
            }
            this.§0"#§.§#!O§();
            this.§0"#§ = null;
         }
      }
      
      protected function §5"2§(param1:String) : void
      {
         (§4§.getItemByName("Button_Menu") as §3!A§).setComponentVisualState(param1);
         (§4§.getItemByName("Button_Replay") as §3!A§).setComponentVisualState(param1);
         (§4§.getItemByName("Button_NextLevel") as §3!A§).setComponentVisualState(param1);
         (§4§.getItemByName("Button_CutScene") as §3!A§).setComponentVisualState(param1);
      }
      
      private function §0!R§() : void
      {
         var splash:§'X§ = null;
         if(this.§%k§)
         {
            this.§%k§.stop();
            try
            {
               this.§%k§.removeEventListener(TimerEvent.TIMER,this.§^O§);
            }
            catch(e:Error)
            {
            }
         }
         for each(splash in this.§21§)
         {
            if(§4§.contains(splash))
            {
               §4§.removeChild(splash);
            }
            splash.§#!O§();
         }
         this.§21§ = new Vector.<§'X§>();
         this.§74§();
      }
      
      protected function §74§() : void
      {
         (§4§.getItemByName("TextField_BestScore") as §?"%§).setVisibility(false);
         (§4§.getItemByName("MovieClip_BestScoreStars") as §^!d§).setVisibility(false);
         (§4§.getItemByName("TextField_NewHighScore") as §?"%§).setVisibility(false);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      protected function §&_§() : void
      {
         §0" §();
         §2g§(this.§@I§());
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§95§) : void
      {
         var _loc4_:String = null;
         switch(param2)
         {
            case "NEXT_LEVEL":
               this.§&_§();
               break;
            case "REPLAY":
               §2g§(this.§=!X§());
               break;
            case "WATCH_REPLAY":
               §2g§(this.§=!X§());
               if(_loc4_ = §;0§.§@!^§.§`!B§())
               {
                  §;0§.§@!^§.§!"0§(_loc4_);
               }
               break;
            case "MENU":
               §"!S§.§#9§();
               §2g§(this.§-m§());
               break;
            case "FULLSCREEN_BUTTON":
               §&!h§.§ u§.§+"4§();
         }
      }
      
      protected function §=!X§() : String
      {
         return §"!H§.STATE_NAME;
      }
      
      protected function §@I§() : String
      {
         return StateCutScene.STATE_NAME;
      }
      
      public function §-m§() : String
      {
         return §!!Q§.STATE_NAME;
      }
   }
}
