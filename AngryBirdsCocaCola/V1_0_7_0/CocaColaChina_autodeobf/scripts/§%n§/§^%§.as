package §%n§
{
   import §!E§.§#!F§;
   import §!E§.§-!%§;
   import §!E§.§;!P§;
   import §%!G§.§ !G§;
   import §%!G§.§-h§;
   import §,@§.§"!'§;
   import §,@§.§<!+§;
   import §-X§.§2&§;
   import §-v§.§,!1§;
   import §2!$§.§#!K§;
   import §2!$§.§<!%§;
   import §6!@§.§ !!§;
   import §7m§.§7I§;
   import §9I§.§ n§;
   import §[!=§.§!!K§;
   import §[!=§.§3!2§;
   import §^!5§.§+^§;
   import §`!+§.§7c§;
   import flash.events.KeyboardEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §^%§ extends §91§
   {
      
      public static const §^6§:String = "LevelEndState3";
      
      public static const §[j§:Number = 30;
      
      private static const §4N§:String = "ScoreLoopCountChannel";
      
      private static const §9;§:String = "EndScreenEffectChannel";
       
      
      private var §0!&§:§3!2§;
      
      private var §>F§:§3!2§;
      
      private var §0!§:Number;
      
      private var §7p§:Number;
      
      private var §5h§:Number;
      
      private var §`!N§:Number;
      
      private var §,!M§:Number;
      
      private var §6-§:int;
      
      private var §!!Z§:Boolean;
      
      private var §`N§:Boolean = false;
      
      private var §3!W§:Timer;
      
      private var §@!N§:§"!'§;
      
      private var §[0§:§<!+§;
      
      private var §-!"§:Vector.<§<!+§>;
      
      public var mNewScoreCounter:int;
      
      private var §]!E§:int;
      
      private var §5!4§:Boolean;
      
      private var §5!?§:§ n§;
      
      private var §&x§:Boolean;
      
      private var § f§:§3!2§;
      
      private var §-!F§:Array;
      
      public function §^%§(param1:Boolean = false, param2:String = "LevelEndState3")
      {
         this.§5!?§ = new § n§();
         this.§-!F§ = [];
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §5!R§ = new § !G§(this);
         §5!R§.init(§-h§.§#z§.Views.View_LevelEndRio[0]);
         this.§<!Q§();
         this.§@!N§ = new §"!'§(0,0,0,0);
         §5!R§.movieClip.addChildAt(this.§@!N§,§5!R§.movieClip.numChildren - 1);
         this.§-!"§ = new Vector.<§<!+§>();
         §7I§.§<!P§(§4N§,1,1);
         §7I§.§<!P§(§9;§,16,1);
         this.§`!N§ = §5!R§.getItemByName("MovieClip_DrumBadge").x;
         this.§,!M§ = §5!R§.getItemByName("MovieClip_DrumBadge").x;
      }
      
      protected function §<!Q§() : void
      {
         this.§-!F§.push(§5!R§.getItemByName("Button_Menu").x);
         this.§-!F§.push(§5!R§.getItemByName("Button_Replay").x);
         this.§-!F§.push(§5!R§.getItemByName("Button_Next").x);
      }
      
      protected function §>=§(param1:Boolean) : void
      {
         §5!R§.getItemByName("Button_Menu").setVisibility(true);
         §5!R§.getItemByName("Button_Replay").setVisibility(true);
         if(param1)
         {
            §5!R§.getItemByName("Button_Next").setVisibility(true);
            §5!R§.getItemByName("Button_Menu").x = this.§-!F§[0];
            §5!R§.getItemByName("Button_Replay").x = this.§-!F§[1];
            §5!R§.getItemByName("Button_Next").x = this.§-!F§[2];
         }
         else
         {
            §5!R§.getItemByName("Button_Next").setVisibility(false);
            §5!R§.getItemByName("Button_Menu").x = this.§-!F§[0] + Math.abs(this.§-!F§[1] - this.§-!F§[0]) / 2;
            §5!R§.getItemByName("Button_Replay").x = this.§-!F§[1] + Math.abs(this.§-!F§[2] - this.§-!F§[1]) / 2 + §5!R§.getItemByName("Button_Replay").width / 4;
         }
      }
      
      override public function activate() : void
      {
         super.activate();
         §'! §.enableHelpButton(false);
         §,!1§.§2T§.§=!H§(true);
         this.mNewScoreCounter = 0;
         this.§5!4§ = false;
         §7I§.playSound("LevelCompletedTheme1");
         this.§@!N§.§3d§(0.7);
         this.§ X§();
         this.§6-§ = §"!@§.§6!-§.§+L§();
         §5!R§.getItemByName("MovieClip_DrumBadge").x = this.§`!N§;
         §5!R§.getItemByName("MovieClip_DrumBadge").x = this.§,!M§;
         this.§!!Z§ = false;
         §+^§.§=!7§();
         §'! §.changeState(§'! §.currentState);
         this.§>=§(§+^§.§6!!§(§2&§.§#P§()));
      }
      
      override protected function setInitialState() : void
      {
         if(§2&§.§6q§ == 0)
         {
            §5!R§.getItemByName("MovieClip_Drum1").setVisibility(false);
            §5!R§.getItemByName("MovieClip_Drum2").setVisibility(false);
            §5!R§.getItemByName("MovieClip_Drum3").setVisibility(false);
            §5!R§.getItemByName("MovieClip_Drum4").setVisibility(false);
         }
         else
         {
            §5!R§.getItemByName("MovieClip_Drum1").setVisibility(true);
            §5!R§.getItemByName("MovieClip_Drum2").setVisibility(true);
            §5!R§.getItemByName("MovieClip_Drum3").setVisibility(true);
            §5!R§.getItemByName("MovieClip_Drum4").setVisibility(true);
         }
      }
      
      private function § X§() : void
      {
         this.§7_§();
         this.§3!W§ = new Timer(500);
         this.§]!E§ = 0;
         this.§3!W§.addEventListener(TimerEvent.TIMER,this.§"&§);
         this.§3!W§.start();
      }
      
      private function §7_§() : void
      {
         var _loc6_:int = 0;
         var _loc1_:int = §"!@§.§6!-§.§=o§(§2&§.§86§);
         var _loc2_:int = (§,!1§.§>o§ as §7c§).getScore();
         this.§&x§ = _loc2_ >= _loc1_;
         if(this.§&x§)
         {
            _loc1_ = _loc2_;
            §"!@§.§6!-§.§^!V§(§2&§.§86§,_loc1_);
         }
         else
         {
            §5!R§.setText("" + _loc1_.toString(),"TextField_BestScore");
            _loc6_ = §2&§.§4`§(§2&§.§86§,_loc1_);
            switch(_loc6_)
            {
               case 1:
                  (§5!R§.getItemByName("MovieClip_BestScoreStars") as §#!F§).§ for§("OneStar");
                  break;
               case 2:
                  (§5!R§.getItemByName("MovieClip_BestScoreStars") as §#!F§).§ for§("TwoStar");
                  break;
               case 3:
                  (§5!R§.getItemByName("MovieClip_BestScoreStars") as §#!F§).§ for§("ThreeStar");
            }
         }
         var _loc3_:int = §,!1§.§>o§.getEagleScore();
         var _loc4_:Number = §"!@§.§6!-§.§=[§(§2&§.§86§);
         var _loc5_:*;
         if(_loc5_ = _loc3_ > _loc4_)
         {
            _loc4_ = _loc3_;
            §"!@§.§6!-§.§;!D§(§2&§.§86§,_loc4_);
         }
         (§5!R§.getItemByName("MovieClip_NewHighScoreBadge") as §#!F§).setVisibility(false);
         (§5!R§.getItemByName("MovieClip_StarLeft") as §#!F§).mClip.gotoAndStop("UnLit");
         (§5!R§.getItemByName("MovieClip_StarCenter") as §#!F§).mClip.gotoAndStop("UnLit");
         (§5!R§.getItemByName("MovieClip_StarRight") as §#!F§).mClip.gotoAndStop("UnLit");
         (§5!R§.getItemByName("MovieClip_Drum1") as §#!F§).mClip.gotoAndStop("UnLit");
         (§5!R§.getItemByName("MovieClip_Drum2") as §#!F§).mClip.gotoAndStop("UnLit");
         (§5!R§.getItemByName("MovieClip_Drum3") as §#!F§).mClip.gotoAndStop("UnLit");
         (§5!R§.getItemByName("MovieClip_Drum4") as §#!F§).mClip.gotoAndStop("UnLit");
         (§5!R§.getItemByName("MovieClip_DrumBadge") as §#!F§).mClip.gotoAndStop("One");
      }
      
      private function §^X§() : void
      {
         if(this.§&x§)
         {
            §7I§.§[p§(§9;§);
            §7I§.playSound("Hiscore_Badge",§9;§);
            §5!R§.getItemByName("MovieClip_NewHighScore").setVisibility(true);
            §5!R§.getItemByName("MovieClip_BestScoreStars").setVisibility(false);
            §5!R§.getItemByName("MovieClip_BestScoreText").setVisibility(false);
            §5!R§.getItemByName("TextField_BestScore").setVisibility(false);
            this.§2!6§();
         }
         else
         {
            §5!R§.getItemByName("TextField_BestScore").setVisibility(true);
            §5!R§.getItemByName("MovieClip_BestScoreStars").setVisibility(true);
            §5!R§.getItemByName("MovieClip_BestScoreText").setVisibility(true);
         }
      }
      
      private function §2!6§() : void
      {
         this.§7p§ = (§5!R§.getItemByName("Container_LevelEndStripe") as §-!%§).x;
         this.§5h§ = (§5!R§.getItemByName("Container_LevelEndStripe") as §-!%§).y;
         this.§0!§ = §[j§;
      }
      
      private function §6!J§(param1:Number) : void
      {
         if(this.§0!§ <= 0)
         {
            (§5!R§.getItemByName("Container_LevelEndStripe") as §-!%§).x = this.§7p§;
            (§5!R§.getItemByName("Container_LevelEndStripe") as §-!%§).y = this.§5h§;
         }
         else
         {
            (§5!R§.getItemByName("Container_LevelEndStripe") as §-!%§).x = this.§7p§ + (Math.random() - 0.5) * (this.§0!§ / §[j§) * 20;
            (§5!R§.getItemByName("Container_LevelEndStripe") as §-!%§).y = this.§5h§ + (Math.random() - 0.5) * (this.§0!§ / §[j§) * 20;
         }
         this.§0!§ -= param1 / 10;
      }
      
      private function §"&§(param1:TimerEvent) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc6_:§3!2§ = null;
         var _loc7_:Number = NaN;
         var _loc4_:Number = §2&§.§<t§(§2&§.§86§).§8o§;
         var _loc5_:Number = §2&§.§<t§(§2&§.§86§).§1!M§;
         if((§5!R§.getItemByName("MovieClip_Drum1") as §#!F§).mClip.currentLabel == "UnLit" && this.§6-§ >= 1)
         {
            (§5!R§.getItemByName("MovieClip_DrumBadge") as §#!F§).mClip.gotoAndStop("One");
            this.§3!W§.delay = 600;
            this.§!!Z§ = true;
            _loc2_ = (§5!R§.getItemByName("MovieClip_Drum1") as §#!F§).x + (§5!R§.getItemByName("Container_LevelEndStripe") as §-!%§).x;
            _loc3_ = (§5!R§.getItemByName("MovieClip_Drum1") as §#!F§).y + (§5!R§.getItemByName("Container_LevelEndStripe") as §-!%§).y;
            this.§[0§ = new §<!+§(§"!@§.§`?§,§"!@§.§9!;§,_loc2_,_loc3_,§<!+§.§&! §,5,500);
            §5!R§.addChild(this.§[0§);
            this.§-!"§.push(this.§[0§);
            _loc2_ -= (§5!R§.getItemByName("Container_LevelEndStripe") as §-!%§).x;
            _loc3_ -= (§5!R§.getItemByName("Container_LevelEndStripe") as §-!%§).y + 40;
            if(this.§>F§)
            {
               this.§>F§.stop();
            }
            _loc6_ = §!!K§.§'!C§.§1W§(§!!K§.§'!C§.§'!H§(§5!R§.getItemByName("MovieClip_DrumBadge") as §#!F§,{"y":_loc3_ - 100},{"y":_loc3_},0.25,§!!K§.§<!G§),§!!K§.§'!C§.§'!H§(§5!R§.getItemByName("MovieClip_DrumBadge") as §#!F§,{"y":_loc3_},{"y":_loc3_ - 100},0.25,§!!K§.§#,§));
            this.§>F§ = §!!K§.§'!C§.§;_§(_loc6_,§!!K§.§'!C§.§'!H§(§5!R§.getItemByName("MovieClip_DrumBadge") as §#!F§,{"x":_loc2_},null,0.5,§!!K§.§<!G§));
            this.§>F§.onComplete = this.§3P§;
            this.§>F§.play();
         }
         else if((§5!R§.getItemByName("MovieClip_Drum2") as §#!F§).mClip.currentLabel == "UnLit" && this.§6-§ >= 2)
         {
            (§5!R§.getItemByName("MovieClip_DrumBadge") as §#!F§).mClip.gotoAndStop("One");
            _loc2_ = (§5!R§.getItemByName("MovieClip_Drum2") as §#!F§).x + (§5!R§.getItemByName("Container_LevelEndStripe") as §-!%§).x;
            _loc3_ = (§5!R§.getItemByName("MovieClip_Drum2") as §#!F§).y + (§5!R§.getItemByName("Container_LevelEndStripe") as §-!%§).y;
            this.§[0§ = new §<!+§(§"!@§.§`?§,§"!@§.§9!;§,_loc2_,_loc3_,§<!+§.§&! §,5,500);
            §5!R§.addChild(this.§[0§);
            this.§-!"§.push(this.§[0§);
            _loc2_ -= (§5!R§.getItemByName("Container_LevelEndStripe") as §-!%§).x;
            _loc3_ -= (§5!R§.getItemByName("Container_LevelEndStripe") as §-!%§).y + 40;
            if(this.§>F§)
            {
               this.§>F§.stop();
            }
            _loc6_ = §!!K§.§'!C§.§1W§(§!!K§.§'!C§.§'!H§(§5!R§.getItemByName("MovieClip_DrumBadge") as §#!F§,{"y":_loc3_ - 100},{"y":_loc3_},0.25,§!!K§.§<!G§),§!!K§.§'!C§.§'!H§(§5!R§.getItemByName("MovieClip_DrumBadge") as §#!F§,{"y":_loc3_},{"y":_loc3_ - 100},0.25,§!!K§.§#,§));
            this.§>F§ = §!!K§.§'!C§.§;_§(_loc6_,§!!K§.§'!C§.§'!H§(§5!R§.getItemByName("MovieClip_DrumBadge") as §#!F§,{"x":_loc2_},null,0.5,§!!K§.§<!G§));
            this.§>F§.onComplete = this.§3P§;
            this.§>F§.play();
         }
         else if((§5!R§.getItemByName("MovieClip_Drum3") as §#!F§).mClip.currentLabel == "UnLit" && this.§6-§ >= 3)
         {
            (§5!R§.getItemByName("MovieClip_DrumBadge") as §#!F§).mClip.gotoAndStop("One");
            _loc2_ = (§5!R§.getItemByName("MovieClip_Drum3") as §#!F§).x + (§5!R§.getItemByName("Container_LevelEndStripe") as §-!%§).x;
            _loc3_ = (§5!R§.getItemByName("MovieClip_Drum3") as §#!F§).y + (§5!R§.getItemByName("Container_LevelEndStripe") as §-!%§).y;
            this.§[0§ = new §<!+§(§"!@§.§`?§,§"!@§.§9!;§,_loc2_,_loc3_,§<!+§.§&! §,5,500);
            §5!R§.addChild(this.§[0§);
            this.§-!"§.push(this.§[0§);
            _loc2_ -= (§5!R§.getItemByName("Container_LevelEndStripe") as §-!%§).x;
            _loc3_ -= (§5!R§.getItemByName("Container_LevelEndStripe") as §-!%§).y + 40;
            if(this.§>F§)
            {
               this.§>F§.stop();
            }
            _loc6_ = §!!K§.§'!C§.§1W§(§!!K§.§'!C§.§'!H§(§5!R§.getItemByName("MovieClip_DrumBadge") as §#!F§,{"y":_loc3_ - 100},{"y":_loc3_},0.25,§!!K§.§<!G§),§!!K§.§'!C§.§'!H§(§5!R§.getItemByName("MovieClip_DrumBadge") as §#!F§,{"y":_loc3_},{"y":_loc3_ - 100},0.25,§!!K§.§#,§));
            this.§>F§ = §!!K§.§'!C§.§;_§(_loc6_,§!!K§.§'!C§.§'!H§(§5!R§.getItemByName("MovieClip_DrumBadge") as §#!F§,{"x":_loc2_},null,0.5,§!!K§.§<!G§));
            this.§>F§.onComplete = this.§3P§;
            this.§>F§.play();
         }
         else if((§5!R§.getItemByName("MovieClip_Drum4") as §#!F§).mClip.currentLabel == "UnLit" && this.§6-§ >= 4)
         {
            (§5!R§.getItemByName("MovieClip_DrumBadge") as §#!F§).mClip.gotoAndStop("One");
            _loc2_ = (§5!R§.getItemByName("MovieClip_Drum4") as §#!F§).x + (§5!R§.getItemByName("Container_LevelEndStripe") as §-!%§).x;
            _loc3_ = (§5!R§.getItemByName("MovieClip_Drum4") as §#!F§).y + (§5!R§.getItemByName("Container_LevelEndStripe") as §-!%§).y;
            this.§[0§ = new §<!+§(§"!@§.§`?§,§"!@§.§9!;§,_loc2_,_loc3_,§<!+§.§&! §,5,500);
            §5!R§.addChild(this.§[0§);
            this.§-!"§.push(this.§[0§);
            _loc2_ -= (§5!R§.getItemByName("Container_LevelEndStripe") as §-!%§).x;
            _loc3_ -= (§5!R§.getItemByName("Container_LevelEndStripe") as §-!%§).y + 40;
            if(this.§>F§)
            {
               this.§>F§.stop();
            }
            _loc6_ = §!!K§.§'!C§.§1W§(§!!K§.§'!C§.§'!H§(§5!R§.getItemByName("MovieClip_DrumBadge") as §#!F§,{"y":_loc3_ - 100},{"y":_loc3_},0.25,§!!K§.§<!G§),§!!K§.§'!C§.§'!H§(§5!R§.getItemByName("MovieClip_DrumBadge") as §#!F§,{"y":_loc3_},{"y":_loc3_ - 100},0.25,§!!K§.§#,§));
            this.§>F§ = §!!K§.§'!C§.§;_§(_loc6_,§!!K§.§'!C§.§'!H§(§5!R§.getItemByName("MovieClip_DrumBadge") as §#!F§,{"x":_loc2_},null,0.5,§!!K§.§<!G§));
            this.§>F§.onComplete = this.§3P§;
            this.§>F§.play();
         }
         else if(this.§!!Z§)
         {
            this.§!!Z§ = false;
            _loc2_ = 700;
            _loc3_ = (§5!R§.getItemByName("MovieClip_DrumBadge") as §#!F§).y;
            if(this.§>F§)
            {
               this.§>F§.stop();
            }
            _loc6_ = §!!K§.§'!C§.§1W§(§!!K§.§'!C§.§'!H§(§5!R§.getItemByName("MovieClip_DrumBadge") as §#!F§,{"y":_loc3_ - 100},{"y":_loc3_},0.25,§!!K§.§<!G§),§!!K§.§'!C§.§'!H§(§5!R§.getItemByName("MovieClip_DrumBadge") as §#!F§,{"y":_loc3_},{"y":_loc3_ - 100},0.25,§!!K§.§#,§));
            this.§>F§ = §!!K§.§'!C§.§;_§(_loc6_,§!!K§.§'!C§.§'!H§(§5!R§.getItemByName("MovieClip_DrumBadge") as §#!F§,{"x":_loc2_},null,0.5,§!!K§.§<!G§));
            this.§>F§.play();
         }
         else if((§5!R§.getItemByName("MovieClip_StarLeft") as §#!F§).mClip.currentLabel == "UnLit")
         {
            §7I§.playSound("Hiscore_Count",§4N§,100);
            §7I§.§[p§(§9;§);
            §7I§.playSound("Hiscore_Star_Splash1",§9;§);
            this.§3!W§.delay = 1000;
            this.§5!?§.§[N§(§,!1§.§>o§.getScore());
            _loc7_ = this.§5!?§.getValue() / _loc4_ * 2;
            this.§ f§ = §!!K§.§'!C§.§'!H§(this,{"mNewScoreCounter":this.§5!?§.getValue()},{"mNewScoreCounter":0},_loc7_);
            this.§ f§.onComplete = this.§]!V§;
            this.§ f§.play();
            (§5!R§.getItemByName("MovieClip_StarLeft") as §#!F§).mClip.gotoAndStop("Lit");
            _loc2_ = (§5!R§.getItemByName("MovieClip_StarLeft") as §#!F§).x + (§5!R§.getItemByName("Container_LevelEndStripe") as §-!%§).x;
            _loc3_ = (§5!R§.getItemByName("MovieClip_StarLeft") as §#!F§).y + (§5!R§.getItemByName("Container_LevelEndStripe") as §-!%§).y;
            this.§[0§ = new §<!+§(§"!@§.§`?§,§"!@§.§9!;§,_loc2_,_loc3_,§<!+§.§`!-§);
            §5!R§.addChild(this.§[0§);
            this.§-!"§.push(this.§[0§);
         }
         else if(this.§5!?§.getValue() >= _loc5_ && (§5!R§.getItemByName("MovieClip_StarCenter") as §#!F§).mClip.currentLabel == "UnLit")
         {
            §7I§.§[p§(§9;§);
            §7I§.playSound("Hiscore_Star_Splash2",§9;§);
            (§5!R§.getItemByName("MovieClip_StarCenter") as §#!F§).mClip.gotoAndStop("Lit");
            _loc2_ = (§5!R§.getItemByName("MovieClip_StarCenter") as §#!F§).x + (§5!R§.getItemByName("Container_LevelEndStripe") as §-!%§).x;
            _loc3_ = (§5!R§.getItemByName("MovieClip_StarCenter") as §#!F§).y + (§5!R§.getItemByName("Container_LevelEndStripe") as §-!%§).y;
            this.§[0§ = new §<!+§(§"!@§.§`?§,§"!@§.§9!;§,_loc2_,_loc3_,§<!+§.§=+§);
            §5!R§.addChild(this.§[0§);
            this.§-!"§.push(this.§[0§);
         }
         else if(this.§5!?§.getValue() >= _loc4_ && (§5!R§.getItemByName("MovieClip_StarRight") as §#!F§).mClip.currentLabel == "UnLit")
         {
            §7I§.§[p§(§9;§);
            §7I§.playSound("Hiscore_Star_Splash3",§9;§);
            (§5!R§.getItemByName("MovieClip_StarRight") as §#!F§).mClip.gotoAndStop("Lit");
            _loc2_ = (§5!R§.getItemByName("MovieClip_StarRight") as §#!F§).x + (§5!R§.getItemByName("Container_LevelEndStripe") as §-!%§).x;
            _loc3_ = (§5!R§.getItemByName("MovieClip_StarRight") as §#!F§).y + (§5!R§.getItemByName("Container_LevelEndStripe") as §-!%§).y;
            this.§[0§ = new §<!+§(§"!@§.§`?§,§"!@§.§9!;§,_loc2_,_loc3_,§<!+§.§;!§);
            §5!R§.addChild(this.§[0§);
            this.§-!"§.push(this.§[0§);
         }
         else if(!this.§5!4§)
         {
            this.§5!4§ = true;
         }
         else
         {
            this.§3!W§.stop();
            if(this.§&x§)
            {
               (§5!R§.getItemByName("MovieClip_NewHighScoreBadge") as §#!F§).setVisibility(true);
            }
            else
            {
               (§5!R§.getItemByName("MovieClip_NewHighScoreBadge") as §#!F§).setVisibility(false);
            }
            this.§0!&§ = §!!K§.§'!C§.§'!H§((§5!R§.getItemByName("MovieClip_NewHighScoreBadge") as §#!F§).mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":7,
               "scaleY":7
            },0.1);
            this.§0!&§.onComplete = this.§^X§;
            this.§0!&§.play();
         }
         ++this.§]!E§;
      }
      
      private function §3P§() : void
      {
         §7I§.§[p§(§9;§);
         (§5!R§.getItemByName("MovieClip_DrumBadge") as §#!F§).mClip.gotoAndStop("Two");
         if((§5!R§.getItemByName("MovieClip_Drum1") as §#!F§).mClip.currentLabel == "UnLit")
         {
            (§5!R§.getItemByName("MovieClip_Drum1") as §#!F§).mClip.gotoAndStop("Lit");
            §7I§.playSound("Drum_1_1",§9;§);
            §7I§.playSound("Drum_Explode_1_1",§9;§);
         }
         else if((§5!R§.getItemByName("MovieClip_Drum2") as §#!F§).mClip.currentLabel == "UnLit")
         {
            (§5!R§.getItemByName("MovieClip_Drum2") as §#!F§).mClip.gotoAndStop("Lit");
            §7I§.playSound("Drum_2_1",§9;§);
            §7I§.playSound("Drum_Explode_2_1",§9;§);
         }
         else if((§5!R§.getItemByName("MovieClip_Drum3") as §#!F§).mClip.currentLabel == "UnLit")
         {
            (§5!R§.getItemByName("MovieClip_Drum3") as §#!F§).mClip.gotoAndStop("Lit");
            §7I§.playSound("Drum_3_1",§9;§);
            §7I§.playSound("Drum_Explode_3_1",§9;§);
         }
         else if((§5!R§.getItemByName("MovieClip_Drum4") as §#!F§).mClip.currentLabel == "UnLit")
         {
            (§5!R§.getItemByName("MovieClip_Drum4") as §#!F§).mClip.gotoAndStop("Lit");
            §7I§.playSound("Drum_4_1",§9;§);
            §7I§.playSound("Drum_Explode_4_1",§9;§);
         }
      }
      
      private function §]!V§() : void
      {
         §7I§.§[p§(§4N§);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:§<!+§ = null;
         var _loc2_:int = super.run(param1);
         if(_loc2_ != § !!§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         §5!R§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScore");
         §5!R§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScoreEffects");
         for each(_loc3_ in this.§-!"§)
         {
            _loc3_.update(param1);
         }
         if(this.§0!§ > 0)
         {
            this.§6!J§(param1);
         }
         if(mNextState.length > 0)
         {
            return § !!§.STATE_STATUS_COMPLETED;
         }
         return § !!§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§@!N§.§66§(0);
         this.§;!Z§();
         this.§0!§ = 0;
         §7I§.§[p§(§4N§);
         (§5!R§.getItemByName("Button_Menu") as §;!P§).setComponentVisualState(§#!K§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§5!R§.getItemByName("Button_Replay") as §;!P§).setComponentVisualState(§#!K§.COMPONENT_STATE_ACTIVE_DEFAULT);
         §5!R§.setText("0","TextField_LevelEndScore");
         §5!R§.setText("0","TextField_LevelEndScoreEffects");
      }
      
      private function §;!Z§() : void
      {
         var _loc1_:§<!+§ = null;
         if(this.§3!W§)
         {
            this.§3!W§.stop();
            this.§3!W§.removeEventListener(TimerEvent.TIMER,this.§"&§);
         }
         for each(_loc1_ in this.§-!"§)
         {
            if(§5!R§.contains(_loc1_))
            {
               §5!R§.removeChild(_loc1_);
            }
            _loc1_.clean();
         }
         this.§-!"§ = new Vector.<§<!+§>();
         §5!R§.getItemByName("TextField_BestScore").setVisibility(false);
         §5!R§.getItemByName("MovieClip_BestScoreText").setVisibility(false);
         §5!R§.getItemByName("MovieClip_BestScoreStars").setVisibility(false);
         §5!R§.getItemByName("MovieClip_NewHighScore").setVisibility(false);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function keyUp(param1:KeyboardEvent) : void
      {
         super.keyUp(param1);
         if(param1.charCode == 32)
         {
            mNextState = §^6§;
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§<!%§) : void
      {
         super.uiInteractionHandler(param1,param2,param3);
         switch(param2)
         {
            case "NEXT_LEVEL":
               §4-§.§^!F§();
               mNextState = StateCutScene.§^6§;
               break;
            case "REPLAY":
               §4-§.§[^§();
               mNextState = §4-§.§^6§;
               break;
            case "MENU":
               mNextState = §"!@§.§9!L§;
         }
      }
   }
}
