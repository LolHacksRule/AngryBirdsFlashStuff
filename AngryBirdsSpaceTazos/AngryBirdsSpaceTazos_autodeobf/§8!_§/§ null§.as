package §8!_§
{
   import § !Y§.§]!,§;
   import §%!r§.§3!'§;
   import §,"&§.§9q§;
   import §3"#§.§<!O§;
   import §5X§.§+!#§;
   import §5X§.§@!!§;
   import §77§.§ ",§;
   import §77§.§&!>§;
   import §77§.§,y§;
   import §77§.§@_§;
   import §=u§.§!D§;
   import §=u§.§5!9§;
   import §^"#§.§&"$§;
   import §^"#§.§]!"§;
   import §^=§.§-G§;
   import §^=§.§1"F§;
   import §`!j§.§9"!§;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class § null§ extends §5!&§
   {
      
      public static const STATE_NAME:String = "LevelEndState";
      
      public static const §5B§:Number = 30;
      
      protected static const §^!s§:String = "ScoreLoopCountChannel";
      
      protected static const §2g§:String = "EndScreenEffectChannel";
       
      
      private var §+!v§:§5!9§;
      
      private var §<x§:Number;
      
      private var §2!+§:Number = 0.0;
      
      private var §use §:Number = 0.0;
      
      private var §8!i§:Boolean = false;
      
      private var §96§:Timer;
      
      private var §&!=§:§&"$§;
      
      protected var §6!;§:Array;
      
      protected var §3_§:§]!"§;
      
      protected var §4"B§:Vector.<§]!"§>;
      
      public var mNewScoreCounter:int;
      
      private var §;>§:int;
      
      private var §;!0§:Boolean;
      
      protected var §!!j§:Boolean;
      
      private var §9N§:§]!,§;
      
      protected var §@!f§:Boolean;
      
      private var §]";§:§5!9§;
      
      protected var §`">§:Boolean;
      
      protected var §@a§:int;
      
      public function § null§(param1:§9"!§, param2:§3!'§, param3:Boolean = false, param4:String = "LevelEndState")
      {
         this.§6!;§ = [];
         this.§9N§ = new §]!,§();
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         §8!A§ = new §1"F§(this);
         §8!A§.init(this.§!!n§());
         this.§,!,§();
         this.§4"B§ = new Vector.<§]!"§>();
         §<!O§.§;!D§(§^!s§,1,1);
         §<!O§.§;!D§(§2g§,3,1);
      }
      
      protected function §,!,§() : void
      {
         this.§6!;§.push((§8!A§.getItemByName("Button_Menu") as §@_§).x);
         this.§6!;§.push((§8!A§.getItemByName("Button_Replay") as §@_§).x);
         this.§6!;§.push((§8!A§.getItemByName("Button_NextLevel") as §@_§).x);
         this.§6!;§.push((§8!A§.getItemByName("Button_CutScene") as §@_§).x);
      }
      
      protected function §!!n§() : XML
      {
         return §-G§.§4+§.Views.View_LevelEnd[0];
      }
      
      protected function §;2§() : void
      {
         if(!§ !g§.§;!'§.§&!`§.userProgress.§<!J§(§6u§.currentLevel))
         {
            (§8!A§.getItemByName("Button_Menu") as §@_§).setVisibility(false);
            (§8!A§.getItemByName("Button_Replay") as §@_§).setVisibility(true);
            (§8!A§.getItemByName("Button_NextLevel") as §@_§).setVisibility(false);
            (§8!A§.getItemByName("Button_CutScene") as §@_§).setVisibility(true);
            (§8!A§.getItemByName("Button_Replay") as §@_§).x = this.§6!;§[0] + Math.abs(this.§6!;§[1] - this.§6!;§[0]) / 2;
            (§8!A§.getItemByName("Button_CutScene") as §@_§).x = this.§6!;§[1] + Math.abs(this.§6!;§[2] - this.§6!;§[1]) / 2;
         }
         else
         {
            (§8!A§.getItemByName("Button_Menu") as §@_§).setVisibility(true);
            (§8!A§.getItemByName("Button_Replay") as §@_§).setVisibility(true);
            (§8!A§.getItemByName("Button_NextLevel") as §@_§).setVisibility(false);
            (§8!A§.getItemByName("Button_CutScene") as §@_§).setVisibility(true);
            (§8!A§.getItemByName("Button_Menu") as §@_§).x = this.§6!;§[0];
            (§8!A§.getItemByName("Button_Replay") as §@_§).x = this.§6!;§[1];
            (§8!A§.getItemByName("Button_CutScene") as §@_§).x = this.§6!;§[2];
         }
      }
      
      protected function §%[§() : void
      {
         (§8!A§.getItemByName("Button_Menu") as §@_§).setVisibility(true);
         (§8!A§.getItemByName("Button_Replay") as §@_§).setVisibility(true);
         (§8!A§.getItemByName("Button_CutScene") as §@_§).setVisibility(false);
         if(§6u§.getNextLevelId())
         {
            (§8!A§.getItemByName("Button_NextLevel") as §@_§).setVisibility(true);
            (§8!A§.getItemByName("Button_Menu") as §@_§).x = this.§6!;§[0];
            (§8!A§.getItemByName("Button_Replay") as §@_§).x = this.§6!;§[1];
            (§8!A§.getItemByName("Button_NextLevel") as §@_§).x = this.§6!;§[2];
         }
         else
         {
            (§8!A§.getItemByName("Button_NextLevel") as §@_§).setVisibility(false);
            (§8!A§.getItemByName("Button_Menu") as §@_§).x = this.§6!;§[0] + Math.abs(this.§6!;§[1] - this.§6!;§[0]) / 2;
            (§8!A§.getItemByName("Button_Replay") as §@_§).x = this.§6!;§[1] + Math.abs(this.§6!;§[2] - this.§6!;§[1]) / 2;
         }
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.§`">§ = false;
         §9q§.pause();
         this.§&!=§ = new §&"$§(0,0,0,0);
         §8!A§.movieClip.addChildAt(this.§&!=§,§8!A§.movieClip.numChildren - 1);
         if(§6u§.isCutSceneNext())
         {
            this.§;2§();
         }
         else
         {
            this.§%[§();
         }
         this.mNewScoreCounter = 0;
         this.§;!0§ = false;
         §<!O§.playSound("LevelCompletedTheme1");
         this.§&!=§.§7t§(0.7);
         this.§2!+§ = 0;
         this.§use § = 0;
         this.§,">§();
      }
      
      private function §,">§() : void
      {
         this.§!!j§ = false;
         this.§&!U§();
         this.§96§ = new Timer(500);
         this.§;>§ = 0;
         this.§96§.addEventListener(TimerEvent.TIMER,this.§9!k§);
         this.§96§.start();
      }
      
      protected function §2"9§() : void
      {
         if(§ !g§.§;!'§.§&!`§.userProgress.§#!K§(§6u§.currentLevel) == 100)
         {
            (§8!A§.getItemByName("MovieClip_ResultMEFeather") as §,y§).mClip.gotoAndStop("On");
         }
         else
         {
            (§8!A§.getItemByName("MovieClip_ResultMEFeather") as §,y§).mClip.gotoAndStop("Off");
         }
      }
      
      protected function §8!m§(param1:int, param2:int) : void
      {
         if(this.§@!f§)
         {
            param2 = param1;
            § !g§.§;!'§.§&!`§.userProgress.§%P§(§6u§.currentLevel,param2);
            §8!A§.setText("New Highscore!","TextField_BestScore");
         }
         else
         {
            §8!A§.setText("Best " + param2.toString(),"TextField_BestScore");
            this.§@a§ = §6u§.getNumStarsForLevel(§6u§.currentLevel,param2);
            switch(this.§@a§)
            {
               case 1:
                  (§8!A§.getItemByName("MovieClip_BestScoreStars") as §,y§).§[!0§("OneStar");
                  break;
               case 2:
                  (§8!A§.getItemByName("MovieClip_BestScoreStars") as §,y§).§[!0§("TwoStar");
                  break;
               case 3:
                  (§8!A§.getItemByName("MovieClip_BestScoreStars") as §,y§).§[!0§("ThreeStar");
            }
         }
      }
      
      protected function §&!U§() : void
      {
         var _loc1_:int = § !g§.§;!'§.§&!`§.userProgress.getScoreForLevel(§6u§.currentLevel);
         var _loc2_:int = §9q§.§&!$§.getScore(10);
         this.§@!f§ = _loc2_ > _loc1_;
         this.§8!m§(_loc2_,_loc1_);
         this.§2"9§();
         var _loc3_:int = §9q§.§&!$§.getEagleScore();
         var _loc4_:int = § !g§.§;!'§.§&!`§.userProgress.§#!K§(§6u§.currentLevel);
         var _loc5_:*;
         if(_loc5_ = _loc3_ > _loc4_)
         {
            _loc4_ = _loc3_;
            § !g§.§;!'§.§&!`§.userProgress.§]I§(§6u§.currentLevel,_loc4_);
         }
         var _loc6_:int = § !g§.§;!'§.§&!`§.userProgress.§,R§(§6u§.currentLevel,_loc2_);
         (§8!A§.getItemByName("MovieClip_NewHighScoreBadge") as §,y§).setVisibility(false);
         (§8!A§.getItemByName("MovieClip_StarLeft") as §,y§).mClip.gotoAndStop("UnLit");
         (§8!A§.getItemByName("MovieClip_StarCenter") as §,y§).mClip.gotoAndStop("UnLit");
         (§8!A§.getItemByName("MovieClip_StarRight") as §,y§).mClip.gotoAndStop("UnLit");
      }
      
      protected function §[?§() : void
      {
         if(this.§@!f§)
         {
            §<!O§.playSound("Hiscore_Badge",§2g§);
            §8!A§.setText("New Highscore!","TextField_NewHighScore");
            (§8!A§.getItemByName("TextField_NewHighScore") as §&!>§).setVisibility(true);
            (§8!A§.getItemByName("MovieClip_BestScoreStars") as §,y§).setVisibility(false);
            this.§`!r§();
         }
         else
         {
            (§8!A§.getItemByName("TextField_BestScore") as §&!>§).setVisibility(true);
            (§8!A§.getItemByName("MovieClip_BestScoreStars") as §,y§).setVisibility(true);
         }
      }
      
      protected function §`!r§() : void
      {
         this.§2!+§ = 0;
         this.§use § = 0;
         this.§<x§ = §5B§;
      }
      
      private function §4Y§(param1:Number) : void
      {
         (§8!A§.getItemByName("Container_LevelEndStripe") as § ",§).x = (§8!A§.getItemByName("Container_LevelEndStripe") as § ",§).x - this.§2!+§;
         (§8!A§.getItemByName("Container_LevelEndStripe") as § ",§).y = (§8!A§.getItemByName("Container_LevelEndStripe") as § ",§).y - this.§use §;
         if(this.§<x§ > 0)
         {
            this.§2!+§ = (Math.random() - 0.5) * (this.§<x§ / §5B§) * 20;
            this.§use § = (Math.random() - 0.5) * (this.§<x§ / §5B§) * 20;
            (§8!A§.getItemByName("Container_LevelEndStripe") as § ",§).x = (§8!A§.getItemByName("Container_LevelEndStripe") as § ",§).x + this.§2!+§;
            (§8!A§.getItemByName("Container_LevelEndStripe") as § ",§).y = (§8!A§.getItemByName("Container_LevelEndStripe") as § ",§).y + this.§use §;
         }
         else
         {
            this.§2!+§ = 0;
            this.§use § = 0;
         }
         this.§<x§ -= param1 / 10;
      }
      
      private function §9!k§(param1:TimerEvent) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc4_:Number = §6u§.getGoldScoreForLevel(§6u§.currentLevel);
         var _loc5_:Number = §6u§.getSilverScoreForLevel(§6u§.currentLevel);
         if((§8!A§.getItemByName("MovieClip_StarLeft") as §,y§).mClip.currentLabel == "UnLit")
         {
            §<!O§.playSound("Hiscore_Count",§^!s§,100);
            §<!O§.playSound("Hiscore_Star_Splash1",§2g§);
            this.§96§.delay = 1000;
            this.§9N§.§-"F§(§9q§.§&!$§.getScore(10));
            _loc6_ = this.§9N§.getValue() / _loc4_ * 2;
            if(_loc4_ <= 0)
            {
               _loc6_ = 1;
            }
            this.§]";§ = §!D§.§[!1§.§1"<§(this,{"mNewScoreCounter":this.§9N§.getValue()},{"mNewScoreCounter":0},_loc6_);
            this.§]";§.onComplete = this.§,"9§;
            this.§]";§.play();
            (§8!A§.getItemByName("MovieClip_StarLeft") as §,y§).mClip.gotoAndStop("Lit");
            _loc2_ = (§8!A§.getItemByName("MovieClip_StarLeft") as §,y§).x + (§8!A§.getItemByName("Container_LevelEndStripe") as § ",§).x;
            _loc3_ = (§8!A§.getItemByName("MovieClip_StarLeft") as §,y§).y + (§8!A§.getItemByName("Container_LevelEndStripe") as § ",§).y;
            this.§3_§ = new §]!"§(§ !g§.screenWidth,§ !g§.screenHeight,_loc2_,_loc3_,§]!"§.§"!L§);
            §8!A§.addChild(this.§3_§);
            this.§4"B§.push(this.§3_§);
         }
         else if(this.§9N§.getValue() >= _loc5_ && (§8!A§.getItemByName("MovieClip_StarCenter") as §,y§).mClip.currentLabel == "UnLit")
         {
            §<!O§.playSound("Hiscore_Star_Splash2",§2g§);
            (§8!A§.getItemByName("MovieClip_StarCenter") as §,y§).mClip.gotoAndStop("Lit");
            _loc2_ = (§8!A§.getItemByName("MovieClip_StarCenter") as §,y§).x + (§8!A§.getItemByName("Container_LevelEndStripe") as § ",§).x;
            _loc3_ = (§8!A§.getItemByName("MovieClip_StarCenter") as §,y§).y + (§8!A§.getItemByName("Container_LevelEndStripe") as § ",§).y;
            this.§3_§ = new §]!"§(§ !g§.screenWidth,§ !g§.screenHeight,_loc2_,_loc3_,§]!"§.§#g§);
            §8!A§.addChild(this.§3_§);
            this.§4"B§.push(this.§3_§);
         }
         else if(this.§9N§.getValue() >= _loc4_ && (§8!A§.getItemByName("MovieClip_StarRight") as §,y§).mClip.currentLabel == "UnLit")
         {
            this.§`">§ = true;
            §<!O§.playSound("Hiscore_Star_Splash3",§2g§);
            (§8!A§.getItemByName("MovieClip_StarRight") as §,y§).mClip.gotoAndStop("Lit");
            _loc2_ = (§8!A§.getItemByName("MovieClip_StarRight") as §,y§).x + (§8!A§.getItemByName("Container_LevelEndStripe") as § ",§).x;
            _loc3_ = (§8!A§.getItemByName("MovieClip_StarRight") as §,y§).y + (§8!A§.getItemByName("Container_LevelEndStripe") as § ",§).y;
            this.§3_§ = new §]!"§(§ !g§.screenWidth,§ !g§.screenHeight,_loc2_,_loc3_,§]!"§.§4$§);
            §8!A§.addChild(this.§3_§);
            this.§4"B§.push(this.§3_§);
         }
         else if(!this.§;!0§)
         {
            this.§;!0§ = true;
         }
         else
         {
            this.§96§.stop();
            if(this.§@!f§ && !this.§!!j§)
            {
               (§8!A§.getItemByName("MovieClip_NewHighScoreBadge") as §,y§).setVisibility(true);
            }
            else
            {
               (§8!A§.getItemByName("MovieClip_NewHighScoreBadge") as §,y§).setVisibility(false);
            }
            this.§+!v§ = §!D§.§[!1§.§1"<§((§8!A§.getItemByName("MovieClip_NewHighScoreBadge") as §,y§).mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":7,
               "scaleY":7
            },0.1);
            this.§+!v§.onComplete = this.§[?§;
            this.§+!v§.play();
         }
         ++this.§;>§;
      }
      
      private function §,"9§() : void
      {
         §<!O§.§,!z§(§^!s§);
      }
      
      override protected function update(param1:Number) : void
      {
         var _loc2_:§]!"§ = null;
         super.update(param1);
         §8!A§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScore");
         §8!A§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScoreEffects");
         for each(_loc2_ in this.§4"B§)
         {
            _loc2_.update(param1);
         }
         if(this.§<x§ >= 0)
         {
            this.§4Y§(param1);
         }
         if(nextState.length > 0)
         {
            §9q§.§>!L§.clearLevel();
         }
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§@!X§();
         this.§<x§ = 0;
         this.mNewScoreCounter = 0;
         if(this.§]";§)
         {
            this.§]";§.stop();
            this.§]";§ = null;
         }
         if(this.§+!v§)
         {
            this.§+!v§.stop();
            this.§+!v§ = null;
         }
         §<!O§.§,!z§(§^!s§);
         this.§2"6§(§@!!§.COMPONENT_STATE_ACTIVE_DEFAULT);
         §8!A§.setText("0","TextField_LevelEndScore");
         §8!A§.setText("0","TextField_LevelEndScoreEffects");
         if(this.§&!=§)
         {
            if(§8!A§.movieClip.contains(this.§&!=§))
            {
               §8!A§.movieClip.removeChild(this.§&!=§);
            }
            this.§&!=§.§;"F§();
            this.§&!=§ = null;
         }
      }
      
      protected function §2"6§(param1:String) : void
      {
         (§8!A§.getItemByName("Button_Menu") as §@_§).setComponentVisualState(param1);
         (§8!A§.getItemByName("Button_Replay") as §@_§).setComponentVisualState(param1);
         (§8!A§.getItemByName("Button_NextLevel") as §@_§).setComponentVisualState(param1);
         (§8!A§.getItemByName("Button_CutScene") as §@_§).setComponentVisualState(param1);
      }
      
      private function §@!X§() : void
      {
         var splash:§]!"§ = null;
         if(this.§96§)
         {
            this.§96§.stop();
            try
            {
               this.§96§.removeEventListener(TimerEvent.TIMER,this.§9!k§);
            }
            catch(e:Error)
            {
            }
         }
         for each(splash in this.§4"B§)
         {
            if(§8!A§.contains(splash))
            {
               §8!A§.removeChild(splash);
            }
            splash.§;"F§();
         }
         this.§4"B§ = new Vector.<§]!"§>();
         this.§0D§();
      }
      
      protected function §0D§() : void
      {
         (§8!A§.getItemByName("TextField_BestScore") as §&!>§).setVisibility(false);
         (§8!A§.getItemByName("MovieClip_BestScoreStars") as §,y§).setVisibility(false);
         (§8!A§.getItemByName("TextField_NewHighScore") as §&!>§).setVisibility(false);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      protected function §!!6§() : void
      {
         §?R§();
         §8!^§(this.§2"%§());
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§+!#§) : void
      {
         var _loc4_:String = null;
         switch(param2)
         {
            case "NEXT_LEVEL":
               this.§!!6§();
               break;
            case "REPLAY":
               §8!^§(this.§[!V§());
               break;
            case "WATCH_REPLAY":
               §8!^§(this.§[!V§());
               if(_loc4_ = §9q§.§>!L§.§-[§())
               {
                  §9q§.§>!L§.§?""§(_loc4_);
               }
               break;
            case "MENU":
               §<!O§.§'N§();
               §8!^§(this.§ [§());
               break;
            case "FULLSCREEN_BUTTON":
               § !g§.§;!'§.§%!N§();
         }
      }
      
      protected function §[!V§() : String
      {
         return §?!#§.STATE_NAME;
      }
      
      protected function §2"%§() : String
      {
         return StateCutScene.STATE_NAME;
      }
      
      public function § [§() : String
      {
         return §]J§.STATE_NAME;
      }
   }
}
