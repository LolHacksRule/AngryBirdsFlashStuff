package §1!c§
{
   import §%!B§.§0![§;
   import §'"!§.§+§;
   import §'"!§.§-!g§;
   import §,M§.§+f§;
   import §0!m§.§@!S§;
   import §1'§.§'!G§;
   import §1'§.§?>§;
   import §1'§.§^!D§;
   import §1`§.§7I§;
   import §1`§.§9%§;
   import §2u§.§,6§;
   import §2u§.§7!&§;
   import §2u§.§7!m§;
   import §2u§.§]"%§;
   import §4!i§.§@t§;
   import §;g§.§0!o§;
   import §;g§.§]W§;
   import §[!Z§.§>D§;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §'!y§ extends §7X§
   {
      
      public static const §8"%§:String = "LevelEndState";
      
      public static const §!!Y§:Number = 30;
      
      protected static const §0K§:String = "ScoreLoopCountChannel";
      
      protected static const §?$§:String = "EndScreenEffectChannel";
       
      
      private var §&!e§:§]W§;
      
      private var §6^§:Number;
      
      private var §#"8§:Number = 0.0;
      
      private var §%!N§:Number = 0.0;
      
      private var §%?§:Boolean = false;
      
      private var §#p§:Timer;
      
      private var §]!b§:§?>§;
      
      protected var §0t§:Array;
      
      protected var §2^§:§^!D§;
      
      protected var §2"6§:Vector.<§^!D§>;
      
      public var mNewScoreCounter:int;
      
      private var §<g§:int;
      
      private var §if §:Boolean;
      
      protected var §2!L§:Boolean;
      
      private var §]!e§:§@t§;
      
      protected var §95§:Boolean;
      
      private var §,7§:§]W§;
      
      protected var §47§:Boolean;
      
      protected var §&!o§:int;
      
      public function §'!y§(param1:§0![§, param2:§+f§, param3:Boolean = false, param4:String = "LevelEndState")
      {
         this.§0t§ = [];
         this.§]!e§ = new §@t§();
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         §^!T§ = new §9%§(this);
         §^!T§.init(this.§'!,§());
         this.§'!N§();
         this.§2"6§ = new Vector.<§^!D§>();
         §>D§.§0"6§(§0K§,1,1);
         §>D§.§0"6§(§?$§,3,1);
      }
      
      protected function §'!N§() : void
      {
         this.§0t§.push((§^!T§.getItemByName("Button_Menu") as §]"%§).x);
         this.§0t§.push((§^!T§.getItemByName("Button_Replay") as §]"%§).x);
         this.§0t§.push((§^!T§.getItemByName("Button_NextLevel") as §]"%§).x);
         this.§0t§.push((§^!T§.getItemByName("Button_CutScene") as §]"%§).x);
      }
      
      protected function §'!,§() : XML
      {
         return §7I§.§7!%§.Views.View_LevelEnd[0];
      }
      
      protected function §8H§() : void
      {
         if(!§ !4§.§%"7§.§@D§.userProgress.§return§(§4a§.currentLevel))
         {
            (§^!T§.getItemByName("Button_Menu") as §]"%§).setVisibility(false);
            (§^!T§.getItemByName("Button_Replay") as §]"%§).setVisibility(true);
            (§^!T§.getItemByName("Button_NextLevel") as §]"%§).setVisibility(false);
            (§^!T§.getItemByName("Button_CutScene") as §]"%§).setVisibility(true);
            (§^!T§.getItemByName("Button_Replay") as §]"%§).x = this.§0t§[0] + Math.abs(this.§0t§[1] - this.§0t§[0]) / 2;
            (§^!T§.getItemByName("Button_CutScene") as §]"%§).x = this.§0t§[1] + Math.abs(this.§0t§[2] - this.§0t§[1]) / 2;
         }
         else
         {
            (§^!T§.getItemByName("Button_Menu") as §]"%§).setVisibility(true);
            (§^!T§.getItemByName("Button_Replay") as §]"%§).setVisibility(true);
            (§^!T§.getItemByName("Button_NextLevel") as §]"%§).setVisibility(false);
            (§^!T§.getItemByName("Button_CutScene") as §]"%§).setVisibility(true);
            (§^!T§.getItemByName("Button_Menu") as §]"%§).x = this.§0t§[0];
            (§^!T§.getItemByName("Button_Replay") as §]"%§).x = this.§0t§[1];
            (§^!T§.getItemByName("Button_CutScene") as §]"%§).x = this.§0t§[2];
         }
      }
      
      protected function §!!t§() : void
      {
         (§^!T§.getItemByName("Button_Menu") as §]"%§).setVisibility(true);
         (§^!T§.getItemByName("Button_Replay") as §]"%§).setVisibility(true);
         (§^!T§.getItemByName("Button_CutScene") as §]"%§).setVisibility(false);
         if(§4a§.getNextLevelId())
         {
            (§^!T§.getItemByName("Button_NextLevel") as §]"%§).setVisibility(true);
            (§^!T§.getItemByName("Button_Menu") as §]"%§).x = this.§0t§[0];
            (§^!T§.getItemByName("Button_Replay") as §]"%§).x = this.§0t§[1];
            (§^!T§.getItemByName("Button_NextLevel") as §]"%§).x = this.§0t§[2];
         }
         else
         {
            (§^!T§.getItemByName("Button_NextLevel") as §]"%§).setVisibility(false);
            (§^!T§.getItemByName("Button_Menu") as §]"%§).x = this.§0t§[0] + Math.abs(this.§0t§[1] - this.§0t§[0]) / 2;
            (§^!T§.getItemByName("Button_Replay") as §]"%§).x = this.§0t§[1] + Math.abs(this.§0t§[2] - this.§0t§[1]) / 2;
         }
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.§47§ = false;
         §@!S§.pause();
         this.§]!b§ = new §?>§(0,0,0,0);
         §^!T§.movieClip.addChildAt(this.§]!b§,§^!T§.movieClip.numChildren - 1);
         if(§4a§.isCutSceneNext())
         {
            this.§8H§();
         }
         else
         {
            this.§!!t§();
         }
         this.mNewScoreCounter = 0;
         this.§if § = false;
         §>D§.§9!q§("LevelCompletedTheme1");
         this.§]!b§.§!!p§(0.7);
         this.§#"8§ = 0;
         this.§%!N§ = 0;
         this.§1N§();
      }
      
      private function §1N§() : void
      {
         this.§2!L§ = false;
         this.§]"7§();
         this.§#p§ = new Timer(500);
         this.§<g§ = 0;
         this.§#p§.addEventListener(TimerEvent.TIMER,this.§1T§);
         this.§#p§.start();
      }
      
      protected function §%y§() : void
      {
         if(§ !4§.§%"7§.§@D§.userProgress.§+!]§(§4a§.currentLevel) == 100)
         {
            (§^!T§.getItemByName("MovieClip_ResultMEFeather") as §7!m§).mClip.gotoAndStop("On");
         }
         else
         {
            (§^!T§.getItemByName("MovieClip_ResultMEFeather") as §7!m§).mClip.gotoAndStop("Off");
         }
      }
      
      protected function §@c§(param1:int, param2:int) : void
      {
         if(this.§95§)
         {
            param2 = param1;
            § !4§.§%"7§.§@D§.userProgress.setScoreForLevel(§4a§.currentLevel,param2);
            §^!T§.setText("New Highscore!","TextField_BestScore");
         }
         else
         {
            §^!T§.setText("Best " + param2.toString(),"TextField_BestScore");
            this.§&!o§ = §4a§.getNumStarsForLevel(§4a§.currentLevel,param2);
            switch(this.§&!o§)
            {
               case 1:
                  (§^!T§.getItemByName("MovieClip_BestScoreStars") as §7!m§).§;U§("OneStar");
                  break;
               case 2:
                  (§^!T§.getItemByName("MovieClip_BestScoreStars") as §7!m§).§;U§("TwoStar");
                  break;
               case 3:
                  (§^!T§.getItemByName("MovieClip_BestScoreStars") as §7!m§).§;U§("ThreeStar");
            }
         }
      }
      
      protected function §]"7§() : void
      {
         var _loc1_:int = § !4§.§%"7§.§@D§.userProgress.getScoreForLevel(§4a§.currentLevel);
         var _loc2_:int = §@!S§.controller.getScore(10);
         this.§95§ = _loc2_ > _loc1_;
         this.§@c§(_loc2_,_loc1_);
         this.§%y§();
         var _loc3_:int = §@!S§.controller.getEagleScore();
         var _loc4_:int = § !4§.§%"7§.§@D§.userProgress.§+!]§(§4a§.currentLevel);
         var _loc5_:*;
         if(_loc5_ = _loc3_ > _loc4_)
         {
            _loc4_ = _loc3_;
            § !4§.§%"7§.§@D§.userProgress.§&!1§(§4a§.currentLevel,_loc4_);
         }
         var _loc6_:int = § !4§.§%"7§.§@D§.userProgress.§1]§(§4a§.currentLevel,_loc2_);
         (§^!T§.getItemByName("MovieClip_NewHighScoreBadge") as §7!m§).setVisibility(false);
         (§^!T§.getItemByName("MovieClip_StarLeft") as §7!m§).mClip.gotoAndStop("UnLit");
         (§^!T§.getItemByName("MovieClip_StarCenter") as §7!m§).mClip.gotoAndStop("UnLit");
         (§^!T§.getItemByName("MovieClip_StarRight") as §7!m§).mClip.gotoAndStop("UnLit");
      }
      
      protected function §>A§() : void
      {
         if(this.§95§)
         {
            §>D§.§9!q§("Hiscore_Badge",§?$§);
            §^!T§.setText("New Highscore!","TextField_NewHighScore");
            (§^!T§.getItemByName("TextField_NewHighScore") as §7!&§).setVisibility(true);
            (§^!T§.getItemByName("MovieClip_BestScoreStars") as §7!m§).setVisibility(false);
            this.§ !_§();
         }
         else
         {
            (§^!T§.getItemByName("TextField_BestScore") as §7!&§).setVisibility(true);
            (§^!T§.getItemByName("MovieClip_BestScoreStars") as §7!m§).setVisibility(true);
         }
      }
      
      protected function § !_§() : void
      {
         this.§#"8§ = 0;
         this.§%!N§ = 0;
         this.§6^§ = §!!Y§;
      }
      
      private function §<!2§(param1:Number) : void
      {
         (§^!T§.getItemByName("Container_LevelEndStripe") as §,6§).x = (§^!T§.getItemByName("Container_LevelEndStripe") as §,6§).x - this.§#"8§;
         (§^!T§.getItemByName("Container_LevelEndStripe") as §,6§).y = (§^!T§.getItemByName("Container_LevelEndStripe") as §,6§).y - this.§%!N§;
         if(this.§6^§ > 0)
         {
            this.§#"8§ = (Math.random() - 0.5) * (this.§6^§ / §!!Y§) * 20;
            this.§%!N§ = (Math.random() - 0.5) * (this.§6^§ / §!!Y§) * 20;
            (§^!T§.getItemByName("Container_LevelEndStripe") as §,6§).x = (§^!T§.getItemByName("Container_LevelEndStripe") as §,6§).x + this.§#"8§;
            (§^!T§.getItemByName("Container_LevelEndStripe") as §,6§).y = (§^!T§.getItemByName("Container_LevelEndStripe") as §,6§).y + this.§%!N§;
         }
         else
         {
            this.§#"8§ = 0;
            this.§%!N§ = 0;
         }
         this.§6^§ -= param1 / 10;
      }
      
      private function §1T§(param1:TimerEvent) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:String = null;
         var _loc8_:String = null;
         var _loc9_:String = null;
         var _loc4_:Number = §4a§.getGoldScoreForLevel(§4a§.currentLevel);
         var _loc5_:Number = §4a§.getSilverScoreForLevel(§4a§.currentLevel);
         if((§^!T§.getItemByName("MovieClip_StarLeft") as §7!m§).mClip.currentLabel == "UnLit")
         {
            §>D§.§9!q§("Hiscore_Count",§0K§,100);
            this.§#p§.delay = 1000;
            this.§]!e§.§!8§(§@!S§.controller.getScore(10));
            _loc6_ = this.§]!e§.getValue() / _loc4_ * 2;
            if(_loc4_ <= 0)
            {
               _loc6_ = 1;
            }
            this.§,7§ = §0!o§.§,2§.§4!t§(this,{"mNewScoreCounter":this.§]!e§.getValue()},{"mNewScoreCounter":0},_loc6_);
            this.§,7§.onComplete = this.§=!o§;
            this.§,7§.play();
            _loc7_ = this.§&!=§();
            _loc2_ = (§^!T§.getItemByName("MovieClip_StarLeft") as §7!m§).x + (§^!T§.getItemByName("Container_LevelEndStripe") as §,6§).x;
            _loc3_ = (§^!T§.getItemByName("MovieClip_StarLeft") as §7!m§).y + (§^!T§.getItemByName("Container_LevelEndStripe") as §,6§).y;
            this.§2^§ = new §^!D§(§ !4§.§&v§,§ !4§.§,n§,_loc2_,_loc3_,§^!D§.§3!0§,§^!D§.§8`§,_loc7_);
            §^!T§.addChild(this.§2^§);
            this.§2"6§.push(this.§2^§);
         }
         else if(this.§]!e§.getValue() >= _loc5_ && (§^!T§.getItemByName("MovieClip_StarCenter") as §7!m§).mClip.currentLabel == "UnLit")
         {
            _loc8_ = this.§6Z§();
            _loc2_ = (§^!T§.getItemByName("MovieClip_StarCenter") as §7!m§).x + (§^!T§.getItemByName("Container_LevelEndStripe") as §,6§).x;
            _loc3_ = (§^!T§.getItemByName("MovieClip_StarCenter") as §7!m§).y + (§^!T§.getItemByName("Container_LevelEndStripe") as §,6§).y;
            this.§2^§ = new §^!D§(§ !4§.§&v§,§ !4§.§,n§,_loc2_,_loc3_,§^!D§.§"!K§,§^!D§.§8`§,_loc8_);
            §^!T§.addChild(this.§2^§);
            this.§2"6§.push(this.§2^§);
         }
         else if(this.§]!e§.getValue() >= _loc4_ && (§^!T§.getItemByName("MovieClip_StarRight") as §7!m§).mClip.currentLabel == "UnLit")
         {
            this.§47§ = true;
            _loc9_ = this.§&L§();
            _loc2_ = (§^!T§.getItemByName("MovieClip_StarRight") as §7!m§).x + (§^!T§.getItemByName("Container_LevelEndStripe") as §,6§).x;
            _loc3_ = (§^!T§.getItemByName("MovieClip_StarRight") as §7!m§).y + (§^!T§.getItemByName("Container_LevelEndStripe") as §,6§).y;
            this.§2^§ = new §^!D§(§ !4§.§&v§,§ !4§.§,n§,_loc2_,_loc3_,§^!D§.§3n§,§^!D§.§8`§,_loc9_);
            §^!T§.addChild(this.§2^§);
            this.§2"6§.push(this.§2^§);
         }
         else if(!this.§if §)
         {
            this.§if § = true;
         }
         else
         {
            this.§#p§.stop();
            if(this.§95§ && !this.§2!L§)
            {
               (§^!T§.getItemByName("MovieClip_NewHighScoreBadge") as §7!m§).setVisibility(true);
            }
            else
            {
               (§^!T§.getItemByName("MovieClip_NewHighScoreBadge") as §7!m§).setVisibility(false);
            }
            this.§&!e§ = §0!o§.§,2§.§4!t§((§^!T§.getItemByName("MovieClip_NewHighScoreBadge") as §7!m§).mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":7,
               "scaleY":7
            },0.1);
            this.§&!e§.onComplete = this.§>A§;
            this.§&!e§.play();
         }
         ++this.§<g§;
      }
      
      protected function §&!=§() : String
      {
         §>D§.§9!q§("Hiscore_Star_Splash1",§?$§);
         (§^!T§.getItemByName("MovieClip_StarLeft") as §7!m§).mClip.gotoAndStop("Lit");
         return §'!G§.§ !P§;
      }
      
      protected function §6Z§() : String
      {
         §>D§.§9!q§("Hiscore_Star_Splash2",§?$§);
         (§^!T§.getItemByName("MovieClip_StarCenter") as §7!m§).mClip.gotoAndStop("Lit");
         return §'!G§.§ !P§;
      }
      
      protected function §&L§() : String
      {
         §>D§.§9!q§("Hiscore_Star_Splash3",§?$§);
         (§^!T§.getItemByName("MovieClip_StarRight") as §7!m§).mClip.gotoAndStop("Lit");
         return §'!G§.§ !P§;
      }
      
      private function §=!o§() : void
      {
         §>D§.§6A§(§0K§);
      }
      
      override protected function update(param1:Number) : void
      {
         var _loc2_:§^!D§ = null;
         super.update(param1);
         §^!T§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScore");
         §^!T§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScoreEffects");
         for each(_loc2_ in this.§2"6§)
         {
            _loc2_.update(param1);
         }
         if(this.§6^§ >= 0)
         {
            this.§<!2§(param1);
         }
         if(nextState.length > 0)
         {
            §@!S§.§2A§.clearLevel();
         }
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§8!Z§();
         this.§6^§ = 0;
         this.mNewScoreCounter = 0;
         if(this.§,7§)
         {
            this.§,7§.stop();
            this.§,7§ = null;
         }
         if(this.§&!e§)
         {
            this.§&!e§.stop();
            this.§&!e§ = null;
         }
         §>D§.§6A§(§0K§);
         this.§ !y§(§-!g§.COMPONENT_STATE_ACTIVE_DEFAULT);
         §^!T§.setText("0","TextField_LevelEndScore");
         §^!T§.setText("0","TextField_LevelEndScoreEffects");
         if(this.§]!b§)
         {
            if(§^!T§.movieClip.contains(this.§]!b§))
            {
               §^!T§.movieClip.removeChild(this.§]!b§);
            }
            this.§]!b§.§,!#§();
            this.§]!b§ = null;
         }
      }
      
      protected function § !y§(param1:String) : void
      {
         (§^!T§.getItemByName("Button_Menu") as §]"%§).setComponentVisualState(param1);
         (§^!T§.getItemByName("Button_Replay") as §]"%§).setComponentVisualState(param1);
         (§^!T§.getItemByName("Button_NextLevel") as §]"%§).setComponentVisualState(param1);
         (§^!T§.getItemByName("Button_CutScene") as §]"%§).setComponentVisualState(param1);
      }
      
      private function §8!Z§() : void
      {
         var splash:§^!D§ = null;
         if(this.§#p§)
         {
            this.§#p§.stop();
            try
            {
               this.§#p§.removeEventListener(TimerEvent.TIMER,this.§1T§);
            }
            catch(e:Error)
            {
            }
         }
         for each(splash in this.§2"6§)
         {
            if(§^!T§.contains(splash))
            {
               §^!T§.removeChild(splash);
            }
            splash.§,!#§();
         }
         this.§2"6§ = new Vector.<§^!D§>();
         this.§7!6§();
      }
      
      protected function §7!6§() : void
      {
         (§^!T§.getItemByName("TextField_BestScore") as §7!&§).setVisibility(false);
         (§^!T§.getItemByName("MovieClip_BestScoreStars") as §7!m§).setVisibility(false);
         (§^!T§.getItemByName("TextField_NewHighScore") as §7!&§).setVisibility(false);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      protected function §7!Y§() : void
      {
         §2G§();
         §7"6§(this.§0;§());
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§+§) : void
      {
         var _loc4_:String = null;
         switch(param2)
         {
            case "NEXT_LEVEL":
               this.§7!Y§();
               break;
            case "REPLAY":
               §7"6§(this.§!!n§());
               break;
            case "WATCH_REPLAY":
               §7"6§(this.§!!n§());
               if(_loc4_ = §@!S§.§2A§.§?Z§())
               {
                  §@!S§.§2A§.§8!3§(_loc4_);
               }
               break;
            case "MENU":
               §>D§.§>!%§();
               §7"6§(this.§>-§());
               break;
            case "FULLSCREEN_BUTTON":
               § !4§.§%"7§.§]!;§();
         }
      }
      
      protected function §!!n§() : String
      {
         return §'8§.§8"%§;
      }
      
      protected function §0;§() : String
      {
         return StateCutScene.§8"%§;
      }
      
      public function §>-§() : String
      {
         return §^j§.§8"%§;
      }
   }
}
