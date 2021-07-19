package §[!i§
{
   import §"n§.§!!G§;
   import §"n§.§<!e§;
   import §&v§.§#!R§;
   import §&v§.§%!I§;
   import §,L§.§%J§;
   import §,L§.§6!W§;
   import §0"$§.§"!a§;
   import §0"$§.§+!@§;
   import §0"$§.§6n§;
   import §0"$§.§;§;
   import §1T§.§'!c§;
   import §48§.§1!<§;
   import §48§.§]l§;
   import §;!§.§=-§;
   import §<!F§.§?!`§;
   import §?@§.§'^§;
   import §?@§.§0]§;
   import com.angrybirds.§&!"§;
   import each.§8!N§;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §1v§ extends §@"§
   {
      
      private static const §'S§:Number = 750;
      
      private static var §case §:Class = §6!C§;
      
      public static const §;`§:Number = 30;
      
      protected static const §>!x§:String = "ScoreLoopCountChannel";
      
      protected static const §#x§:String = "EndScreenEffectChannel";
       
      
      private var §"f§:§0]§;
      
      private var §;!]§:Number;
      
      private var §%!B§:Number = 0.0;
      
      private var §-O§:Number = 0.0;
      
      private var § u§:Boolean = false;
      
      private var §9X§:Timer;
      
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
      
      private var §3"$§:§=-§;
      
      private var §%!k§:Boolean;
      
      public function §1v§(param1:§=-§, param2:§#!R§)
      {
         this.§'2§ = [];
         this.§!"%§ = new §<!e§();
         §-!w§ = true;
         §@!X§ = false;
         §0!T§ = true;
         super(§1!<§.§0!D§,§]l§.§%!#§,this.§`!K§());
         §@!H§ = param2 as §%!I§;
         this.§3"$§ = param1;
         §'!c§.§8G§(§>!x§,1,1);
         §'!c§.§8G§(§#x§,3,1);
      }
      
      protected function §`!K§() : XML
      {
         var _loc1_:XML = §8!N§.§?!c§(§case §);
         return §4!=§.§'!u§(_loc1_);
      }
      
      protected function §8N§() : void
      {
         (§@'§.getItemByName("Button_Menu") as §;§).setVisibility(true);
         (§@'§.getItemByName("Button_Replay") as §;§).setVisibility(true);
         if(this.§3"$§.§@!R§.getNextLevelId())
         {
            (§@'§.getItemByName("Button_NextLevel") as §;§).setVisibility(true);
            (§@'§.getItemByName("Button_CutScene") as §;§).setVisibility(false);
            (§@'§.getItemByName("Button_Menu") as §;§).x = this.§'2§[0];
            (§@'§.getItemByName("Button_Replay") as §;§).x = this.§'2§[1];
            (§@'§.getItemByName("Button_NextLevel") as §;§).x = this.§'2§[2];
         }
         else if(this.§3"$§.§@!R§.isCutSceneNext())
         {
            (§@'§.getItemByName("Button_CutScene") as §;§).setVisibility(true);
            (§@'§.getItemByName("Button_NextLevel") as §;§).setVisibility(false);
            (§@'§.getItemByName("Button_Menu") as §;§).x = this.§'2§[0];
            (§@'§.getItemByName("Button_Replay") as §;§).x = this.§'2§[1];
            (§@'§.getItemByName("Button_CutScene") as §;§).x = this.§'2§[2];
         }
         else
         {
            (§@'§.getItemByName("Button_NextLevel") as §;§).setVisibility(false);
            (§@'§.getItemByName("Button_CutScene") as §;§).setVisibility(false);
            (§@'§.getItemByName("Button_Menu") as §;§).x = this.§'2§[0] + 40;
            (§@'§.getItemByName("Button_Replay") as §;§).x = this.§'2§[2] - 40;
         }
      }
      
      protected function §+!q§() : void
      {
         this.§'2§.push(Math.round((§@'§.getItemByName("Button_Menu") as §;§).x));
         this.§'2§.push(Math.round((§@'§.getItemByName("Button_Replay") as §;§).x));
         this.§'2§.push(Math.round((§@'§.getItemByName("Button_NextLevel") as §;§).x));
      }
      
      override protected function init() : void
      {
         super.init();
         §-!w§ = true;
         this.updateTextFields();
         this.§+!q§();
         this.§>8§ = new Vector.<§?!`§>();
         §&!"§.§1!D§.background.§#]§();
         §'!c§.§8G§(§>!x§,1,0.8);
         this.§+b§ = false;
         §&!"§.pause();
         this.§8N§();
         this.mNewScoreCounter = 0;
         this.§6!Z§ = false;
         §'!c§.§3!f§("LevelCompletedTheme1");
         this.§%!B§ = 0;
         this.§-O§ = 0;
         this.§7!D§();
         this.§%!k§ = true;
         §#u§.cacheAsBitmap = true;
      }
      
      private function §7!D§() : void
      {
         this.§7!"§ = false;
         this.§6!3§();
         this.§9X§ = new Timer(100);
         this.§`S§ = 0;
         this.§9X§.addEventListener(TimerEvent.TIMER,this.§`%§);
         this.§9X§.start();
      }
      
      protected function §;4§(param1:int, param2:int) : void
      {
         if(this.§?R§)
         {
            param2 = param1;
            (§6!!§.singleton as §4!=§).§?!b§.setScoreForLevel(this.§3"$§.§@!R§.currentLevel,param2);
            (§6!!§.singleton as §4!=§).§?!b§.§@!Q§(this.§3"$§.§@!R§.currentLevel,param2);
            §@'§.setText("New Highscore!","TextField_BestScore");
         }
         else
         {
            §@'§.setText(param2.toString(),"TextField_BestScore");
            this.§?w§ = this.§3"$§.§@!R§.getNumStarsForLevel(this.§3"$§.§@!R§.currentLevel,param2);
            switch(this.§?w§)
            {
               case 1:
                  (§@'§.getItemByName("MovieClip_BestScoreStars") as §6n§).§%!"§("OneStar");
                  break;
               case 2:
                  (§@'§.getItemByName("MovieClip_BestScoreStars") as §6n§).§%!"§("TwoStar");
                  break;
               case 3:
                  (§@'§.getItemByName("MovieClip_BestScoreStars") as §6n§).§%!"§("ThreeStar");
            }
         }
      }
      
      protected function §6!3§() : void
      {
         var _loc1_:int = (§6!!§.singleton as §4!=§).§?!b§.getScoreForLevel(this.§3"$§.§@!R§.currentLevel);
         var _loc2_:int = §&!"§.controller.getScore(10);
         this.§?R§ = _loc2_ >= _loc1_;
         this.§;4§(_loc2_,_loc1_);
         var _loc3_:int = (§6!!§.singleton as §4!=§).§?!b§.§9"+§(this.§3"$§.§@!R§.currentLevel,_loc2_);
         (§@'§.getItemByName("MovieClip_NewHighScoreBadge") as §6n§).setVisibility(false);
         (§@'§.getItemByName("MovieClip_StarLeft") as §6n§).mClip.gotoAndStop("UnLit");
         (§@'§.getItemByName("MovieClip_StarCenter") as §6n§).mClip.gotoAndStop("UnLit");
         (§@'§.getItemByName("MovieClip_StarRight") as §6n§).mClip.gotoAndStop("UnLit");
      }
      
      protected function §>!4§() : void
      {
         if(this.§?R§)
         {
            §'!c§.§3!f§("Hiscore_Badge",§#x§);
            (§@'§.getItemByName("TextField_NewHighScore") as §+!@§).setVisibility(true);
            (§@'§.getItemByName("MovieClip_BestScoreStars") as §6n§).setVisibility(false);
            this.§]!U§();
         }
         else
         {
            (§@'§.getItemByName("TextField_BestScore") as §+!@§).setVisibility(true);
            (§@'§.getItemByName("MovieClip_BestScoreStars") as §6n§).setVisibility(true);
            (§@'§.getItemByName("MovieClip_BestScoreText") as §+!@§).setVisibility(true);
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
         (§@'§.getItemByName("Container_LevelEndStripe") as §"!a§).x = (§@'§.getItemByName("Container_LevelEndStripe") as §"!a§).x - this.§%!B§;
         (§@'§.getItemByName("Container_LevelEndStripe") as §"!a§).y = (§@'§.getItemByName("Container_LevelEndStripe") as §"!a§).y - this.§-O§;
         if(this.§;!]§ > 0)
         {
            this.§%!B§ = (Math.random() - 0.5) * (this.§;!]§ / §;`§) * 20;
            this.§-O§ = (Math.random() - 0.5) * (this.§;!]§ / §;`§) * 20;
            (§@'§.getItemByName("Container_LevelEndStripe") as §"!a§).x = (§@'§.getItemByName("Container_LevelEndStripe") as §"!a§).x + this.§%!B§;
            (§@'§.getItemByName("Container_LevelEndStripe") as §"!a§).y = (§@'§.getItemByName("Container_LevelEndStripe") as §"!a§).y + this.§-O§;
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
         var _loc4_:Number = this.§3"$§.§@!R§.getLevelForId(this.§3"$§.§@!R§.currentLevel).scoreGold;
         var _loc5_:Number = this.§3"$§.§@!R§.getLevelForId(this.§3"$§.§@!R§.currentLevel).scoreSilver;
         if((§@'§.getItemByName("MovieClip_StarLeft") as §6n§).mClip.currentLabel == "UnLit")
         {
            §'!c§.§3!f§("Hiscore_Count",§>!x§,999,-1,100);
            §'!c§.§3!f§("Hiscore_Star_Splash1",§#x§);
            this.§9X§.delay = §'S§;
            this.§!"%§.§[@§(§&!"§.controller.getScore(10));
            _loc6_ = this.§!"%§.getValue() / _loc4_ * 2;
            if(_loc4_ <= 0)
            {
               _loc6_ = 1;
            }
            this.§#!O§ = §'^§.§2Z§.§!!f§(this,{"mNewScoreCounter":this.§!"%§.getValue()},{"mNewScoreCounter":0},_loc6_);
            this.§#!O§.onComplete = this.§7,§;
            this.§#!O§.play();
            (§@'§.getItemByName("MovieClip_StarLeft") as §6n§).mClip.gotoAndStop("Lit");
            _loc2_ = (§@'§.getItemByName("MovieClip_StarLeft") as §6n§).x + (§@'§.getItemByName("Container_LevelEndStripe") as §"!a§).x;
            _loc3_ = (§@'§.getItemByName("MovieClip_StarLeft") as §6n§).y + (§@'§.getItemByName("Container_LevelEndStripe") as §"!a§).y;
            this.§3=§ = new §?!`§(§6!!§.§+g§,§6!!§.§=!?§,_loc2_,_loc3_,§?!`§.§8L§);
            §@'§.mClip.addChild(this.§3=§);
            this.§>8§.push(this.§3=§);
         }
         else if(this.§!"%§.getValue() >= _loc5_ && (§@'§.getItemByName("MovieClip_StarCenter") as §6n§).mClip.currentLabel == "UnLit")
         {
            §'!c§.§3!f§("Hiscore_Star_Splash2",§#x§);
            (§@'§.getItemByName("MovieClip_StarCenter") as §6n§).mClip.gotoAndStop("Lit");
            _loc2_ = (§@'§.getItemByName("MovieClip_StarCenter") as §6n§).x + (§@'§.getItemByName("Container_LevelEndStripe") as §"!a§).x;
            _loc3_ = (§@'§.getItemByName("MovieClip_StarCenter") as §6n§).y + (§@'§.getItemByName("Container_LevelEndStripe") as §"!a§).y;
            this.§3=§ = new §?!`§(§6!!§.§+g§,§6!!§.§=!?§,_loc2_,_loc3_,§?!`§.§^"§);
            §@'§.mClip.addChild(this.§3=§);
            this.§>8§.push(this.§3=§);
         }
         else if(this.§!"%§.getValue() >= _loc4_ && (§@'§.getItemByName("MovieClip_StarRight") as §6n§).mClip.currentLabel == "UnLit")
         {
            this.§+b§ = true;
            §'!c§.§3!f§("Hiscore_Star_Splash3",§#x§);
            (§@'§.getItemByName("MovieClip_StarRight") as §6n§).mClip.gotoAndStop("Lit");
            _loc2_ = (§@'§.getItemByName("MovieClip_StarRight") as §6n§).x + (§@'§.getItemByName("Container_LevelEndStripe") as §"!a§).x;
            _loc3_ = (§@'§.getItemByName("MovieClip_StarRight") as §6n§).y + (§@'§.getItemByName("Container_LevelEndStripe") as §"!a§).y;
            this.§3=§ = new §?!`§(§6!!§.§+g§,§6!!§.§=!?§,_loc2_,_loc3_,§?!`§.§1m§);
            §@'§.mClip.addChild(this.§3=§);
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
               (§@'§.getItemByName("MovieClip_NewHighScoreBadge") as §6n§).setVisibility(true);
               §@'§.getItemByName("TextField_NewHighScore").setVisibility(true);
            }
            else
            {
               (§@'§.getItemByName("MovieClip_NewHighScoreBadge") as §6n§).setVisibility(false);
               §@'§.getItemByName("TextField_NewHighScore").setVisibility(false);
            }
            this.§"f§ = §'^§.§2Z§.§!!f§((§@'§.getItemByName("MovieClip_NewHighScoreBadge") as §6n§).mClip,{
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
      
      private function §7,§() : void
      {
         §'!c§.§;! §(§>!x§);
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:§?!`§ = null;
         §@'§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScore");
         for each(_loc2_ in this.§>8§)
         {
            _loc2_.update(param1);
         }
         if(this.§;!]§ >= 0)
         {
            this.§&y§(param1);
         }
      }
      
      override public function dispose() : void
      {
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
         §@'§.setText("0","TextField_LevelEndScore");
         this.§%!k§ = false;
         super.dispose();
      }
      
      protected function §2!§(param1:String) : void
      {
         (§@'§.getItemByName("Button_Menu") as §;§).setComponentVisualState(param1);
         (§@'§.getItemByName("Button_Replay") as §;§).setComponentVisualState(param1);
         (§@'§.getItemByName("Button_NextLevel") as §;§).setComponentVisualState(param1);
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
            if(§@'§.mClip.contains(splash))
            {
               §@'§.mClip.removeChild(splash);
            }
            splash.§9O§();
         }
         this.§>8§ = new Vector.<§?!`§>();
         this.§'!z§();
      }
      
      protected function §'!z§() : void
      {
         (§@'§.getItemByName("TextField_BestScore") as §+!@§).setVisibility(false);
         (§@'§.getItemByName("MovieClip_BestScoreStars") as §6n§).setVisibility(false);
         (§@'§.getItemByName("TextField_NewHighScore") as §+!@§).setVisibility(false);
      }
      
      protected function §9!C§() : void
      {
         this.§3"$§.§[H§();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§6!W§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
            case "CUTSCENE":
               §-!w§ = false;
               close();
               this.§9!C§();
               break;
            case "REPLAY":
               §-!w§ = false;
               close();
               this.§3"$§.§=!V§(this.§3"$§.§=!2§());
               break;
            case "MENU":
               §'!c§.§&j§();
               §-!w§ = false;
               close();
               this.§3"$§.§=!V§(this.§3"$§.§@y§());
         }
      }
      
      override public function updateLocalization() : void
      {
         super.updateLocalization();
         this.updateTextFields();
      }
      
      override public function updateTextFields() : void
      {
         §!!G§.§2Z§.updateTextFields(§@'§,"StateEnd");
      }
      
      public function get isOpen() : Boolean
      {
         return this.§%!k§;
      }
   }
}
