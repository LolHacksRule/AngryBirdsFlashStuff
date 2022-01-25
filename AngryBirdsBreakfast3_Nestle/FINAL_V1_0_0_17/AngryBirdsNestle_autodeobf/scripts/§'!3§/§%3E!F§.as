package §'!3§
{
   import §%8§.§4O§;
   import §%8§.§;!=§;
   import §'"!§.§+§;
   import §'"!§.§-!g§;
   import §0!m§.§@!S§;
   import §1!c§.§ x§;
   import §1!i§.§4z§;
   import §1!i§.§`!t§;
   import §1'§.§^!D§;
   import §24§.§4!H§;
   import §2u§.§,6§;
   import §2u§.§7!&§;
   import §2u§.§7!m§;
   import §2u§.§]"%§;
   import §4!i§.§@"#§;
   import §4!i§.§@t§;
   import §;g§.§0!o§;
   import §;g§.§]W§;
   import §[!Z§.§>D§;
   import §[+§.§+"'§;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §>!F§ extends §;!o§
   {
      
      private static const §8!j§:Number = 750;
      
      private static var §+o§:Class = §2g§;
      
      public static const §!!Y§:Number = 30;
      
      protected static const §0K§:String = "ScoreLoopCountChannel";
      
      protected static const §?$§:String = "EndScreenEffectChannel";
       
      
      private var §&!e§:§]W§;
      
      private var §6^§:Number;
      
      private var §#"8§:Number = 0.0;
      
      private var §%!N§:Number = 0.0;
      
      private var §%?§:Boolean = false;
      
      private var §#p§:Timer;
      
      protected var §0t§:Array;
      
      protected var §2^§:§^!D§;
      
      protected var §2"6§:Vector.<§^!D§>;
      
      public var mNewScoreCounter:int;
      
      private var §<g§:int;
      
      private var §if §:Boolean;
      
      protected var §2!L§:Boolean;
      
      private var §]!e§:§@t§;
      
      protected var §95§:Boolean;
      
      private var §,7§:§]W§;
      
      protected var §47§:Boolean;
      
      protected var §&!o§:int;
      
      private var §-!j§:§ x§;
      
      private var §]"+§:Boolean;
      
      public function §>!F§(param1:§ x§, param2:§4O§)
      {
         this.§0t§ = [];
         this.§]!e§ = new §@t§();
         §9p§ = true;
         §]G§ = false;
         §^J§ = true;
         super(§`!t§.§[F§,§4z§.§&-§,this.§'!,§());
         §@!]§ = param2 as §;!=§;
         this.§-!j§ = param1;
         §>D§.§0"6§(§0K§,1,1);
         §>D§.§0"6§(§?$§,3,1);
      }
      
      protected function §'!,§() : XML
      {
         var _loc1_:XML = §4!H§.§7o§(§+o§);
         return AngryBirdsCustom.§9!>§(_loc1_);
      }
      
      protected function §!!t§() : void
      {
         (§29§.getItemByName("Button_Menu") as §]"%§).setVisibility(true);
         (§29§.getItemByName("Button_Replay") as §]"%§).setVisibility(true);
         if(this.§-!j§.§[!,§.getNextLevelId())
         {
            (§29§.getItemByName("Button_NextLevel") as §]"%§).setVisibility(true);
            (§29§.getItemByName("Button_CutScene") as §]"%§).setVisibility(false);
            (§29§.getItemByName("Button_Menu") as §]"%§).x = this.§0t§[0];
            (§29§.getItemByName("Button_Replay") as §]"%§).x = this.§0t§[1];
            (§29§.getItemByName("Button_NextLevel") as §]"%§).x = this.§0t§[2];
         }
         else if(this.§-!j§.§[!,§.isCutSceneNext())
         {
            (§29§.getItemByName("Button_CutScene") as §]"%§).setVisibility(true);
            (§29§.getItemByName("Button_NextLevel") as §]"%§).setVisibility(false);
            (§29§.getItemByName("Button_Menu") as §]"%§).x = this.§0t§[0];
            (§29§.getItemByName("Button_Replay") as §]"%§).x = this.§0t§[1];
            (§29§.getItemByName("Button_CutScene") as §]"%§).x = this.§0t§[2];
         }
         else
         {
            (§29§.getItemByName("Button_NextLevel") as §]"%§).setVisibility(false);
            (§29§.getItemByName("Button_CutScene") as §]"%§).setVisibility(false);
            (§29§.getItemByName("Button_Menu") as §]"%§).x = this.§0t§[0] + 40;
            (§29§.getItemByName("Button_Replay") as §]"%§).x = this.§0t§[2] - 40;
         }
      }
      
      protected function §'!N§() : void
      {
         this.§0t§.push(Math.round((§29§.getItemByName("Button_Menu") as §]"%§).x));
         this.§0t§.push(Math.round((§29§.getItemByName("Button_Replay") as §]"%§).x));
         this.§0t§.push(Math.round((§29§.getItemByName("Button_NextLevel") as §]"%§).x));
      }
      
      override protected function init() : void
      {
         super.init();
         §9p§ = true;
         this.updateTextFields();
         this.§'!N§();
         this.§2"6§ = new Vector.<§^!D§>();
         §@!S§.§2A§.background.§0"1§();
         §>D§.§0"6§(§0K§,1,0.8);
         this.§47§ = false;
         §@!S§.pause();
         this.§!!t§();
         this.mNewScoreCounter = 0;
         this.§if § = false;
         §>D§.§9!q§("LevelCompletedTheme1");
         this.§#"8§ = 0;
         this.§%!N§ = 0;
         this.§1N§();
         this.§]"+§ = true;
         this.§'!@§();
      }
      
      private function §'!@§() : void
      {
         var _loc1_:String = (§ !4§.§%"7§ as AngryBirdsCustom).§6!g§.§^S§(§@"#§.§,2§.§0!x§()).brand;
         §29§.getItemByName("MovieClip_Nesquik").setVisibility(_loc1_ == §+"'§.§[3§);
         §29§.getItemByName("MovieClip_Chocapic").setVisibility(_loc1_ == §+"'§.§&X§);
         §29§.getItemByName("MovieClip_KokoKrunch").setVisibility(_loc1_ == §+"'§.§ !`§);
      }
      
      private function §1N§() : void
      {
         this.§2!L§ = false;
         this.§]"7§();
         this.§#p§ = new Timer(100);
         this.§<g§ = 0;
         this.§#p§.addEventListener(TimerEvent.TIMER,this.§1T§);
         this.§#p§.start();
      }
      
      protected function §@c§(param1:int, param2:int) : void
      {
         if(this.§95§)
         {
            param2 = param1;
            (§ !4§.§%"7§ as AngryBirdsCustom).§+Y§.setScoreForLevel(this.§-!j§.§[!,§.currentLevel,param2);
            (§ !4§.§%"7§ as AngryBirdsCustom).§+Y§.§9!k§(this.§-!j§.§[!,§.currentLevel,param2);
            §29§.setText("New Highscore!","TextField_BestScore");
         }
         else
         {
            §29§.setText(param2.toString(),"TextField_BestScore");
            this.§&!o§ = this.§-!j§.§[!,§.getNumStarsForLevel(this.§-!j§.§[!,§.currentLevel,param2);
            switch(this.§&!o§)
            {
               case 1:
                  (§29§.getItemByName("MovieClip_BestScoreStars") as §7!m§).§;U§("OneStar");
                  break;
               case 2:
                  (§29§.getItemByName("MovieClip_BestScoreStars") as §7!m§).§;U§("TwoStar");
                  break;
               case 3:
                  (§29§.getItemByName("MovieClip_BestScoreStars") as §7!m§).§;U§("ThreeStar");
            }
         }
      }
      
      protected function §]"7§() : void
      {
         var _loc1_:int = (§ !4§.§%"7§ as AngryBirdsCustom).§+Y§.getScoreForLevel(this.§-!j§.§[!,§.currentLevel);
         var _loc2_:int = §@!S§.controller.getScore(10);
         this.§95§ = _loc2_ >= _loc1_;
         this.§@c§(_loc2_,_loc1_);
         var _loc3_:int = (§ !4§.§%"7§ as AngryBirdsCustom).§+Y§.§1]§(this.§-!j§.§[!,§.currentLevel,_loc2_);
         (§29§.getItemByName("MovieClip_NewHighScoreBadge") as §7!m§).setVisibility(false);
         (§29§.getItemByName("MovieClip_StarLeft") as §7!m§).mClip.gotoAndStop("UnLit");
         (§29§.getItemByName("MovieClip_StarCenter") as §7!m§).mClip.gotoAndStop("UnLit");
         (§29§.getItemByName("MovieClip_StarRight") as §7!m§).mClip.gotoAndStop("UnLit");
      }
      
      protected function §>A§() : void
      {
         if(this.§95§)
         {
            §>D§.§9!q§("Hiscore_Badge",§?$§);
            (§29§.getItemByName("TextField_NewHighScore") as §7!&§).setVisibility(true);
            (§29§.getItemByName("MovieClip_BestScoreStars") as §7!m§).setVisibility(false);
            this.§ !_§();
         }
         else
         {
            (§29§.getItemByName("TextField_BestScore") as §7!&§).setVisibility(true);
            (§29§.getItemByName("MovieClip_BestScoreStars") as §7!m§).setVisibility(true);
            (§29§.getItemByName("MovieClip_BestScoreText") as §7!&§).setVisibility(true);
         }
      }
      
      protected function § !_§() : void
      {
         this.§#"8§ = 0;
         this.§%!N§ = 0;
         this.§6^§ = §!!Y§;
      }
      
      private function §<!2§(param1:Number) : void
      {
         (§29§.getItemByName("Container_LevelEndStripe") as §,6§).x = (§29§.getItemByName("Container_LevelEndStripe") as §,6§).x - this.§#"8§;
         (§29§.getItemByName("Container_LevelEndStripe") as §,6§).y = (§29§.getItemByName("Container_LevelEndStripe") as §,6§).y - this.§%!N§;
         if(this.§6^§ > 0)
         {
            this.§#"8§ = (Math.random() - 0.5) * (this.§6^§ / §!!Y§) * 20;
            this.§%!N§ = (Math.random() - 0.5) * (this.§6^§ / §!!Y§) * 20;
            (§29§.getItemByName("Container_LevelEndStripe") as §,6§).x = (§29§.getItemByName("Container_LevelEndStripe") as §,6§).x + this.§#"8§;
            (§29§.getItemByName("Container_LevelEndStripe") as §,6§).y = (§29§.getItemByName("Container_LevelEndStripe") as §,6§).y + this.§%!N§;
         }
         else
         {
            this.§#"8§ = 0;
            this.§%!N§ = 0;
         }
         this.§6^§ -= param1 / 10;
      }
      
      private function §1T§(param1:TimerEvent) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc4_:Number = this.§-!j§.§[!,§.getLevelForId(this.§-!j§.§[!,§.currentLevel).scoreGold;
         var _loc5_:Number = this.§-!j§.§[!,§.getLevelForId(this.§-!j§.§[!,§.currentLevel).scoreSilver;
         if((§29§.getItemByName("MovieClip_StarLeft") as §7!m§).mClip.currentLabel == "UnLit")
         {
            §>D§.§9!q§("Hiscore_Count",§0K§,999,-1,100);
            §>D§.§9!q§("Hiscore_Star_Splash1",§?$§);
            this.§#p§.delay = §8!j§;
            this.§]!e§.§!8§(§@!S§.controller.getScore(10));
            _loc6_ = this.§]!e§.getValue() / _loc4_ * 2;
            if(_loc4_ <= 0)
            {
               _loc6_ = 1;
            }
            this.§,7§ = §0!o§.§,2§.§4!t§(this,{"mNewScoreCounter":this.§]!e§.getValue()},{"mNewScoreCounter":0},_loc6_);
            this.§,7§.onComplete = this.§=!o§;
            this.§,7§.play();
            (§29§.getItemByName("MovieClip_StarLeft") as §7!m§).mClip.gotoAndStop("Lit");
            _loc2_ = (§29§.getItemByName("MovieClip_StarLeft") as §7!m§).x + (§29§.getItemByName("Container_LevelEndStripe") as §,6§).x;
            _loc3_ = (§29§.getItemByName("MovieClip_StarLeft") as §7!m§).y + (§29§.getItemByName("Container_LevelEndStripe") as §,6§).y;
            this.§2^§ = new §^!D§(§ !4§.§&v§,§ !4§.§,n§,_loc2_,_loc3_,§^!D§.§3!0§);
            §29§.mClip.addChild(this.§2^§);
            this.§2"6§.push(this.§2^§);
         }
         else if(this.§]!e§.getValue() >= _loc5_ && (§29§.getItemByName("MovieClip_StarCenter") as §7!m§).mClip.currentLabel == "UnLit")
         {
            §>D§.§9!q§("Hiscore_Star_Splash2",§?$§);
            (§29§.getItemByName("MovieClip_StarCenter") as §7!m§).mClip.gotoAndStop("Lit");
            _loc2_ = (§29§.getItemByName("MovieClip_StarCenter") as §7!m§).x + (§29§.getItemByName("Container_LevelEndStripe") as §,6§).x;
            _loc3_ = (§29§.getItemByName("MovieClip_StarCenter") as §7!m§).y + (§29§.getItemByName("Container_LevelEndStripe") as §,6§).y;
            this.§2^§ = new §^!D§(§ !4§.§&v§,§ !4§.§,n§,_loc2_,_loc3_,§^!D§.§"!K§);
            §29§.mClip.addChild(this.§2^§);
            this.§2"6§.push(this.§2^§);
         }
         else if(this.§]!e§.getValue() >= _loc4_ && (§29§.getItemByName("MovieClip_StarRight") as §7!m§).mClip.currentLabel == "UnLit")
         {
            this.§47§ = true;
            §>D§.§9!q§("Hiscore_Star_Splash3",§?$§);
            (§29§.getItemByName("MovieClip_StarRight") as §7!m§).mClip.gotoAndStop("Lit");
            _loc2_ = (§29§.getItemByName("MovieClip_StarRight") as §7!m§).x + (§29§.getItemByName("Container_LevelEndStripe") as §,6§).x;
            _loc3_ = (§29§.getItemByName("MovieClip_StarRight") as §7!m§).y + (§29§.getItemByName("Container_LevelEndStripe") as §,6§).y;
            this.§2^§ = new §^!D§(§ !4§.§&v§,§ !4§.§,n§,_loc2_,_loc3_,§^!D§.§3n§);
            §29§.mClip.addChild(this.§2^§);
            this.§2"6§.push(this.§2^§);
         }
         else if(!this.§if §)
         {
            this.§if § = true;
         }
         else
         {
            this.§#p§.stop();
            if(this.§95§ && !this.§2!L§)
            {
               (§29§.getItemByName("MovieClip_NewHighScoreBadge") as §7!m§).setVisibility(true);
               §29§.getItemByName("TextField_NewHighScore").setVisibility(true);
            }
            else
            {
               (§29§.getItemByName("MovieClip_NewHighScoreBadge") as §7!m§).setVisibility(false);
               §29§.getItemByName("TextField_NewHighScore").setVisibility(false);
            }
            this.§&!e§ = §0!o§.§,2§.§4!t§((§29§.getItemByName("MovieClip_NewHighScoreBadge") as §7!m§).mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":7,
               "scaleY":7
            },0.1);
            this.§&!e§.onComplete = this.§>A§;
            this.§&!e§.play();
         }
         ++this.§<g§;
      }
      
      private function §=!o§() : void
      {
         §>D§.§6A§(§0K§);
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:§^!D§ = null;
         §29§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScore");
         for each(_loc2_ in this.§2"6§)
         {
            _loc2_.update(param1);
         }
         if(this.§6^§ >= 0)
         {
            this.§<!2§(param1);
         }
      }
      
      override public function dispose() : void
      {
         this.§8!Z§();
         this.§6^§ = 0;
         this.mNewScoreCounter = 0;
         if(this.§,7§)
         {
            this.§,7§.stop();
            this.§,7§ = null;
         }
         if(this.§&!e§)
         {
            this.§&!e§.stop();
            this.§&!e§ = null;
         }
         §>D§.§6A§(§0K§);
         this.§ !y§(§-!g§.COMPONENT_STATE_ACTIVE_DEFAULT);
         §29§.setText("0","TextField_LevelEndScore");
         this.§]"+§ = false;
         super.dispose();
      }
      
      protected function § !y§(param1:String) : void
      {
         (§29§.getItemByName("Button_Menu") as §]"%§).setComponentVisualState(param1);
         (§29§.getItemByName("Button_Replay") as §]"%§).setComponentVisualState(param1);
         (§29§.getItemByName("Button_NextLevel") as §]"%§).setComponentVisualState(param1);
      }
      
      private function §8!Z§() : void
      {
         var splash:§^!D§ = null;
         if(this.§#p§)
         {
            this.§#p§.stop();
            try
            {
               this.§#p§.removeEventListener(TimerEvent.TIMER,this.§1T§);
            }
            catch(e:Error)
            {
            }
         }
         for each(splash in this.§2"6§)
         {
            if(§29§.mClip.contains(splash))
            {
               §29§.mClip.removeChild(splash);
            }
            splash.§,!#§();
         }
         this.§2"6§ = new Vector.<§^!D§>();
         this.§7!6§();
      }
      
      protected function §7!6§() : void
      {
         (§29§.getItemByName("TextField_BestScore") as §7!&§).setVisibility(false);
         (§29§.getItemByName("MovieClip_BestScoreStars") as §7!m§).setVisibility(false);
         (§29§.getItemByName("TextField_NewHighScore") as §7!&§).setVisibility(false);
      }
      
      protected function §7!Y§() : void
      {
         this.§-!j§.§,"#§();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§+§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
            case "CUTSCENE":
               §9p§ = false;
               close();
               this.§7!Y§();
               break;
            case "REPLAY":
               §9p§ = false;
               close();
               this.§-!j§.§'l§(this.§-!j§.§!!n§());
               break;
            case "MENU":
               §>D§.§>!%§();
               §9p§ = false;
               close();
               this.§-!j§.§'l§(this.§-!j§.§>-§());
         }
      }
      
      override public function updateLocalization() : void
      {
         super.updateLocalization();
         this.updateTextFields();
      }
      
      override public function updateTextFields() : void
      {
         §@"#§.§,2§.updateTextFields(§29§,"StateEnd");
      }
      
      public function get isOpen() : Boolean
      {
         return this.§]"+§;
      }
   }
}
