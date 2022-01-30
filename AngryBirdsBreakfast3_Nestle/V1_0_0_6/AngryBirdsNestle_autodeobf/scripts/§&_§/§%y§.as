package §&_§
{
   import §%z§.§6"$§;
   import §%z§.§?8§;
   import §&<§.§@j§;
   import §&<§.§^!#§;
   import §+!5§.§#!>§;
   import §0!$§.§2!K§;
   import §2W§.§+!d§;
   import §2W§.§2E§;
   import §4!§.§-!q§;
   import §5u§.§+!]§;
   import §5u§.§^!=§;
   import §6!5§.§84§;
   import §6t§.§3`§;
   import §6t§.§<!'§;
   import §@!6§.§3!5§;
   import §[!F§.§1c§;
   import §[!F§.§3j§;
   import §[!F§.§>""§;
   import §[!F§.§^!g§;
   import com.angrybirds.§6!E§;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §%y§ extends §-"!§
   {
      
      private static const §8U§:Number = 750;
      
      private static var §'_§:Class = §'g§;
      
      public static const §]!O§:Number = 30;
      
      protected static const §%H§:String = "ScoreLoopCountChannel";
      
      protected static const §#J§:String = "EndScreenEffectChannel";
       
      
      private var §4!w§:§<!'§;
      
      private var §;!§:Number;
      
      private var §2p§:Number = 0.0;
      
      private var §,!9§:Number = 0.0;
      
      private var § set§:Boolean = false;
      
      private var §^d§:Timer;
      
      protected var §&"$§:Array;
      
      protected var §!!§:§#!>§;
      
      protected var §["0§:Vector.<§#!>§>;
      
      public var mNewScoreCounter:int;
      
      private var §;!_§:int;
      
      private var §?!$§:Boolean;
      
      protected var §;!H§:Boolean;
      
      private var §=!E§:§2E§;
      
      protected var §6h§:Boolean;
      
      private var §6!W§:§<!'§;
      
      protected var §^3§:Boolean;
      
      protected var §'<§:int;
      
      private var §@"'§:§84§;
      
      private var §<[§:Boolean;
      
      public function §%y§(param1:§84§, param2:§?8§)
      {
         this.§&"$§ = [];
         this.§=!E§ = new §2E§();
         §^c§ = true;
         §'[§ = false;
         §null§ = true;
         super(§^!=§.§&i§,§+!]§.§4Y§,this.§;!<§());
         §'K§ = param2 as §6"$§;
         this.§@"'§ = param1;
         §3!5§.§`Z§(§%H§,1,1);
         §3!5§.§`Z§(§#J§,3,1);
      }
      
      protected function §;!<§() : XML
      {
         var _loc1_:XML = §2!K§.§5i§(§'_§);
         return AngryBirdsCustom.§>@§(_loc1_);
      }
      
      protected function §[!=§() : void
      {
         (§[!<§.getItemByName("Button_Menu") as §^!g§).setVisibility(true);
         (§[!<§.getItemByName("Button_Replay") as §^!g§).setVisibility(true);
         if(this.§@"'§.§+!t§.getNextLevelId())
         {
            (§[!<§.getItemByName("Button_NextLevel") as §^!g§).setVisibility(true);
            (§[!<§.getItemByName("Button_CutScene") as §^!g§).setVisibility(false);
            (§[!<§.getItemByName("Button_Menu") as §^!g§).x = this.§&"$§[0];
            (§[!<§.getItemByName("Button_Replay") as §^!g§).x = this.§&"$§[1];
            (§[!<§.getItemByName("Button_NextLevel") as §^!g§).x = this.§&"$§[2];
         }
         else if(this.§@"'§.§+!t§.isCutSceneNext())
         {
            (§[!<§.getItemByName("Button_CutScene") as §^!g§).setVisibility(true);
            (§[!<§.getItemByName("Button_NextLevel") as §^!g§).setVisibility(false);
            (§[!<§.getItemByName("Button_Menu") as §^!g§).x = this.§&"$§[0];
            (§[!<§.getItemByName("Button_Replay") as §^!g§).x = this.§&"$§[1];
            (§[!<§.getItemByName("Button_CutScene") as §^!g§).x = this.§&"$§[2];
         }
         else
         {
            (§[!<§.getItemByName("Button_NextLevel") as §^!g§).setVisibility(false);
            (§[!<§.getItemByName("Button_CutScene") as §^!g§).setVisibility(false);
            (§[!<§.getItemByName("Button_Menu") as §^!g§).x = this.§&"$§[0] + 40;
            (§[!<§.getItemByName("Button_Replay") as §^!g§).x = this.§&"$§[2] - 40;
         }
      }
      
      protected function §>!u§() : void
      {
         this.§&"$§.push(Math.round((§[!<§.getItemByName("Button_Menu") as §^!g§).x));
         this.§&"$§.push(Math.round((§[!<§.getItemByName("Button_Replay") as §^!g§).x));
         this.§&"$§.push(Math.round((§[!<§.getItemByName("Button_NextLevel") as §^!g§).x));
      }
      
      override protected function init() : void
      {
         super.init();
         §^c§ = true;
         this.updateTextFields();
         this.§>!u§();
         this.§["0§ = new Vector.<§#!>§>();
         §6!E§.§7I§.background.§9!O§();
         §3!5§.§`Z§(§%H§,1,0.8);
         this.§^3§ = false;
         §6!E§.pause();
         this.§[!=§();
         this.mNewScoreCounter = 0;
         this.§?!$§ = false;
         §3!5§.§<!9§("LevelCompletedTheme1");
         this.§2p§ = 0;
         this.§,!9§ = 0;
         this.§+O§();
         this.§<[§ = true;
         this.§>d§();
      }
      
      private function §>d§() : void
      {
         var _loc1_:String = (§-!I§.§[f§ as AngryBirdsCustom).§1!!§.§0!4§(§+!d§.§<"5§.§'!G§()).brand;
         §[!<§.getItemByName("MovieClip_Nesquik").setVisibility(_loc1_ == §-!q§.§@^§);
         §[!<§.getItemByName("MovieClip_Chocapic").setVisibility(_loc1_ == §-!q§.§+"-§);
         §[!<§.getItemByName("MovieClip_KokoKrunch").setVisibility(_loc1_ == §-!q§.§?s§);
      }
      
      private function §+O§() : void
      {
         this.§;!H§ = false;
         this.§9#§();
         this.§^d§ = new Timer(100);
         this.§;!_§ = 0;
         this.§^d§.addEventListener(TimerEvent.TIMER,this.§-6§);
         this.§^d§.start();
      }
      
      protected function §[!>§(param1:int, param2:int) : void
      {
         if(this.§6h§)
         {
            param2 = param1;
            (§-!I§.§[f§ as AngryBirdsCustom).§=! §.setScoreForLevel(this.§@"'§.§+!t§.currentLevel,param2);
            (§-!I§.§[f§ as AngryBirdsCustom).§=! §.§=!C§(this.§@"'§.§+!t§.currentLevel,param2);
            §[!<§.setText("New Highscore!","TextField_BestScore");
         }
         else
         {
            §[!<§.setText(param2.toString(),"TextField_BestScore");
            this.§'<§ = this.§@"'§.§+!t§.getNumStarsForLevel(this.§@"'§.§+!t§.currentLevel,param2);
            switch(this.§'<§)
            {
               case 1:
                  (§[!<§.getItemByName("MovieClip_BestScoreStars") as §>""§).§7?§("OneStar");
                  break;
               case 2:
                  (§[!<§.getItemByName("MovieClip_BestScoreStars") as §>""§).§7?§("TwoStar");
                  break;
               case 3:
                  (§[!<§.getItemByName("MovieClip_BestScoreStars") as §>""§).§7?§("ThreeStar");
            }
         }
      }
      
      protected function §9#§() : void
      {
         var _loc1_:int = (§-!I§.§[f§ as AngryBirdsCustom).§=! §.getScoreForLevel(this.§@"'§.§+!t§.currentLevel);
         var _loc2_:int = §6!E§.controller.getScore(10);
         this.§6h§ = _loc2_ >= _loc1_;
         this.§[!>§(_loc2_,_loc1_);
         var _loc3_:int = (§-!I§.§[f§ as AngryBirdsCustom).§=! §.§`!E§(this.§@"'§.§+!t§.currentLevel,_loc2_);
         (§[!<§.getItemByName("MovieClip_NewHighScoreBadge") as §>""§).setVisibility(false);
         (§[!<§.getItemByName("MovieClip_StarLeft") as §>""§).mClip.gotoAndStop("UnLit");
         (§[!<§.getItemByName("MovieClip_StarCenter") as §>""§).mClip.gotoAndStop("UnLit");
         (§[!<§.getItemByName("MovieClip_StarRight") as §>""§).mClip.gotoAndStop("UnLit");
      }
      
      protected function §3!q§() : void
      {
         if(this.§6h§)
         {
            §3!5§.§<!9§("Hiscore_Badge",§#J§);
            (§[!<§.getItemByName("TextField_NewHighScore") as §1c§).setVisibility(true);
            (§[!<§.getItemByName("MovieClip_BestScoreStars") as §>""§).setVisibility(false);
            this.§#A§();
         }
         else
         {
            (§[!<§.getItemByName("TextField_BestScore") as §1c§).setVisibility(true);
            (§[!<§.getItemByName("MovieClip_BestScoreStars") as §>""§).setVisibility(true);
            (§[!<§.getItemByName("MovieClip_BestScoreText") as §1c§).setVisibility(true);
         }
      }
      
      protected function §#A§() : void
      {
         this.§2p§ = 0;
         this.§,!9§ = 0;
         this.§;!§ = §]!O§;
      }
      
      private function §[!U§(param1:Number) : void
      {
         (§[!<§.getItemByName("Container_LevelEndStripe") as §3j§).x = (§[!<§.getItemByName("Container_LevelEndStripe") as §3j§).x - this.§2p§;
         (§[!<§.getItemByName("Container_LevelEndStripe") as §3j§).y = (§[!<§.getItemByName("Container_LevelEndStripe") as §3j§).y - this.§,!9§;
         if(this.§;!§ > 0)
         {
            this.§2p§ = (Math.random() - 0.5) * (this.§;!§ / §]!O§) * 20;
            this.§,!9§ = (Math.random() - 0.5) * (this.§;!§ / §]!O§) * 20;
            (§[!<§.getItemByName("Container_LevelEndStripe") as §3j§).x = (§[!<§.getItemByName("Container_LevelEndStripe") as §3j§).x + this.§2p§;
            (§[!<§.getItemByName("Container_LevelEndStripe") as §3j§).y = (§[!<§.getItemByName("Container_LevelEndStripe") as §3j§).y + this.§,!9§;
         }
         else
         {
            this.§2p§ = 0;
            this.§,!9§ = 0;
         }
         this.§;!§ -= param1 / 10;
      }
      
      private function §-6§(param1:TimerEvent) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc4_:Number = this.§@"'§.§+!t§.getLevelForId(this.§@"'§.§+!t§.currentLevel).scoreGold;
         var _loc5_:Number = this.§@"'§.§+!t§.getLevelForId(this.§@"'§.§+!t§.currentLevel).scoreSilver;
         if((§[!<§.getItemByName("MovieClip_StarLeft") as §>""§).mClip.currentLabel == "UnLit")
         {
            §3!5§.§<!9§("Hiscore_Count",§%H§,999,-1,100);
            §3!5§.§<!9§("Hiscore_Star_Splash1",§#J§);
            this.§^d§.delay = §8U§;
            this.§=!E§.§=-§(§6!E§.controller.getScore(10));
            _loc6_ = this.§=!E§.getValue() / _loc4_ * 2;
            if(_loc4_ <= 0)
            {
               _loc6_ = 1;
            }
            this.§6!W§ = §3`§.§<"5§.§^g§(this,{"mNewScoreCounter":this.§=!E§.getValue()},{"mNewScoreCounter":0},_loc6_);
            this.§6!W§.onComplete = this.§]e§;
            this.§6!W§.play();
            (§[!<§.getItemByName("MovieClip_StarLeft") as §>""§).mClip.gotoAndStop("Lit");
            _loc2_ = (§[!<§.getItemByName("MovieClip_StarLeft") as §>""§).x + (§[!<§.getItemByName("Container_LevelEndStripe") as §3j§).x;
            _loc3_ = (§[!<§.getItemByName("MovieClip_StarLeft") as §>""§).y + (§[!<§.getItemByName("Container_LevelEndStripe") as §3j§).y;
            this.§!!§ = new §#!>§(§-!I§.§[M§,§-!I§.§&!P§,_loc2_,_loc3_,§#!>§.§9_§);
            §[!<§.mClip.addChild(this.§!!§);
            this.§["0§.push(this.§!!§);
         }
         else if(this.§=!E§.getValue() >= _loc5_ && (§[!<§.getItemByName("MovieClip_StarCenter") as §>""§).mClip.currentLabel == "UnLit")
         {
            §3!5§.§<!9§("Hiscore_Star_Splash2",§#J§);
            (§[!<§.getItemByName("MovieClip_StarCenter") as §>""§).mClip.gotoAndStop("Lit");
            _loc2_ = (§[!<§.getItemByName("MovieClip_StarCenter") as §>""§).x + (§[!<§.getItemByName("Container_LevelEndStripe") as §3j§).x;
            _loc3_ = (§[!<§.getItemByName("MovieClip_StarCenter") as §>""§).y + (§[!<§.getItemByName("Container_LevelEndStripe") as §3j§).y;
            this.§!!§ = new §#!>§(§-!I§.§[M§,§-!I§.§&!P§,_loc2_,_loc3_,§#!>§.§'!y§);
            §[!<§.mClip.addChild(this.§!!§);
            this.§["0§.push(this.§!!§);
         }
         else if(this.§=!E§.getValue() >= _loc4_ && (§[!<§.getItemByName("MovieClip_StarRight") as §>""§).mClip.currentLabel == "UnLit")
         {
            this.§^3§ = true;
            §3!5§.§<!9§("Hiscore_Star_Splash3",§#J§);
            (§[!<§.getItemByName("MovieClip_StarRight") as §>""§).mClip.gotoAndStop("Lit");
            _loc2_ = (§[!<§.getItemByName("MovieClip_StarRight") as §>""§).x + (§[!<§.getItemByName("Container_LevelEndStripe") as §3j§).x;
            _loc3_ = (§[!<§.getItemByName("MovieClip_StarRight") as §>""§).y + (§[!<§.getItemByName("Container_LevelEndStripe") as §3j§).y;
            this.§!!§ = new §#!>§(§-!I§.§[M§,§-!I§.§&!P§,_loc2_,_loc3_,§#!>§.§%!6§);
            §[!<§.mClip.addChild(this.§!!§);
            this.§["0§.push(this.§!!§);
         }
         else if(!this.§?!$§)
         {
            this.§?!$§ = true;
         }
         else
         {
            this.§^d§.stop();
            if(this.§6h§ && !this.§;!H§)
            {
               (§[!<§.getItemByName("MovieClip_NewHighScoreBadge") as §>""§).setVisibility(true);
               §[!<§.getItemByName("TextField_NewHighScore").setVisibility(true);
            }
            else
            {
               (§[!<§.getItemByName("MovieClip_NewHighScoreBadge") as §>""§).setVisibility(false);
               §[!<§.getItemByName("TextField_NewHighScore").setVisibility(false);
            }
            this.§4!w§ = §3`§.§<"5§.§^g§((§[!<§.getItemByName("MovieClip_NewHighScoreBadge") as §>""§).mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":7,
               "scaleY":7
            },0.1);
            this.§4!w§.onComplete = this.§3!q§;
            this.§4!w§.play();
         }
         ++this.§;!_§;
      }
      
      private function §]e§() : void
      {
         §3!5§.§55§(§%H§);
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:§#!>§ = null;
         §[!<§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScore");
         for each(_loc2_ in this.§["0§)
         {
            _loc2_.update(param1);
         }
         if(this.§;!§ >= 0)
         {
            this.§[!U§(param1);
         }
      }
      
      override public function dispose() : void
      {
         this.§-!@§();
         this.§;!§ = 0;
         this.mNewScoreCounter = 0;
         if(this.§6!W§)
         {
            this.§6!W§.stop();
            this.§6!W§ = null;
         }
         if(this.§4!w§)
         {
            this.§4!w§.stop();
            this.§4!w§ = null;
         }
         §3!5§.§55§(§%H§);
         this.§45§(§@j§.COMPONENT_STATE_ACTIVE_DEFAULT);
         §[!<§.setText("0","TextField_LevelEndScore");
         this.§<[§ = false;
         super.dispose();
      }
      
      protected function §45§(param1:String) : void
      {
         (§[!<§.getItemByName("Button_Menu") as §^!g§).setComponentVisualState(param1);
         (§[!<§.getItemByName("Button_Replay") as §^!g§).setComponentVisualState(param1);
         (§[!<§.getItemByName("Button_NextLevel") as §^!g§).setComponentVisualState(param1);
      }
      
      private function §-!@§() : void
      {
         var splash:§#!>§ = null;
         if(this.§^d§)
         {
            this.§^d§.stop();
            try
            {
               this.§^d§.removeEventListener(TimerEvent.TIMER,this.§-6§);
            }
            catch(e:Error)
            {
            }
         }
         for each(splash in this.§["0§)
         {
            if(§[!<§.mClip.contains(splash))
            {
               §[!<§.mClip.removeChild(splash);
            }
            splash.§[!R§();
         }
         this.§["0§ = new Vector.<§#!>§>();
         this.§+!p§();
      }
      
      protected function §+!p§() : void
      {
         (§[!<§.getItemByName("TextField_BestScore") as §1c§).setVisibility(false);
         (§[!<§.getItemByName("MovieClip_BestScoreStars") as §>""§).setVisibility(false);
         (§[!<§.getItemByName("TextField_NewHighScore") as §1c§).setVisibility(false);
      }
      
      protected function § '§() : void
      {
         this.§@"'§.§8!w§();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§^!#§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
            case "CUTSCENE":
               §^c§ = false;
               close();
               this.§ '§();
               break;
            case "REPLAY":
               §^c§ = false;
               close();
               this.§@"'§.§2J§(this.§@"'§.§0O§());
               break;
            case "MENU":
               §3!5§.§,!8§();
               §^c§ = false;
               close();
               this.§@"'§.§2J§(this.§@"'§.§"!R§());
         }
      }
      
      override public function updateLocalization() : void
      {
         super.updateLocalization();
         this.updateTextFields();
      }
      
      override public function updateTextFields() : void
      {
         §+!d§.§<"5§.updateTextFields(§[!<§,"StateEnd");
      }
      
      public function get isOpen() : Boolean
      {
         return this.§<[§;
      }
   }
}
