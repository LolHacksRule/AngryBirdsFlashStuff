package §%9§
{
   import §"I§.§ !R§;
   import §&!>§.§3!k§;
   import §5!7§.§6n§;
   import §5!7§.§<"2§;
   import §><§.§0!M§;
   import §><§.§4!N§;
   import §?!E§.§6^§;
   import §?N§.§9r§;
   import §?N§.§>!H§;
   import §@#§.§4!O§;
   import §@#§.§5!"§;
   import §@#§.§9!'§;
   import §@#§.§>L§;
   import §[!b§.§'!R§;
   import §[!b§.§]"-§;
   import §`!_§.§'!N§;
   import §`6§.§!!]§;
   import §`6§.§-!j§;
   import com.angrybirds.§6U§;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §&"#§ extends §<a§
   {
      
      private static const §<!a§:Number = 750;
      
      private static var §]!w§:Class = §,"1§;
      
      public static const §8-§:Number = 30;
      
      protected static const §=" §:String = "ScoreLoopCountChannel";
      
      protected static const §0!n§:String = "EndScreenEffectChannel";
       
      
      private var §+"0§:§4!N§;
      
      private var §=s§:Number;
      
      private var §]!T§:Number = 0.0;
      
      private var §`!l§:Number = 0.0;
      
      private var §'H§:Boolean = false;
      
      private var §9!8§:Timer;
      
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
      
      private var §'!4§:§6^§;
      
      private var §?!G§:Boolean;
      
      public function §&"#§(param1:§6^§, param2:§<"2§)
      {
         this.§"!A§ = [];
         this.§;P§ = new §-!j§();
         §?!^§ = true;
         §+!X§ = false;
         §8!^§ = true;
         super(§9r§.§8F§,§>!H§.§,"0§,this.§^!!§());
         §with§ = param2 as §6n§;
         this.§'!4§ = param1;
         §3!k§.§[y§(§=" §,1,1);
         §3!k§.§[y§(§0!n§,3,1);
      }
      
      protected function §^!!§() : XML
      {
         var _loc1_:XML = § !R§.§`G§(§]!w§);
         return AngryBirdsCustom.§+Z§(_loc1_);
      }
      
      protected function §7!v§() : void
      {
         (§0+§.getItemByName("Button_Menu") as §4!O§).setVisibility(true);
         (§0+§.getItemByName("Button_Replay") as §4!O§).setVisibility(true);
         if(this.§'!4§.§6!N§.getNextLevelId())
         {
            (§0+§.getItemByName("Button_NextLevel") as §4!O§).setVisibility(true);
            (§0+§.getItemByName("Button_CutScene") as §4!O§).setVisibility(false);
            (§0+§.getItemByName("Button_Menu") as §4!O§).x = this.§"!A§[0];
            (§0+§.getItemByName("Button_Replay") as §4!O§).x = this.§"!A§[1];
            (§0+§.getItemByName("Button_NextLevel") as §4!O§).x = this.§"!A§[2];
         }
         else if(this.§'!4§.§6!N§.isCutSceneNext())
         {
            (§0+§.getItemByName("Button_CutScene") as §4!O§).setVisibility(true);
            (§0+§.getItemByName("Button_NextLevel") as §4!O§).setVisibility(false);
            (§0+§.getItemByName("Button_Menu") as §4!O§).x = this.§"!A§[0];
            (§0+§.getItemByName("Button_Replay") as §4!O§).x = this.§"!A§[1];
            (§0+§.getItemByName("Button_CutScene") as §4!O§).x = this.§"!A§[2];
         }
         else
         {
            (§0+§.getItemByName("Button_NextLevel") as §4!O§).setVisibility(false);
            (§0+§.getItemByName("Button_CutScene") as §4!O§).setVisibility(false);
            (§0+§.getItemByName("Button_Menu") as §4!O§).x = this.§"!A§[0] + 40;
            (§0+§.getItemByName("Button_Replay") as §4!O§).x = this.§"!A§[2] - 40;
         }
      }
      
      protected function §2!f§() : void
      {
         this.§"!A§.push(Math.round((§0+§.getItemByName("Button_Menu") as §4!O§).x));
         this.§"!A§.push(Math.round((§0+§.getItemByName("Button_Replay") as §4!O§).x));
         this.§"!A§.push(Math.round((§0+§.getItemByName("Button_NextLevel") as §4!O§).x));
      }
      
      override protected function init() : void
      {
         super.init();
         §?!^§ = true;
         this.updateTextFields();
         this.§2!f§();
         this.§ h§ = new Vector.<§'!N§>();
         §6U§.§+_§.background.§83§();
         §3!k§.§[y§(§=" §,1,0.8);
         this.§,!B§ = false;
         §6U§.pause();
         this.§7!v§();
         this.mNewScoreCounter = 0;
         this.§"!0§ = false;
         §3!k§.§]"4§("LevelCompletedTheme1");
         this.§]!T§ = 0;
         this.§`!l§ = 0;
         this.§^6§();
         this.§?!G§ = true;
         this.§3!6§();
      }
      
      private function §3!6§() : void
      {
         var _loc1_:String = (§-!l§.§"x§ as AngryBirdsCustom).§=!Q§.§8d§(§!!]§.§?!+§.§<N§()).brand;
         §0+§.getItemByName("MovieClip_Nesquik").setVisibility(_loc1_ == "nesquik");
         §0+§.getItemByName("MovieClip_Chocapic").setVisibility(_loc1_ == "chocapic");
         §0+§.getItemByName("MovieClip_KokoKrunch").setVisibility(_loc1_ == "koko_krunch");
      }
      
      private function §^6§() : void
      {
         this.§^!y§ = false;
         this.§="4§();
         this.§9!8§ = new Timer(100);
         this.§+z§ = 0;
         this.§9!8§.addEventListener(TimerEvent.TIMER,this.§'!x§);
         this.§9!8§.start();
      }
      
      protected function §^!B§(param1:int, param2:int) : void
      {
         if(this.§5""§)
         {
            param2 = param1;
            (§-!l§.§"x§ as AngryBirdsCustom).§7f§.setScoreForLevel(this.§'!4§.§6!N§.currentLevel,param2);
            (§-!l§.§"x§ as AngryBirdsCustom).§7f§.§9!U§(this.§'!4§.§6!N§.currentLevel,param2);
            §0+§.setText("New Highscore!","TextField_BestScore");
         }
         else
         {
            §0+§.setText(param2.toString(),"TextField_BestScore");
            this.§`!L§ = this.§'!4§.§6!N§.getNumStarsForLevel(this.§'!4§.§6!N§.currentLevel,param2);
            switch(this.§`!L§)
            {
               case 1:
                  (§0+§.getItemByName("MovieClip_BestScoreStars") as §5!"§).§;!z§("OneStar");
                  break;
               case 2:
                  (§0+§.getItemByName("MovieClip_BestScoreStars") as §5!"§).§;!z§("TwoStar");
                  break;
               case 3:
                  (§0+§.getItemByName("MovieClip_BestScoreStars") as §5!"§).§;!z§("ThreeStar");
            }
         }
      }
      
      protected function §="4§() : void
      {
         var _loc1_:int = (§-!l§.§"x§ as AngryBirdsCustom).§7f§.getScoreForLevel(this.§'!4§.§6!N§.currentLevel);
         var _loc2_:int = §6U§.controller.getScore(10);
         this.§5""§ = _loc2_ >= _loc1_;
         this.§^!B§(_loc2_,_loc1_);
         var _loc3_:int = (§-!l§.§"x§ as AngryBirdsCustom).§7f§.§4o§(this.§'!4§.§6!N§.currentLevel,_loc2_);
         (§0+§.getItemByName("MovieClip_NewHighScoreBadge") as §5!"§).setVisibility(false);
         (§0+§.getItemByName("MovieClip_StarLeft") as §5!"§).mClip.gotoAndStop("UnLit");
         (§0+§.getItemByName("MovieClip_StarCenter") as §5!"§).mClip.gotoAndStop("UnLit");
         (§0+§.getItemByName("MovieClip_StarRight") as §5!"§).mClip.gotoAndStop("UnLit");
      }
      
      protected function §7!O§() : void
      {
         if(this.§5""§)
         {
            §3!k§.§]"4§("Hiscore_Badge",§0!n§);
            (§0+§.getItemByName("TextField_NewHighScore") as §>L§).setVisibility(true);
            (§0+§.getItemByName("MovieClip_BestScoreStars") as §5!"§).setVisibility(false);
            this.§0!4§();
         }
         else
         {
            (§0+§.getItemByName("TextField_BestScore") as §>L§).setVisibility(true);
            (§0+§.getItemByName("MovieClip_BestScoreStars") as §5!"§).setVisibility(true);
            (§0+§.getItemByName("MovieClip_BestScoreText") as §>L§).setVisibility(true);
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
         (§0+§.getItemByName("Container_LevelEndStripe") as §9!'§).x = (§0+§.getItemByName("Container_LevelEndStripe") as §9!'§).x - this.§]!T§;
         (§0+§.getItemByName("Container_LevelEndStripe") as §9!'§).y = (§0+§.getItemByName("Container_LevelEndStripe") as §9!'§).y - this.§`!l§;
         if(this.§=s§ > 0)
         {
            this.§]!T§ = (Math.random() - 0.5) * (this.§=s§ / §8-§) * 20;
            this.§`!l§ = (Math.random() - 0.5) * (this.§=s§ / §8-§) * 20;
            (§0+§.getItemByName("Container_LevelEndStripe") as §9!'§).x = (§0+§.getItemByName("Container_LevelEndStripe") as §9!'§).x + this.§]!T§;
            (§0+§.getItemByName("Container_LevelEndStripe") as §9!'§).y = (§0+§.getItemByName("Container_LevelEndStripe") as §9!'§).y + this.§`!l§;
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
         var _loc4_:Number = this.§'!4§.§6!N§.getLevelForId(this.§'!4§.§6!N§.currentLevel).scoreGold;
         var _loc5_:Number = this.§'!4§.§6!N§.getLevelForId(this.§'!4§.§6!N§.currentLevel).scoreSilver;
         if((§0+§.getItemByName("MovieClip_StarLeft") as §5!"§).mClip.currentLabel == "UnLit")
         {
            §3!k§.§]"4§("Hiscore_Count",§=" §,999,-1,100);
            §3!k§.§]"4§("Hiscore_Star_Splash1",§0!n§);
            this.§9!8§.delay = §<!a§;
            this.§;P§.§7!r§(§6U§.controller.getScore(10));
            _loc6_ = this.§;P§.getValue() / _loc4_ * 2;
            if(_loc4_ <= 0)
            {
               _loc6_ = 1;
            }
            this.§'=§ = §0!M§.§?!+§.§3d§(this,{"mNewScoreCounter":this.§;P§.getValue()},{"mNewScoreCounter":0},_loc6_);
            this.§'=§.onComplete = this.§%]§;
            this.§'=§.play();
            (§0+§.getItemByName("MovieClip_StarLeft") as §5!"§).mClip.gotoAndStop("Lit");
            _loc2_ = (§0+§.getItemByName("MovieClip_StarLeft") as §5!"§).x + (§0+§.getItemByName("Container_LevelEndStripe") as §9!'§).x;
            _loc3_ = (§0+§.getItemByName("MovieClip_StarLeft") as §5!"§).y + (§0+§.getItemByName("Container_LevelEndStripe") as §9!'§).y;
            this.§@C§ = new §'!N§(§-!l§.§?g§,§-!l§.§-!W§,_loc2_,_loc3_,§'!N§.§5!P§);
            §0+§.mClip.addChild(this.§@C§);
            this.§ h§.push(this.§@C§);
         }
         else if(this.§;P§.getValue() >= _loc5_ && (§0+§.getItemByName("MovieClip_StarCenter") as §5!"§).mClip.currentLabel == "UnLit")
         {
            §3!k§.§]"4§("Hiscore_Star_Splash2",§0!n§);
            (§0+§.getItemByName("MovieClip_StarCenter") as §5!"§).mClip.gotoAndStop("Lit");
            _loc2_ = (§0+§.getItemByName("MovieClip_StarCenter") as §5!"§).x + (§0+§.getItemByName("Container_LevelEndStripe") as §9!'§).x;
            _loc3_ = (§0+§.getItemByName("MovieClip_StarCenter") as §5!"§).y + (§0+§.getItemByName("Container_LevelEndStripe") as §9!'§).y;
            this.§@C§ = new §'!N§(§-!l§.§?g§,§-!l§.§-!W§,_loc2_,_loc3_,§'!N§.§!^§);
            §0+§.mClip.addChild(this.§@C§);
            this.§ h§.push(this.§@C§);
         }
         else if(this.§;P§.getValue() >= _loc4_ && (§0+§.getItemByName("MovieClip_StarRight") as §5!"§).mClip.currentLabel == "UnLit")
         {
            this.§,!B§ = true;
            §3!k§.§]"4§("Hiscore_Star_Splash3",§0!n§);
            (§0+§.getItemByName("MovieClip_StarRight") as §5!"§).mClip.gotoAndStop("Lit");
            _loc2_ = (§0+§.getItemByName("MovieClip_StarRight") as §5!"§).x + (§0+§.getItemByName("Container_LevelEndStripe") as §9!'§).x;
            _loc3_ = (§0+§.getItemByName("MovieClip_StarRight") as §5!"§).y + (§0+§.getItemByName("Container_LevelEndStripe") as §9!'§).y;
            this.§@C§ = new §'!N§(§-!l§.§?g§,§-!l§.§-!W§,_loc2_,_loc3_,§'!N§.§0q§);
            §0+§.mClip.addChild(this.§@C§);
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
               (§0+§.getItemByName("MovieClip_NewHighScoreBadge") as §5!"§).setVisibility(true);
               §0+§.getItemByName("TextField_NewHighScore").setVisibility(true);
            }
            else
            {
               (§0+§.getItemByName("MovieClip_NewHighScoreBadge") as §5!"§).setVisibility(false);
               §0+§.getItemByName("TextField_NewHighScore").setVisibility(false);
            }
            this.§+"0§ = §0!M§.§?!+§.§3d§((§0+§.getItemByName("MovieClip_NewHighScoreBadge") as §5!"§).mClip,{
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
      
      private function §%]§() : void
      {
         §3!k§.§4[§(§=" §);
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:§'!N§ = null;
         §0+§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScore");
         for each(_loc2_ in this.§ h§)
         {
            _loc2_.update(param1);
         }
         if(this.§=s§ >= 0)
         {
            this.§6"1§(param1);
         }
      }
      
      override public function dispose() : void
      {
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
         §0+§.setText("0","TextField_LevelEndScore");
         this.§?!G§ = false;
         super.dispose();
      }
      
      protected function §"!]§(param1:String) : void
      {
         (§0+§.getItemByName("Button_Menu") as §4!O§).setComponentVisualState(param1);
         (§0+§.getItemByName("Button_Replay") as §4!O§).setComponentVisualState(param1);
         (§0+§.getItemByName("Button_NextLevel") as §4!O§).setComponentVisualState(param1);
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
            if(§0+§.mClip.contains(splash))
            {
               §0+§.mClip.removeChild(splash);
            }
            splash.§=!I§();
         }
         this.§ h§ = new Vector.<§'!N§>();
         this.§]!4§();
      }
      
      protected function §]!4§() : void
      {
         (§0+§.getItemByName("TextField_BestScore") as §>L§).setVisibility(false);
         (§0+§.getItemByName("MovieClip_BestScoreStars") as §5!"§).setVisibility(false);
         (§0+§.getItemByName("TextField_NewHighScore") as §>L§).setVisibility(false);
      }
      
      protected function §0Y§() : void
      {
         this.§'!4§.§`H§();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§'!R§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
            case "CUTSCENE":
               §?!^§ = false;
               close();
               this.§0Y§();
               break;
            case "REPLAY":
               §?!^§ = false;
               close();
               this.§'!4§.§2w§(this.§'!4§.§%!7§());
               break;
            case "MENU":
               §3!k§.§#!3§();
               §?!^§ = false;
               close();
               this.§'!4§.§2w§(this.§'!4§.§&D§());
         }
      }
      
      override public function updateLocalization() : void
      {
         super.updateLocalization();
         this.updateTextFields();
      }
      
      override public function updateTextFields() : void
      {
         §!!]§.§?!+§.updateTextFields(§0+§,"StateEnd");
      }
      
      public function get isOpen() : Boolean
      {
         return this.§?!G§;
      }
   }
}
