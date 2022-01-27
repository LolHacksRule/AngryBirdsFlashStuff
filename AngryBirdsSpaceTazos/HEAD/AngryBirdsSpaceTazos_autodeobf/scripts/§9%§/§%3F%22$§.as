package §9%§
{
   import §#!O§.§"!t§;
   import §#!O§.§,4§;
   import §%"%§.§2Z§;
   import §,!M§.§ !;§;
   import §,!M§.§@!T§;
   import §1!k§.§2!^§;
   import §1!k§.§[_§;
   import §1z§.§^!@§;
   import §3!S§.§<5§;
   import §4u§.§1!C§;
   import §7!6§.§@Y§;
   import §7!6§.§^l§;
   import §="<§.§#`§;
   import §="<§.§'!j§;
   import §="<§.§,"$§;
   import §="<§.§87§;
   import §>"2§.§8k§;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §?"$§ extends §>!s§
   {
      
      public static const STATE_NAME:String = "LevelEndState";
      
      public static const §="#§:Number = 30;
      
      protected static const §5a§:String = "ScoreLoopCountChannel";
      
      protected static const §0!1§:String = "EndScreenEffectChannel";
       
      
      private var §^L§:§,4§;
      
      private var §-!`§:Number;
      
      private var §<!&§:Number = 0.0;
      
      private var §""E§:Number = 0.0;
      
      private var §=!C§:Boolean = false;
      
      private var §^!d§:Timer;
      
      private var §'!<§:§2!^§;
      
      protected var §5$§:Array;
      
      protected var §;!m§:§[_§;
      
      protected var §2<§:Vector.<§[_§>;
      
      public var mNewScoreCounter:int;
      
      private var §,"H§:int;
      
      private var §^;§:Boolean;
      
      protected var §[>§:Boolean;
      
      private var §0I§:§1!C§;
      
      protected var §44§:Boolean;
      
      private var §;!S§:§,4§;
      
      protected var §,B§:Boolean;
      
      protected var §2!9§:int;
      
      public function §?"$§(param1:§^!@§, param2:§2Z§, param3:Boolean = false, param4:String = "LevelEndState")
      {
         this.§5$§ = [];
         this.§0I§ = new §1!C§();
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         §%!A§ = new § !;§(this);
         §%!A§.init(this.§8u§());
         this.§#6§();
         this.§2<§ = new Vector.<§[_§>();
         §<5§.§@6§(§5a§,1,1);
         §<5§.§@6§(§0!1§,3,1);
      }
      
      protected function §#6§() : void
      {
         this.§5$§.push((§%!A§.getItemByName("Button_Menu") as §87§).x);
         this.§5$§.push((§%!A§.getItemByName("Button_Replay") as §87§).x);
         this.§5$§.push((§%!A§.getItemByName("Button_NextLevel") as §87§).x);
         this.§5$§.push((§%!A§.getItemByName("Button_CutScene") as §87§).x);
      }
      
      protected function §8u§() : XML
      {
         return §@!T§.§-!8§.Views.View_LevelEnd[0];
      }
      
      protected function §"1§() : void
      {
         if(!§2&§.§6o§.§2c§.userProgress.§0"?§(§#"=§.currentLevel))
         {
            (§%!A§.getItemByName("Button_Menu") as §87§).setVisibility(false);
            (§%!A§.getItemByName("Button_Replay") as §87§).setVisibility(true);
            (§%!A§.getItemByName("Button_NextLevel") as §87§).setVisibility(false);
            (§%!A§.getItemByName("Button_CutScene") as §87§).setVisibility(true);
            (§%!A§.getItemByName("Button_Replay") as §87§).x = this.§5$§[0] + Math.abs(this.§5$§[1] - this.§5$§[0]) / 2;
            (§%!A§.getItemByName("Button_CutScene") as §87§).x = this.§5$§[1] + Math.abs(this.§5$§[2] - this.§5$§[1]) / 2;
         }
         else
         {
            (§%!A§.getItemByName("Button_Menu") as §87§).setVisibility(true);
            (§%!A§.getItemByName("Button_Replay") as §87§).setVisibility(true);
            (§%!A§.getItemByName("Button_NextLevel") as §87§).setVisibility(false);
            (§%!A§.getItemByName("Button_CutScene") as §87§).setVisibility(true);
            (§%!A§.getItemByName("Button_Menu") as §87§).x = this.§5$§[0];
            (§%!A§.getItemByName("Button_Replay") as §87§).x = this.§5$§[1];
            (§%!A§.getItemByName("Button_CutScene") as §87§).x = this.§5$§[2];
         }
      }
      
      protected function §]W§() : void
      {
         (§%!A§.getItemByName("Button_Menu") as §87§).setVisibility(true);
         (§%!A§.getItemByName("Button_Replay") as §87§).setVisibility(true);
         (§%!A§.getItemByName("Button_CutScene") as §87§).setVisibility(false);
         if(§#"=§.getNextLevelId())
         {
            (§%!A§.getItemByName("Button_NextLevel") as §87§).setVisibility(true);
            (§%!A§.getItemByName("Button_Menu") as §87§).x = this.§5$§[0];
            (§%!A§.getItemByName("Button_Replay") as §87§).x = this.§5$§[1];
            (§%!A§.getItemByName("Button_NextLevel") as §87§).x = this.§5$§[2];
         }
         else
         {
            (§%!A§.getItemByName("Button_NextLevel") as §87§).setVisibility(false);
            (§%!A§.getItemByName("Button_Menu") as §87§).x = this.§5$§[0] + Math.abs(this.§5$§[1] - this.§5$§[0]) / 2;
            (§%!A§.getItemByName("Button_Replay") as §87§).x = this.§5$§[1] + Math.abs(this.§5$§[2] - this.§5$§[1]) / 2;
         }
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.§,B§ = false;
         §8k§.pause();
         this.§'!<§ = new §2!^§(0,0,0,0);
         §%!A§.movieClip.addChildAt(this.§'!<§,§%!A§.movieClip.numChildren - 1);
         if(§#"=§.isCutSceneNext())
         {
            this.§"1§();
         }
         else
         {
            this.§]W§();
         }
         this.mNewScoreCounter = 0;
         this.§^;§ = false;
         §<5§.playSound("LevelCompletedTheme1");
         this.§'!<§.§[!1§(0.7);
         this.§<!&§ = 0;
         this.§""E§ = 0;
         this.§3w§();
      }
      
      private function §3w§() : void
      {
         this.§[>§ = false;
         this.§4=§();
         this.§^!d§ = new Timer(500);
         this.§,"H§ = 0;
         this.§^!d§.addEventListener(TimerEvent.TIMER,this.§;",§);
         this.§^!d§.start();
      }
      
      protected function §3!h§() : void
      {
         if(§2&§.§6o§.§2c§.userProgress.§`!P§(§#"=§.currentLevel) == 100)
         {
            (§%!A§.getItemByName("MovieClip_ResultMEFeather") as §'!j§).mClip.gotoAndStop("On");
         }
         else
         {
            (§%!A§.getItemByName("MovieClip_ResultMEFeather") as §'!j§).mClip.gotoAndStop("Off");
         }
      }
      
      protected function §^!9§(param1:int, param2:int) : void
      {
         if(this.§44§)
         {
            param2 = param1;
            §2&§.§6o§.§2c§.userProgress.§1r§(§#"=§.currentLevel,param2);
            §%!A§.setText("New Highscore!","TextField_BestScore");
         }
         else
         {
            §%!A§.setText("Best " + param2.toString(),"TextField_BestScore");
            this.§2!9§ = §#"=§.getNumStarsForLevel(§#"=§.currentLevel,param2);
            switch(this.§2!9§)
            {
               case 1:
                  (§%!A§.getItemByName("MovieClip_BestScoreStars") as §'!j§).§`!h§("OneStar");
                  break;
               case 2:
                  (§%!A§.getItemByName("MovieClip_BestScoreStars") as §'!j§).§`!h§("TwoStar");
                  break;
               case 3:
                  (§%!A§.getItemByName("MovieClip_BestScoreStars") as §'!j§).§`!h§("ThreeStar");
            }
         }
      }
      
      protected function §4=§() : void
      {
         var _loc1_:int = §2&§.§6o§.§2c§.userProgress.getScoreForLevel(§#"=§.currentLevel);
         var _loc2_:int = §8k§.§0!Q§.getScore(10);
         this.§44§ = _loc2_ > _loc1_;
         this.§^!9§(_loc2_,_loc1_);
         this.§3!h§();
         var _loc3_:int = §8k§.§0!Q§.getEagleScore();
         var _loc4_:int = §2&§.§6o§.§2c§.userProgress.§`!P§(§#"=§.currentLevel);
         var _loc5_:*;
         if(_loc5_ = _loc3_ > _loc4_)
         {
            _loc4_ = _loc3_;
            §2&§.§6o§.§2c§.userProgress.§<C§(§#"=§.currentLevel,_loc4_);
         }
         var _loc6_:int = §2&§.§6o§.§2c§.userProgress.§>"3§(§#"=§.currentLevel,_loc2_);
         (§%!A§.getItemByName("MovieClip_NewHighScoreBadge") as §'!j§).setVisibility(false);
         (§%!A§.getItemByName("MovieClip_StarLeft") as §'!j§).mClip.gotoAndStop("UnLit");
         (§%!A§.getItemByName("MovieClip_StarCenter") as §'!j§).mClip.gotoAndStop("UnLit");
         (§%!A§.getItemByName("MovieClip_StarRight") as §'!j§).mClip.gotoAndStop("UnLit");
      }
      
      protected function §3!Q§() : void
      {
         if(this.§44§)
         {
            §<5§.playSound("Hiscore_Badge",§0!1§);
            §%!A§.setText("New Highscore!","TextField_NewHighScore");
            (§%!A§.getItemByName("TextField_NewHighScore") as §#`§).setVisibility(true);
            (§%!A§.getItemByName("MovieClip_BestScoreStars") as §'!j§).setVisibility(false);
            this.§^X§();
         }
         else
         {
            (§%!A§.getItemByName("TextField_BestScore") as §#`§).setVisibility(true);
            (§%!A§.getItemByName("MovieClip_BestScoreStars") as §'!j§).setVisibility(true);
         }
      }
      
      protected function §^X§() : void
      {
         this.§<!&§ = 0;
         this.§""E§ = 0;
         this.§-!`§ = §="#§;
      }
      
      private function §7I§(param1:Number) : void
      {
         (§%!A§.getItemByName("Container_LevelEndStripe") as §,"$§).x = (§%!A§.getItemByName("Container_LevelEndStripe") as §,"$§).x - this.§<!&§;
         (§%!A§.getItemByName("Container_LevelEndStripe") as §,"$§).y = (§%!A§.getItemByName("Container_LevelEndStripe") as §,"$§).y - this.§""E§;
         if(this.§-!`§ > 0)
         {
            this.§<!&§ = (Math.random() - 0.5) * (this.§-!`§ / §="#§) * 20;
            this.§""E§ = (Math.random() - 0.5) * (this.§-!`§ / §="#§) * 20;
            (§%!A§.getItemByName("Container_LevelEndStripe") as §,"$§).x = (§%!A§.getItemByName("Container_LevelEndStripe") as §,"$§).x + this.§<!&§;
            (§%!A§.getItemByName("Container_LevelEndStripe") as §,"$§).y = (§%!A§.getItemByName("Container_LevelEndStripe") as §,"$§).y + this.§""E§;
         }
         else
         {
            this.§<!&§ = 0;
            this.§""E§ = 0;
         }
         this.§-!`§ -= param1 / 10;
      }
      
      private function §;",§(param1:TimerEvent) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc4_:Number = §#"=§.getGoldScoreForLevel(§#"=§.currentLevel);
         var _loc5_:Number = §#"=§.getSilverScoreForLevel(§#"=§.currentLevel);
         if((§%!A§.getItemByName("MovieClip_StarLeft") as §'!j§).mClip.currentLabel == "UnLit")
         {
            §<5§.playSound("Hiscore_Count",§5a§,100);
            §<5§.playSound("Hiscore_Star_Splash1",§0!1§);
            this.§^!d§.delay = 1000;
            this.§0I§.§;"6§(§8k§.§0!Q§.getScore(10));
            _loc6_ = this.§0I§.getValue() / _loc4_ * 2;
            if(_loc4_ <= 0)
            {
               _loc6_ = 1;
            }
            this.§;!S§ = §"!t§.§3R§.§2m§(this,{"mNewScoreCounter":this.§0I§.getValue()},{"mNewScoreCounter":0},_loc6_);
            this.§;!S§.onComplete = this.§+!w§;
            this.§;!S§.play();
            (§%!A§.getItemByName("MovieClip_StarLeft") as §'!j§).mClip.gotoAndStop("Lit");
            _loc2_ = (§%!A§.getItemByName("MovieClip_StarLeft") as §'!j§).x + (§%!A§.getItemByName("Container_LevelEndStripe") as §,"$§).x;
            _loc3_ = (§%!A§.getItemByName("MovieClip_StarLeft") as §'!j§).y + (§%!A§.getItemByName("Container_LevelEndStripe") as §,"$§).y;
            this.§;!m§ = new §[_§(§2&§.screenWidth,§2&§.screenHeight,_loc2_,_loc3_,§[_§.§'!b§);
            §%!A§.addChild(this.§;!m§);
            this.§2<§.push(this.§;!m§);
         }
         else if(this.§0I§.getValue() >= _loc5_ && (§%!A§.getItemByName("MovieClip_StarCenter") as §'!j§).mClip.currentLabel == "UnLit")
         {
            §<5§.playSound("Hiscore_Star_Splash2",§0!1§);
            (§%!A§.getItemByName("MovieClip_StarCenter") as §'!j§).mClip.gotoAndStop("Lit");
            _loc2_ = (§%!A§.getItemByName("MovieClip_StarCenter") as §'!j§).x + (§%!A§.getItemByName("Container_LevelEndStripe") as §,"$§).x;
            _loc3_ = (§%!A§.getItemByName("MovieClip_StarCenter") as §'!j§).y + (§%!A§.getItemByName("Container_LevelEndStripe") as §,"$§).y;
            this.§;!m§ = new §[_§(§2&§.screenWidth,§2&§.screenHeight,_loc2_,_loc3_,§[_§.§3"3§);
            §%!A§.addChild(this.§;!m§);
            this.§2<§.push(this.§;!m§);
         }
         else if(this.§0I§.getValue() >= _loc4_ && (§%!A§.getItemByName("MovieClip_StarRight") as §'!j§).mClip.currentLabel == "UnLit")
         {
            this.§,B§ = true;
            §<5§.playSound("Hiscore_Star_Splash3",§0!1§);
            (§%!A§.getItemByName("MovieClip_StarRight") as §'!j§).mClip.gotoAndStop("Lit");
            _loc2_ = (§%!A§.getItemByName("MovieClip_StarRight") as §'!j§).x + (§%!A§.getItemByName("Container_LevelEndStripe") as §,"$§).x;
            _loc3_ = (§%!A§.getItemByName("MovieClip_StarRight") as §'!j§).y + (§%!A§.getItemByName("Container_LevelEndStripe") as §,"$§).y;
            this.§;!m§ = new §[_§(§2&§.screenWidth,§2&§.screenHeight,_loc2_,_loc3_,§[_§.§-t§);
            §%!A§.addChild(this.§;!m§);
            this.§2<§.push(this.§;!m§);
         }
         else if(!this.§^;§)
         {
            this.§^;§ = true;
         }
         else
         {
            this.§^!d§.stop();
            if(this.§44§ && !this.§[>§)
            {
               (§%!A§.getItemByName("MovieClip_NewHighScoreBadge") as §'!j§).setVisibility(true);
            }
            else
            {
               (§%!A§.getItemByName("MovieClip_NewHighScoreBadge") as §'!j§).setVisibility(false);
            }
            this.§^L§ = §"!t§.§3R§.§2m§((§%!A§.getItemByName("MovieClip_NewHighScoreBadge") as §'!j§).mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":7,
               "scaleY":7
            },0.1);
            this.§^L§.onComplete = this.§3!Q§;
            this.§^L§.play();
         }
         ++this.§,"H§;
      }
      
      private function §+!w§() : void
      {
         §<5§.§["'§(§5a§);
      }
      
      override protected function update(param1:Number) : void
      {
         var _loc2_:§[_§ = null;
         super.update(param1);
         §%!A§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScore");
         §%!A§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScoreEffects");
         for each(_loc2_ in this.§2<§)
         {
            _loc2_.update(param1);
         }
         if(this.§-!`§ >= 0)
         {
            this.§7I§(param1);
         }
         if(nextState.length > 0)
         {
            §8k§.§;!]§.clearLevel();
         }
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§;"§();
         this.§-!`§ = 0;
         this.mNewScoreCounter = 0;
         if(this.§;!S§)
         {
            this.§;!S§.stop();
            this.§;!S§ = null;
         }
         if(this.§^L§)
         {
            this.§^L§.stop();
            this.§^L§ = null;
         }
         §<5§.§["'§(§5a§);
         this.§+!q§(§^l§.COMPONENT_STATE_ACTIVE_DEFAULT);
         §%!A§.setText("0","TextField_LevelEndScore");
         §%!A§.setText("0","TextField_LevelEndScoreEffects");
         if(this.§'!<§)
         {
            if(§%!A§.movieClip.contains(this.§'!<§))
            {
               §%!A§.movieClip.removeChild(this.§'!<§);
            }
            this.§'!<§.§&"#§();
            this.§'!<§ = null;
         }
      }
      
      protected function §+!q§(param1:String) : void
      {
         (§%!A§.getItemByName("Button_Menu") as §87§).setComponentVisualState(param1);
         (§%!A§.getItemByName("Button_Replay") as §87§).setComponentVisualState(param1);
         (§%!A§.getItemByName("Button_NextLevel") as §87§).setComponentVisualState(param1);
         (§%!A§.getItemByName("Button_CutScene") as §87§).setComponentVisualState(param1);
      }
      
      private function §;"§() : void
      {
         var splash:§[_§ = null;
         if(this.§^!d§)
         {
            this.§^!d§.stop();
            try
            {
               this.§^!d§.removeEventListener(TimerEvent.TIMER,this.§;",§);
            }
            catch(e:Error)
            {
            }
         }
         for each(splash in this.§2<§)
         {
            if(§%!A§.contains(splash))
            {
               §%!A§.removeChild(splash);
            }
            splash.§&"#§();
         }
         this.§2<§ = new Vector.<§[_§>();
         this.§!!P§();
      }
      
      protected function §!!P§() : void
      {
         (§%!A§.getItemByName("TextField_BestScore") as §#`§).setVisibility(false);
         (§%!A§.getItemByName("MovieClip_BestScoreStars") as §'!j§).setVisibility(false);
         (§%!A§.getItemByName("TextField_NewHighScore") as §#`§).setVisibility(false);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      protected function §[-§() : void
      {
         §7!&§();
         § !I§(this.§4a§());
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§@Y§) : void
      {
         var _loc4_:String = null;
         switch(param2)
         {
            case "NEXT_LEVEL":
               this.§[-§();
               break;
            case "REPLAY":
               § !I§(this.§!!d§());
               break;
            case "WATCH_REPLAY":
               § !I§(this.§!!d§());
               if(_loc4_ = §8k§.§;!]§.§-0§())
               {
                  §8k§.§;!]§.§-]§(_loc4_);
               }
               break;
            case "MENU":
               §<5§.§>!R§();
               § !I§(this.§&!f§());
               break;
            case "FULLSCREEN_BUTTON":
               §2&§.§6o§.§>!9§();
         }
      }
      
      protected function §!!d§() : String
      {
         return §^! §.STATE_NAME;
      }
      
      protected function §4a§() : String
      {
         return StateCutScene.STATE_NAME;
      }
      
      public function §&!f§() : String
      {
         return § §.STATE_NAME;
      }
   }
}
