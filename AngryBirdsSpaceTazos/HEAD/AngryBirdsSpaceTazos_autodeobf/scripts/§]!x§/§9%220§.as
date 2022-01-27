package §]!x§
{
   import §#!O§.§"!t§;
   import §#!O§.§,4§;
   import §-!r§.§'!h§;
   import §-!r§.§>§;
   import §1!k§.§[_§;
   import §3!S§.§<5§;
   import §3>§.§?_§;
   import §3>§.§[8§;
   import §4u§.§!H§;
   import §4u§.§1!C§;
   import §7!6§.§@Y§;
   import §7!6§.§^l§;
   import §9%§.§2!z§;
   import §="<§.§#`§;
   import §="<§.§'!j§;
   import §="<§.§,"$§;
   import §="<§.§87§;
   import §>"2§.§8k§;
   import §`!w§.§?!U§;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §9"0§ extends §5!O§
   {
      
      private static const §'!f§:Number = 750;
      
      private static var §3?§:Class = §+c§;
      
      public static const §="#§:Number = 30;
      
      protected static const §5a§:String = "ScoreLoopCountChannel";
      
      protected static const §0!1§:String = "EndScreenEffectChannel";
       
      
      private var §^L§:§,4§;
      
      private var §-!`§:Number;
      
      private var §<!&§:Number = 0.0;
      
      private var §""E§:Number = 0.0;
      
      private var §=!C§:Boolean = false;
      
      private var §^!d§:Timer;
      
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
      
      private var §#"$§:§2!z§;
      
      private var §,8§:Boolean;
      
      public function §9"0§(param1:§2!z§, param2:§[8§)
      {
         this.§5$§ = [];
         this.§0I§ = new §1!C§();
         §<"5§ = true;
         §8!X§ = false;
         super(§>§.§@t§,§'!h§.§%H§,§?!U§.§3!c§(§3?§));
         §!d§ = param2 as §?_§;
         this.§#"$§ = param1;
      }
      
      protected function §]W§() : void
      {
         (§3!a§.getItemByName("Button_Menu") as §87§).setVisibility(true);
         (§3!a§.getItemByName("Button_Replay") as §87§).setVisibility(true);
         if(this.§#"$§.§,"=§.getNextLevelId())
         {
            (§3!a§.getItemByName("Button_NextLevel") as §87§).setVisibility(true);
            (§3!a§.getItemByName("Button_Menu") as §87§).x = this.§5$§[0];
            (§3!a§.getItemByName("Button_Replay") as §87§).x = this.§5$§[1];
            (§3!a§.getItemByName("Button_NextLevel") as §87§).x = this.§5$§[2];
         }
         else
         {
            (§3!a§.getItemByName("Button_NextLevel") as §87§).setVisibility(false);
            (§3!a§.getItemByName("Button_Menu") as §87§).x = this.§5$§[0] + 40;
            (§3!a§.getItemByName("Button_Replay") as §87§).x = this.§5$§[2] - 40;
         }
      }
      
      protected function §#6§() : void
      {
         this.§5$§.push(Math.round((§3!a§.getItemByName("Button_Menu") as §87§).x));
         this.§5$§.push(Math.round((§3!a§.getItemByName("Button_Replay") as §87§).x));
         this.§5$§.push(Math.round((§3!a§.getItemByName("Button_NextLevel") as §87§).x));
      }
      
      override protected function init() : void
      {
         super.init();
         §<"5§ = true;
         this.updateTextFields();
         this.§#6§();
         this.§2<§ = new Vector.<§[_§>();
         §8k§.§;!]§.background.stopAmbientSound();
         §<5§.§@6§(§5a§,1,0.8);
         this.§,B§ = false;
         §8k§.pause();
         this.§]W§();
         this.mNewScoreCounter = 0;
         this.§^;§ = false;
         this.§<!&§ = 0;
         this.§""E§ = 0;
         this.§3w§();
         this.§,8§ = true;
      }
      
      private function §3w§() : void
      {
         this.§[>§ = false;
         this.§4=§();
         this.§^!d§ = new Timer(100);
         this.§,"H§ = 0;
         this.§^!d§.addEventListener(TimerEvent.TIMER,this.§;",§);
         this.§^!d§.start();
      }
      
      protected function §^!9§(param1:int, param2:int) : void
      {
         if(this.§44§)
         {
            param2 = param1;
            (§2&§.§6o§ as §@T§).§'"5§.§1r§(this.§#"$§.§,"=§.currentLevel,param2);
            (§2&§.§6o§ as §@T§).§'"5§.§#D§(this.§#"$§.§,"=§.currentLevel,param2);
            §3!a§.setText("New Highscore!","TextField_BestScore");
         }
         else
         {
            §3!a§.setText(param2.toString(),"TextField_BestScore");
            this.§2!9§ = this.§#"$§.§,"=§.getNumStarsForLevel(this.§#"$§.§,"=§.currentLevel,param2);
            switch(this.§2!9§)
            {
               case 1:
                  (§3!a§.getItemByName("MovieClip_BestScoreStars") as §'!j§).§`!h§("OneStar");
                  break;
               case 2:
                  (§3!a§.getItemByName("MovieClip_BestScoreStars") as §'!j§).§`!h§("TwoStar");
                  break;
               case 3:
                  (§3!a§.getItemByName("MovieClip_BestScoreStars") as §'!j§).§`!h§("ThreeStar");
            }
         }
      }
      
      protected function §4=§() : void
      {
         var _loc1_:int = (§2&§.§6o§ as §@T§).§'"5§.getScoreForLevel(this.§#"$§.§,"=§.currentLevel);
         var _loc2_:int = §8k§.§0!Q§.getScore(10);
         this.§44§ = _loc2_ >= _loc1_;
         this.§^!9§(_loc2_,_loc1_);
         var _loc3_:int = (§2&§.§6o§ as §@T§).§'"5§.§>"3§(this.§#"$§.§,"=§.currentLevel,_loc2_);
         (§3!a§.getItemByName("MovieClip_NewHighScoreBadge") as §'!j§).setVisibility(false);
         (§3!a§.getItemByName("MovieClip_StarLeft") as §'!j§).mClip.gotoAndStop("UnLit");
         (§3!a§.getItemByName("MovieClip_StarCenter") as §'!j§).mClip.gotoAndStop("UnLit");
         (§3!a§.getItemByName("MovieClip_StarRight") as §'!j§).mClip.gotoAndStop("UnLit");
      }
      
      protected function §3!Q§() : void
      {
         if(this.§44§)
         {
            §!d§.soundManager.playSound("new_highscore");
            (§3!a§.getItemByName("TextField_NewHighScore") as §#`§).setVisibility(true);
            (§3!a§.getItemByName("MovieClip_BestScoreStars") as §'!j§).setVisibility(false);
            this.§^X§();
         }
         else
         {
            (§3!a§.getItemByName("TextField_BestScore") as §#`§).setVisibility(true);
            (§3!a§.getItemByName("MovieClip_BestScoreStars") as §'!j§).setVisibility(true);
            (§3!a§.getItemByName("MovieClip_BestScoreText") as §#`§).setVisibility(true);
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
         (§3!a§.getItemByName("Container_LevelEndStripe") as §,"$§).x = (§3!a§.getItemByName("Container_LevelEndStripe") as §,"$§).x - this.§<!&§;
         (§3!a§.getItemByName("Container_LevelEndStripe") as §,"$§).y = (§3!a§.getItemByName("Container_LevelEndStripe") as §,"$§).y - this.§""E§;
         if(this.§-!`§ > 0)
         {
            this.§<!&§ = (Math.random() - 0.5) * (this.§-!`§ / §="#§) * 20;
            this.§""E§ = (Math.random() - 0.5) * (this.§-!`§ / §="#§) * 20;
            (§3!a§.getItemByName("Container_LevelEndStripe") as §,"$§).x = (§3!a§.getItemByName("Container_LevelEndStripe") as §,"$§).x + this.§<!&§;
            (§3!a§.getItemByName("Container_LevelEndStripe") as §,"$§).y = (§3!a§.getItemByName("Container_LevelEndStripe") as §,"$§).y + this.§""E§;
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
         var _loc4_:Number = this.§#"$§.§,"=§.getLevelForId(this.§#"$§.§,"=§.currentLevel).scoreGold;
         var _loc5_:Number = this.§#"$§.§,"=§.getLevelForId(this.§#"$§.§,"=§.currentLevel).scoreSilver;
         if((§3!a§.getItemByName("MovieClip_StarLeft") as §'!j§).mClip.currentLabel == "UnLit")
         {
            §<5§.playSound("score_count",§5a§,999,-1,100);
            §!d§.soundManager.playSound("star_1");
            this.§^!d§.delay = §'!f§;
            this.§0I§.§;"6§(§8k§.§0!Q§.getScore(10));
            _loc6_ = this.§0I§.getValue() / _loc4_ * 2;
            if(_loc4_ <= 0)
            {
               _loc6_ = 1;
            }
            this.§;!S§ = §"!t§.§3R§.§2m§(this,{"mNewScoreCounter":this.§0I§.getValue()},{"mNewScoreCounter":0},_loc6_);
            this.§;!S§.onComplete = this.§+!w§;
            this.§;!S§.play();
            (§3!a§.getItemByName("MovieClip_StarLeft") as §'!j§).mClip.gotoAndStop("Lit");
            _loc2_ = (§3!a§.getItemByName("MovieClip_StarLeft") as §'!j§).x + (§3!a§.getItemByName("Container_LevelEndStripe") as §,"$§).x;
            _loc3_ = (§3!a§.getItemByName("MovieClip_StarLeft") as §'!j§).y + (§3!a§.getItemByName("Container_LevelEndStripe") as §,"$§).y;
            this.§;!m§ = new §[_§(§2&§.screenWidth,§2&§.screenHeight,_loc2_,_loc3_,§[_§.§'!b§);
            §3!a§.mClip.addChild(this.§;!m§);
            this.§2<§.push(this.§;!m§);
         }
         else if(this.§0I§.getValue() >= _loc5_ && (§3!a§.getItemByName("MovieClip_StarCenter") as §'!j§).mClip.currentLabel == "UnLit")
         {
            §!d§.soundManager.playSound("star_2");
            (§3!a§.getItemByName("MovieClip_StarCenter") as §'!j§).mClip.gotoAndStop("Lit");
            _loc2_ = (§3!a§.getItemByName("MovieClip_StarCenter") as §'!j§).x + (§3!a§.getItemByName("Container_LevelEndStripe") as §,"$§).x;
            _loc3_ = (§3!a§.getItemByName("MovieClip_StarCenter") as §'!j§).y + (§3!a§.getItemByName("Container_LevelEndStripe") as §,"$§).y;
            this.§;!m§ = new §[_§(§2&§.screenWidth,§2&§.screenHeight,_loc2_,_loc3_,§[_§.§3"3§);
            §3!a§.mClip.addChild(this.§;!m§);
            this.§2<§.push(this.§;!m§);
         }
         else if(this.§0I§.getValue() >= _loc4_ && (§3!a§.getItemByName("MovieClip_StarRight") as §'!j§).mClip.currentLabel == "UnLit")
         {
            this.§,B§ = true;
            §!d§.soundManager.playSound("star_3");
            (§3!a§.getItemByName("MovieClip_StarRight") as §'!j§).mClip.gotoAndStop("Lit");
            _loc2_ = (§3!a§.getItemByName("MovieClip_StarRight") as §'!j§).x + (§3!a§.getItemByName("Container_LevelEndStripe") as §,"$§).x;
            _loc3_ = (§3!a§.getItemByName("MovieClip_StarRight") as §'!j§).y + (§3!a§.getItemByName("Container_LevelEndStripe") as §,"$§).y;
            this.§;!m§ = new §[_§(§2&§.screenWidth,§2&§.screenHeight,_loc2_,_loc3_,§[_§.§-t§);
            §3!a§.mClip.addChild(this.§;!m§);
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
               (§3!a§.getItemByName("MovieClip_NewHighScoreBadge") as §'!j§).setVisibility(true);
               §3!a§.getItemByName("TextField_NewHighScore").setVisibility(true);
            }
            else
            {
               (§3!a§.getItemByName("MovieClip_NewHighScoreBadge") as §'!j§).setVisibility(false);
               §3!a§.getItemByName("TextField_NewHighScore").setVisibility(false);
            }
            this.§^L§ = §"!t§.§3R§.§2m§((§3!a§.getItemByName("MovieClip_NewHighScoreBadge") as §'!j§).mClip,{
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
      
      public function update(param1:Number) : void
      {
         var _loc2_:§[_§ = null;
         §3!a§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScore");
         for each(_loc2_ in this.§2<§)
         {
            _loc2_.update(param1);
         }
         if(this.§-!`§ >= 0)
         {
            this.§7I§(param1);
         }
      }
      
      override public function dispose() : void
      {
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
         §3!a§.setText("0","TextField_LevelEndScore");
         this.§,8§ = false;
         super.dispose();
      }
      
      protected function §+!q§(param1:String) : void
      {
         (§3!a§.getItemByName("Button_Menu") as §87§).setComponentVisualState(param1);
         (§3!a§.getItemByName("Button_Replay") as §87§).setComponentVisualState(param1);
         (§3!a§.getItemByName("Button_NextLevel") as §87§).setComponentVisualState(param1);
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
            if(§3!a§.mClip.contains(splash))
            {
               §3!a§.mClip.removeChild(splash);
            }
            splash.§&"#§();
         }
         this.§2<§ = new Vector.<§[_§>();
         this.§!!P§();
      }
      
      protected function §!!P§() : void
      {
         (§3!a§.getItemByName("TextField_BestScore") as §#`§).setVisibility(false);
         (§3!a§.getItemByName("MovieClip_BestScoreStars") as §'!j§).setVisibility(false);
         (§3!a§.getItemByName("TextField_NewHighScore") as §#`§).setVisibility(false);
      }
      
      protected function §[-§() : void
      {
         this.§#"$§.§%!o§();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§@Y§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
               §<"5§ = false;
               close();
               this.§[-§();
               break;
            case "REPLAY":
               §<"5§ = false;
               close();
               this.§#"$§.§]!R§(this.§#"$§.§!!d§());
               break;
            case "MENU":
               §<5§.§>!R§();
               §<"5§ = false;
               close();
               this.§#"$§.§]!R§(this.§#"$§.§&!f§());
         }
      }
      
      override public function updateLocalization() : void
      {
         super.updateLocalization();
         this.updateTextFields();
      }
      
      override public function updateTextFields() : void
      {
         §!H§.§3R§.updateTextFields(§3!a§,"StateEnd");
      }
      
      public function get isOpen() : Boolean
      {
         return this.§,8§;
      }
   }
}
