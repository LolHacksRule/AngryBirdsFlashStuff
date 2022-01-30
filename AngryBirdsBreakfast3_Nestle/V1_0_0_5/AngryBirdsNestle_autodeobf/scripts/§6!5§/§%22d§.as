package §6!5§
{
   import § !T§.§ q§;
   import § ,§.§>u§;
   import §&<§.§@j§;
   import §&<§.§^!#§;
   import §+!5§.§#!>§;
   import §+!5§.§+T§;
   import §+!5§.§2O§;
   import §2W§.§2E§;
   import §6t§.§3`§;
   import §6t§.§<!'§;
   import §@!6§.§3!5§;
   import §[!F§.§1c§;
   import §[!F§.§3j§;
   import §[!F§.§>""§;
   import §[!F§.§^!g§;
   import §^!`§.§#p§;
   import §^!`§.§-"5§;
   import com.angrybirds.§6!E§;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §"d§ extends §3!3§
   {
      
      public static const §7w§:String = "LevelEndState";
      
      public static const §]!O§:Number = 30;
      
      protected static const §%H§:String = "ScoreLoopCountChannel";
      
      protected static const §#J§:String = "EndScreenEffectChannel";
       
      
      private var §4!w§:§<!'§;
      
      private var §;!§:Number;
      
      private var §2p§:Number = 0.0;
      
      private var §,!9§:Number = 0.0;
      
      private var § set§:Boolean = false;
      
      private var §^d§:Timer;
      
      private var §0!M§:§2O§;
      
      protected var §&"$§:Array;
      
      protected var §!!§:§#!>§;
      
      protected var §["0§:Vector.<§#!>§>;
      
      public var mNewScoreCounter:int;
      
      private var §;!_§:int;
      
      private var §?!$§:Boolean;
      
      protected var §;!H§:Boolean;
      
      private var §=!E§:§2E§;
      
      protected var §6h§:Boolean;
      
      private var §6!W§:§<!'§;
      
      protected var §^3§:Boolean;
      
      protected var §'<§:int;
      
      public function §"d§(param1:§ q§, param2:§>u§, param3:Boolean = false, param4:String = "LevelEndState")
      {
         this.§&"$§ = [];
         this.§=!E§ = new §2E§();
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         § !z§ = new §-"5§(this);
         § !z§.init(this.§;!<§());
         this.§>!u§();
         this.§["0§ = new Vector.<§#!>§>();
         §3!5§.§`Z§(§%H§,1,1);
         §3!5§.§`Z§(§#J§,3,1);
      }
      
      protected function §>!u§() : void
      {
         this.§&"$§.push((§ !z§.getItemByName("Button_Menu") as §^!g§).x);
         this.§&"$§.push((§ !z§.getItemByName("Button_Replay") as §^!g§).x);
         this.§&"$§.push((§ !z§.getItemByName("Button_NextLevel") as §^!g§).x);
         this.§&"$§.push((§ !z§.getItemByName("Button_CutScene") as §^!g§).x);
      }
      
      protected function §;!<§() : XML
      {
         return §#p§.§'"0§.Views.View_LevelEnd[0];
      }
      
      protected function §-C§() : void
      {
         if(!§-!I§.§[f§.§?4§.userProgress.§-Q§(§="4§.currentLevel))
         {
            (§ !z§.getItemByName("Button_Menu") as §^!g§).setVisibility(false);
            (§ !z§.getItemByName("Button_Replay") as §^!g§).setVisibility(true);
            (§ !z§.getItemByName("Button_NextLevel") as §^!g§).setVisibility(false);
            (§ !z§.getItemByName("Button_CutScene") as §^!g§).setVisibility(true);
            (§ !z§.getItemByName("Button_Replay") as §^!g§).x = this.§&"$§[0] + Math.abs(this.§&"$§[1] - this.§&"$§[0]) / 2;
            (§ !z§.getItemByName("Button_CutScene") as §^!g§).x = this.§&"$§[1] + Math.abs(this.§&"$§[2] - this.§&"$§[1]) / 2;
         }
         else
         {
            (§ !z§.getItemByName("Button_Menu") as §^!g§).setVisibility(true);
            (§ !z§.getItemByName("Button_Replay") as §^!g§).setVisibility(true);
            (§ !z§.getItemByName("Button_NextLevel") as §^!g§).setVisibility(false);
            (§ !z§.getItemByName("Button_CutScene") as §^!g§).setVisibility(true);
            (§ !z§.getItemByName("Button_Menu") as §^!g§).x = this.§&"$§[0];
            (§ !z§.getItemByName("Button_Replay") as §^!g§).x = this.§&"$§[1];
            (§ !z§.getItemByName("Button_CutScene") as §^!g§).x = this.§&"$§[2];
         }
      }
      
      protected function §[!=§() : void
      {
         (§ !z§.getItemByName("Button_Menu") as §^!g§).setVisibility(true);
         (§ !z§.getItemByName("Button_Replay") as §^!g§).setVisibility(true);
         (§ !z§.getItemByName("Button_CutScene") as §^!g§).setVisibility(false);
         if(§="4§.getNextLevelId())
         {
            (§ !z§.getItemByName("Button_NextLevel") as §^!g§).setVisibility(true);
            (§ !z§.getItemByName("Button_Menu") as §^!g§).x = this.§&"$§[0];
            (§ !z§.getItemByName("Button_Replay") as §^!g§).x = this.§&"$§[1];
            (§ !z§.getItemByName("Button_NextLevel") as §^!g§).x = this.§&"$§[2];
         }
         else
         {
            (§ !z§.getItemByName("Button_NextLevel") as §^!g§).setVisibility(false);
            (§ !z§.getItemByName("Button_Menu") as §^!g§).x = this.§&"$§[0] + Math.abs(this.§&"$§[1] - this.§&"$§[0]) / 2;
            (§ !z§.getItemByName("Button_Replay") as §^!g§).x = this.§&"$§[1] + Math.abs(this.§&"$§[2] - this.§&"$§[1]) / 2;
         }
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.§^3§ = false;
         §6!E§.pause();
         this.§0!M§ = new §2O§(0,0,0,0);
         § !z§.movieClip.addChildAt(this.§0!M§,§ !z§.movieClip.numChildren - 1);
         if(§="4§.isCutSceneNext())
         {
            this.§-C§();
         }
         else
         {
            this.§[!=§();
         }
         this.mNewScoreCounter = 0;
         this.§?!$§ = false;
         §3!5§.§<!9§("LevelCompletedTheme1");
         this.§0!M§.§5!F§(0.7);
         this.§2p§ = 0;
         this.§,!9§ = 0;
         this.§+O§();
      }
      
      private function §+O§() : void
      {
         this.§;!H§ = false;
         this.§9#§();
         this.§^d§ = new Timer(500);
         this.§;!_§ = 0;
         this.§^d§.addEventListener(TimerEvent.TIMER,this.§-6§);
         this.§^d§.start();
      }
      
      protected function §`"'§() : void
      {
         if(§-!I§.§[f§.§?4§.userProgress.§^!y§(§="4§.currentLevel) == 100)
         {
            (§ !z§.getItemByName("MovieClip_ResultMEFeather") as §>""§).mClip.gotoAndStop("On");
         }
         else
         {
            (§ !z§.getItemByName("MovieClip_ResultMEFeather") as §>""§).mClip.gotoAndStop("Off");
         }
      }
      
      protected function §[!>§(param1:int, param2:int) : void
      {
         if(this.§6h§)
         {
            param2 = param1;
            §-!I§.§[f§.§?4§.userProgress.setScoreForLevel(§="4§.currentLevel,param2);
            § !z§.setText("New Highscore!","TextField_BestScore");
         }
         else
         {
            § !z§.setText("Best " + param2.toString(),"TextField_BestScore");
            this.§'<§ = §="4§.getNumStarsForLevel(§="4§.currentLevel,param2);
            switch(this.§'<§)
            {
               case 1:
                  (§ !z§.getItemByName("MovieClip_BestScoreStars") as §>""§).§7?§("OneStar");
                  break;
               case 2:
                  (§ !z§.getItemByName("MovieClip_BestScoreStars") as §>""§).§7?§("TwoStar");
                  break;
               case 3:
                  (§ !z§.getItemByName("MovieClip_BestScoreStars") as §>""§).§7?§("ThreeStar");
            }
         }
      }
      
      protected function §9#§() : void
      {
         var _loc1_:int = §-!I§.§[f§.§?4§.userProgress.getScoreForLevel(§="4§.currentLevel);
         var _loc2_:int = §6!E§.controller.getScore(10);
         this.§6h§ = _loc2_ > _loc1_;
         this.§[!>§(_loc2_,_loc1_);
         this.§`"'§();
         var _loc3_:int = §6!E§.controller.getEagleScore();
         var _loc4_:int = §-!I§.§[f§.§?4§.userProgress.§^!y§(§="4§.currentLevel);
         var _loc5_:*;
         if(_loc5_ = _loc3_ > _loc4_)
         {
            _loc4_ = _loc3_;
            §-!I§.§[f§.§?4§.userProgress.§>!-§(§="4§.currentLevel,_loc4_);
         }
         var _loc6_:int = §-!I§.§[f§.§?4§.userProgress.§`!E§(§="4§.currentLevel,_loc2_);
         (§ !z§.getItemByName("MovieClip_NewHighScoreBadge") as §>""§).setVisibility(false);
         (§ !z§.getItemByName("MovieClip_StarLeft") as §>""§).mClip.gotoAndStop("UnLit");
         (§ !z§.getItemByName("MovieClip_StarCenter") as §>""§).mClip.gotoAndStop("UnLit");
         (§ !z§.getItemByName("MovieClip_StarRight") as §>""§).mClip.gotoAndStop("UnLit");
      }
      
      protected function §3!q§() : void
      {
         if(this.§6h§)
         {
            §3!5§.§<!9§("Hiscore_Badge",§#J§);
            § !z§.setText("New Highscore!","TextField_NewHighScore");
            (§ !z§.getItemByName("TextField_NewHighScore") as §1c§).setVisibility(true);
            (§ !z§.getItemByName("MovieClip_BestScoreStars") as §>""§).setVisibility(false);
            this.§#A§();
         }
         else
         {
            (§ !z§.getItemByName("TextField_BestScore") as §1c§).setVisibility(true);
            (§ !z§.getItemByName("MovieClip_BestScoreStars") as §>""§).setVisibility(true);
         }
      }
      
      protected function §#A§() : void
      {
         this.§2p§ = 0;
         this.§,!9§ = 0;
         this.§;!§ = §]!O§;
      }
      
      private function §[!U§(param1:Number) : void
      {
         (§ !z§.getItemByName("Container_LevelEndStripe") as §3j§).x = (§ !z§.getItemByName("Container_LevelEndStripe") as §3j§).x - this.§2p§;
         (§ !z§.getItemByName("Container_LevelEndStripe") as §3j§).y = (§ !z§.getItemByName("Container_LevelEndStripe") as §3j§).y - this.§,!9§;
         if(this.§;!§ > 0)
         {
            this.§2p§ = (Math.random() - 0.5) * (this.§;!§ / §]!O§) * 20;
            this.§,!9§ = (Math.random() - 0.5) * (this.§;!§ / §]!O§) * 20;
            (§ !z§.getItemByName("Container_LevelEndStripe") as §3j§).x = (§ !z§.getItemByName("Container_LevelEndStripe") as §3j§).x + this.§2p§;
            (§ !z§.getItemByName("Container_LevelEndStripe") as §3j§).y = (§ !z§.getItemByName("Container_LevelEndStripe") as §3j§).y + this.§,!9§;
         }
         else
         {
            this.§2p§ = 0;
            this.§,!9§ = 0;
         }
         this.§;!§ -= param1 / 10;
      }
      
      private function §-6§(param1:TimerEvent) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:String = null;
         var _loc8_:String = null;
         var _loc9_:String = null;
         var _loc4_:Number = §="4§.getGoldScoreForLevel(§="4§.currentLevel);
         var _loc5_:Number = §="4§.getSilverScoreForLevel(§="4§.currentLevel);
         if((§ !z§.getItemByName("MovieClip_StarLeft") as §>""§).mClip.currentLabel == "UnLit")
         {
            §3!5§.§<!9§("Hiscore_Count",§%H§,100);
            this.§^d§.delay = 1000;
            this.§=!E§.§=-§(§6!E§.controller.getScore(10));
            _loc6_ = this.§=!E§.getValue() / _loc4_ * 2;
            if(_loc4_ <= 0)
            {
               _loc6_ = 1;
            }
            this.§6!W§ = §3`§.§<"5§.§^g§(this,{"mNewScoreCounter":this.§=!E§.getValue()},{"mNewScoreCounter":0},_loc6_);
            this.§6!W§.onComplete = this.§]e§;
            this.§6!W§.play();
            _loc7_ = this.§[y§();
            _loc2_ = (§ !z§.getItemByName("MovieClip_StarLeft") as §>""§).x + (§ !z§.getItemByName("Container_LevelEndStripe") as §3j§).x;
            _loc3_ = (§ !z§.getItemByName("MovieClip_StarLeft") as §>""§).y + (§ !z§.getItemByName("Container_LevelEndStripe") as §3j§).y;
            this.§!!§ = new §#!>§(§-!I§.§[M§,§-!I§.§&!P§,_loc2_,_loc3_,§#!>§.§9_§,§#!>§.§>!G§,_loc7_);
            § !z§.addChild(this.§!!§);
            this.§["0§.push(this.§!!§);
         }
         else if(this.§=!E§.getValue() >= _loc5_ && (§ !z§.getItemByName("MovieClip_StarCenter") as §>""§).mClip.currentLabel == "UnLit")
         {
            _loc8_ = this.§[G§();
            _loc2_ = (§ !z§.getItemByName("MovieClip_StarCenter") as §>""§).x + (§ !z§.getItemByName("Container_LevelEndStripe") as §3j§).x;
            _loc3_ = (§ !z§.getItemByName("MovieClip_StarCenter") as §>""§).y + (§ !z§.getItemByName("Container_LevelEndStripe") as §3j§).y;
            this.§!!§ = new §#!>§(§-!I§.§[M§,§-!I§.§&!P§,_loc2_,_loc3_,§#!>§.§'!y§,§#!>§.§>!G§,_loc8_);
            § !z§.addChild(this.§!!§);
            this.§["0§.push(this.§!!§);
         }
         else if(this.§=!E§.getValue() >= _loc4_ && (§ !z§.getItemByName("MovieClip_StarRight") as §>""§).mClip.currentLabel == "UnLit")
         {
            this.§^3§ = true;
            _loc9_ = this.§ "%§();
            _loc2_ = (§ !z§.getItemByName("MovieClip_StarRight") as §>""§).x + (§ !z§.getItemByName("Container_LevelEndStripe") as §3j§).x;
            _loc3_ = (§ !z§.getItemByName("MovieClip_StarRight") as §>""§).y + (§ !z§.getItemByName("Container_LevelEndStripe") as §3j§).y;
            this.§!!§ = new §#!>§(§-!I§.§[M§,§-!I§.§&!P§,_loc2_,_loc3_,§#!>§.§%!6§,§#!>§.§>!G§,_loc9_);
            § !z§.addChild(this.§!!§);
            this.§["0§.push(this.§!!§);
         }
         else if(!this.§?!$§)
         {
            this.§?!$§ = true;
         }
         else
         {
            this.§^d§.stop();
            if(this.§6h§ && !this.§;!H§)
            {
               (§ !z§.getItemByName("MovieClip_NewHighScoreBadge") as §>""§).setVisibility(true);
            }
            else
            {
               (§ !z§.getItemByName("MovieClip_NewHighScoreBadge") as §>""§).setVisibility(false);
            }
            this.§4!w§ = §3`§.§<"5§.§^g§((§ !z§.getItemByName("MovieClip_NewHighScoreBadge") as §>""§).mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":7,
               "scaleY":7
            },0.1);
            this.§4!w§.onComplete = this.§3!q§;
            this.§4!w§.play();
         }
         ++this.§;!_§;
      }
      
      protected function §[y§() : String
      {
         §3!5§.§<!9§("Hiscore_Star_Splash1",§#J§);
         (§ !z§.getItemByName("MovieClip_StarLeft") as §>""§).mClip.gotoAndStop("Lit");
         return §+T§.§&!3§;
      }
      
      protected function §[G§() : String
      {
         §3!5§.§<!9§("Hiscore_Star_Splash2",§#J§);
         (§ !z§.getItemByName("MovieClip_StarCenter") as §>""§).mClip.gotoAndStop("Lit");
         return §+T§.§&!3§;
      }
      
      protected function § "%§() : String
      {
         §3!5§.§<!9§("Hiscore_Star_Splash3",§#J§);
         (§ !z§.getItemByName("MovieClip_StarRight") as §>""§).mClip.gotoAndStop("Lit");
         return §+T§.§&!3§;
      }
      
      private function §]e§() : void
      {
         §3!5§.§55§(§%H§);
      }
      
      override protected function update(param1:Number) : void
      {
         var _loc2_:§#!>§ = null;
         super.update(param1);
         § !z§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScore");
         § !z§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScoreEffects");
         for each(_loc2_ in this.§["0§)
         {
            _loc2_.update(param1);
         }
         if(this.§;!§ >= 0)
         {
            this.§[!U§(param1);
         }
         if(nextState.length > 0)
         {
            §6!E§.§7I§.clearLevel();
         }
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§-!@§();
         this.§;!§ = 0;
         this.mNewScoreCounter = 0;
         if(this.§6!W§)
         {
            this.§6!W§.stop();
            this.§6!W§ = null;
         }
         if(this.§4!w§)
         {
            this.§4!w§.stop();
            this.§4!w§ = null;
         }
         §3!5§.§55§(§%H§);
         this.§45§(§@j§.COMPONENT_STATE_ACTIVE_DEFAULT);
         § !z§.setText("0","TextField_LevelEndScore");
         § !z§.setText("0","TextField_LevelEndScoreEffects");
         if(this.§0!M§)
         {
            if(§ !z§.movieClip.contains(this.§0!M§))
            {
               § !z§.movieClip.removeChild(this.§0!M§);
            }
            this.§0!M§.§[!R§();
            this.§0!M§ = null;
         }
      }
      
      protected function §45§(param1:String) : void
      {
         (§ !z§.getItemByName("Button_Menu") as §^!g§).setComponentVisualState(param1);
         (§ !z§.getItemByName("Button_Replay") as §^!g§).setComponentVisualState(param1);
         (§ !z§.getItemByName("Button_NextLevel") as §^!g§).setComponentVisualState(param1);
         (§ !z§.getItemByName("Button_CutScene") as §^!g§).setComponentVisualState(param1);
      }
      
      private function §-!@§() : void
      {
         var splash:§#!>§ = null;
         if(this.§^d§)
         {
            this.§^d§.stop();
            try
            {
               this.§^d§.removeEventListener(TimerEvent.TIMER,this.§-6§);
            }
            catch(e:Error)
            {
            }
         }
         for each(splash in this.§["0§)
         {
            if(§ !z§.contains(splash))
            {
               § !z§.removeChild(splash);
            }
            splash.§[!R§();
         }
         this.§["0§ = new Vector.<§#!>§>();
         this.§+!p§();
      }
      
      protected function §+!p§() : void
      {
         (§ !z§.getItemByName("TextField_BestScore") as §1c§).setVisibility(false);
         (§ !z§.getItemByName("MovieClip_BestScoreStars") as §>""§).setVisibility(false);
         (§ !z§.getItemByName("TextField_NewHighScore") as §1c§).setVisibility(false);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      protected function § '§() : void
      {
         § for§();
         §?n§(this.§`!3§());
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§^!#§) : void
      {
         var _loc4_:String = null;
         switch(param2)
         {
            case "NEXT_LEVEL":
               this.§ '§();
               break;
            case "REPLAY":
               §?n§(this.§0O§());
               break;
            case "WATCH_REPLAY":
               §?n§(this.§0O§());
               if(_loc4_ = §6!E§.§7I§.§@7§())
               {
                  §6!E§.§7I§.§4!0§(_loc4_);
               }
               break;
            case "MENU":
               §3!5§.§,!8§();
               §?n§(this.§"!R§());
               break;
            case "FULLSCREEN_BUTTON":
               §-!I§.§[f§.§?U§();
         }
      }
      
      protected function §0O§() : String
      {
         return §4!R§.§7w§;
      }
      
      protected function §`!3§() : String
      {
         return StateCutScene.§7w§;
      }
      
      public function §"!R§() : String
      {
         return §^!+§.§7w§;
      }
   }
}
