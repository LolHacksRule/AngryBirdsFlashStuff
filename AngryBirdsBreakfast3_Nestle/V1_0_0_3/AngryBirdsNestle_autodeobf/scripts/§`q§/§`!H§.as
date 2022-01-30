package §`q§
{
   import §!!<§.§-"4§;
   import §!!<§.§7!r§;
   import §&!'§.§3!0§;
   import §-!F§.§?!k§;
   import §-!F§.§[!Q§;
   import §3!!§.§+!F§;
   import §3!!§.§5" §;
   import §3!!§.§?v§;
   import §3!!§.native;
   import §9![§.§1!i§;
   import §=!7§.§%!%§;
   import §=3§.§]!X§;
   import §=3§.§`!F§;
   import §@f§.§&!"§;
   import §@f§.§4d§;
   import §[<§.§#!q§;
   import §[<§.§%!T§;
   import §`!6§.§7!d§;
   import com.angrybirds.§4!l§;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §`!H§ extends §'!O§
   {
      
      private static const §7d§:Number = 750;
      
      private static var §1!§:Class = §5!O§;
      
      public static const §=L§:Number = 30;
      
      protected static const §3b§:String = "ScoreLoopCountChannel";
      
      protected static const §-!§:String = "EndScreenEffectChannel";
       
      
      private var §[J§:§]!X§;
      
      private var §8!"§:Number;
      
      private var §"[§:Number = 0.0;
      
      private var §`! §:Number = 0.0;
      
      private var §=p§:Boolean = false;
      
      private var §@!w§:Timer;
      
      protected var §!7§:Array;
      
      protected var §2!k§:§3!0§;
      
      protected var §#<§:Vector.<§3!0§>;
      
      public var mNewScoreCounter:int;
      
      private var §&w§:int;
      
      private var §7!0§:Boolean;
      
      protected var §+!2§:Boolean;
      
      private var §#7§:§?!k§;
      
      protected var §8"2§:Boolean;
      
      private var §"#§:§]!X§;
      
      protected var §'"&§:Boolean;
      
      protected var §<!+§:int;
      
      private var §<!2§:§7!d§;
      
      private var §0I§:Boolean;
      
      public function §`!H§(param1:§7!d§, param2:§-"4§)
      {
         this.§!7§ = [];
         this.§#7§ = new §?!k§();
         §=!c§ = true;
         §1!b§ = false;
         §0!2§ = true;
         super(§%!T§.§`!$§,§#!q§.§"R§,this.§@A§());
         §'!f§ = param2 as §7!r§;
         this.§<!2§ = param1;
         §1!i§.§[=§(§3b§,1,1);
         §1!i§.§[=§(§-!§,3,1);
      }
      
      protected function §@A§() : XML
      {
         var _loc1_:XML = §%!%§.§<!0§(§1!§);
         return AngryBirdsCustom.§5!g§(_loc1_);
      }
      
      protected function §2!A§() : void
      {
         (§#t§.getItemByName("Button_Menu") as §?v§).setVisibility(true);
         (§#t§.getItemByName("Button_Replay") as §?v§).setVisibility(true);
         if(this.§<!2§.§2!V§.getNextLevelId())
         {
            (§#t§.getItemByName("Button_NextLevel") as §?v§).setVisibility(true);
            (§#t§.getItemByName("Button_CutScene") as §?v§).setVisibility(false);
            (§#t§.getItemByName("Button_Menu") as §?v§).x = this.§!7§[0];
            (§#t§.getItemByName("Button_Replay") as §?v§).x = this.§!7§[1];
            (§#t§.getItemByName("Button_NextLevel") as §?v§).x = this.§!7§[2];
         }
         else if(this.§<!2§.§2!V§.isCutSceneNext())
         {
            (§#t§.getItemByName("Button_CutScene") as §?v§).setVisibility(true);
            (§#t§.getItemByName("Button_NextLevel") as §?v§).setVisibility(false);
            (§#t§.getItemByName("Button_Menu") as §?v§).x = this.§!7§[0];
            (§#t§.getItemByName("Button_Replay") as §?v§).x = this.§!7§[1];
            (§#t§.getItemByName("Button_CutScene") as §?v§).x = this.§!7§[2];
         }
         else
         {
            (§#t§.getItemByName("Button_NextLevel") as §?v§).setVisibility(false);
            (§#t§.getItemByName("Button_CutScene") as §?v§).setVisibility(false);
            (§#t§.getItemByName("Button_Menu") as §?v§).x = this.§!7§[0] + 40;
            (§#t§.getItemByName("Button_Replay") as §?v§).x = this.§!7§[2] - 40;
         }
      }
      
      protected function §-!^§() : void
      {
         this.§!7§.push(Math.round((§#t§.getItemByName("Button_Menu") as §?v§).x));
         this.§!7§.push(Math.round((§#t§.getItemByName("Button_Replay") as §?v§).x));
         this.§!7§.push(Math.round((§#t§.getItemByName("Button_NextLevel") as §?v§).x));
      }
      
      override protected function init() : void
      {
         super.init();
         §=!c§ = true;
         this.updateTextFields();
         this.§-!^§();
         this.§#<§ = new Vector.<§3!0§>();
         §4!l§.§,!8§.background.§?§();
         §1!i§.§[=§(§3b§,1,0.8);
         this.§'"&§ = false;
         §4!l§.pause();
         this.§2!A§();
         this.mNewScoreCounter = 0;
         this.§7!0§ = false;
         §1!i§.§+!Y§("LevelCompletedTheme1");
         this.§"[§ = 0;
         this.§`! § = 0;
         this.§>!V§();
         this.§0I§ = true;
         this.§%!Y§();
      }
      
      private function §%!Y§() : void
      {
         var _loc1_:String = (§&N§.§#Y§ as AngryBirdsCustom).§7!J§.§ "%§(§[!Q§.§=J§.§%w§()).brand;
         §#t§.getItemByName("MovieClip_Nesquik").setVisibility(_loc1_ == "nesquik");
         §#t§.getItemByName("MovieClip_Chocapic").setVisibility(_loc1_ == "chocapic");
         §#t§.getItemByName("MovieClip_KokoKrunch").setVisibility(_loc1_ == "koko_krunch");
      }
      
      private function §>!V§() : void
      {
         this.§+!2§ = false;
         this.§5"+§();
         this.§@!w§ = new Timer(100);
         this.§&w§ = 0;
         this.§@!w§.addEventListener(TimerEvent.TIMER,this.§?!l§);
         this.§@!w§.start();
      }
      
      protected function §>!h§(param1:int, param2:int) : void
      {
         if(this.§8"2§)
         {
            param2 = param1;
            (§&N§.§#Y§ as AngryBirdsCustom).§2Z§.setScoreForLevel(this.§<!2§.§2!V§.currentLevel,param2);
            (§&N§.§#Y§ as AngryBirdsCustom).§2Z§.§7$§(this.§<!2§.§2!V§.currentLevel,param2);
            §#t§.setText("New Highscore!","TextField_BestScore");
         }
         else
         {
            §#t§.setText(param2.toString(),"TextField_BestScore");
            this.§<!+§ = this.§<!2§.§2!V§.getNumStarsForLevel(this.§<!2§.§2!V§.currentLevel,param2);
            switch(this.§<!+§)
            {
               case 1:
                  (§#t§.getItemByName("MovieClip_BestScoreStars") as §+!F§).§`!x§("OneStar");
                  break;
               case 2:
                  (§#t§.getItemByName("MovieClip_BestScoreStars") as §+!F§).§`!x§("TwoStar");
                  break;
               case 3:
                  (§#t§.getItemByName("MovieClip_BestScoreStars") as §+!F§).§`!x§("ThreeStar");
            }
         }
      }
      
      protected function §5"+§() : void
      {
         var _loc1_:int = (§&N§.§#Y§ as AngryBirdsCustom).§2Z§.getScoreForLevel(this.§<!2§.§2!V§.currentLevel);
         var _loc2_:int = §4!l§.controller.getScore(10);
         this.§8"2§ = _loc2_ >= _loc1_;
         this.§>!h§(_loc2_,_loc1_);
         var _loc3_:int = (§&N§.§#Y§ as AngryBirdsCustom).§2Z§.§7?§(this.§<!2§.§2!V§.currentLevel,_loc2_);
         (§#t§.getItemByName("MovieClip_NewHighScoreBadge") as §+!F§).setVisibility(false);
         (§#t§.getItemByName("MovieClip_StarLeft") as §+!F§).mClip.gotoAndStop("UnLit");
         (§#t§.getItemByName("MovieClip_StarCenter") as §+!F§).mClip.gotoAndStop("UnLit");
         (§#t§.getItemByName("MovieClip_StarRight") as §+!F§).mClip.gotoAndStop("UnLit");
      }
      
      protected function §;!v§() : void
      {
         if(this.§8"2§)
         {
            §1!i§.§+!Y§("Hiscore_Badge",§-!§);
            (§#t§.getItemByName("TextField_NewHighScore") as native).setVisibility(true);
            (§#t§.getItemByName("MovieClip_BestScoreStars") as §+!F§).setVisibility(false);
            this.§3d§();
         }
         else
         {
            (§#t§.getItemByName("TextField_BestScore") as native).setVisibility(true);
            (§#t§.getItemByName("MovieClip_BestScoreStars") as §+!F§).setVisibility(true);
            (§#t§.getItemByName("MovieClip_BestScoreText") as native).setVisibility(true);
         }
      }
      
      protected function §3d§() : void
      {
         this.§"[§ = 0;
         this.§`! § = 0;
         this.§8!"§ = §=L§;
      }
      
      private function §#!K§(param1:Number) : void
      {
         (§#t§.getItemByName("Container_LevelEndStripe") as §5" §).x = (§#t§.getItemByName("Container_LevelEndStripe") as §5" §).x - this.§"[§;
         (§#t§.getItemByName("Container_LevelEndStripe") as §5" §).y = (§#t§.getItemByName("Container_LevelEndStripe") as §5" §).y - this.§`! §;
         if(this.§8!"§ > 0)
         {
            this.§"[§ = (Math.random() - 0.5) * (this.§8!"§ / §=L§) * 20;
            this.§`! § = (Math.random() - 0.5) * (this.§8!"§ / §=L§) * 20;
            (§#t§.getItemByName("Container_LevelEndStripe") as §5" §).x = (§#t§.getItemByName("Container_LevelEndStripe") as §5" §).x + this.§"[§;
            (§#t§.getItemByName("Container_LevelEndStripe") as §5" §).y = (§#t§.getItemByName("Container_LevelEndStripe") as §5" §).y + this.§`! §;
         }
         else
         {
            this.§"[§ = 0;
            this.§`! § = 0;
         }
         this.§8!"§ -= param1 / 10;
      }
      
      private function §?!l§(param1:TimerEvent) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc4_:Number = this.§<!2§.§2!V§.getLevelForId(this.§<!2§.§2!V§.currentLevel).scoreGold;
         var _loc5_:Number = this.§<!2§.§2!V§.getLevelForId(this.§<!2§.§2!V§.currentLevel).scoreSilver;
         if((§#t§.getItemByName("MovieClip_StarLeft") as §+!F§).mClip.currentLabel == "UnLit")
         {
            §1!i§.§+!Y§("Hiscore_Count",§3b§,999,-1,100);
            §1!i§.§+!Y§("Hiscore_Star_Splash1",§-!§);
            this.§@!w§.delay = §7d§;
            this.§#7§.§4!Y§(§4!l§.controller.getScore(10));
            _loc6_ = this.§#7§.getValue() / _loc4_ * 2;
            if(_loc4_ <= 0)
            {
               _loc6_ = 1;
            }
            this.§"#§ = §`!F§.§=J§.§-r§(this,{"mNewScoreCounter":this.§#7§.getValue()},{"mNewScoreCounter":0},_loc6_);
            this.§"#§.onComplete = this.§[!k§;
            this.§"#§.play();
            (§#t§.getItemByName("MovieClip_StarLeft") as §+!F§).mClip.gotoAndStop("Lit");
            _loc2_ = (§#t§.getItemByName("MovieClip_StarLeft") as §+!F§).x + (§#t§.getItemByName("Container_LevelEndStripe") as §5" §).x;
            _loc3_ = (§#t§.getItemByName("MovieClip_StarLeft") as §+!F§).y + (§#t§.getItemByName("Container_LevelEndStripe") as §5" §).y;
            this.§2!k§ = new §3!0§(§&N§.§,!o§,§&N§.§3!O§,_loc2_,_loc3_,§3!0§.§ c§);
            §#t§.mClip.addChild(this.§2!k§);
            this.§#<§.push(this.§2!k§);
         }
         else if(this.§#7§.getValue() >= _loc5_ && (§#t§.getItemByName("MovieClip_StarCenter") as §+!F§).mClip.currentLabel == "UnLit")
         {
            §1!i§.§+!Y§("Hiscore_Star_Splash2",§-!§);
            (§#t§.getItemByName("MovieClip_StarCenter") as §+!F§).mClip.gotoAndStop("Lit");
            _loc2_ = (§#t§.getItemByName("MovieClip_StarCenter") as §+!F§).x + (§#t§.getItemByName("Container_LevelEndStripe") as §5" §).x;
            _loc3_ = (§#t§.getItemByName("MovieClip_StarCenter") as §+!F§).y + (§#t§.getItemByName("Container_LevelEndStripe") as §5" §).y;
            this.§2!k§ = new §3!0§(§&N§.§,!o§,§&N§.§3!O§,_loc2_,_loc3_,§3!0§.§]" §);
            §#t§.mClip.addChild(this.§2!k§);
            this.§#<§.push(this.§2!k§);
         }
         else if(this.§#7§.getValue() >= _loc4_ && (§#t§.getItemByName("MovieClip_StarRight") as §+!F§).mClip.currentLabel == "UnLit")
         {
            this.§'"&§ = true;
            §1!i§.§+!Y§("Hiscore_Star_Splash3",§-!§);
            (§#t§.getItemByName("MovieClip_StarRight") as §+!F§).mClip.gotoAndStop("Lit");
            _loc2_ = (§#t§.getItemByName("MovieClip_StarRight") as §+!F§).x + (§#t§.getItemByName("Container_LevelEndStripe") as §5" §).x;
            _loc3_ = (§#t§.getItemByName("MovieClip_StarRight") as §+!F§).y + (§#t§.getItemByName("Container_LevelEndStripe") as §5" §).y;
            this.§2!k§ = new §3!0§(§&N§.§,!o§,§&N§.§3!O§,_loc2_,_loc3_,§3!0§.§!u§);
            §#t§.mClip.addChild(this.§2!k§);
            this.§#<§.push(this.§2!k§);
         }
         else if(!this.§7!0§)
         {
            this.§7!0§ = true;
         }
         else
         {
            this.§@!w§.stop();
            if(this.§8"2§ && !this.§+!2§)
            {
               (§#t§.getItemByName("MovieClip_NewHighScoreBadge") as §+!F§).setVisibility(true);
               §#t§.getItemByName("TextField_NewHighScore").setVisibility(true);
            }
            else
            {
               (§#t§.getItemByName("MovieClip_NewHighScoreBadge") as §+!F§).setVisibility(false);
               §#t§.getItemByName("TextField_NewHighScore").setVisibility(false);
            }
            this.§[J§ = §`!F§.§=J§.§-r§((§#t§.getItemByName("MovieClip_NewHighScoreBadge") as §+!F§).mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":7,
               "scaleY":7
            },0.1);
            this.§[J§.onComplete = this.§;!v§;
            this.§[J§.play();
         }
         ++this.§&w§;
      }
      
      private function §[!k§() : void
      {
         §1!i§.§=!3§(§3b§);
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:§3!0§ = null;
         §#t§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScore");
         for each(_loc2_ in this.§#<§)
         {
            _loc2_.update(param1);
         }
         if(this.§8!"§ >= 0)
         {
            this.§#!K§(param1);
         }
      }
      
      override public function dispose() : void
      {
         this.§5w§();
         this.§8!"§ = 0;
         this.mNewScoreCounter = 0;
         if(this.§"#§)
         {
            this.§"#§.stop();
            this.§"#§ = null;
         }
         if(this.§[J§)
         {
            this.§[J§.stop();
            this.§[J§ = null;
         }
         §1!i§.§=!3§(§3b§);
         this.§'!`§(§4d§.COMPONENT_STATE_ACTIVE_DEFAULT);
         §#t§.setText("0","TextField_LevelEndScore");
         this.§0I§ = false;
         super.dispose();
      }
      
      protected function §'!`§(param1:String) : void
      {
         (§#t§.getItemByName("Button_Menu") as §?v§).setComponentVisualState(param1);
         (§#t§.getItemByName("Button_Replay") as §?v§).setComponentVisualState(param1);
         (§#t§.getItemByName("Button_NextLevel") as §?v§).setComponentVisualState(param1);
      }
      
      private function §5w§() : void
      {
         var splash:§3!0§ = null;
         if(this.§@!w§)
         {
            this.§@!w§.stop();
            try
            {
               this.§@!w§.removeEventListener(TimerEvent.TIMER,this.§?!l§);
            }
            catch(e:Error)
            {
            }
         }
         for each(splash in this.§#<§)
         {
            if(§#t§.mClip.contains(splash))
            {
               §#t§.mClip.removeChild(splash);
            }
            splash.§3!<§();
         }
         this.§#<§ = new Vector.<§3!0§>();
         this.§%" §();
      }
      
      protected function §%" §() : void
      {
         (§#t§.getItemByName("TextField_BestScore") as native).setVisibility(false);
         (§#t§.getItemByName("MovieClip_BestScoreStars") as §+!F§).setVisibility(false);
         (§#t§.getItemByName("TextField_NewHighScore") as native).setVisibility(false);
      }
      
      protected function §[!_§() : void
      {
         this.§<!2§.§6t§();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§&!"§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
            case "CUTSCENE":
               §=!c§ = false;
               close();
               this.§[!_§();
               break;
            case "REPLAY":
               §=!c§ = false;
               close();
               this.§<!2§.§-"'§(this.§<!2§.§?O§());
               break;
            case "MENU":
               §1!i§.§ !S§();
               §=!c§ = false;
               close();
               this.§<!2§.§-"'§(this.§<!2§.§9W§());
         }
      }
      
      override public function updateLocalization() : void
      {
         super.updateLocalization();
         this.updateTextFields();
      }
      
      override public function updateTextFields() : void
      {
         §[!Q§.§=J§.updateTextFields(§#t§,"StateEnd");
      }
      
      public function get isOpen() : Boolean
      {
         return this.§0I§;
      }
   }
}
