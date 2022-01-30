package §?!E§
{
   import §&!>§.§3!k§;
   import §'<§.§=!o§;
   import §02§.§+!b§;
   import §02§.§`%§;
   import §;!b§.§%>§;
   import §><§.§0!M§;
   import §><§.§4!N§;
   import §@#§.§4!O§;
   import §@#§.§5!"§;
   import §@#§.§9!'§;
   import §@#§.§>L§;
   import §[!b§.§'!R§;
   import §[!b§.§]"-§;
   import §`!_§.§'!N§;
   import §`!_§.§86§;
   import §`!_§.§[!q§;
   import §`6§.§-!j§;
   import com.angrybirds.§6U§;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §7!H§ extends §5"#§
   {
      
      public static const §+B§:String = "LevelEndState";
      
      public static const §8-§:Number = 30;
      
      protected static const §=" §:String = "ScoreLoopCountChannel";
      
      protected static const §0!n§:String = "EndScreenEffectChannel";
       
      
      private var §+"0§:§4!N§;
      
      private var §=s§:Number;
      
      private var §]!T§:Number = 0.0;
      
      private var §`!l§:Number = 0.0;
      
      private var §'H§:Boolean = false;
      
      private var §9!8§:Timer;
      
      private var §[""§:§[!q§;
      
      protected var §"!A§:Array;
      
      protected var §@C§:§'!N§;
      
      protected var § h§:Vector.<§'!N§>;
      
      public var mNewScoreCounter:int;
      
      private var §+z§:int;
      
      private var §"!0§:Boolean;
      
      protected var §^!y§:Boolean;
      
      private var §;P§:§-!j§;
      
      protected var §5""§:Boolean;
      
      private var §'=§:§4!N§;
      
      protected var §,!B§:Boolean;
      
      protected var §`!L§:int;
      
      public function §7!H§(param1:§=!o§, param2:§%>§, param3:Boolean = false, param4:String = "LevelEndState")
      {
         this.§"!A§ = [];
         this.§;P§ = new §-!j§();
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         §#2§ = new §`%§(this);
         §#2§.init(this.§^!!§());
         this.§2!f§();
         this.§ h§ = new Vector.<§'!N§>();
         §3!k§.§[y§(§=" §,1,1);
         §3!k§.§[y§(§0!n§,3,1);
      }
      
      protected function §2!f§() : void
      {
         this.§"!A§.push((§#2§.getItemByName("Button_Menu") as §4!O§).x);
         this.§"!A§.push((§#2§.getItemByName("Button_Replay") as §4!O§).x);
         this.§"!A§.push((§#2§.getItemByName("Button_NextLevel") as §4!O§).x);
         this.§"!A§.push((§#2§.getItemByName("Button_CutScene") as §4!O§).x);
      }
      
      protected function §^!!§() : XML
      {
         return §+!b§.§#!P§.Views.View_LevelEnd[0];
      }
      
      protected function §2!§() : void
      {
         if(!§-!l§.§"x§.§?"&§.userProgress.§>z§(§+o§.currentLevel))
         {
            (§#2§.getItemByName("Button_Menu") as §4!O§).setVisibility(false);
            (§#2§.getItemByName("Button_Replay") as §4!O§).setVisibility(true);
            (§#2§.getItemByName("Button_NextLevel") as §4!O§).setVisibility(false);
            (§#2§.getItemByName("Button_CutScene") as §4!O§).setVisibility(true);
            (§#2§.getItemByName("Button_Replay") as §4!O§).x = this.§"!A§[0] + Math.abs(this.§"!A§[1] - this.§"!A§[0]) / 2;
            (§#2§.getItemByName("Button_CutScene") as §4!O§).x = this.§"!A§[1] + Math.abs(this.§"!A§[2] - this.§"!A§[1]) / 2;
         }
         else
         {
            (§#2§.getItemByName("Button_Menu") as §4!O§).setVisibility(true);
            (§#2§.getItemByName("Button_Replay") as §4!O§).setVisibility(true);
            (§#2§.getItemByName("Button_NextLevel") as §4!O§).setVisibility(false);
            (§#2§.getItemByName("Button_CutScene") as §4!O§).setVisibility(true);
            (§#2§.getItemByName("Button_Menu") as §4!O§).x = this.§"!A§[0];
            (§#2§.getItemByName("Button_Replay") as §4!O§).x = this.§"!A§[1];
            (§#2§.getItemByName("Button_CutScene") as §4!O§).x = this.§"!A§[2];
         }
      }
      
      protected function §7!v§() : void
      {
         (§#2§.getItemByName("Button_Menu") as §4!O§).setVisibility(true);
         (§#2§.getItemByName("Button_Replay") as §4!O§).setVisibility(true);
         (§#2§.getItemByName("Button_CutScene") as §4!O§).setVisibility(false);
         if(§+o§.getNextLevelId())
         {
            (§#2§.getItemByName("Button_NextLevel") as §4!O§).setVisibility(true);
            (§#2§.getItemByName("Button_Menu") as §4!O§).x = this.§"!A§[0];
            (§#2§.getItemByName("Button_Replay") as §4!O§).x = this.§"!A§[1];
            (§#2§.getItemByName("Button_NextLevel") as §4!O§).x = this.§"!A§[2];
         }
         else
         {
            (§#2§.getItemByName("Button_NextLevel") as §4!O§).setVisibility(false);
            (§#2§.getItemByName("Button_Menu") as §4!O§).x = this.§"!A§[0] + Math.abs(this.§"!A§[1] - this.§"!A§[0]) / 2;
            (§#2§.getItemByName("Button_Replay") as §4!O§).x = this.§"!A§[1] + Math.abs(this.§"!A§[2] - this.§"!A§[1]) / 2;
         }
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.§,!B§ = false;
         §6U§.pause();
         this.§[""§ = new §[!q§(0,0,0,0);
         §#2§.movieClip.addChildAt(this.§[""§,§#2§.movieClip.numChildren - 1);
         if(§+o§.isCutSceneNext())
         {
            this.§2!§();
         }
         else
         {
            this.§7!v§();
         }
         this.mNewScoreCounter = 0;
         this.§"!0§ = false;
         §3!k§.§]"4§("LevelCompletedTheme1");
         this.§[""§.§,>§(0.7);
         this.§]!T§ = 0;
         this.§`!l§ = 0;
         this.§^6§();
      }
      
      private function §^6§() : void
      {
         this.§^!y§ = false;
         this.§="4§();
         this.§9!8§ = new Timer(500);
         this.§+z§ = 0;
         this.§9!8§.addEventListener(TimerEvent.TIMER,this.§'!x§);
         this.§9!8§.start();
      }
      
      protected function §^M§() : void
      {
         if(§-!l§.§"x§.§?"&§.userProgress.§#!1§(§+o§.currentLevel) == 100)
         {
            (§#2§.getItemByName("MovieClip_ResultMEFeather") as §5!"§).mClip.gotoAndStop("On");
         }
         else
         {
            (§#2§.getItemByName("MovieClip_ResultMEFeather") as §5!"§).mClip.gotoAndStop("Off");
         }
      }
      
      protected function §^!B§(param1:int, param2:int) : void
      {
         if(this.§5""§)
         {
            param2 = param1;
            §-!l§.§"x§.§?"&§.userProgress.setScoreForLevel(§+o§.currentLevel,param2);
            §#2§.setText("New Highscore!","TextField_BestScore");
         }
         else
         {
            §#2§.setText("Best " + param2.toString(),"TextField_BestScore");
            this.§`!L§ = §+o§.getNumStarsForLevel(§+o§.currentLevel,param2);
            switch(this.§`!L§)
            {
               case 1:
                  (§#2§.getItemByName("MovieClip_BestScoreStars") as §5!"§).§;!z§("OneStar");
                  break;
               case 2:
                  (§#2§.getItemByName("MovieClip_BestScoreStars") as §5!"§).§;!z§("TwoStar");
                  break;
               case 3:
                  (§#2§.getItemByName("MovieClip_BestScoreStars") as §5!"§).§;!z§("ThreeStar");
            }
         }
      }
      
      protected function §="4§() : void
      {
         var _loc1_:int = §-!l§.§"x§.§?"&§.userProgress.getScoreForLevel(§+o§.currentLevel);
         var _loc2_:int = §6U§.controller.getScore(10);
         this.§5""§ = _loc2_ > _loc1_;
         this.§^!B§(_loc2_,_loc1_);
         this.§^M§();
         var _loc3_:int = §6U§.controller.getEagleScore();
         var _loc4_:int = §-!l§.§"x§.§?"&§.userProgress.§#!1§(§+o§.currentLevel);
         var _loc5_:*;
         if(_loc5_ = _loc3_ > _loc4_)
         {
            _loc4_ = _loc3_;
            §-!l§.§"x§.§?"&§.userProgress.§"?§(§+o§.currentLevel,_loc4_);
         }
         var _loc6_:int = §-!l§.§"x§.§?"&§.userProgress.§4o§(§+o§.currentLevel,_loc2_);
         (§#2§.getItemByName("MovieClip_NewHighScoreBadge") as §5!"§).setVisibility(false);
         (§#2§.getItemByName("MovieClip_StarLeft") as §5!"§).mClip.gotoAndStop("UnLit");
         (§#2§.getItemByName("MovieClip_StarCenter") as §5!"§).mClip.gotoAndStop("UnLit");
         (§#2§.getItemByName("MovieClip_StarRight") as §5!"§).mClip.gotoAndStop("UnLit");
      }
      
      protected function §7!O§() : void
      {
         if(this.§5""§)
         {
            §3!k§.§]"4§("Hiscore_Badge",§0!n§);
            §#2§.setText("New Highscore!","TextField_NewHighScore");
            (§#2§.getItemByName("TextField_NewHighScore") as §>L§).setVisibility(true);
            (§#2§.getItemByName("MovieClip_BestScoreStars") as §5!"§).setVisibility(false);
            this.§0!4§();
         }
         else
         {
            (§#2§.getItemByName("TextField_BestScore") as §>L§).setVisibility(true);
            (§#2§.getItemByName("MovieClip_BestScoreStars") as §5!"§).setVisibility(true);
         }
      }
      
      protected function §0!4§() : void
      {
         this.§]!T§ = 0;
         this.§`!l§ = 0;
         this.§=s§ = §8-§;
      }
      
      private function §6"1§(param1:Number) : void
      {
         (§#2§.getItemByName("Container_LevelEndStripe") as §9!'§).x = (§#2§.getItemByName("Container_LevelEndStripe") as §9!'§).x - this.§]!T§;
         (§#2§.getItemByName("Container_LevelEndStripe") as §9!'§).y = (§#2§.getItemByName("Container_LevelEndStripe") as §9!'§).y - this.§`!l§;
         if(this.§=s§ > 0)
         {
            this.§]!T§ = (Math.random() - 0.5) * (this.§=s§ / §8-§) * 20;
            this.§`!l§ = (Math.random() - 0.5) * (this.§=s§ / §8-§) * 20;
            (§#2§.getItemByName("Container_LevelEndStripe") as §9!'§).x = (§#2§.getItemByName("Container_LevelEndStripe") as §9!'§).x + this.§]!T§;
            (§#2§.getItemByName("Container_LevelEndStripe") as §9!'§).y = (§#2§.getItemByName("Container_LevelEndStripe") as §9!'§).y + this.§`!l§;
         }
         else
         {
            this.§]!T§ = 0;
            this.§`!l§ = 0;
         }
         this.§=s§ -= param1 / 10;
      }
      
      private function §'!x§(param1:TimerEvent) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:String = null;
         var _loc8_:String = null;
         var _loc9_:String = null;
         var _loc4_:Number = §+o§.getGoldScoreForLevel(§+o§.currentLevel);
         var _loc5_:Number = §+o§.getSilverScoreForLevel(§+o§.currentLevel);
         if((§#2§.getItemByName("MovieClip_StarLeft") as §5!"§).mClip.currentLabel == "UnLit")
         {
            §3!k§.§]"4§("Hiscore_Count",§=" §,100);
            this.§9!8§.delay = 1000;
            this.§;P§.§7!r§(§6U§.controller.getScore(10));
            _loc6_ = this.§;P§.getValue() / _loc4_ * 2;
            if(_loc4_ <= 0)
            {
               _loc6_ = 1;
            }
            this.§'=§ = §0!M§.§?!+§.§3d§(this,{"mNewScoreCounter":this.§;P§.getValue()},{"mNewScoreCounter":0},_loc6_);
            this.§'=§.onComplete = this.§%]§;
            this.§'=§.play();
            _loc7_ = this.§9b§();
            _loc2_ = (§#2§.getItemByName("MovieClip_StarLeft") as §5!"§).x + (§#2§.getItemByName("Container_LevelEndStripe") as §9!'§).x;
            _loc3_ = (§#2§.getItemByName("MovieClip_StarLeft") as §5!"§).y + (§#2§.getItemByName("Container_LevelEndStripe") as §9!'§).y;
            this.§@C§ = new §'!N§(§-!l§.§?g§,§-!l§.§-!W§,_loc2_,_loc3_,§'!N§.§5!P§,§'!N§.§@x§,_loc7_);
            §#2§.addChild(this.§@C§);
            this.§ h§.push(this.§@C§);
         }
         else if(this.§;P§.getValue() >= _loc5_ && (§#2§.getItemByName("MovieClip_StarCenter") as §5!"§).mClip.currentLabel == "UnLit")
         {
            _loc8_ = this.§1!d§();
            _loc2_ = (§#2§.getItemByName("MovieClip_StarCenter") as §5!"§).x + (§#2§.getItemByName("Container_LevelEndStripe") as §9!'§).x;
            _loc3_ = (§#2§.getItemByName("MovieClip_StarCenter") as §5!"§).y + (§#2§.getItemByName("Container_LevelEndStripe") as §9!'§).y;
            this.§@C§ = new §'!N§(§-!l§.§?g§,§-!l§.§-!W§,_loc2_,_loc3_,§'!N§.§!^§,§'!N§.§@x§,_loc8_);
            §#2§.addChild(this.§@C§);
            this.§ h§.push(this.§@C§);
         }
         else if(this.§;P§.getValue() >= _loc4_ && (§#2§.getItemByName("MovieClip_StarRight") as §5!"§).mClip.currentLabel == "UnLit")
         {
            this.§,!B§ = true;
            _loc9_ = this.§4M§();
            _loc2_ = (§#2§.getItemByName("MovieClip_StarRight") as §5!"§).x + (§#2§.getItemByName("Container_LevelEndStripe") as §9!'§).x;
            _loc3_ = (§#2§.getItemByName("MovieClip_StarRight") as §5!"§).y + (§#2§.getItemByName("Container_LevelEndStripe") as §9!'§).y;
            this.§@C§ = new §'!N§(§-!l§.§?g§,§-!l§.§-!W§,_loc2_,_loc3_,§'!N§.§0q§,§'!N§.§@x§,_loc9_);
            §#2§.addChild(this.§@C§);
            this.§ h§.push(this.§@C§);
         }
         else if(!this.§"!0§)
         {
            this.§"!0§ = true;
         }
         else
         {
            this.§9!8§.stop();
            if(this.§5""§ && !this.§^!y§)
            {
               (§#2§.getItemByName("MovieClip_NewHighScoreBadge") as §5!"§).setVisibility(true);
            }
            else
            {
               (§#2§.getItemByName("MovieClip_NewHighScoreBadge") as §5!"§).setVisibility(false);
            }
            this.§+"0§ = §0!M§.§?!+§.§3d§((§#2§.getItemByName("MovieClip_NewHighScoreBadge") as §5!"§).mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":7,
               "scaleY":7
            },0.1);
            this.§+"0§.onComplete = this.§7!O§;
            this.§+"0§.play();
         }
         ++this.§+z§;
      }
      
      protected function §9b§() : String
      {
         §3!k§.§]"4§("Hiscore_Star_Splash1",§0!n§);
         (§#2§.getItemByName("MovieClip_StarLeft") as §5!"§).mClip.gotoAndStop("Lit");
         return §86§.§00§;
      }
      
      protected function §1!d§() : String
      {
         §3!k§.§]"4§("Hiscore_Star_Splash2",§0!n§);
         (§#2§.getItemByName("MovieClip_StarCenter") as §5!"§).mClip.gotoAndStop("Lit");
         return §86§.§00§;
      }
      
      protected function §4M§() : String
      {
         §3!k§.§]"4§("Hiscore_Star_Splash3",§0!n§);
         (§#2§.getItemByName("MovieClip_StarRight") as §5!"§).mClip.gotoAndStop("Lit");
         return §86§.§00§;
      }
      
      private function §%]§() : void
      {
         §3!k§.§4[§(§=" §);
      }
      
      override protected function update(param1:Number) : void
      {
         var _loc2_:§'!N§ = null;
         super.update(param1);
         §#2§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScore");
         §#2§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScoreEffects");
         for each(_loc2_ in this.§ h§)
         {
            _loc2_.update(param1);
         }
         if(this.§=s§ >= 0)
         {
            this.§6"1§(param1);
         }
         if(nextState.length > 0)
         {
            §6U§.§+_§.clearLevel();
         }
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§0,§();
         this.§=s§ = 0;
         this.mNewScoreCounter = 0;
         if(this.§'=§)
         {
            this.§'=§.stop();
            this.§'=§ = null;
         }
         if(this.§+"0§)
         {
            this.§+"0§.stop();
            this.§+"0§ = null;
         }
         §3!k§.§4[§(§=" §);
         this.§"!]§(§]"-§.COMPONENT_STATE_ACTIVE_DEFAULT);
         §#2§.setText("0","TextField_LevelEndScore");
         §#2§.setText("0","TextField_LevelEndScoreEffects");
         if(this.§[""§)
         {
            if(§#2§.movieClip.contains(this.§[""§))
            {
               §#2§.movieClip.removeChild(this.§[""§);
            }
            this.§[""§.§=!I§();
            this.§[""§ = null;
         }
      }
      
      protected function §"!]§(param1:String) : void
      {
         (§#2§.getItemByName("Button_Menu") as §4!O§).setComponentVisualState(param1);
         (§#2§.getItemByName("Button_Replay") as §4!O§).setComponentVisualState(param1);
         (§#2§.getItemByName("Button_NextLevel") as §4!O§).setComponentVisualState(param1);
         (§#2§.getItemByName("Button_CutScene") as §4!O§).setComponentVisualState(param1);
      }
      
      private function §0,§() : void
      {
         var splash:§'!N§ = null;
         if(this.§9!8§)
         {
            this.§9!8§.stop();
            try
            {
               this.§9!8§.removeEventListener(TimerEvent.TIMER,this.§'!x§);
            }
            catch(e:Error)
            {
            }
         }
         for each(splash in this.§ h§)
         {
            if(§#2§.contains(splash))
            {
               §#2§.removeChild(splash);
            }
            splash.§=!I§();
         }
         this.§ h§ = new Vector.<§'!N§>();
         this.§]!4§();
      }
      
      protected function §]!4§() : void
      {
         (§#2§.getItemByName("TextField_BestScore") as §>L§).setVisibility(false);
         (§#2§.getItemByName("MovieClip_BestScoreStars") as §5!"§).setVisibility(false);
         (§#2§.getItemByName("TextField_NewHighScore") as §>L§).setVisibility(false);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      protected function §0Y§() : void
      {
         §6!p§();
         §0!w§(this.§&7§());
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§'!R§) : void
      {
         var _loc4_:String = null;
         switch(param2)
         {
            case "NEXT_LEVEL":
               this.§0Y§();
               break;
            case "REPLAY":
               §0!w§(this.§%!7§());
               break;
            case "WATCH_REPLAY":
               §0!w§(this.§%!7§());
               if(_loc4_ = §6U§.§+_§.§+!g§())
               {
                  §6U§.§+_§.§?$§(_loc4_);
               }
               break;
            case "MENU":
               §3!k§.§#!3§();
               §0!w§(this.§&D§());
               break;
            case "FULLSCREEN_BUTTON":
               §-!l§.§"x§.§3l§();
         }
      }
      
      protected function §%!7§() : String
      {
         return §62§.§+B§;
      }
      
      protected function §&7§() : String
      {
         return StateCutScene.§+B§;
      }
      
      public function §&D§() : String
      {
         return §]l§.§+B§;
      }
   }
}
