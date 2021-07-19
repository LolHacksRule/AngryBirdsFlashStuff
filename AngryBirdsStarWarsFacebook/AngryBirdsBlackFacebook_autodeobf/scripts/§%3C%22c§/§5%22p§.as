package §<"c§
{
   import §+D§.§ #^§;
   import §+D§.§0"$§;
   import §+D§.§6!D§;
   import §+D§.§^"m§;
   import §1!i§.§;7§;
   import §3§.§1"M§;
   import §3§.§4! §;
   import §3§.§<#A§;
   import §6"G§.§-#C§;
   import §6"G§.§[#R§;
   import §7!$§.§&$§;
   import §7!$§.§]#[§;
   import §;"Y§.§&#X§;
   import §;"Y§.§1"z§;
   import §="2§.§?!r§;
   import §>@§.§5"H§;
   import §?m§.§+"2§;
   import com.angrybirds.§,!q§;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §5"p§ extends §]"_§
   {
      
      public static const §^!7§:String = "LevelEndState";
      
      public static const §`">§:Number = 30;
      
      protected static const §0,§:String = "ScoreLoopCountChannel";
      
      protected static const §`O§:String = "EndScreenEffectChannel";
       
      
      private var §8S§:§[#R§;
      
      private var §@1§:Number;
      
      private var §'!D§:Number = 0.0;
      
      private var §2"J§:Number = 0.0;
      
      private var §@!U§:Boolean = false;
      
      private var §6!6§:Timer;
      
      private var §@"r§:§4! §;
      
      protected var §2k§:Array;
      
      protected var §0!r§:§<#A§;
      
      protected var §%#>§:Vector.<§<#A§>;
      
      public var mNewScoreCounter:int;
      
      private var §-!t§:int;
      
      private var §5"G§:Boolean;
      
      protected var §[m§:Boolean;
      
      private var §]!w§:§;7§;
      
      protected var §<!L§:Boolean;
      
      private var §3!F§:§[#R§;
      
      protected var §%!x§:Boolean;
      
      protected var §["%§:int;
      
      public function §5"p§(param1:§+"2§, param2:§5"H§, param3:Boolean = false, param4:String = "LevelEndState")
      {
         this.§2k§ = [];
         this.§]!w§ = new §;7§();
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         §@;§ = new §]#[§(this);
         §@;§.init(this.getViewXML());
         this.§;!8§();
         this.§%#>§ = new Vector.<§<#A§>();
         §?!r§.§,"d§(§0,§,1,1);
         §?!r§.§,"d§(§`O§,3,1);
      }
      
      protected function §;!8§() : void
      {
         this.§2k§.push((§@;§.getItemByName("Button_Menu") as §^"m§).x);
         this.§2k§.push((§@;§.getItemByName("Button_Replay") as §^"m§).x);
         this.§2k§.push((§@;§.getItemByName("Button_NextLevel") as §^"m§).x);
         this.§2k§.push((§@;§.getItemByName("Button_CutScene") as §^"m§).x);
      }
      
      protected function getViewXML() : XML
      {
         return §&$§.§@8§.Views.View_LevelEnd[0];
      }
      
      protected function §[r§() : void
      {
         if(!§4#;§.singleton.dataModel.userProgress.isLevelPassed(§+!b§.currentLevel))
         {
            (§@;§.getItemByName("Button_Menu") as §^"m§).setVisibility(false);
            (§@;§.getItemByName("Button_Replay") as §^"m§).setVisibility(true);
            (§@;§.getItemByName("Button_NextLevel") as §^"m§).setVisibility(false);
            (§@;§.getItemByName("Button_CutScene") as §^"m§).setVisibility(true);
            (§@;§.getItemByName("Button_Replay") as §^"m§).x = this.§2k§[0] + Math.abs(this.§2k§[1] - this.§2k§[0]) / 2;
            (§@;§.getItemByName("Button_CutScene") as §^"m§).x = this.§2k§[1] + Math.abs(this.§2k§[2] - this.§2k§[1]) / 2;
         }
         else
         {
            (§@;§.getItemByName("Button_Menu") as §^"m§).setVisibility(true);
            (§@;§.getItemByName("Button_Replay") as §^"m§).setVisibility(true);
            (§@;§.getItemByName("Button_NextLevel") as §^"m§).setVisibility(false);
            (§@;§.getItemByName("Button_CutScene") as §^"m§).setVisibility(true);
            (§@;§.getItemByName("Button_Menu") as §^"m§).x = this.§2k§[0];
            (§@;§.getItemByName("Button_Replay") as §^"m§).x = this.§2k§[1];
            (§@;§.getItemByName("Button_CutScene") as §^"m§).x = this.§2k§[2];
         }
      }
      
      protected function §#N§() : void
      {
         (§@;§.getItemByName("Button_Menu") as §^"m§).setVisibility(true);
         (§@;§.getItemByName("Button_Replay") as §^"m§).setVisibility(true);
         (§@;§.getItemByName("Button_CutScene") as §^"m§).setVisibility(false);
         if(§+!b§.getNextLevelId())
         {
            (§@;§.getItemByName("Button_NextLevel") as §^"m§).setVisibility(true);
            (§@;§.getItemByName("Button_Menu") as §^"m§).x = this.§2k§[0];
            (§@;§.getItemByName("Button_Replay") as §^"m§).x = this.§2k§[1];
            (§@;§.getItemByName("Button_NextLevel") as §^"m§).x = this.§2k§[2];
         }
         else
         {
            (§@;§.getItemByName("Button_NextLevel") as §^"m§).setVisibility(false);
            (§@;§.getItemByName("Button_Menu") as §^"m§).x = this.§2k§[0] + Math.abs(this.§2k§[1] - this.§2k§[0]) / 2;
            (§@;§.getItemByName("Button_Replay") as §^"m§).x = this.§2k§[1] + Math.abs(this.§2k§[2] - this.§2k§[1]) / 2;
         }
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.§%!x§ = false;
         §,!q§.pause();
         this.§@"r§ = new §4! §(0,0,0,0);
         §@;§.movieClip.addChildAt(this.§@"r§,§@;§.movieClip.numChildren - 1);
         if(§+!b§.isCutSceneNext())
         {
            this.§[r§();
         }
         else
         {
            this.§#N§();
         }
         this.mNewScoreCounter = 0;
         this.§5"G§ = false;
         §?!r§.§"#_§("LevelCompletedTheme1");
         this.§@"r§.§""a§(0.7);
         this.§'!D§ = 0;
         this.§2"J§ = 0;
         this.§="B§();
      }
      
      private function §="B§() : void
      {
         this.§[m§ = false;
         this.setScoreData();
         this.§6!6§ = new Timer(500);
         this.§-!t§ = 0;
         this.§6!6§.addEventListener(TimerEvent.TIMER,this.§-K§);
         this.§6!6§.start();
      }
      
      protected function §>"e§() : void
      {
         if(§4#;§.singleton.dataModel.userProgress.getEagleScoreForLevel(§+!b§.currentLevel) == 100)
         {
            (§@;§.getItemByName("MovieClip_ResultMEFeather") as §0"$§).mClip.gotoAndStop("On");
         }
         else
         {
            (§@;§.getItemByName("MovieClip_ResultMEFeather") as §0"$§).mClip.gotoAndStop("Off");
         }
      }
      
      protected function § >§(param1:int, param2:int) : void
      {
         if(this.§<!L§)
         {
            param2 = param1;
            §4#;§.singleton.dataModel.userProgress.§9!R§(§+!b§.currentLevel,param2);
            §@;§.setText("New Highscore!","TextField_BestScore");
         }
         else
         {
            §@;§.setText("Best " + param2.toString(),"TextField_BestScore");
            this.§["%§ = §+!b§.getNumStarsForLevel(§+!b§.currentLevel,param2);
            switch(this.§["%§)
            {
               case 1:
                  (§@;§.getItemByName("MovieClip_BestScoreStars") as §0"$§).§-"I§("OneStar");
                  break;
               case 2:
                  (§@;§.getItemByName("MovieClip_BestScoreStars") as §0"$§).§-"I§("TwoStar");
                  break;
               case 3:
                  (§@;§.getItemByName("MovieClip_BestScoreStars") as §0"$§).§-"I§("ThreeStar");
            }
         }
      }
      
      protected function setScoreData() : void
      {
         var _loc1_:int = §4#;§.singleton.dataModel.userProgress.getScoreForLevel(§+!b§.currentLevel);
         var _loc2_:int = §,!q§.§>k§.getScore(10);
         this.§<!L§ = _loc2_ > _loc1_;
         this.§ >§(_loc2_,_loc1_);
         this.§>"e§();
         var _loc3_:int = §,!q§.§>k§.getEagleScore();
         var _loc4_:int = §4#;§.singleton.dataModel.userProgress.getEagleScoreForLevel(§+!b§.currentLevel);
         var _loc5_:*;
         if(_loc5_ = _loc3_ > _loc4_)
         {
            _loc4_ = _loc3_;
            §4#;§.singleton.dataModel.userProgress.§]"D§(§+!b§.currentLevel,_loc4_);
         }
         var _loc6_:int = §4#;§.singleton.dataModel.userProgress.getStarsForLevel(§+!b§.currentLevel,_loc2_);
         (§@;§.getItemByName("MovieClip_NewHighScoreBadge") as §0"$§).setVisibility(false);
         (§@;§.getItemByName("MovieClip_StarLeft") as §0"$§).mClip.gotoAndStop("UnLit");
         (§@;§.getItemByName("MovieClip_StarCenter") as §0"$§).mClip.gotoAndStop("UnLit");
         (§@;§.getItemByName("MovieClip_StarRight") as §0"$§).mClip.gotoAndStop("UnLit");
      }
      
      protected function onBadgeLanded() : void
      {
         if(this.§<!L§)
         {
            §?!r§.§"#_§("Hiscore_Badge",§`O§);
            §@;§.setText("New Highscore!","TextField_NewHighScore");
            (§@;§.getItemByName("TextField_NewHighScore") as §6!D§).setVisibility(true);
            (§@;§.getItemByName("MovieClip_BestScoreStars") as §0"$§).setVisibility(false);
            this.§9"f§();
         }
         else
         {
            (§@;§.getItemByName("TextField_BestScore") as §6!D§).setVisibility(true);
            (§@;§.getItemByName("MovieClip_BestScoreStars") as §0"$§).setVisibility(true);
         }
      }
      
      protected function §9"f§() : void
      {
         this.§'!D§ = 0;
         this.§2"J§ = 0;
         this.§@1§ = §`">§;
      }
      
      private function §+#V§(param1:Number) : void
      {
         (§@;§.getItemByName("Container_LevelEndStripe") as § #^§).x = (§@;§.getItemByName("Container_LevelEndStripe") as § #^§).x - this.§'!D§;
         (§@;§.getItemByName("Container_LevelEndStripe") as § #^§).y = (§@;§.getItemByName("Container_LevelEndStripe") as § #^§).y - this.§2"J§;
         if(this.§@1§ > 0)
         {
            this.§'!D§ = (Math.random() - 0.5) * (this.§@1§ / §`">§) * 20;
            this.§2"J§ = (Math.random() - 0.5) * (this.§@1§ / §`">§) * 20;
            (§@;§.getItemByName("Container_LevelEndStripe") as § #^§).x = (§@;§.getItemByName("Container_LevelEndStripe") as § #^§).x + this.§'!D§;
            (§@;§.getItemByName("Container_LevelEndStripe") as § #^§).y = (§@;§.getItemByName("Container_LevelEndStripe") as § #^§).y + this.§2"J§;
         }
         else
         {
            this.§'!D§ = 0;
            this.§2"J§ = 0;
         }
         this.§@1§ -= param1 / 10;
      }
      
      private function §-K§(param1:TimerEvent) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:String = null;
         var _loc8_:String = null;
         var _loc9_:String = null;
         var _loc4_:Number = §+!b§.getGoldScoreForLevel(§+!b§.currentLevel);
         var _loc5_:Number = §+!b§.getSilverScoreForLevel(§+!b§.currentLevel);
         if((§@;§.getItemByName("MovieClip_StarLeft") as §0"$§).mClip.currentLabel == "UnLit")
         {
            §?!r§.§"#_§("Hiscore_Count",§0,§,100);
            this.§6!6§.delay = 1000;
            this.§]!w§.§3"Q§(§,!q§.§>k§.getScore(10));
            _loc6_ = this.§]!w§.getValue() / _loc4_ * 2;
            if(_loc4_ <= 0)
            {
               _loc6_ = 1;
            }
            this.§3!F§ = §-#C§.§%!E§.§^!H§(this,{"mNewScoreCounter":this.§]!w§.getValue()},{"mNewScoreCounter":0},_loc6_);
            this.§3!F§.onComplete = this.§?!z§;
            this.§3!F§.play();
            _loc7_ = this.§;"G§();
            _loc2_ = (§@;§.getItemByName("MovieClip_StarLeft") as §0"$§).x + (§@;§.getItemByName("Container_LevelEndStripe") as § #^§).x;
            _loc3_ = (§@;§.getItemByName("MovieClip_StarLeft") as §0"$§).y + (§@;§.getItemByName("Container_LevelEndStripe") as § #^§).y;
            this.§0!r§ = new §<#A§(§4#;§.screenWidth,§4#;§.screenHeight,_loc2_,_loc3_,§<#A§.§=!D§,§<#A§.§&"m§,_loc7_);
            §@;§.addChild(this.§0!r§);
            this.§%#>§.push(this.§0!r§);
         }
         else if(this.§]!w§.getValue() >= _loc5_ && (§@;§.getItemByName("MovieClip_StarCenter") as §0"$§).mClip.currentLabel == "UnLit")
         {
            _loc8_ = this.§`"h§();
            _loc2_ = (§@;§.getItemByName("MovieClip_StarCenter") as §0"$§).x + (§@;§.getItemByName("Container_LevelEndStripe") as § #^§).x;
            _loc3_ = (§@;§.getItemByName("MovieClip_StarCenter") as §0"$§).y + (§@;§.getItemByName("Container_LevelEndStripe") as § #^§).y;
            this.§0!r§ = new §<#A§(§4#;§.screenWidth,§4#;§.screenHeight,_loc2_,_loc3_,§<#A§.§!&§,§<#A§.§&"m§,_loc8_);
            §@;§.addChild(this.§0!r§);
            this.§%#>§.push(this.§0!r§);
         }
         else if(this.§]!w§.getValue() >= _loc4_ && (§@;§.getItemByName("MovieClip_StarRight") as §0"$§).mClip.currentLabel == "UnLit")
         {
            this.§%!x§ = true;
            _loc9_ = this.§!B§();
            _loc2_ = (§@;§.getItemByName("MovieClip_StarRight") as §0"$§).x + (§@;§.getItemByName("Container_LevelEndStripe") as § #^§).x;
            _loc3_ = (§@;§.getItemByName("MovieClip_StarRight") as §0"$§).y + (§@;§.getItemByName("Container_LevelEndStripe") as § #^§).y;
            this.§0!r§ = new §<#A§(§4#;§.screenWidth,§4#;§.screenHeight,_loc2_,_loc3_,§<#A§.§?b§,§<#A§.§&"m§,_loc9_);
            §@;§.addChild(this.§0!r§);
            this.§%#>§.push(this.§0!r§);
         }
         else if(!this.§5"G§)
         {
            this.§5"G§ = true;
         }
         else
         {
            this.§6!6§.stop();
            if(this.§<!L§ && !this.§[m§)
            {
               (§@;§.getItemByName("MovieClip_NewHighScoreBadge") as §0"$§).setVisibility(true);
            }
            else
            {
               (§@;§.getItemByName("MovieClip_NewHighScoreBadge") as §0"$§).setVisibility(false);
            }
            this.§8S§ = §-#C§.§%!E§.§^!H§((§@;§.getItemByName("MovieClip_NewHighScoreBadge") as §0"$§).mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":7,
               "scaleY":7
            },0.1);
            this.§8S§.onComplete = this.onBadgeLanded;
            this.§8S§.play();
         }
         ++this.§-!t§;
      }
      
      protected function §;"G§() : String
      {
         §?!r§.§"#_§("Hiscore_Star_Splash1",§`O§);
         (§@;§.getItemByName("MovieClip_StarLeft") as §0"$§).mClip.gotoAndStop("Lit");
         return §1"M§.§-!g§;
      }
      
      protected function §`"h§() : String
      {
         §?!r§.§"#_§("Hiscore_Star_Splash2",§`O§);
         (§@;§.getItemByName("MovieClip_StarCenter") as §0"$§).mClip.gotoAndStop("Lit");
         return §1"M§.§-!g§;
      }
      
      protected function §!B§() : String
      {
         §?!r§.§"#_§("Hiscore_Star_Splash3",§`O§);
         (§@;§.getItemByName("MovieClip_StarRight") as §0"$§).mClip.gotoAndStop("Lit");
         return §1"M§.§-!g§;
      }
      
      private function §?!z§() : void
      {
         §?!r§.§9"4§(§0,§);
      }
      
      override protected function update(param1:Number) : void
      {
         var _loc2_:§<#A§ = null;
         super.update(param1);
         §@;§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScore");
         §@;§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScoreEffects");
         for each(_loc2_ in this.§%#>§)
         {
            _loc2_.update(param1);
         }
         if(this.§@1§ >= 0)
         {
            this.§+#V§(param1);
         }
         if(nextState.length > 0)
         {
            §,!q§.§9!,§.clearLevel();
         }
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§"#V§();
         this.§@1§ = 0;
         this.mNewScoreCounter = 0;
         if(this.§3!F§)
         {
            this.§3!F§.stop();
            this.§3!F§ = null;
         }
         if(this.§8S§)
         {
            this.§8S§.stop();
            this.§8S§ = null;
         }
         §?!r§.§9"4§(§0,§);
         this.§7b§(§1"z§.COMPONENT_STATE_ACTIVE_DEFAULT);
         §@;§.setText("0","TextField_LevelEndScore");
         §@;§.setText("0","TextField_LevelEndScoreEffects");
         if(this.§@"r§)
         {
            if(§@;§.movieClip.contains(this.§@"r§))
            {
               §@;§.movieClip.removeChild(this.§@"r§);
            }
            this.§@"r§.§%!G§();
            this.§@"r§ = null;
         }
      }
      
      protected function §7b§(param1:String) : void
      {
         (§@;§.getItemByName("Button_Menu") as §^"m§).setComponentVisualState(param1);
         (§@;§.getItemByName("Button_Replay") as §^"m§).setComponentVisualState(param1);
         (§@;§.getItemByName("Button_NextLevel") as §^"m§).setComponentVisualState(param1);
         (§@;§.getItemByName("Button_CutScene") as §^"m§).setComponentVisualState(param1);
      }
      
      private function §"#V§() : void
      {
         var splash:§<#A§ = null;
         if(this.§6!6§)
         {
            this.§6!6§.stop();
            try
            {
               this.§6!6§.removeEventListener(TimerEvent.TIMER,this.§-K§);
            }
            catch(e:Error)
            {
            }
         }
         for each(splash in this.§%#>§)
         {
            if(§@;§.contains(splash))
            {
               §@;§.removeChild(splash);
            }
            splash.§%!G§();
         }
         this.§%#>§ = new Vector.<§<#A§>();
         this.§?N§();
      }
      
      protected function §?N§() : void
      {
         (§@;§.getItemByName("TextField_BestScore") as §6!D§).setVisibility(false);
         (§@;§.getItemByName("MovieClip_BestScoreStars") as §0"$§).setVisibility(false);
         (§@;§.getItemByName("TextField_NewHighScore") as §6!D§).setVisibility(false);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      protected function loadNextLevel() : void
      {
         §'$§();
         § g§(this.getCutSceneState());
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§&#X§) : void
      {
         var _loc4_:String = null;
         switch(param2)
         {
            case "NEXT_LEVEL":
               this.loadNextLevel();
               break;
            case "REPLAY":
               § g§(this.getStateLevelLoadState());
               break;
            case "WATCH_REPLAY":
               § g§(this.getStateLevelLoadState());
               if(_loc4_ = §,!q§.§9!,§.§#!M§())
               {
                  §,!q§.§9!,§.§ r§(_loc4_);
               }
               break;
            case "MENU":
               §?!r§.§0"#§();
               § g§(this.getMenuButtonTargetState());
               break;
            case "FULLSCREEN_BUTTON":
               §4#;§.singleton.§5"q§();
         }
      }
      
      protected function getStateLevelLoadState() : String
      {
         return §<2§.§^!7§;
      }
      
      protected function getCutSceneState() : String
      {
         return StateCutScene.§^!7§;
      }
      
      public function getMenuButtonTargetState() : String
      {
         return §+#?§.§^!7§;
      }
   }
}
