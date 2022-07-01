package §2!,§
{
   import §!R§.§#!L§;
   import §!R§.§-!T§;
   import §#!]§.§#!N§;
   import §+T§.§'o§;
   import §1!s§.§8!f§;
   import §1!s§.§finally§;
   import §2!s§.§0l§;
   import §2!s§.§9#§;
   import §3!0§.§`i§;
   import §4Y§.§ `§;
   import §4Y§.§%n§;
   import §4Y§.§&0§;
   import §4Y§.§7`§;
   import §8!$§.§1b§;
   import §9!!§.§2W§;
   import §;X§.§4!@§;
   import §@!0§.§%"!§;
   import §@!0§.§^!T§;
   import §`!s§.§9!i§;
   import §`!s§.§^2§;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §+0§ extends §,!#§
   {
      
      private static const §4y§:Number = 750;
      
      private static var §=!D§:Class = §;!Z§;
      
      public static const §&m§:Number = 30;
      
      protected static const §"D§:String = "ScoreLoopCountChannel";
      
      protected static const §!!Y§:String = "EndScreenEffectChannel";
       
      
      private var §3"!§:§^!T§;
      
      private var §!"'§:Number;
      
      private var §8^§:Number = 0.0;
      
      private var §>!9§:Number = 0.0;
      
      private var §'l§:Boolean = false;
      
      private var §;$§:Timer;
      
      protected var §=!x§:Array;
      
      protected var §>!h§:§'o§;
      
      protected var §6V§:Vector.<§'o§>;
      
      public var mNewScoreCounter:int;
      
      private var §`!y§:int;
      
      private var §[E§:Boolean;
      
      protected var §7f§:Boolean;
      
      private var §8!i§:§9!i§;
      
      protected var §;!g§:Boolean;
      
      private var § !x§:§^!T§;
      
      protected var §'!i§:Boolean;
      
      protected var §>Z§:int;
      
      private var §3F§:§#!N§;
      
      private var §&"1§:Boolean;
      
      public function §+0§(param1:§#!N§, param2:§0l§)
      {
         this.§=!x§ = [];
         this.§8!i§ = new §9!i§();
         §&5§ = true;
         §2L§ = false;
         §[!k§ = true;
         super(§8!f§.§+#§,§finally§.§,C§,this.§';§());
         §4!R§ = param2 as §9#§;
         this.§3F§ = param1;
         §4!@§.§=x§(§"D§,1,1);
         §4!@§.§=x§(§!!Y§,3,1);
      }
      
      protected function §';§() : XML
      {
         var _loc1_:XML = §1b§.§?!R§(§=!D§);
         return AngryBirdsCustom.§6-§(_loc1_);
      }
      
      protected function §#&§() : void
      {
         (§;"#§.getItemByName("Button_Menu") as § `§).setVisibility(true);
         (§;"#§.getItemByName("Button_Replay") as § `§).setVisibility(true);
         if(this.§3F§.§8S§.getNextLevelId())
         {
            (§;"#§.getItemByName("Button_NextLevel") as § `§).setVisibility(true);
            (§;"#§.getItemByName("Button_CutScene") as § `§).setVisibility(false);
            (§;"#§.getItemByName("Button_Menu") as § `§).x = this.§=!x§[0];
            (§;"#§.getItemByName("Button_Replay") as § `§).x = this.§=!x§[1];
            (§;"#§.getItemByName("Button_NextLevel") as § `§).x = this.§=!x§[2];
         }
         else if(this.§3F§.§8S§.isCutSceneNext())
         {
            (§;"#§.getItemByName("Button_CutScene") as § `§).setVisibility(true);
            (§;"#§.getItemByName("Button_NextLevel") as § `§).setVisibility(false);
            (§;"#§.getItemByName("Button_Menu") as § `§).x = this.§=!x§[0];
            (§;"#§.getItemByName("Button_Replay") as § `§).x = this.§=!x§[1];
            (§;"#§.getItemByName("Button_CutScene") as § `§).x = this.§=!x§[2];
         }
         else
         {
            (§;"#§.getItemByName("Button_NextLevel") as § `§).setVisibility(false);
            (§;"#§.getItemByName("Button_CutScene") as § `§).setVisibility(false);
            (§;"#§.getItemByName("Button_Menu") as § `§).x = this.§=!x§[0] + 40;
            (§;"#§.getItemByName("Button_Replay") as § `§).x = this.§=!x§[2] - 40;
         }
      }
      
      protected function §!H§() : void
      {
         this.§=!x§.push(Math.round((§;"#§.getItemByName("Button_Menu") as § `§).x));
         this.§=!x§.push(Math.round((§;"#§.getItemByName("Button_Replay") as § `§).x));
         this.§=!x§.push(Math.round((§;"#§.getItemByName("Button_NextLevel") as § `§).x));
      }
      
      override protected function init() : void
      {
         super.init();
         §&5§ = true;
         this.updateTextFields();
         this.§!H§();
         this.§6V§ = new Vector.<§'o§>();
         §`i§.§&!L§.background.§6!n§();
         §4!@§.§=x§(§"D§,1,0.8);
         this.§'!i§ = false;
         §`i§.pause();
         this.§#&§();
         this.mNewScoreCounter = 0;
         this.§[E§ = false;
         §4!@§.§`!w§("LevelCompletedTheme1");
         this.§8^§ = 0;
         this.§>!9§ = 0;
         this.§;!y§();
         this.§&"1§ = true;
         this.§+!]§();
      }
      
      private function §+!]§() : void
      {
         var _loc1_:String = (§-!2§.§7O§ as AngryBirdsCustom).§-"'§.§=!!§(§^2§.§&!;§.§]T§()).brand;
         §;"#§.getItemByName("MovieClip_Nesquik").setVisibility(_loc1_ == §2W§.§`!F§);
         §;"#§.getItemByName("MovieClip_Chocapic").setVisibility(_loc1_ == §2W§.§7!l§);
         §;"#§.getItemByName("MovieClip_KokoKrunch").setVisibility(_loc1_ == §2W§.§]!m§);
      }
      
      private function §;!y§() : void
      {
         this.§7f§ = false;
         this.§2!C§();
         this.§;$§ = new Timer(100);
         this.§`!y§ = 0;
         this.§;$§.addEventListener(TimerEvent.TIMER,this.§3`§);
         this.§;$§.start();
      }
      
      protected function § '§(param1:int, param2:int) : void
      {
         if(this.§;!g§)
         {
            param2 = param1;
            (§-!2§.§7O§ as AngryBirdsCustom).§,"5§.setScoreForLevel(this.§3F§.§8S§.currentLevel,param2);
            (§-!2§.§7O§ as AngryBirdsCustom).§,"5§.§=#§(this.§3F§.§8S§.currentLevel,param2);
            §;"#§.setText("New Highscore!","TextField_BestScore");
         }
         else
         {
            §;"#§.setText(param2.toString(),"TextField_BestScore");
            this.§>Z§ = this.§3F§.§8S§.getNumStarsForLevel(this.§3F§.§8S§.currentLevel,param2);
            switch(this.§>Z§)
            {
               case 1:
                  (§;"#§.getItemByName("MovieClip_BestScoreStars") as §7`§).§",§("OneStar");
                  break;
               case 2:
                  (§;"#§.getItemByName("MovieClip_BestScoreStars") as §7`§).§",§("TwoStar");
                  break;
               case 3:
                  (§;"#§.getItemByName("MovieClip_BestScoreStars") as §7`§).§",§("ThreeStar");
            }
         }
      }
      
      protected function §2!C§() : void
      {
         var _loc1_:int = (§-!2§.§7O§ as AngryBirdsCustom).§,"5§.getScoreForLevel(this.§3F§.§8S§.currentLevel);
         var _loc2_:int = §`i§.controller.getScore(10);
         this.§;!g§ = _loc2_ >= _loc1_;
         this.§ '§(_loc2_,_loc1_);
         var _loc3_:int = (§-!2§.§7O§ as AngryBirdsCustom).§,"5§.§-t§(this.§3F§.§8S§.currentLevel,_loc2_);
         (§;"#§.getItemByName("MovieClip_NewHighScoreBadge") as §7`§).setVisibility(false);
         (§;"#§.getItemByName("MovieClip_StarLeft") as §7`§).mClip.gotoAndStop("UnLit");
         (§;"#§.getItemByName("MovieClip_StarCenter") as §7`§).mClip.gotoAndStop("UnLit");
         (§;"#§.getItemByName("MovieClip_StarRight") as §7`§).mClip.gotoAndStop("UnLit");
      }
      
      protected function §[!N§() : void
      {
         if(this.§;!g§)
         {
            §4!@§.§`!w§("Hiscore_Badge",§!!Y§);
            (§;"#§.getItemByName("TextField_NewHighScore") as §&0§).setVisibility(true);
            (§;"#§.getItemByName("MovieClip_BestScoreStars") as §7`§).setVisibility(false);
            this.§9!e§();
         }
         else
         {
            (§;"#§.getItemByName("TextField_BestScore") as §&0§).setVisibility(true);
            (§;"#§.getItemByName("MovieClip_BestScoreStars") as §7`§).setVisibility(true);
            (§;"#§.getItemByName("MovieClip_BestScoreText") as §&0§).setVisibility(true);
         }
      }
      
      protected function §9!e§() : void
      {
         this.§8^§ = 0;
         this.§>!9§ = 0;
         this.§!"'§ = §&m§;
      }
      
      private function §<!"§(param1:Number) : void
      {
         (§;"#§.getItemByName("Container_LevelEndStripe") as §%n§).x = (§;"#§.getItemByName("Container_LevelEndStripe") as §%n§).x - this.§8^§;
         (§;"#§.getItemByName("Container_LevelEndStripe") as §%n§).y = (§;"#§.getItemByName("Container_LevelEndStripe") as §%n§).y - this.§>!9§;
         if(this.§!"'§ > 0)
         {
            this.§8^§ = (Math.random() - 0.5) * (this.§!"'§ / §&m§) * 20;
            this.§>!9§ = (Math.random() - 0.5) * (this.§!"'§ / §&m§) * 20;
            (§;"#§.getItemByName("Container_LevelEndStripe") as §%n§).x = (§;"#§.getItemByName("Container_LevelEndStripe") as §%n§).x + this.§8^§;
            (§;"#§.getItemByName("Container_LevelEndStripe") as §%n§).y = (§;"#§.getItemByName("Container_LevelEndStripe") as §%n§).y + this.§>!9§;
         }
         else
         {
            this.§8^§ = 0;
            this.§>!9§ = 0;
         }
         this.§!"'§ -= param1 / 10;
      }
      
      private function §3`§(param1:TimerEvent) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc4_:Number = this.§3F§.§8S§.getLevelForId(this.§3F§.§8S§.currentLevel).scoreGold;
         var _loc5_:Number = this.§3F§.§8S§.getLevelForId(this.§3F§.§8S§.currentLevel).scoreSilver;
         if((§;"#§.getItemByName("MovieClip_StarLeft") as §7`§).mClip.currentLabel == "UnLit")
         {
            §4!@§.§`!w§("Hiscore_Count",§"D§,999,-1,100);
            §4!@§.§`!w§("Hiscore_Star_Splash1",§!!Y§);
            this.§;$§.delay = §4y§;
            this.§8!i§.§7v§(§`i§.controller.getScore(10));
            _loc6_ = this.§8!i§.getValue() / _loc4_ * 2;
            if(_loc4_ <= 0)
            {
               _loc6_ = 1;
            }
            this.§ !x§ = §%"!§.§&!;§.§"!]§(this,{"mNewScoreCounter":this.§8!i§.getValue()},{"mNewScoreCounter":0},_loc6_);
            this.§ !x§.onComplete = this.§,6§;
            this.§ !x§.play();
            (§;"#§.getItemByName("MovieClip_StarLeft") as §7`§).mClip.gotoAndStop("Lit");
            _loc2_ = (§;"#§.getItemByName("MovieClip_StarLeft") as §7`§).x + (§;"#§.getItemByName("Container_LevelEndStripe") as §%n§).x;
            _loc3_ = (§;"#§.getItemByName("MovieClip_StarLeft") as §7`§).y + (§;"#§.getItemByName("Container_LevelEndStripe") as §%n§).y;
            this.§>!h§ = new §'o§(§-!2§.§2d§,§-!2§.§^s§,_loc2_,_loc3_,§'o§.§4!3§);
            §;"#§.mClip.addChild(this.§>!h§);
            this.§6V§.push(this.§>!h§);
         }
         else if(this.§8!i§.getValue() >= _loc5_ && (§;"#§.getItemByName("MovieClip_StarCenter") as §7`§).mClip.currentLabel == "UnLit")
         {
            §4!@§.§`!w§("Hiscore_Star_Splash2",§!!Y§);
            (§;"#§.getItemByName("MovieClip_StarCenter") as §7`§).mClip.gotoAndStop("Lit");
            _loc2_ = (§;"#§.getItemByName("MovieClip_StarCenter") as §7`§).x + (§;"#§.getItemByName("Container_LevelEndStripe") as §%n§).x;
            _loc3_ = (§;"#§.getItemByName("MovieClip_StarCenter") as §7`§).y + (§;"#§.getItemByName("Container_LevelEndStripe") as §%n§).y;
            this.§>!h§ = new §'o§(§-!2§.§2d§,§-!2§.§^s§,_loc2_,_loc3_,§'o§.§!"1§);
            §;"#§.mClip.addChild(this.§>!h§);
            this.§6V§.push(this.§>!h§);
         }
         else if(this.§8!i§.getValue() >= _loc4_ && (§;"#§.getItemByName("MovieClip_StarRight") as §7`§).mClip.currentLabel == "UnLit")
         {
            this.§'!i§ = true;
            §4!@§.§`!w§("Hiscore_Star_Splash3",§!!Y§);
            (§;"#§.getItemByName("MovieClip_StarRight") as §7`§).mClip.gotoAndStop("Lit");
            _loc2_ = (§;"#§.getItemByName("MovieClip_StarRight") as §7`§).x + (§;"#§.getItemByName("Container_LevelEndStripe") as §%n§).x;
            _loc3_ = (§;"#§.getItemByName("MovieClip_StarRight") as §7`§).y + (§;"#§.getItemByName("Container_LevelEndStripe") as §%n§).y;
            this.§>!h§ = new §'o§(§-!2§.§2d§,§-!2§.§^s§,_loc2_,_loc3_,§'o§.§ "8§);
            §;"#§.mClip.addChild(this.§>!h§);
            this.§6V§.push(this.§>!h§);
         }
         else if(!this.§[E§)
         {
            this.§[E§ = true;
         }
         else
         {
            this.§;$§.stop();
            if(this.§;!g§ && !this.§7f§)
            {
               (§;"#§.getItemByName("MovieClip_NewHighScoreBadge") as §7`§).setVisibility(true);
               §;"#§.getItemByName("TextField_NewHighScore").setVisibility(true);
            }
            else
            {
               (§;"#§.getItemByName("MovieClip_NewHighScoreBadge") as §7`§).setVisibility(false);
               §;"#§.getItemByName("TextField_NewHighScore").setVisibility(false);
            }
            this.§3"!§ = §%"!§.§&!;§.§"!]§((§;"#§.getItemByName("MovieClip_NewHighScoreBadge") as §7`§).mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":7,
               "scaleY":7
            },0.1);
            this.§3"!§.onComplete = this.§[!N§;
            this.§3"!§.play();
         }
         ++this.§`!y§;
      }
      
      private function §,6§() : void
      {
         §4!@§.§`[§(§"D§);
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:§'o§ = null;
         §;"#§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScore");
         for each(_loc2_ in this.§6V§)
         {
            _loc2_.update(param1);
         }
         if(this.§!"'§ >= 0)
         {
            this.§<!"§(param1);
         }
      }
      
      override public function dispose() : void
      {
         this.§80§();
         this.§!"'§ = 0;
         this.mNewScoreCounter = 0;
         if(this.§ !x§)
         {
            this.§ !x§.stop();
            this.§ !x§ = null;
         }
         if(this.§3"!§)
         {
            this.§3"!§.stop();
            this.§3"!§ = null;
         }
         §4!@§.§`[§(§"D§);
         this.§#B§(§-!T§.COMPONENT_STATE_ACTIVE_DEFAULT);
         §;"#§.setText("0","TextField_LevelEndScore");
         this.§&"1§ = false;
         super.dispose();
      }
      
      protected function §#B§(param1:String) : void
      {
         (§;"#§.getItemByName("Button_Menu") as § `§).setComponentVisualState(param1);
         (§;"#§.getItemByName("Button_Replay") as § `§).setComponentVisualState(param1);
         (§;"#§.getItemByName("Button_NextLevel") as § `§).setComponentVisualState(param1);
      }
      
      private function §80§() : void
      {
         var splash:§'o§ = null;
         if(this.§;$§)
         {
            this.§;$§.stop();
            try
            {
               this.§;$§.removeEventListener(TimerEvent.TIMER,this.§3`§);
            }
            catch(e:Error)
            {
            }
         }
         for each(splash in this.§6V§)
         {
            if(§;"#§.mClip.contains(splash))
            {
               §;"#§.mClip.removeChild(splash);
            }
            splash.§6!h§();
         }
         this.§6V§ = new Vector.<§'o§>();
         this.§8_§();
      }
      
      protected function §8_§() : void
      {
         (§;"#§.getItemByName("TextField_BestScore") as §&0§).setVisibility(false);
         (§;"#§.getItemByName("MovieClip_BestScoreStars") as §7`§).setVisibility(false);
         (§;"#§.getItemByName("TextField_NewHighScore") as §&0§).setVisibility(false);
      }
      
      protected function §?"1§() : void
      {
         this.§3F§.§9`§();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§#!L§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
            case "CUTSCENE":
               §&5§ = false;
               close();
               this.§?"1§();
               break;
            case "REPLAY":
               §&5§ = false;
               close();
               this.§3F§.§]?§(this.§3F§.§%4§());
               break;
            case "MENU":
               §4!@§.§ true§();
               §&5§ = false;
               close();
               this.§3F§.§]?§(this.§3F§.§8!8§());
         }
      }
      
      override public function updateLocalization() : void
      {
         super.updateLocalization();
         this.updateTextFields();
      }
      
      override public function updateTextFields() : void
      {
         §^2§.§&!;§.updateTextFields(§;"#§,"StateEnd");
      }
      
      public function get isOpen() : Boolean
      {
         return this.§&"1§;
      }
   }
}
