package §@!l§
{
   import § !Q§.§=!3§;
   import §!!&§.§0!_§;
   import §!!&§.§`!$§;
   import §!!`§.§4!f§;
   import §!!`§.§>!&§;
   import §!!n§.§+Z§;
   import §-b§.§"!d§;
   import §-b§.§4`§;
   import §7"1§.§+7§;
   import §;s§.§%!c§;
   import §<!0§.§'!%§;
   import §<!0§.§3!W§;
   import §>P§.§%`§;
   import §>P§.§4!]§;
   import §>P§.§73§;
   import §>P§.§]"4§;
   import §[^§.§'g§;
   import §[^§.§@!U§;
   import §]!V§.§[!G§;
   import com.angrybirds.§#Z§;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §`! § extends §-"+§
   {
      
      private static const §@!,§:Number = 750;
      
      private static var § K§:Class = §"![§;
      
      public static const § !s§:Number = 30;
      
      protected static const §?z§:String = "ScoreLoopCountChannel";
      
      protected static const §2H§:String = "EndScreenEffectChannel";
       
      
      private var §1!9§:§4`§;
      
      private var §#!8§:Number;
      
      private var §1n§:Number = 0.0;
      
      private var §;!E§:Number = 0.0;
      
      private var §9a§:Boolean = false;
      
      private var §&#§:Timer;
      
      protected var §<Z§:Array;
      
      protected var §1! §:§+7§;
      
      protected var §-!w§:Vector.<§+7§>;
      
      public var mNewScoreCounter:int;
      
      private var §2!O§:int;
      
      private var §9;§:Boolean;
      
      protected var §2"0§:Boolean;
      
      private var §@G§:§0!_§;
      
      protected var §!I§:Boolean;
      
      private var § x§:§4`§;
      
      protected var §+"§:Boolean;
      
      protected var §2!b§:int;
      
      private var §1!X§:§[!G§;
      
      private var §#N§:Boolean;
      
      public function §`! §(param1:§[!G§, param2:§'g§)
      {
         this.§<Z§ = [];
         this.§@G§ = new §0!_§();
         §@_§ = true;
         §!"6§ = false;
         §>,§ = true;
         super(§>!&§.§?!B§,§4!f§.§`s§,this.§[x§());
         §4!J§ = param2 as §@!U§;
         this.§1!X§ = param1;
         §%!c§.§"!u§(§?z§,1,1);
         §%!c§.§"!u§(§2H§,3,1);
      }
      
      protected function §[x§() : XML
      {
         var _loc1_:XML = §=!3§.§0I§(§ K§);
         return AngryBirdsCustom.§^Z§(_loc1_);
      }
      
      protected function §?$§() : void
      {
         (§-"1§.getItemByName("Button_Menu") as §73§).setVisibility(true);
         (§-"1§.getItemByName("Button_Replay") as §73§).setVisibility(true);
         if(this.§1!X§.§5!c§.getNextLevelId())
         {
            (§-"1§.getItemByName("Button_NextLevel") as §73§).setVisibility(true);
            (§-"1§.getItemByName("Button_CutScene") as §73§).setVisibility(false);
            (§-"1§.getItemByName("Button_Menu") as §73§).x = this.§<Z§[0];
            (§-"1§.getItemByName("Button_Replay") as §73§).x = this.§<Z§[1];
            (§-"1§.getItemByName("Button_NextLevel") as §73§).x = this.§<Z§[2];
         }
         else if(this.§1!X§.§5!c§.isCutSceneNext())
         {
            (§-"1§.getItemByName("Button_CutScene") as §73§).setVisibility(true);
            (§-"1§.getItemByName("Button_NextLevel") as §73§).setVisibility(false);
            (§-"1§.getItemByName("Button_Menu") as §73§).x = this.§<Z§[0];
            (§-"1§.getItemByName("Button_Replay") as §73§).x = this.§<Z§[1];
            (§-"1§.getItemByName("Button_CutScene") as §73§).x = this.§<Z§[2];
         }
         else
         {
            (§-"1§.getItemByName("Button_NextLevel") as §73§).setVisibility(false);
            (§-"1§.getItemByName("Button_CutScene") as §73§).setVisibility(false);
            (§-"1§.getItemByName("Button_Menu") as §73§).x = this.§<Z§[0] + 40;
            (§-"1§.getItemByName("Button_Replay") as §73§).x = this.§<Z§[2] - 40;
         }
      }
      
      protected function §5"&§() : void
      {
         this.§<Z§.push(Math.round((§-"1§.getItemByName("Button_Menu") as §73§).x));
         this.§<Z§.push(Math.round((§-"1§.getItemByName("Button_Replay") as §73§).x));
         this.§<Z§.push(Math.round((§-"1§.getItemByName("Button_NextLevel") as §73§).x));
      }
      
      override protected function init() : void
      {
         super.init();
         §@_§ = true;
         this.updateTextFields();
         this.§5"&§();
         this.§-!w§ = new Vector.<§+7§>();
         §#Z§.§'0§.background.§"!I§();
         §%!c§.§"!u§(§?z§,1,0.8);
         this.§+"§ = false;
         §#Z§.pause();
         this.§?$§();
         this.mNewScoreCounter = 0;
         this.§9;§ = false;
         §%!c§.§8" §("LevelCompletedTheme1");
         this.§1n§ = 0;
         this.§;!E§ = 0;
         this.§=@§();
         this.§#N§ = true;
         this.§<#§();
      }
      
      private function §<#§() : void
      {
         var _loc1_:String = (§,!X§.§>!G§ as AngryBirdsCustom).§!&§.§3r§(§`!$§.§>!P§.§?""§()).brand;
         §-"1§.getItemByName("MovieClip_Nesquik").setVisibility(_loc1_ == §+Z§.§7!e§);
         §-"1§.getItemByName("MovieClip_Chocapic").setVisibility(_loc1_ == §+Z§.§;!#§);
         §-"1§.getItemByName("MovieClip_KokoKrunch").setVisibility(_loc1_ == §+Z§.§&!z§);
      }
      
      private function §=@§() : void
      {
         this.§2"0§ = false;
         this.§4!l§();
         this.§&#§ = new Timer(100);
         this.§2!O§ = 0;
         this.§&#§.addEventListener(TimerEvent.TIMER,this.§=o§);
         this.§&#§.start();
      }
      
      protected function §6!f§(param1:int, param2:int) : void
      {
         if(this.§!I§)
         {
            param2 = param1;
            (§,!X§.§>!G§ as AngryBirdsCustom).§<0§.setScoreForLevel(this.§1!X§.§5!c§.currentLevel,param2);
            (§,!X§.§>!G§ as AngryBirdsCustom).§<0§.§@"4§(this.§1!X§.§5!c§.currentLevel,param2);
            §-"1§.setText("New Highscore!","TextField_BestScore");
         }
         else
         {
            §-"1§.setText(param2.toString(),"TextField_BestScore");
            this.§2!b§ = this.§1!X§.§5!c§.getNumStarsForLevel(this.§1!X§.§5!c§.currentLevel,param2);
            switch(this.§2!b§)
            {
               case 1:
                  (§-"1§.getItemByName("MovieClip_BestScoreStars") as §4!]§).§-q§("OneStar");
                  break;
               case 2:
                  (§-"1§.getItemByName("MovieClip_BestScoreStars") as §4!]§).§-q§("TwoStar");
                  break;
               case 3:
                  (§-"1§.getItemByName("MovieClip_BestScoreStars") as §4!]§).§-q§("ThreeStar");
            }
         }
      }
      
      protected function §4!l§() : void
      {
         var _loc1_:int = (§,!X§.§>!G§ as AngryBirdsCustom).§<0§.getScoreForLevel(this.§1!X§.§5!c§.currentLevel);
         var _loc2_:int = §#Z§.controller.getScore(10);
         this.§!I§ = _loc2_ >= _loc1_;
         this.§6!f§(_loc2_,_loc1_);
         var _loc3_:int = (§,!X§.§>!G§ as AngryBirdsCustom).§<0§.§3i§(this.§1!X§.§5!c§.currentLevel,_loc2_);
         (§-"1§.getItemByName("MovieClip_NewHighScoreBadge") as §4!]§).setVisibility(false);
         (§-"1§.getItemByName("MovieClip_StarLeft") as §4!]§).mClip.gotoAndStop("UnLit");
         (§-"1§.getItemByName("MovieClip_StarCenter") as §4!]§).mClip.gotoAndStop("UnLit");
         (§-"1§.getItemByName("MovieClip_StarRight") as §4!]§).mClip.gotoAndStop("UnLit");
      }
      
      protected function §-"4§() : void
      {
         if(this.§!I§)
         {
            §%!c§.§8" §("Hiscore_Badge",§2H§);
            (§-"1§.getItemByName("TextField_NewHighScore") as §%`§).setVisibility(true);
            (§-"1§.getItemByName("MovieClip_BestScoreStars") as §4!]§).setVisibility(false);
            this.§5v§();
         }
         else
         {
            (§-"1§.getItemByName("TextField_BestScore") as §%`§).setVisibility(true);
            (§-"1§.getItemByName("MovieClip_BestScoreStars") as §4!]§).setVisibility(true);
            (§-"1§.getItemByName("MovieClip_BestScoreText") as §%`§).setVisibility(true);
         }
      }
      
      protected function §5v§() : void
      {
         this.§1n§ = 0;
         this.§;!E§ = 0;
         this.§#!8§ = § !s§;
      }
      
      private function §]u§(param1:Number) : void
      {
         (§-"1§.getItemByName("Container_LevelEndStripe") as §]"4§).x = (§-"1§.getItemByName("Container_LevelEndStripe") as §]"4§).x - this.§1n§;
         (§-"1§.getItemByName("Container_LevelEndStripe") as §]"4§).y = (§-"1§.getItemByName("Container_LevelEndStripe") as §]"4§).y - this.§;!E§;
         if(this.§#!8§ > 0)
         {
            this.§1n§ = (Math.random() - 0.5) * (this.§#!8§ / § !s§) * 20;
            this.§;!E§ = (Math.random() - 0.5) * (this.§#!8§ / § !s§) * 20;
            (§-"1§.getItemByName("Container_LevelEndStripe") as §]"4§).x = (§-"1§.getItemByName("Container_LevelEndStripe") as §]"4§).x + this.§1n§;
            (§-"1§.getItemByName("Container_LevelEndStripe") as §]"4§).y = (§-"1§.getItemByName("Container_LevelEndStripe") as §]"4§).y + this.§;!E§;
         }
         else
         {
            this.§1n§ = 0;
            this.§;!E§ = 0;
         }
         this.§#!8§ -= param1 / 10;
      }
      
      private function §=o§(param1:TimerEvent) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc4_:Number = this.§1!X§.§5!c§.getLevelForId(this.§1!X§.§5!c§.currentLevel).scoreGold;
         var _loc5_:Number = this.§1!X§.§5!c§.getLevelForId(this.§1!X§.§5!c§.currentLevel).scoreSilver;
         if((§-"1§.getItemByName("MovieClip_StarLeft") as §4!]§).mClip.currentLabel == "UnLit")
         {
            §%!c§.§8" §("Hiscore_Count",§?z§,999,-1,100);
            §%!c§.§8" §("Hiscore_Star_Splash1",§2H§);
            this.§&#§.delay = §@!,§;
            this.§@G§.§[b§(§#Z§.controller.getScore(10));
            _loc6_ = this.§@G§.getValue() / _loc4_ * 2;
            if(_loc4_ <= 0)
            {
               _loc6_ = 1;
            }
            this.§ x§ = §"!d§.§>!P§.§7R§(this,{"mNewScoreCounter":this.§@G§.getValue()},{"mNewScoreCounter":0},_loc6_);
            this.§ x§.onComplete = this.§8!o§;
            this.§ x§.play();
            (§-"1§.getItemByName("MovieClip_StarLeft") as §4!]§).mClip.gotoAndStop("Lit");
            _loc2_ = (§-"1§.getItemByName("MovieClip_StarLeft") as §4!]§).x + (§-"1§.getItemByName("Container_LevelEndStripe") as §]"4§).x;
            _loc3_ = (§-"1§.getItemByName("MovieClip_StarLeft") as §4!]§).y + (§-"1§.getItemByName("Container_LevelEndStripe") as §]"4§).y;
            this.§1! § = new §+7§(§,!X§.§-t§,§,!X§.§^!Q§,_loc2_,_loc3_,§+7§.§^"#§);
            §-"1§.mClip.addChild(this.§1! §);
            this.§-!w§.push(this.§1! §);
         }
         else if(this.§@G§.getValue() >= _loc5_ && (§-"1§.getItemByName("MovieClip_StarCenter") as §4!]§).mClip.currentLabel == "UnLit")
         {
            §%!c§.§8" §("Hiscore_Star_Splash2",§2H§);
            (§-"1§.getItemByName("MovieClip_StarCenter") as §4!]§).mClip.gotoAndStop("Lit");
            _loc2_ = (§-"1§.getItemByName("MovieClip_StarCenter") as §4!]§).x + (§-"1§.getItemByName("Container_LevelEndStripe") as §]"4§).x;
            _loc3_ = (§-"1§.getItemByName("MovieClip_StarCenter") as §4!]§).y + (§-"1§.getItemByName("Container_LevelEndStripe") as §]"4§).y;
            this.§1! § = new §+7§(§,!X§.§-t§,§,!X§.§^!Q§,_loc2_,_loc3_,§+7§.§<S§);
            §-"1§.mClip.addChild(this.§1! §);
            this.§-!w§.push(this.§1! §);
         }
         else if(this.§@G§.getValue() >= _loc4_ && (§-"1§.getItemByName("MovieClip_StarRight") as §4!]§).mClip.currentLabel == "UnLit")
         {
            this.§+"§ = true;
            §%!c§.§8" §("Hiscore_Star_Splash3",§2H§);
            (§-"1§.getItemByName("MovieClip_StarRight") as §4!]§).mClip.gotoAndStop("Lit");
            _loc2_ = (§-"1§.getItemByName("MovieClip_StarRight") as §4!]§).x + (§-"1§.getItemByName("Container_LevelEndStripe") as §]"4§).x;
            _loc3_ = (§-"1§.getItemByName("MovieClip_StarRight") as §4!]§).y + (§-"1§.getItemByName("Container_LevelEndStripe") as §]"4§).y;
            this.§1! § = new §+7§(§,!X§.§-t§,§,!X§.§^!Q§,_loc2_,_loc3_,§+7§.§[!>§);
            §-"1§.mClip.addChild(this.§1! §);
            this.§-!w§.push(this.§1! §);
         }
         else if(!this.§9;§)
         {
            this.§9;§ = true;
         }
         else
         {
            this.§&#§.stop();
            if(this.§!I§ && !this.§2"0§)
            {
               (§-"1§.getItemByName("MovieClip_NewHighScoreBadge") as §4!]§).setVisibility(true);
               §-"1§.getItemByName("TextField_NewHighScore").setVisibility(true);
            }
            else
            {
               (§-"1§.getItemByName("MovieClip_NewHighScoreBadge") as §4!]§).setVisibility(false);
               §-"1§.getItemByName("TextField_NewHighScore").setVisibility(false);
            }
            this.§1!9§ = §"!d§.§>!P§.§7R§((§-"1§.getItemByName("MovieClip_NewHighScoreBadge") as §4!]§).mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":7,
               "scaleY":7
            },0.1);
            this.§1!9§.onComplete = this.§-"4§;
            this.§1!9§.play();
         }
         ++this.§2!O§;
      }
      
      private function §8!o§() : void
      {
         §%!c§.§#!G§(§?z§);
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:§+7§ = null;
         §-"1§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScore");
         for each(_loc2_ in this.§-!w§)
         {
            _loc2_.update(param1);
         }
         if(this.§#!8§ >= 0)
         {
            this.§]u§(param1);
         }
      }
      
      override public function dispose() : void
      {
         this.§0!;§();
         this.§#!8§ = 0;
         this.mNewScoreCounter = 0;
         if(this.§ x§)
         {
            this.§ x§.stop();
            this.§ x§ = null;
         }
         if(this.§1!9§)
         {
            this.§1!9§.stop();
            this.§1!9§ = null;
         }
         §%!c§.§#!G§(§?z§);
         this.§2V§(§3!W§.COMPONENT_STATE_ACTIVE_DEFAULT);
         §-"1§.setText("0","TextField_LevelEndScore");
         this.§#N§ = false;
         super.dispose();
      }
      
      protected function §2V§(param1:String) : void
      {
         (§-"1§.getItemByName("Button_Menu") as §73§).setComponentVisualState(param1);
         (§-"1§.getItemByName("Button_Replay") as §73§).setComponentVisualState(param1);
         (§-"1§.getItemByName("Button_NextLevel") as §73§).setComponentVisualState(param1);
      }
      
      private function §0!;§() : void
      {
         var splash:§+7§ = null;
         if(this.§&#§)
         {
            this.§&#§.stop();
            try
            {
               this.§&#§.removeEventListener(TimerEvent.TIMER,this.§=o§);
            }
            catch(e:Error)
            {
            }
         }
         for each(splash in this.§-!w§)
         {
            if(§-"1§.mClip.contains(splash))
            {
               §-"1§.mClip.removeChild(splash);
            }
            splash.§^!%§();
         }
         this.§-!w§ = new Vector.<§+7§>();
         this.§4!8§();
      }
      
      protected function §4!8§() : void
      {
         (§-"1§.getItemByName("TextField_BestScore") as §%`§).setVisibility(false);
         (§-"1§.getItemByName("MovieClip_BestScoreStars") as §4!]§).setVisibility(false);
         (§-"1§.getItemByName("TextField_NewHighScore") as §%`§).setVisibility(false);
      }
      
      protected function §-d§() : void
      {
         this.§1!X§.§5!4§();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§'!%§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
            case "CUTSCENE":
               §@_§ = false;
               close();
               this.§-d§();
               break;
            case "REPLAY":
               §@_§ = false;
               close();
               this.§1!X§.§;v§(this.§1!X§.§2!p§());
               break;
            case "MENU":
               §%!c§.§0O§();
               §@_§ = false;
               close();
               this.§1!X§.§;v§(this.§1!X§.§0!P§());
         }
      }
      
      override public function updateLocalization() : void
      {
         super.updateLocalization();
         this.updateTextFields();
      }
      
      override public function updateTextFields() : void
      {
         §`!$§.§>!P§.updateTextFields(§-"1§,"StateEnd");
      }
      
      public function get isOpen() : Boolean
      {
         return this.§#N§;
      }
   }
}
