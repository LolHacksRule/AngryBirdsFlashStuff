package §?I§
{
   import § S§.§ !+§;
   import § S§.§4&§;
   import §!"+§.§2!H§;
   import §!"+§.§[!Q§;
   import §%f§.§[@§;
   import §%f§.§[o§;
   import §,#§.§?%§;
   import §2X§.§8!=§;
   import §53§.§6!u§;
   import §53§.§["$§;
   import §8q§.§]d§;
   import §;"+§.§"!I§;
   import §;"+§.§0?§;
   import §;"+§.§9!M§;
   import §;"+§.§^!i§;
   import §;4§.§%@§;
   import §=b§.§+!'§;
   import §>P§.§,3§;
   import §>P§.§-U§;
   import com.angrybirds.§4"6§;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §?!>§ extends §1>§
   {
      
      private static const §#w§:Number = 750;
      
      private static var §&"#§:Class = §^"4§;
      
      public static const §1D§:Number = 30;
      
      protected static const §@!0§:String = "ScoreLoopCountChannel";
      
      protected static const §3"5§:String = "EndScreenEffectChannel";
       
      
      private var §<`§:§["$§;
      
      private var §2<§:Number;
      
      private var §]F§:Number = 0.0;
      
      private var §,y§:Number = 0.0;
      
      private var §#L§:Boolean = false;
      
      private var §&!n§:Timer;
      
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
      
      private var §;r§:§?%§;
      
      private var §const§:Boolean;
      
      public function §?!>§(param1:§?%§, param2:§2!H§)
      {
         this.§2I§ = [];
         this.§;u§ = new §[o§();
         §2!b§ = true;
         §@n§ = false;
         §!d§ = true;
         super(§4&§.§=x§,§ !+§.§3"8§,this.§'!N§());
         §<"3§ = param2 as §[!Q§;
         this.§;r§ = param1;
         §]d§.§[!$§(§@!0§,1,1);
         §]d§.§[!$§(§3"5§,3,1);
      }
      
      protected function §'!N§() : XML
      {
         var _loc1_:XML = §%@§.set(§&"#§);
         return AngryBirdsCustom.§3!z§(_loc1_);
      }
      
      protected function §9!]§() : void
      {
         (§@!U§.getItemByName("Button_Menu") as §9!M§).setVisibility(true);
         (§@!U§.getItemByName("Button_Replay") as §9!M§).setVisibility(true);
         if(this.§;r§.§4!d§.getNextLevelId())
         {
            (§@!U§.getItemByName("Button_NextLevel") as §9!M§).setVisibility(true);
            (§@!U§.getItemByName("Button_CutScene") as §9!M§).setVisibility(false);
            (§@!U§.getItemByName("Button_Menu") as §9!M§).x = this.§2I§[0];
            (§@!U§.getItemByName("Button_Replay") as §9!M§).x = this.§2I§[1];
            (§@!U§.getItemByName("Button_NextLevel") as §9!M§).x = this.§2I§[2];
         }
         else if(this.§;r§.§4!d§.isCutSceneNext())
         {
            (§@!U§.getItemByName("Button_CutScene") as §9!M§).setVisibility(true);
            (§@!U§.getItemByName("Button_NextLevel") as §9!M§).setVisibility(false);
            (§@!U§.getItemByName("Button_Menu") as §9!M§).x = this.§2I§[0];
            (§@!U§.getItemByName("Button_Replay") as §9!M§).x = this.§2I§[1];
            (§@!U§.getItemByName("Button_CutScene") as §9!M§).x = this.§2I§[2];
         }
         else
         {
            (§@!U§.getItemByName("Button_NextLevel") as §9!M§).setVisibility(false);
            (§@!U§.getItemByName("Button_CutScene") as §9!M§).setVisibility(false);
            (§@!U§.getItemByName("Button_Menu") as §9!M§).x = this.§2I§[0] + 40;
            (§@!U§.getItemByName("Button_Replay") as §9!M§).x = this.§2I§[2] - 40;
         }
      }
      
      protected function §0!N§() : void
      {
         this.§2I§.push(Math.round((§@!U§.getItemByName("Button_Menu") as §9!M§).x));
         this.§2I§.push(Math.round((§@!U§.getItemByName("Button_Replay") as §9!M§).x));
         this.§2I§.push(Math.round((§@!U§.getItemByName("Button_NextLevel") as §9!M§).x));
      }
      
      override protected function init() : void
      {
         super.init();
         §2!b§ = true;
         this.updateTextFields();
         this.§0!N§();
         this.§5![§ = new Vector.<§+!'§>();
         §4"6§.§;!k§.background.§-!J§();
         §]d§.§[!$§(§@!0§,1,0.8);
         this.§`!9§ = false;
         §4"6§.pause();
         this.§9!]§();
         this.mNewScoreCounter = 0;
         this.§3>§ = false;
         §]d§.§^!J§("LevelCompletedTheme1");
         this.§]F§ = 0;
         this.§,y§ = 0;
         this.§+d§();
         this.§const§ = true;
         this.§'!%§();
      }
      
      private function §'!%§() : void
      {
         var _loc1_:String = (§-O§.§5!1§ as AngryBirdsCustom).§;J§.§"!X§(§[@§.§"e§.§]f§()).brand;
         §@!U§.getItemByName("MovieClip_Nesquik").setVisibility(_loc1_ == §8!=§.§^2§);
         §@!U§.getItemByName("MovieClip_Chocapic").setVisibility(_loc1_ == §8!=§.§3!V§);
         §@!U§.getItemByName("MovieClip_KokoKrunch").setVisibility(_loc1_ == §8!=§.§-!R§);
      }
      
      private function §+d§() : void
      {
         this.§%-§ = false;
         this.§+!4§();
         this.§&!n§ = new Timer(100);
         this.§1!y§ = 0;
         this.§&!n§.addEventListener(TimerEvent.TIMER,this.§@!1§);
         this.§&!n§.start();
      }
      
      protected function §&!"§(param1:int, param2:int) : void
      {
         if(this.§`"2§)
         {
            param2 = param1;
            (§-O§.§5!1§ as AngryBirdsCustom).§;!1§.setScoreForLevel(this.§;r§.§4!d§.currentLevel,param2);
            (§-O§.§5!1§ as AngryBirdsCustom).§;!1§.§8g§(this.§;r§.§4!d§.currentLevel,param2);
            §@!U§.setText("New Highscore!","TextField_BestScore");
         }
         else
         {
            §@!U§.setText(param2.toString(),"TextField_BestScore");
            this.§0!;§ = this.§;r§.§4!d§.getNumStarsForLevel(this.§;r§.§4!d§.currentLevel,param2);
            switch(this.§0!;§)
            {
               case 1:
                  (§@!U§.getItemByName("MovieClip_BestScoreStars") as §0?§).§^w§("OneStar");
                  break;
               case 2:
                  (§@!U§.getItemByName("MovieClip_BestScoreStars") as §0?§).§^w§("TwoStar");
                  break;
               case 3:
                  (§@!U§.getItemByName("MovieClip_BestScoreStars") as §0?§).§^w§("ThreeStar");
            }
         }
      }
      
      protected function §+!4§() : void
      {
         var _loc1_:int = (§-O§.§5!1§ as AngryBirdsCustom).§;!1§.getScoreForLevel(this.§;r§.§4!d§.currentLevel);
         var _loc2_:int = §4"6§.controller.getScore(10);
         this.§`"2§ = _loc2_ >= _loc1_;
         this.§&!"§(_loc2_,_loc1_);
         var _loc3_:int = (§-O§.§5!1§ as AngryBirdsCustom).§;!1§.§<!8§(this.§;r§.§4!d§.currentLevel,_loc2_);
         (§@!U§.getItemByName("MovieClip_NewHighScoreBadge") as §0?§).setVisibility(false);
         (§@!U§.getItemByName("MovieClip_StarLeft") as §0?§).mClip.gotoAndStop("UnLit");
         (§@!U§.getItemByName("MovieClip_StarCenter") as §0?§).mClip.gotoAndStop("UnLit");
         (§@!U§.getItemByName("MovieClip_StarRight") as §0?§).mClip.gotoAndStop("UnLit");
      }
      
      protected function §?!C§() : void
      {
         if(this.§`"2§)
         {
            §]d§.§^!J§("Hiscore_Badge",§3"5§);
            (§@!U§.getItemByName("TextField_NewHighScore") as §"!I§).setVisibility(true);
            (§@!U§.getItemByName("MovieClip_BestScoreStars") as §0?§).setVisibility(false);
            this.§@`§();
         }
         else
         {
            (§@!U§.getItemByName("TextField_BestScore") as §"!I§).setVisibility(true);
            (§@!U§.getItemByName("MovieClip_BestScoreStars") as §0?§).setVisibility(true);
            (§@!U§.getItemByName("MovieClip_BestScoreText") as §"!I§).setVisibility(true);
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
         (§@!U§.getItemByName("Container_LevelEndStripe") as §^!i§).x = (§@!U§.getItemByName("Container_LevelEndStripe") as §^!i§).x - this.§]F§;
         (§@!U§.getItemByName("Container_LevelEndStripe") as §^!i§).y = (§@!U§.getItemByName("Container_LevelEndStripe") as §^!i§).y - this.§,y§;
         if(this.§2<§ > 0)
         {
            this.§]F§ = (Math.random() - 0.5) * (this.§2<§ / §1D§) * 20;
            this.§,y§ = (Math.random() - 0.5) * (this.§2<§ / §1D§) * 20;
            (§@!U§.getItemByName("Container_LevelEndStripe") as §^!i§).x = (§@!U§.getItemByName("Container_LevelEndStripe") as §^!i§).x + this.§]F§;
            (§@!U§.getItemByName("Container_LevelEndStripe") as §^!i§).y = (§@!U§.getItemByName("Container_LevelEndStripe") as §^!i§).y + this.§,y§;
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
         var _loc4_:Number = this.§;r§.§4!d§.getLevelForId(this.§;r§.§4!d§.currentLevel).scoreGold;
         var _loc5_:Number = this.§;r§.§4!d§.getLevelForId(this.§;r§.§4!d§.currentLevel).scoreSilver;
         if((§@!U§.getItemByName("MovieClip_StarLeft") as §0?§).mClip.currentLabel == "UnLit")
         {
            §]d§.§^!J§("Hiscore_Count",§@!0§,999,-1,100);
            §]d§.§^!J§("Hiscore_Star_Splash1",§3"5§);
            this.§&!n§.delay = §#w§;
            this.§;u§.§6!a§(§4"6§.controller.getScore(10));
            _loc6_ = this.§;u§.getValue() / _loc4_ * 2;
            if(_loc4_ <= 0)
            {
               _loc6_ = 1;
            }
            this.§1V§ = §6!u§.§"e§.§0!O§(this,{"mNewScoreCounter":this.§;u§.getValue()},{"mNewScoreCounter":0},_loc6_);
            this.§1V§.onComplete = this.§>"0§;
            this.§1V§.play();
            (§@!U§.getItemByName("MovieClip_StarLeft") as §0?§).mClip.gotoAndStop("Lit");
            _loc2_ = (§@!U§.getItemByName("MovieClip_StarLeft") as §0?§).x + (§@!U§.getItemByName("Container_LevelEndStripe") as §^!i§).x;
            _loc3_ = (§@!U§.getItemByName("MovieClip_StarLeft") as §0?§).y + (§@!U§.getItemByName("Container_LevelEndStripe") as §^!i§).y;
            this.§#?§ = new §+!'§(§-O§.§"!V§,§-O§.§^,§,_loc2_,_loc3_,§+!'§.§^>§);
            §@!U§.mClip.addChild(this.§#?§);
            this.§5![§.push(this.§#?§);
         }
         else if(this.§;u§.getValue() >= _loc5_ && (§@!U§.getItemByName("MovieClip_StarCenter") as §0?§).mClip.currentLabel == "UnLit")
         {
            §]d§.§^!J§("Hiscore_Star_Splash2",§3"5§);
            (§@!U§.getItemByName("MovieClip_StarCenter") as §0?§).mClip.gotoAndStop("Lit");
            _loc2_ = (§@!U§.getItemByName("MovieClip_StarCenter") as §0?§).x + (§@!U§.getItemByName("Container_LevelEndStripe") as §^!i§).x;
            _loc3_ = (§@!U§.getItemByName("MovieClip_StarCenter") as §0?§).y + (§@!U§.getItemByName("Container_LevelEndStripe") as §^!i§).y;
            this.§#?§ = new §+!'§(§-O§.§"!V§,§-O§.§^,§,_loc2_,_loc3_,§+!'§.§"!a§);
            §@!U§.mClip.addChild(this.§#?§);
            this.§5![§.push(this.§#?§);
         }
         else if(this.§;u§.getValue() >= _loc4_ && (§@!U§.getItemByName("MovieClip_StarRight") as §0?§).mClip.currentLabel == "UnLit")
         {
            this.§`!9§ = true;
            §]d§.§^!J§("Hiscore_Star_Splash3",§3"5§);
            (§@!U§.getItemByName("MovieClip_StarRight") as §0?§).mClip.gotoAndStop("Lit");
            _loc2_ = (§@!U§.getItemByName("MovieClip_StarRight") as §0?§).x + (§@!U§.getItemByName("Container_LevelEndStripe") as §^!i§).x;
            _loc3_ = (§@!U§.getItemByName("MovieClip_StarRight") as §0?§).y + (§@!U§.getItemByName("Container_LevelEndStripe") as §^!i§).y;
            this.§#?§ = new §+!'§(§-O§.§"!V§,§-O§.§^,§,_loc2_,_loc3_,§+!'§.§'!S§);
            §@!U§.mClip.addChild(this.§#?§);
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
               (§@!U§.getItemByName("MovieClip_NewHighScoreBadge") as §0?§).setVisibility(true);
               §@!U§.getItemByName("TextField_NewHighScore").setVisibility(true);
            }
            else
            {
               (§@!U§.getItemByName("MovieClip_NewHighScoreBadge") as §0?§).setVisibility(false);
               §@!U§.getItemByName("TextField_NewHighScore").setVisibility(false);
            }
            this.§<`§ = §6!u§.§"e§.§0!O§((§@!U§.getItemByName("MovieClip_NewHighScoreBadge") as §0?§).mClip,{
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
      
      private function §>"0§() : void
      {
         §]d§.§<"+§(§@!0§);
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:§+!'§ = null;
         §@!U§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScore");
         for each(_loc2_ in this.§5![§)
         {
            _loc2_.update(param1);
         }
         if(this.§2<§ >= 0)
         {
            this.§6!F§(param1);
         }
      }
      
      override public function dispose() : void
      {
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
         §@!U§.setText("0","TextField_LevelEndScore");
         this.§const§ = false;
         super.dispose();
      }
      
      protected function §0!p§(param1:String) : void
      {
         (§@!U§.getItemByName("Button_Menu") as §9!M§).setComponentVisualState(param1);
         (§@!U§.getItemByName("Button_Replay") as §9!M§).setComponentVisualState(param1);
         (§@!U§.getItemByName("Button_NextLevel") as §9!M§).setComponentVisualState(param1);
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
            if(§@!U§.mClip.contains(splash))
            {
               §@!U§.mClip.removeChild(splash);
            }
            splash.§6T§();
         }
         this.§5![§ = new Vector.<§+!'§>();
         this.§1!C§();
      }
      
      protected function §1!C§() : void
      {
         (§@!U§.getItemByName("TextField_BestScore") as §"!I§).setVisibility(false);
         (§@!U§.getItemByName("MovieClip_BestScoreStars") as §0?§).setVisibility(false);
         (§@!U§.getItemByName("TextField_NewHighScore") as §"!I§).setVisibility(false);
      }
      
      protected function §8J§() : void
      {
         this.§;r§.§ !_§();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§,3§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
            case "CUTSCENE":
               §2!b§ = false;
               close();
               this.§8J§();
               break;
            case "REPLAY":
               §2!b§ = false;
               close();
               this.§;r§.§7I§(this.§;r§.§1""§());
               break;
            case "MENU":
               §]d§.§]!u§();
               §2!b§ = false;
               close();
               this.§;r§.§7I§(this.§;r§.§3<§());
         }
      }
      
      override public function updateLocalization() : void
      {
         super.updateLocalization();
         this.updateTextFields();
      }
      
      override public function updateTextFields() : void
      {
         §[@§.§"e§.updateTextFields(§@!U§,"StateEnd");
      }
      
      public function get isOpen() : Boolean
      {
         return this.§const§;
      }
   }
}
