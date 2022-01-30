package §,#§
{
   import §"!G§.§3!f§;
   import §%f§.§[o§;
   import §53§.§6!u§;
   import §53§.§["$§;
   import §5<§.§58§;
   import §5<§.§8!1§;
   import §8!e§.§3"&§;
   import §8q§.§]d§;
   import §;"+§.§"!I§;
   import §;"+§.§0?§;
   import §;"+§.§9!M§;
   import §;"+§.§^!i§;
   import §=b§.§&>§;
   import §=b§.§+!'§;
   import §=b§.§5!p§;
   import §>P§.§,3§;
   import §>P§.§-U§;
   import com.angrybirds.§4"6§;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §?"&§ extends §@!4§
   {
      
      public static const §'u§:String = "LevelEndState";
      
      public static const §1D§:Number = 30;
      
      protected static const §@!0§:String = "ScoreLoopCountChannel";
      
      protected static const §3"5§:String = "EndScreenEffectChannel";
       
      
      private var §<`§:§["$§;
      
      private var §2<§:Number;
      
      private var §]F§:Number = 0.0;
      
      private var §,y§:Number = 0.0;
      
      private var §#L§:Boolean = false;
      
      private var §&!n§:Timer;
      
      private var § Y§:§5!p§;
      
      protected var §2I§:Array;
      
      protected var §#?§:§+!'§;
      
      protected var §5![§:Vector.<§+!'§>;
      
      public var mNewScoreCounter:int;
      
      private var §1!y§:int;
      
      private var §3>§:Boolean;
      
      protected var §%-§:Boolean;
      
      private var §;u§:§[o§;
      
      protected var §`"2§:Boolean;
      
      private var §1V§:§["$§;
      
      protected var §`!9§:Boolean;
      
      protected var §0!;§:int;
      
      public function §?"&§(param1:§3"&§, param2:§3!f§, param3:Boolean = false, param4:String = "LevelEndState")
      {
         this.§2I§ = [];
         this.§;u§ = new §[o§();
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         §^!6§ = new §58§(this);
         §^!6§.init(this.§'!N§());
         this.§0!N§();
         this.§5![§ = new Vector.<§+!'§>();
         §]d§.§[!$§(§@!0§,1,1);
         §]d§.§[!$§(§3"5§,3,1);
      }
      
      protected function §0!N§() : void
      {
         this.§2I§.push((§^!6§.getItemByName("Button_Menu") as §9!M§).x);
         this.§2I§.push((§^!6§.getItemByName("Button_Replay") as §9!M§).x);
         this.§2I§.push((§^!6§.getItemByName("Button_NextLevel") as §9!M§).x);
         this.§2I§.push((§^!6§.getItemByName("Button_CutScene") as §9!M§).x);
      }
      
      protected function §'!N§() : XML
      {
         return §8!1§.§31§.Views.View_LevelEnd[0];
      }
      
      protected function §#]§() : void
      {
         if(!§-O§.§5!1§.§]u§.userProgress.§-"8§(§!3§.currentLevel))
         {
            (§^!6§.getItemByName("Button_Menu") as §9!M§).setVisibility(false);
            (§^!6§.getItemByName("Button_Replay") as §9!M§).setVisibility(true);
            (§^!6§.getItemByName("Button_NextLevel") as §9!M§).setVisibility(false);
            (§^!6§.getItemByName("Button_CutScene") as §9!M§).setVisibility(true);
            (§^!6§.getItemByName("Button_Replay") as §9!M§).x = this.§2I§[0] + Math.abs(this.§2I§[1] - this.§2I§[0]) / 2;
            (§^!6§.getItemByName("Button_CutScene") as §9!M§).x = this.§2I§[1] + Math.abs(this.§2I§[2] - this.§2I§[1]) / 2;
         }
         else
         {
            (§^!6§.getItemByName("Button_Menu") as §9!M§).setVisibility(true);
            (§^!6§.getItemByName("Button_Replay") as §9!M§).setVisibility(true);
            (§^!6§.getItemByName("Button_NextLevel") as §9!M§).setVisibility(false);
            (§^!6§.getItemByName("Button_CutScene") as §9!M§).setVisibility(true);
            (§^!6§.getItemByName("Button_Menu") as §9!M§).x = this.§2I§[0];
            (§^!6§.getItemByName("Button_Replay") as §9!M§).x = this.§2I§[1];
            (§^!6§.getItemByName("Button_CutScene") as §9!M§).x = this.§2I§[2];
         }
      }
      
      protected function §9!]§() : void
      {
         (§^!6§.getItemByName("Button_Menu") as §9!M§).setVisibility(true);
         (§^!6§.getItemByName("Button_Replay") as §9!M§).setVisibility(true);
         (§^!6§.getItemByName("Button_CutScene") as §9!M§).setVisibility(false);
         if(§!3§.getNextLevelId())
         {
            (§^!6§.getItemByName("Button_NextLevel") as §9!M§).setVisibility(true);
            (§^!6§.getItemByName("Button_Menu") as §9!M§).x = this.§2I§[0];
            (§^!6§.getItemByName("Button_Replay") as §9!M§).x = this.§2I§[1];
            (§^!6§.getItemByName("Button_NextLevel") as §9!M§).x = this.§2I§[2];
         }
         else
         {
            (§^!6§.getItemByName("Button_NextLevel") as §9!M§).setVisibility(false);
            (§^!6§.getItemByName("Button_Menu") as §9!M§).x = this.§2I§[0] + Math.abs(this.§2I§[1] - this.§2I§[0]) / 2;
            (§^!6§.getItemByName("Button_Replay") as §9!M§).x = this.§2I§[1] + Math.abs(this.§2I§[2] - this.§2I§[1]) / 2;
         }
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.§`!9§ = false;
         §4"6§.pause();
         this.§ Y§ = new §5!p§(0,0,0,0);
         §^!6§.movieClip.addChildAt(this.§ Y§,§^!6§.movieClip.numChildren - 1);
         if(§!3§.isCutSceneNext())
         {
            this.§#]§();
         }
         else
         {
            this.§9!]§();
         }
         this.mNewScoreCounter = 0;
         this.§3>§ = false;
         §]d§.§^!J§("LevelCompletedTheme1");
         this.§ Y§.§<!9§(0.7);
         this.§]F§ = 0;
         this.§,y§ = 0;
         this.§+d§();
      }
      
      private function §+d§() : void
      {
         this.§%-§ = false;
         this.§+!4§();
         this.§&!n§ = new Timer(500);
         this.§1!y§ = 0;
         this.§&!n§.addEventListener(TimerEvent.TIMER,this.§@!1§);
         this.§&!n§.start();
      }
      
      protected function §+X§() : void
      {
         if(§-O§.§5!1§.§]u§.userProgress.§8!w§(§!3§.currentLevel) == 100)
         {
            (§^!6§.getItemByName("MovieClip_ResultMEFeather") as §0?§).mClip.gotoAndStop("On");
         }
         else
         {
            (§^!6§.getItemByName("MovieClip_ResultMEFeather") as §0?§).mClip.gotoAndStop("Off");
         }
      }
      
      protected function §&!"§(param1:int, param2:int) : void
      {
         if(this.§`"2§)
         {
            param2 = param1;
            §-O§.§5!1§.§]u§.userProgress.setScoreForLevel(§!3§.currentLevel,param2);
            §^!6§.setText("New Highscore!","TextField_BestScore");
         }
         else
         {
            §^!6§.setText("Best " + param2.toString(),"TextField_BestScore");
            this.§0!;§ = §!3§.getNumStarsForLevel(§!3§.currentLevel,param2);
            switch(this.§0!;§)
            {
               case 1:
                  (§^!6§.getItemByName("MovieClip_BestScoreStars") as §0?§).§^w§("OneStar");
                  break;
               case 2:
                  (§^!6§.getItemByName("MovieClip_BestScoreStars") as §0?§).§^w§("TwoStar");
                  break;
               case 3:
                  (§^!6§.getItemByName("MovieClip_BestScoreStars") as §0?§).§^w§("ThreeStar");
            }
         }
      }
      
      protected function §+!4§() : void
      {
         var _loc1_:int = §-O§.§5!1§.§]u§.userProgress.getScoreForLevel(§!3§.currentLevel);
         var _loc2_:int = §4"6§.controller.getScore(10);
         this.§`"2§ = _loc2_ > _loc1_;
         this.§&!"§(_loc2_,_loc1_);
         this.§+X§();
         var _loc3_:int = §4"6§.controller.getEagleScore();
         var _loc4_:int = §-O§.§5!1§.§]u§.userProgress.§8!w§(§!3§.currentLevel);
         var _loc5_:*;
         if(_loc5_ = _loc3_ > _loc4_)
         {
            _loc4_ = _loc3_;
            §-O§.§5!1§.§]u§.userProgress.§+E§(§!3§.currentLevel,_loc4_);
         }
         var _loc6_:int = §-O§.§5!1§.§]u§.userProgress.§<!8§(§!3§.currentLevel,_loc2_);
         (§^!6§.getItemByName("MovieClip_NewHighScoreBadge") as §0?§).setVisibility(false);
         (§^!6§.getItemByName("MovieClip_StarLeft") as §0?§).mClip.gotoAndStop("UnLit");
         (§^!6§.getItemByName("MovieClip_StarCenter") as §0?§).mClip.gotoAndStop("UnLit");
         (§^!6§.getItemByName("MovieClip_StarRight") as §0?§).mClip.gotoAndStop("UnLit");
      }
      
      protected function §?!C§() : void
      {
         if(this.§`"2§)
         {
            §]d§.§^!J§("Hiscore_Badge",§3"5§);
            §^!6§.setText("New Highscore!","TextField_NewHighScore");
            (§^!6§.getItemByName("TextField_NewHighScore") as §"!I§).setVisibility(true);
            (§^!6§.getItemByName("MovieClip_BestScoreStars") as §0?§).setVisibility(false);
            this.§@`§();
         }
         else
         {
            (§^!6§.getItemByName("TextField_BestScore") as §"!I§).setVisibility(true);
            (§^!6§.getItemByName("MovieClip_BestScoreStars") as §0?§).setVisibility(true);
         }
      }
      
      protected function §@`§() : void
      {
         this.§]F§ = 0;
         this.§,y§ = 0;
         this.§2<§ = §1D§;
      }
      
      private function §6!F§(param1:Number) : void
      {
         (§^!6§.getItemByName("Container_LevelEndStripe") as §^!i§).x = (§^!6§.getItemByName("Container_LevelEndStripe") as §^!i§).x - this.§]F§;
         (§^!6§.getItemByName("Container_LevelEndStripe") as §^!i§).y = (§^!6§.getItemByName("Container_LevelEndStripe") as §^!i§).y - this.§,y§;
         if(this.§2<§ > 0)
         {
            this.§]F§ = (Math.random() - 0.5) * (this.§2<§ / §1D§) * 20;
            this.§,y§ = (Math.random() - 0.5) * (this.§2<§ / §1D§) * 20;
            (§^!6§.getItemByName("Container_LevelEndStripe") as §^!i§).x = (§^!6§.getItemByName("Container_LevelEndStripe") as §^!i§).x + this.§]F§;
            (§^!6§.getItemByName("Container_LevelEndStripe") as §^!i§).y = (§^!6§.getItemByName("Container_LevelEndStripe") as §^!i§).y + this.§,y§;
         }
         else
         {
            this.§]F§ = 0;
            this.§,y§ = 0;
         }
         this.§2<§ -= param1 / 10;
      }
      
      private function §@!1§(param1:TimerEvent) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:String = null;
         var _loc8_:String = null;
         var _loc9_:String = null;
         var _loc4_:Number = §!3§.getGoldScoreForLevel(§!3§.currentLevel);
         var _loc5_:Number = §!3§.getSilverScoreForLevel(§!3§.currentLevel);
         if((§^!6§.getItemByName("MovieClip_StarLeft") as §0?§).mClip.currentLabel == "UnLit")
         {
            §]d§.§^!J§("Hiscore_Count",§@!0§,100);
            this.§&!n§.delay = 1000;
            this.§;u§.§6!a§(§4"6§.controller.getScore(10));
            _loc6_ = this.§;u§.getValue() / _loc4_ * 2;
            if(_loc4_ <= 0)
            {
               _loc6_ = 1;
            }
            this.§1V§ = §6!u§.§"e§.§0!O§(this,{"mNewScoreCounter":this.§;u§.getValue()},{"mNewScoreCounter":0},_loc6_);
            this.§1V§.onComplete = this.§>"0§;
            this.§1V§.play();
            _loc7_ = this.§!!!§();
            _loc2_ = (§^!6§.getItemByName("MovieClip_StarLeft") as §0?§).x + (§^!6§.getItemByName("Container_LevelEndStripe") as §^!i§).x;
            _loc3_ = (§^!6§.getItemByName("MovieClip_StarLeft") as §0?§).y + (§^!6§.getItemByName("Container_LevelEndStripe") as §^!i§).y;
            this.§#?§ = new §+!'§(§-O§.§"!V§,§-O§.§^,§,_loc2_,_loc3_,§+!'§.§^>§,§+!'§.§24§,_loc7_);
            §^!6§.addChild(this.§#?§);
            this.§5![§.push(this.§#?§);
         }
         else if(this.§;u§.getValue() >= _loc5_ && (§^!6§.getItemByName("MovieClip_StarCenter") as §0?§).mClip.currentLabel == "UnLit")
         {
            _loc8_ = this.§7!=§();
            _loc2_ = (§^!6§.getItemByName("MovieClip_StarCenter") as §0?§).x + (§^!6§.getItemByName("Container_LevelEndStripe") as §^!i§).x;
            _loc3_ = (§^!6§.getItemByName("MovieClip_StarCenter") as §0?§).y + (§^!6§.getItemByName("Container_LevelEndStripe") as §^!i§).y;
            this.§#?§ = new §+!'§(§-O§.§"!V§,§-O§.§^,§,_loc2_,_loc3_,§+!'§.§"!a§,§+!'§.§24§,_loc8_);
            §^!6§.addChild(this.§#?§);
            this.§5![§.push(this.§#?§);
         }
         else if(this.§;u§.getValue() >= _loc4_ && (§^!6§.getItemByName("MovieClip_StarRight") as §0?§).mClip.currentLabel == "UnLit")
         {
            this.§`!9§ = true;
            _loc9_ = this.§2!m§();
            _loc2_ = (§^!6§.getItemByName("MovieClip_StarRight") as §0?§).x + (§^!6§.getItemByName("Container_LevelEndStripe") as §^!i§).x;
            _loc3_ = (§^!6§.getItemByName("MovieClip_StarRight") as §0?§).y + (§^!6§.getItemByName("Container_LevelEndStripe") as §^!i§).y;
            this.§#?§ = new §+!'§(§-O§.§"!V§,§-O§.§^,§,_loc2_,_loc3_,§+!'§.§'!S§,§+!'§.§24§,_loc9_);
            §^!6§.addChild(this.§#?§);
            this.§5![§.push(this.§#?§);
         }
         else if(!this.§3>§)
         {
            this.§3>§ = true;
         }
         else
         {
            this.§&!n§.stop();
            if(this.§`"2§ && !this.§%-§)
            {
               (§^!6§.getItemByName("MovieClip_NewHighScoreBadge") as §0?§).setVisibility(true);
            }
            else
            {
               (§^!6§.getItemByName("MovieClip_NewHighScoreBadge") as §0?§).setVisibility(false);
            }
            this.§<`§ = §6!u§.§"e§.§0!O§((§^!6§.getItemByName("MovieClip_NewHighScoreBadge") as §0?§).mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":7,
               "scaleY":7
            },0.1);
            this.§<`§.onComplete = this.§?!C§;
            this.§<`§.play();
         }
         ++this.§1!y§;
      }
      
      protected function §!!!§() : String
      {
         §]d§.§^!J§("Hiscore_Star_Splash1",§3"5§);
         (§^!6§.getItemByName("MovieClip_StarLeft") as §0?§).mClip.gotoAndStop("Lit");
         return §&>§.§^q§;
      }
      
      protected function §7!=§() : String
      {
         §]d§.§^!J§("Hiscore_Star_Splash2",§3"5§);
         (§^!6§.getItemByName("MovieClip_StarCenter") as §0?§).mClip.gotoAndStop("Lit");
         return §&>§.§^q§;
      }
      
      protected function §2!m§() : String
      {
         §]d§.§^!J§("Hiscore_Star_Splash3",§3"5§);
         (§^!6§.getItemByName("MovieClip_StarRight") as §0?§).mClip.gotoAndStop("Lit");
         return §&>§.§^q§;
      }
      
      private function §>"0§() : void
      {
         §]d§.§<"+§(§@!0§);
      }
      
      override protected function update(param1:Number) : void
      {
         var _loc2_:§+!'§ = null;
         super.update(param1);
         §^!6§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScore");
         §^!6§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScoreEffects");
         for each(_loc2_ in this.§5![§)
         {
            _loc2_.update(param1);
         }
         if(this.§2<§ >= 0)
         {
            this.§6!F§(param1);
         }
         if(nextState.length > 0)
         {
            §4"6§.§;!k§.clearLevel();
         }
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§=!5§();
         this.§2<§ = 0;
         this.mNewScoreCounter = 0;
         if(this.§1V§)
         {
            this.§1V§.stop();
            this.§1V§ = null;
         }
         if(this.§<`§)
         {
            this.§<`§.stop();
            this.§<`§ = null;
         }
         §]d§.§<"+§(§@!0§);
         this.§0!p§(§-U§.COMPONENT_STATE_ACTIVE_DEFAULT);
         §^!6§.setText("0","TextField_LevelEndScore");
         §^!6§.setText("0","TextField_LevelEndScoreEffects");
         if(this.§ Y§)
         {
            if(§^!6§.movieClip.contains(this.§ Y§))
            {
               §^!6§.movieClip.removeChild(this.§ Y§);
            }
            this.§ Y§.§6T§();
            this.§ Y§ = null;
         }
      }
      
      protected function §0!p§(param1:String) : void
      {
         (§^!6§.getItemByName("Button_Menu") as §9!M§).setComponentVisualState(param1);
         (§^!6§.getItemByName("Button_Replay") as §9!M§).setComponentVisualState(param1);
         (§^!6§.getItemByName("Button_NextLevel") as §9!M§).setComponentVisualState(param1);
         (§^!6§.getItemByName("Button_CutScene") as §9!M§).setComponentVisualState(param1);
      }
      
      private function §=!5§() : void
      {
         var splash:§+!'§ = null;
         if(this.§&!n§)
         {
            this.§&!n§.stop();
            try
            {
               this.§&!n§.removeEventListener(TimerEvent.TIMER,this.§@!1§);
            }
            catch(e:Error)
            {
            }
         }
         for each(splash in this.§5![§)
         {
            if(§^!6§.contains(splash))
            {
               §^!6§.removeChild(splash);
            }
            splash.§6T§();
         }
         this.§5![§ = new Vector.<§+!'§>();
         this.§1!C§();
      }
      
      protected function §1!C§() : void
      {
         (§^!6§.getItemByName("TextField_BestScore") as §"!I§).setVisibility(false);
         (§^!6§.getItemByName("MovieClip_BestScoreStars") as §0?§).setVisibility(false);
         (§^!6§.getItemByName("TextField_NewHighScore") as §"!I§).setVisibility(false);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      protected function §8J§() : void
      {
         §@$§();
         §'"6§(this.§ Q§());
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§,3§) : void
      {
         var _loc4_:String = null;
         switch(param2)
         {
            case "NEXT_LEVEL":
               this.§8J§();
               break;
            case "REPLAY":
               §'"6§(this.§1""§());
               break;
            case "WATCH_REPLAY":
               §'"6§(this.§1""§());
               if(_loc4_ = §4"6§.§;!k§.§,r§())
               {
                  §4"6§.§;!k§.§2A§(_loc4_);
               }
               break;
            case "MENU":
               §]d§.§]!u§();
               §'"6§(this.§3<§());
               break;
            case "FULLSCREEN_BUTTON":
               §-O§.§5!1§.§0`§();
         }
      }
      
      protected function §1""§() : String
      {
         return § K§.§'u§;
      }
      
      protected function § Q§() : String
      {
         return StateCutScene.§'u§;
      }
      
      public function §3<§() : String
      {
         return §=%§.§'u§;
      }
   }
}
