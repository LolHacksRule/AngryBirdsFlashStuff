package §;!§
{
   import §"n§.§<!e§;
   import §,L§.§%J§;
   import §,L§.§6!W§;
   import §0"$§.§"!a§;
   import §0"$§.§+!@§;
   import §0"$§.§6n§;
   import §0"$§.§;§;
   import §1T§.§'!c§;
   import §7!§.§#"0§;
   import §7!§.§2W§;
   import §8!K§.§5!Y§;
   import §;0§.§6h§;
   import §<!F§.§+!D§;
   import §<!F§.§,!e§;
   import §<!F§.§?!`§;
   import §?@§.§'^§;
   import §?@§.§0]§;
   import com.angrybirds.§&!"§;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §>!X§ extends §;" §
   {
      
      public static const §-!q§:String = "LevelEndState";
      
      public static const §;`§:Number = 30;
      
      protected static const §>!x§:String = "ScoreLoopCountChannel";
      
      protected static const §#x§:String = "EndScreenEffectChannel";
       
      
      private var §"f§:§0]§;
      
      private var §;!]§:Number;
      
      private var §%!B§:Number = 0.0;
      
      private var §-O§:Number = 0.0;
      
      private var § u§:Boolean = false;
      
      private var §9X§:Timer;
      
      private var §7!k§:§,!e§;
      
      protected var §'2§:Array;
      
      protected var §3=§:§?!`§;
      
      protected var §>8§:Vector.<§?!`§>;
      
      public var mNewScoreCounter:int;
      
      private var §`S§:int;
      
      private var §6!Z§:Boolean;
      
      protected var §7!"§:Boolean;
      
      private var §!"%§:§<!e§;
      
      protected var §?R§:Boolean;
      
      private var §#!O§:§0]§;
      
      protected var §+b§:Boolean;
      
      protected var §?w§:int;
      
      public function §>!X§(param1:§5!Y§, param2:§6h§, param3:Boolean = false, param4:String = "LevelEndState")
      {
         this.§'2§ = [];
         this.§!"%§ = new §<!e§();
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         §?P§ = new §2W§(this);
         §?P§.init(this.§`!K§());
         this.§+!q§();
         this.§>8§ = new Vector.<§?!`§>();
         §'!c§.§8G§(§>!x§,1,1);
         §'!c§.§8G§(§#x§,3,1);
      }
      
      protected function §+!q§() : void
      {
         this.§'2§.push((§?P§.getItemByName("Button_Menu") as §;§).x);
         this.§'2§.push((§?P§.getItemByName("Button_Replay") as §;§).x);
         this.§'2§.push((§?P§.getItemByName("Button_NextLevel") as §;§).x);
         this.§'2§.push((§?P§.getItemByName("Button_CutScene") as §;§).x);
      }
      
      protected function §`!K§() : XML
      {
         return §#"0§.§+#§.Views.View_LevelEnd[0];
      }
      
      protected function § !@§() : void
      {
         if(!§6!!§.singleton.§<!S§.userProgress.§<W§(§&" §.currentLevel))
         {
            (§?P§.getItemByName("Button_Menu") as §;§).setVisibility(false);
            (§?P§.getItemByName("Button_Replay") as §;§).setVisibility(true);
            (§?P§.getItemByName("Button_NextLevel") as §;§).setVisibility(false);
            (§?P§.getItemByName("Button_CutScene") as §;§).setVisibility(true);
            (§?P§.getItemByName("Button_Replay") as §;§).x = this.§'2§[0] + Math.abs(this.§'2§[1] - this.§'2§[0]) / 2;
            (§?P§.getItemByName("Button_CutScene") as §;§).x = this.§'2§[1] + Math.abs(this.§'2§[2] - this.§'2§[1]) / 2;
         }
         else
         {
            (§?P§.getItemByName("Button_Menu") as §;§).setVisibility(true);
            (§?P§.getItemByName("Button_Replay") as §;§).setVisibility(true);
            (§?P§.getItemByName("Button_NextLevel") as §;§).setVisibility(false);
            (§?P§.getItemByName("Button_CutScene") as §;§).setVisibility(true);
            (§?P§.getItemByName("Button_Menu") as §;§).x = this.§'2§[0];
            (§?P§.getItemByName("Button_Replay") as §;§).x = this.§'2§[1];
            (§?P§.getItemByName("Button_CutScene") as §;§).x = this.§'2§[2];
         }
      }
      
      protected function §8N§() : void
      {
         (§?P§.getItemByName("Button_Menu") as §;§).setVisibility(true);
         (§?P§.getItemByName("Button_Replay") as §;§).setVisibility(true);
         (§?P§.getItemByName("Button_CutScene") as §;§).setVisibility(false);
         if(§&" §.getNextLevelId())
         {
            (§?P§.getItemByName("Button_NextLevel") as §;§).setVisibility(true);
            (§?P§.getItemByName("Button_Menu") as §;§).x = this.§'2§[0];
            (§?P§.getItemByName("Button_Replay") as §;§).x = this.§'2§[1];
            (§?P§.getItemByName("Button_NextLevel") as §;§).x = this.§'2§[2];
         }
         else
         {
            (§?P§.getItemByName("Button_NextLevel") as §;§).setVisibility(false);
            (§?P§.getItemByName("Button_Menu") as §;§).x = this.§'2§[0] + Math.abs(this.§'2§[1] - this.§'2§[0]) / 2;
            (§?P§.getItemByName("Button_Replay") as §;§).x = this.§'2§[1] + Math.abs(this.§'2§[2] - this.§'2§[1]) / 2;
         }
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.§+b§ = false;
         §&!"§.pause();
         this.§7!k§ = new §,!e§(0,0,0,0);
         §?P§.movieClip.addChildAt(this.§7!k§,§?P§.movieClip.numChildren - 1);
         if(§&" §.isCutSceneNext())
         {
            this.§ !@§();
         }
         else
         {
            this.§8N§();
         }
         this.mNewScoreCounter = 0;
         this.§6!Z§ = false;
         §'!c§.§3!f§("LevelCompletedTheme1");
         this.§7!k§.§=v§(0.7);
         this.§%!B§ = 0;
         this.§-O§ = 0;
         this.§7!D§();
      }
      
      private function §7!D§() : void
      {
         this.§7!"§ = false;
         this.§6!3§();
         this.§9X§ = new Timer(500);
         this.§`S§ = 0;
         this.§9X§.addEventListener(TimerEvent.TIMER,this.§`%§);
         this.§9X§.start();
      }
      
      protected function §[m§() : void
      {
         if(§6!!§.singleton.§<!S§.userProgress.§2p§(§&" §.currentLevel) == 100)
         {
            (§?P§.getItemByName("MovieClip_ResultMEFeather") as §6n§).mClip.gotoAndStop("On");
         }
         else
         {
            (§?P§.getItemByName("MovieClip_ResultMEFeather") as §6n§).mClip.gotoAndStop("Off");
         }
      }
      
      protected function §;4§(param1:int, param2:int) : void
      {
         if(this.§?R§)
         {
            param2 = param1;
            §6!!§.singleton.§<!S§.userProgress.setScoreForLevel(§&" §.currentLevel,param2);
            §?P§.setText("New Highscore!","TextField_BestScore");
         }
         else
         {
            §?P§.setText("Best " + param2.toString(),"TextField_BestScore");
            this.§?w§ = §&" §.getNumStarsForLevel(§&" §.currentLevel,param2);
            switch(this.§?w§)
            {
               case 1:
                  (§?P§.getItemByName("MovieClip_BestScoreStars") as §6n§).§%!"§("OneStar");
                  break;
               case 2:
                  (§?P§.getItemByName("MovieClip_BestScoreStars") as §6n§).§%!"§("TwoStar");
                  break;
               case 3:
                  (§?P§.getItemByName("MovieClip_BestScoreStars") as §6n§).§%!"§("ThreeStar");
            }
         }
      }
      
      protected function §6!3§() : void
      {
         var _loc1_:int = §6!!§.singleton.§<!S§.userProgress.getScoreForLevel(§&" §.currentLevel);
         var _loc2_:int = §&!"§.controller.getScore(10);
         this.§?R§ = _loc2_ > _loc1_;
         this.§;4§(_loc2_,_loc1_);
         this.§[m§();
         var _loc3_:int = §&!"§.controller.getEagleScore();
         var _loc4_:int = §6!!§.singleton.§<!S§.userProgress.§2p§(§&" §.currentLevel);
         var _loc5_:*;
         if(_loc5_ = _loc3_ > _loc4_)
         {
            _loc4_ = _loc3_;
            §6!!§.singleton.§<!S§.userProgress.§!3§(§&" §.currentLevel,_loc4_);
         }
         var _loc6_:int = §6!!§.singleton.§<!S§.userProgress.§9"+§(§&" §.currentLevel,_loc2_);
         (§?P§.getItemByName("MovieClip_NewHighScoreBadge") as §6n§).setVisibility(false);
         (§?P§.getItemByName("MovieClip_StarLeft") as §6n§).mClip.gotoAndStop("UnLit");
         (§?P§.getItemByName("MovieClip_StarCenter") as §6n§).mClip.gotoAndStop("UnLit");
         (§?P§.getItemByName("MovieClip_StarRight") as §6n§).mClip.gotoAndStop("UnLit");
      }
      
      protected function §>!4§() : void
      {
         if(this.§?R§)
         {
            §'!c§.§3!f§("Hiscore_Badge",§#x§);
            §?P§.setText("New Highscore!","TextField_NewHighScore");
            (§?P§.getItemByName("TextField_NewHighScore") as §+!@§).setVisibility(true);
            (§?P§.getItemByName("MovieClip_BestScoreStars") as §6n§).setVisibility(false);
            this.§]!U§();
         }
         else
         {
            (§?P§.getItemByName("TextField_BestScore") as §+!@§).setVisibility(true);
            (§?P§.getItemByName("MovieClip_BestScoreStars") as §6n§).setVisibility(true);
         }
      }
      
      protected function §]!U§() : void
      {
         this.§%!B§ = 0;
         this.§-O§ = 0;
         this.§;!]§ = §;`§;
      }
      
      private function §&y§(param1:Number) : void
      {
         (§?P§.getItemByName("Container_LevelEndStripe") as §"!a§).x = (§?P§.getItemByName("Container_LevelEndStripe") as §"!a§).x - this.§%!B§;
         (§?P§.getItemByName("Container_LevelEndStripe") as §"!a§).y = (§?P§.getItemByName("Container_LevelEndStripe") as §"!a§).y - this.§-O§;
         if(this.§;!]§ > 0)
         {
            this.§%!B§ = (Math.random() - 0.5) * (this.§;!]§ / §;`§) * 20;
            this.§-O§ = (Math.random() - 0.5) * (this.§;!]§ / §;`§) * 20;
            (§?P§.getItemByName("Container_LevelEndStripe") as §"!a§).x = (§?P§.getItemByName("Container_LevelEndStripe") as §"!a§).x + this.§%!B§;
            (§?P§.getItemByName("Container_LevelEndStripe") as §"!a§).y = (§?P§.getItemByName("Container_LevelEndStripe") as §"!a§).y + this.§-O§;
         }
         else
         {
            this.§%!B§ = 0;
            this.§-O§ = 0;
         }
         this.§;!]§ -= param1 / 10;
      }
      
      private function §`%§(param1:TimerEvent) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:String = null;
         var _loc8_:String = null;
         var _loc9_:String = null;
         var _loc4_:Number = §&" §.getGoldScoreForLevel(§&" §.currentLevel);
         var _loc5_:Number = §&" §.getSilverScoreForLevel(§&" §.currentLevel);
         if((§?P§.getItemByName("MovieClip_StarLeft") as §6n§).mClip.currentLabel == "UnLit")
         {
            §'!c§.§3!f§("Hiscore_Count",§>!x§,100);
            this.§9X§.delay = 1000;
            this.§!"%§.§[@§(§&!"§.controller.getScore(10));
            _loc6_ = this.§!"%§.getValue() / _loc4_ * 2;
            if(_loc4_ <= 0)
            {
               _loc6_ = 1;
            }
            this.§#!O§ = §'^§.§2Z§.§!!f§(this,{"mNewScoreCounter":this.§!"%§.getValue()},{"mNewScoreCounter":0},_loc6_);
            this.§#!O§.onComplete = this.§7,§;
            this.§#!O§.play();
            _loc7_ = this.§+!W§();
            _loc2_ = (§?P§.getItemByName("MovieClip_StarLeft") as §6n§).x + (§?P§.getItemByName("Container_LevelEndStripe") as §"!a§).x;
            _loc3_ = (§?P§.getItemByName("MovieClip_StarLeft") as §6n§).y + (§?P§.getItemByName("Container_LevelEndStripe") as §"!a§).y;
            this.§3=§ = new §?!`§(§6!!§.§+g§,§6!!§.§=!?§,_loc2_,_loc3_,§?!`§.§8L§,§?!`§.§9!9§,_loc7_);
            §?P§.addChild(this.§3=§);
            this.§>8§.push(this.§3=§);
         }
         else if(this.§!"%§.getValue() >= _loc5_ && (§?P§.getItemByName("MovieClip_StarCenter") as §6n§).mClip.currentLabel == "UnLit")
         {
            _loc8_ = this.§'"#§();
            _loc2_ = (§?P§.getItemByName("MovieClip_StarCenter") as §6n§).x + (§?P§.getItemByName("Container_LevelEndStripe") as §"!a§).x;
            _loc3_ = (§?P§.getItemByName("MovieClip_StarCenter") as §6n§).y + (§?P§.getItemByName("Container_LevelEndStripe") as §"!a§).y;
            this.§3=§ = new §?!`§(§6!!§.§+g§,§6!!§.§=!?§,_loc2_,_loc3_,§?!`§.§^"§,§?!`§.§9!9§,_loc8_);
            §?P§.addChild(this.§3=§);
            this.§>8§.push(this.§3=§);
         }
         else if(this.§!"%§.getValue() >= _loc4_ && (§?P§.getItemByName("MovieClip_StarRight") as §6n§).mClip.currentLabel == "UnLit")
         {
            this.§+b§ = true;
            _loc9_ = this.§7S§();
            _loc2_ = (§?P§.getItemByName("MovieClip_StarRight") as §6n§).x + (§?P§.getItemByName("Container_LevelEndStripe") as §"!a§).x;
            _loc3_ = (§?P§.getItemByName("MovieClip_StarRight") as §6n§).y + (§?P§.getItemByName("Container_LevelEndStripe") as §"!a§).y;
            this.§3=§ = new §?!`§(§6!!§.§+g§,§6!!§.§=!?§,_loc2_,_loc3_,§?!`§.§1m§,§?!`§.§9!9§,_loc9_);
            §?P§.addChild(this.§3=§);
            this.§>8§.push(this.§3=§);
         }
         else if(!this.§6!Z§)
         {
            this.§6!Z§ = true;
         }
         else
         {
            this.§9X§.stop();
            if(this.§?R§ && !this.§7!"§)
            {
               (§?P§.getItemByName("MovieClip_NewHighScoreBadge") as §6n§).setVisibility(true);
            }
            else
            {
               (§?P§.getItemByName("MovieClip_NewHighScoreBadge") as §6n§).setVisibility(false);
            }
            this.§"f§ = §'^§.§2Z§.§!!f§((§?P§.getItemByName("MovieClip_NewHighScoreBadge") as §6n§).mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":7,
               "scaleY":7
            },0.1);
            this.§"f§.onComplete = this.§>!4§;
            this.§"f§.play();
         }
         ++this.§`S§;
      }
      
      protected function §+!W§() : String
      {
         §'!c§.§3!f§("Hiscore_Star_Splash1",§#x§);
         (§?P§.getItemByName("MovieClip_StarLeft") as §6n§).mClip.gotoAndStop("Lit");
         return §+!D§.§>!8§;
      }
      
      protected function §'"#§() : String
      {
         §'!c§.§3!f§("Hiscore_Star_Splash2",§#x§);
         (§?P§.getItemByName("MovieClip_StarCenter") as §6n§).mClip.gotoAndStop("Lit");
         return §+!D§.§>!8§;
      }
      
      protected function §7S§() : String
      {
         §'!c§.§3!f§("Hiscore_Star_Splash3",§#x§);
         (§?P§.getItemByName("MovieClip_StarRight") as §6n§).mClip.gotoAndStop("Lit");
         return §+!D§.§>!8§;
      }
      
      private function §7,§() : void
      {
         §'!c§.§;! §(§>!x§);
      }
      
      override protected function update(param1:Number) : void
      {
         var _loc2_:§?!`§ = null;
         super.update(param1);
         §?P§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScore");
         §?P§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScoreEffects");
         for each(_loc2_ in this.§>8§)
         {
            _loc2_.update(param1);
         }
         if(this.§;!]§ >= 0)
         {
            this.§&y§(param1);
         }
         if(nextState.length > 0)
         {
            §&!"§.§1!D§.clearLevel();
         }
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§1!8§();
         this.§;!]§ = 0;
         this.mNewScoreCounter = 0;
         if(this.§#!O§)
         {
            this.§#!O§.stop();
            this.§#!O§ = null;
         }
         if(this.§"f§)
         {
            this.§"f§.stop();
            this.§"f§ = null;
         }
         §'!c§.§;! §(§>!x§);
         this.§2!§(§%J§.COMPONENT_STATE_ACTIVE_DEFAULT);
         §?P§.setText("0","TextField_LevelEndScore");
         §?P§.setText("0","TextField_LevelEndScoreEffects");
         if(this.§7!k§)
         {
            if(§?P§.movieClip.contains(this.§7!k§))
            {
               §?P§.movieClip.removeChild(this.§7!k§);
            }
            this.§7!k§.§9O§();
            this.§7!k§ = null;
         }
      }
      
      protected function §2!§(param1:String) : void
      {
         (§?P§.getItemByName("Button_Menu") as §;§).setComponentVisualState(param1);
         (§?P§.getItemByName("Button_Replay") as §;§).setComponentVisualState(param1);
         (§?P§.getItemByName("Button_NextLevel") as §;§).setComponentVisualState(param1);
         (§?P§.getItemByName("Button_CutScene") as §;§).setComponentVisualState(param1);
      }
      
      private function §1!8§() : void
      {
         var splash:§?!`§ = null;
         if(this.§9X§)
         {
            this.§9X§.stop();
            try
            {
               this.§9X§.removeEventListener(TimerEvent.TIMER,this.§`%§);
            }
            catch(e:Error)
            {
            }
         }
         for each(splash in this.§>8§)
         {
            if(§?P§.contains(splash))
            {
               §?P§.removeChild(splash);
            }
            splash.§9O§();
         }
         this.§>8§ = new Vector.<§?!`§>();
         this.§'!z§();
      }
      
      protected function §'!z§() : void
      {
         (§?P§.getItemByName("TextField_BestScore") as §+!@§).setVisibility(false);
         (§?P§.getItemByName("MovieClip_BestScoreStars") as §6n§).setVisibility(false);
         (§?P§.getItemByName("TextField_NewHighScore") as §+!@§).setVisibility(false);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      protected function §9!C§() : void
      {
         §!x§();
         §<f§(this.§+>§());
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§6!W§) : void
      {
         var _loc4_:String = null;
         switch(param2)
         {
            case "NEXT_LEVEL":
               this.§9!C§();
               break;
            case "REPLAY":
               §<f§(this.§=!2§());
               break;
            case "WATCH_REPLAY":
               §<f§(this.§=!2§());
               if(_loc4_ = §&!"§.§1!D§.§&!I§())
               {
                  §&!"§.§1!D§.§@!Z§(_loc4_);
               }
               break;
            case "MENU":
               §'!c§.§&j§();
               §<f§(this.§@y§());
               break;
            case "FULLSCREEN_BUTTON":
               §6!!§.singleton.§%!O§();
         }
      }
      
      protected function §=!2§() : String
      {
         return §[j§.§-!q§;
      }
      
      protected function §+>§() : String
      {
         return StateCutScene.§-!q§;
      }
      
      public function §@y§() : String
      {
         return §4!9§.§-!q§;
      }
   }
}
