package §@!P§
{
   import § !9§.§'!U§;
   import §!!L§.§&!R§;
   import §!!a§.§9G§;
   import §'b§.§'^§;
   import §'b§.§0!D§;
   import §'b§.§6!L§;
   import §1!'§.HighscoreSidebar;
   import §2!a§.§<@§;
   import §2!a§.§?O§;
   import §3!`§.§8h§;
   import §3!`§.§]&§;
   import §6l§.§ l§;
   import §6l§.§#!Z§;
   import §8S§.§,!;§;
   import §=F§.§"n§;
   import §>!8§.§4!0§;
   import §>!8§.§71§;
   import §>P§.§2!U§;
   import §`!7§.§[5§;
   import flash.events.KeyboardEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §!x§ extends §3!%§
   {
      
      public static const §'2§:String = "LevelEndState3";
      
      public static const §;E§:Number = 30;
      
      private static const §[!+§:String = "ScoreLoopCountChannel";
      
      private static const § A§:String = "EndScreenEffectChannel";
       
      
      private var §!!F§:§]&§;
      
      private var §+o§:§]&§;
      
      private var §7F§:Number;
      
      private var §2!7§:Number;
      
      private var §3!C§:Number;
      
      private var §[9§:Number;
      
      private var §0t§:Number;
      
      private var §!>§:int;
      
      private var §&0§:Boolean;
      
      private var §;T§:Boolean = false;
      
      private var § 5§:Timer;
      
      private var §&!B§:§?O§;
      
      private var §<!c§:§<@§;
      
      private var §%!b§:Vector.<§<@§>;
      
      public var mNewScoreCounter:int;
      
      private var §3J§:int;
      
      private var §&!]§:Boolean;
      
      private var §=!_§:§2!U§;
      
      private var §`s§:Boolean;
      
      private var §]J§:§]&§;
      
      private var §@!H§:Array;
      
      public function §!x§(param1:Boolean = false, param2:String = "LevelEndState3")
      {
         this.§=!_§ = new §2!U§();
         this.§@!H§ = [];
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §+!`§ = new §4!0§(this);
         §+!`§.init(§71§.§#X§.Views.View_LevelEndRio[0]);
         this.§%![§();
         this.§&!B§ = new §?O§(0,0,0,0);
         §+!`§.movieClip.addChildAt(this.§&!B§,§+!`§.movieClip.numChildren - 1);
         this.§%!b§ = new Vector.<§<@§>();
         §'!U§.§,m§(§[!+§,1,1);
         §'!U§.§,m§(§ A§,16,1);
         this.§[9§ = §+!`§.getItemByName("MovieClip_DrumBadge").x;
         this.§0t§ = §+!`§.getItemByName("MovieClip_DrumBadge").x;
      }
      
      protected function §%![§() : void
      {
         this.§@!H§.push(§+!`§.getItemByName("Button_Menu").x);
         this.§@!H§.push(§+!`§.getItemByName("Button_Replay").x);
         this.§@!H§.push(§+!`§.getItemByName("Button_Next").x);
      }
      
      protected function §?!J§(param1:Boolean) : void
      {
         §+!`§.getItemByName("Button_Menu").setVisibility(true);
         §+!`§.getItemByName("Button_Replay").setVisibility(true);
         if(param1)
         {
            §+!`§.getItemByName("Button_Next").setVisibility(true);
            §+!`§.getItemByName("Button_Menu").x = this.§@!H§[0];
            §+!`§.getItemByName("Button_Replay").x = this.§@!H§[1];
            §+!`§.getItemByName("Button_Next").x = this.§@!H§[2];
         }
         else
         {
            §+!`§.getItemByName("Button_Next").setVisibility(false);
            §+!`§.getItemByName("Button_Menu").x = this.§@!H§[0] + Math.abs(this.§@!H§[1] - this.§@!H§[0]) / 2;
            §+!`§.getItemByName("Button_Replay").x = this.§@!H§[1] + Math.abs(this.§@!H§[2] - this.§@!H§[1]) / 2 + §+!`§.getItemByName("Button_Replay").width / 4;
         }
      }
      
      override public function activate() : void
      {
         super.activate();
         §@<§.enableHelpButton(false);
         §"n§.§[b§.§+!U§(true);
         this.mNewScoreCounter = 0;
         this.§&!]§ = false;
         §'!U§.playSound("LevelCompletedTheme1");
         this.§&!B§.§<!S§(0.7);
         this.§]!&§();
         this.§!>§ = §=i§.§2S§.§!!Q§();
         §+!`§.getItemByName("MovieClip_DrumBadge").x = this.§[9§;
         §+!`§.getItemByName("MovieClip_DrumBadge").x = this.§0t§;
         this.§&0§ = false;
         §[5§.§=!I§();
         this.§?!J§(§[5§.§!_§(§9G§.§7!X§()));
      }
      
      override protected function setInitialState() : void
      {
         if(§9G§.§=!1§ == 0)
         {
            §@<§.changeState(HighscoreSidebar.§%A§);
            §+!`§.getItemByName("MovieClip_Drum1").setVisibility(false);
            §+!`§.getItemByName("MovieClip_Drum2").setVisibility(false);
            §+!`§.getItemByName("MovieClip_Drum3").setVisibility(false);
            §+!`§.getItemByName("MovieClip_Drum4").setVisibility(false);
         }
         else
         {
            §@<§.changeState(§@<§.currentState);
            §+!`§.getItemByName("MovieClip_Drum1").setVisibility(true);
            §+!`§.getItemByName("MovieClip_Drum2").setVisibility(true);
            §+!`§.getItemByName("MovieClip_Drum3").setVisibility(true);
            §+!`§.getItemByName("MovieClip_Drum4").setVisibility(true);
         }
      }
      
      private function §]!&§() : void
      {
         this.§@!b§();
         this.§ 5§ = new Timer(500);
         this.§3J§ = 0;
         this.§ 5§.addEventListener(TimerEvent.TIMER,this.§=>§);
         this.§ 5§.start();
      }
      
      private function §@!b§() : void
      {
         var _loc6_:int = 0;
         var _loc1_:int = §=i§.§2S§.§9!T§(§9G§.§>>§);
         var _loc2_:int = (§"n§.§5]§ as §,!;§).getScore();
         this.§`s§ = _loc2_ >= _loc1_;
         if(this.§`s§)
         {
            _loc1_ = _loc2_;
            §=i§.§2S§.§,4§(§9G§.§>>§,_loc1_);
         }
         else
         {
            §+!`§.setText("" + _loc1_.toString(),"TextField_BestScore");
            _loc6_ = §9G§.§@!Z§(§9G§.§>>§,_loc1_);
            switch(_loc6_)
            {
               case 1:
                  (§+!`§.getItemByName("MovieClip_BestScoreStars") as §6!L§).§"A§("OneStar");
                  break;
               case 2:
                  (§+!`§.getItemByName("MovieClip_BestScoreStars") as §6!L§).§"A§("TwoStar");
                  break;
               case 3:
                  (§+!`§.getItemByName("MovieClip_BestScoreStars") as §6!L§).§"A§("ThreeStar");
            }
         }
         var _loc3_:int = §"n§.§5]§.getEagleScore();
         var _loc4_:Number = §=i§.§2S§.§32§(§9G§.§>>§);
         var _loc5_:*;
         if(_loc5_ = _loc3_ > _loc4_)
         {
            _loc4_ = _loc3_;
            §=i§.§2S§.§&w§(§9G§.§>>§,_loc4_);
         }
         (§+!`§.getItemByName("MovieClip_NewHighScoreBadge") as §6!L§).setVisibility(false);
         (§+!`§.getItemByName("MovieClip_StarLeft") as §6!L§).mClip.gotoAndStop("UnLit");
         (§+!`§.getItemByName("MovieClip_StarCenter") as §6!L§).mClip.gotoAndStop("UnLit");
         (§+!`§.getItemByName("MovieClip_StarRight") as §6!L§).mClip.gotoAndStop("UnLit");
         (§+!`§.getItemByName("MovieClip_Drum1") as §6!L§).mClip.gotoAndStop("UnLit");
         (§+!`§.getItemByName("MovieClip_Drum2") as §6!L§).mClip.gotoAndStop("UnLit");
         (§+!`§.getItemByName("MovieClip_Drum3") as §6!L§).mClip.gotoAndStop("UnLit");
         (§+!`§.getItemByName("MovieClip_Drum4") as §6!L§).mClip.gotoAndStop("UnLit");
         (§+!`§.getItemByName("MovieClip_DrumBadge") as §6!L§).mClip.gotoAndStop("One");
      }
      
      private function §;=§() : void
      {
         if(this.§`s§)
         {
            §'!U§.§;&§(§ A§);
            §'!U§.playSound("Hiscore_Badge",§ A§);
            §+!`§.getItemByName("MovieClip_NewHighScore").setVisibility(true);
            §+!`§.getItemByName("MovieClip_BestScoreStars").setVisibility(false);
            §+!`§.getItemByName("MovieClip_BestScoreText").setVisibility(false);
            §+!`§.getItemByName("TextField_BestScore").setVisibility(false);
            this.§9-§();
         }
         else
         {
            §+!`§.getItemByName("TextField_BestScore").setVisibility(true);
            §+!`§.getItemByName("MovieClip_BestScoreStars").setVisibility(true);
            §+!`§.getItemByName("MovieClip_BestScoreText").setVisibility(true);
         }
      }
      
      private function §9-§() : void
      {
         this.§2!7§ = (§+!`§.getItemByName("Container_LevelEndStripe") as §'^§).x;
         this.§3!C§ = (§+!`§.getItemByName("Container_LevelEndStripe") as §'^§).y;
         this.§7F§ = §;E§;
      }
      
      private function §;9§(param1:Number) : void
      {
         if(this.§7F§ <= 0)
         {
            (§+!`§.getItemByName("Container_LevelEndStripe") as §'^§).x = this.§2!7§;
            (§+!`§.getItemByName("Container_LevelEndStripe") as §'^§).y = this.§3!C§;
         }
         else
         {
            (§+!`§.getItemByName("Container_LevelEndStripe") as §'^§).x = this.§2!7§ + (Math.random() - 0.5) * (this.§7F§ / §;E§) * 20;
            (§+!`§.getItemByName("Container_LevelEndStripe") as §'^§).y = this.§3!C§ + (Math.random() - 0.5) * (this.§7F§ / §;E§) * 20;
         }
         this.§7F§ -= param1 / 10;
      }
      
      private function §=>§(param1:TimerEvent) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc6_:§]&§ = null;
         var _loc7_:Number = NaN;
         var _loc4_:Number = §9G§.§6t§(§9G§.§>>§).§7H§;
         var _loc5_:Number = §9G§.§6t§(§9G§.§>>§).§8!E§;
         if((§+!`§.getItemByName("MovieClip_Drum1") as §6!L§).mClip.currentLabel == "UnLit" && this.§!>§ >= 1)
         {
            (§+!`§.getItemByName("MovieClip_DrumBadge") as §6!L§).mClip.gotoAndStop("One");
            this.§ 5§.delay = 600;
            this.§&0§ = true;
            _loc2_ = (§+!`§.getItemByName("MovieClip_Drum1") as §6!L§).x + (§+!`§.getItemByName("Container_LevelEndStripe") as §'^§).x;
            _loc3_ = (§+!`§.getItemByName("MovieClip_Drum1") as §6!L§).y + (§+!`§.getItemByName("Container_LevelEndStripe") as §'^§).y;
            this.§<!c§ = new §<@§(§=i§.§'0§,§=i§.§8-§,_loc2_,_loc3_,§<@§.§]8§,5,500);
            §+!`§.addChild(this.§<!c§);
            this.§%!b§.push(this.§<!c§);
            _loc2_ -= (§+!`§.getItemByName("Container_LevelEndStripe") as §'^§).x;
            _loc3_ -= (§+!`§.getItemByName("Container_LevelEndStripe") as §'^§).y + 40;
            if(this.§+o§)
            {
               this.§+o§.stop();
            }
            _loc6_ = §8h§.§`G§.§,!6§(§8h§.§`G§.§[O§(§+!`§.getItemByName("MovieClip_DrumBadge") as §6!L§,{"y":_loc3_ - 100},{"y":_loc3_},0.25,§8h§.§3!E§),§8h§.§`G§.§[O§(§+!`§.getItemByName("MovieClip_DrumBadge") as §6!L§,{"y":_loc3_},{"y":_loc3_ - 100},0.25,§8h§.§#H§));
            this.§+o§ = §8h§.§`G§.§8!U§(_loc6_,§8h§.§`G§.§[O§(§+!`§.getItemByName("MovieClip_DrumBadge") as §6!L§,{"x":_loc2_},null,0.5,§8h§.§3!E§));
            this.§+o§.onComplete = this.§"Z§;
            this.§+o§.play();
         }
         else if((§+!`§.getItemByName("MovieClip_Drum2") as §6!L§).mClip.currentLabel == "UnLit" && this.§!>§ >= 2)
         {
            (§+!`§.getItemByName("MovieClip_DrumBadge") as §6!L§).mClip.gotoAndStop("One");
            _loc2_ = (§+!`§.getItemByName("MovieClip_Drum2") as §6!L§).x + (§+!`§.getItemByName("Container_LevelEndStripe") as §'^§).x;
            _loc3_ = (§+!`§.getItemByName("MovieClip_Drum2") as §6!L§).y + (§+!`§.getItemByName("Container_LevelEndStripe") as §'^§).y;
            this.§<!c§ = new §<@§(§=i§.§'0§,§=i§.§8-§,_loc2_,_loc3_,§<@§.§]8§,5,500);
            §+!`§.addChild(this.§<!c§);
            this.§%!b§.push(this.§<!c§);
            _loc2_ -= (§+!`§.getItemByName("Container_LevelEndStripe") as §'^§).x;
            _loc3_ -= (§+!`§.getItemByName("Container_LevelEndStripe") as §'^§).y + 40;
            if(this.§+o§)
            {
               this.§+o§.stop();
            }
            _loc6_ = §8h§.§`G§.§,!6§(§8h§.§`G§.§[O§(§+!`§.getItemByName("MovieClip_DrumBadge") as §6!L§,{"y":_loc3_ - 100},{"y":_loc3_},0.25,§8h§.§3!E§),§8h§.§`G§.§[O§(§+!`§.getItemByName("MovieClip_DrumBadge") as §6!L§,{"y":_loc3_},{"y":_loc3_ - 100},0.25,§8h§.§#H§));
            this.§+o§ = §8h§.§`G§.§8!U§(_loc6_,§8h§.§`G§.§[O§(§+!`§.getItemByName("MovieClip_DrumBadge") as §6!L§,{"x":_loc2_},null,0.5,§8h§.§3!E§));
            this.§+o§.onComplete = this.§"Z§;
            this.§+o§.play();
         }
         else if((§+!`§.getItemByName("MovieClip_Drum3") as §6!L§).mClip.currentLabel == "UnLit" && this.§!>§ >= 3)
         {
            (§+!`§.getItemByName("MovieClip_DrumBadge") as §6!L§).mClip.gotoAndStop("One");
            _loc2_ = (§+!`§.getItemByName("MovieClip_Drum3") as §6!L§).x + (§+!`§.getItemByName("Container_LevelEndStripe") as §'^§).x;
            _loc3_ = (§+!`§.getItemByName("MovieClip_Drum3") as §6!L§).y + (§+!`§.getItemByName("Container_LevelEndStripe") as §'^§).y;
            this.§<!c§ = new §<@§(§=i§.§'0§,§=i§.§8-§,_loc2_,_loc3_,§<@§.§]8§,5,500);
            §+!`§.addChild(this.§<!c§);
            this.§%!b§.push(this.§<!c§);
            _loc2_ -= (§+!`§.getItemByName("Container_LevelEndStripe") as §'^§).x;
            _loc3_ -= (§+!`§.getItemByName("Container_LevelEndStripe") as §'^§).y + 40;
            if(this.§+o§)
            {
               this.§+o§.stop();
            }
            _loc6_ = §8h§.§`G§.§,!6§(§8h§.§`G§.§[O§(§+!`§.getItemByName("MovieClip_DrumBadge") as §6!L§,{"y":_loc3_ - 100},{"y":_loc3_},0.25,§8h§.§3!E§),§8h§.§`G§.§[O§(§+!`§.getItemByName("MovieClip_DrumBadge") as §6!L§,{"y":_loc3_},{"y":_loc3_ - 100},0.25,§8h§.§#H§));
            this.§+o§ = §8h§.§`G§.§8!U§(_loc6_,§8h§.§`G§.§[O§(§+!`§.getItemByName("MovieClip_DrumBadge") as §6!L§,{"x":_loc2_},null,0.5,§8h§.§3!E§));
            this.§+o§.onComplete = this.§"Z§;
            this.§+o§.play();
         }
         else if((§+!`§.getItemByName("MovieClip_Drum4") as §6!L§).mClip.currentLabel == "UnLit" && this.§!>§ >= 4)
         {
            (§+!`§.getItemByName("MovieClip_DrumBadge") as §6!L§).mClip.gotoAndStop("One");
            _loc2_ = (§+!`§.getItemByName("MovieClip_Drum4") as §6!L§).x + (§+!`§.getItemByName("Container_LevelEndStripe") as §'^§).x;
            _loc3_ = (§+!`§.getItemByName("MovieClip_Drum4") as §6!L§).y + (§+!`§.getItemByName("Container_LevelEndStripe") as §'^§).y;
            this.§<!c§ = new §<@§(§=i§.§'0§,§=i§.§8-§,_loc2_,_loc3_,§<@§.§]8§,5,500);
            §+!`§.addChild(this.§<!c§);
            this.§%!b§.push(this.§<!c§);
            _loc2_ -= (§+!`§.getItemByName("Container_LevelEndStripe") as §'^§).x;
            _loc3_ -= (§+!`§.getItemByName("Container_LevelEndStripe") as §'^§).y + 40;
            if(this.§+o§)
            {
               this.§+o§.stop();
            }
            _loc6_ = §8h§.§`G§.§,!6§(§8h§.§`G§.§[O§(§+!`§.getItemByName("MovieClip_DrumBadge") as §6!L§,{"y":_loc3_ - 100},{"y":_loc3_},0.25,§8h§.§3!E§),§8h§.§`G§.§[O§(§+!`§.getItemByName("MovieClip_DrumBadge") as §6!L§,{"y":_loc3_},{"y":_loc3_ - 100},0.25,§8h§.§#H§));
            this.§+o§ = §8h§.§`G§.§8!U§(_loc6_,§8h§.§`G§.§[O§(§+!`§.getItemByName("MovieClip_DrumBadge") as §6!L§,{"x":_loc2_},null,0.5,§8h§.§3!E§));
            this.§+o§.onComplete = this.§"Z§;
            this.§+o§.play();
         }
         else if(this.§&0§)
         {
            this.§&0§ = false;
            _loc2_ = 700;
            _loc3_ = (§+!`§.getItemByName("MovieClip_DrumBadge") as §6!L§).y;
            if(this.§+o§)
            {
               this.§+o§.stop();
            }
            _loc6_ = §8h§.§`G§.§,!6§(§8h§.§`G§.§[O§(§+!`§.getItemByName("MovieClip_DrumBadge") as §6!L§,{"y":_loc3_ - 100},{"y":_loc3_},0.25,§8h§.§3!E§),§8h§.§`G§.§[O§(§+!`§.getItemByName("MovieClip_DrumBadge") as §6!L§,{"y":_loc3_},{"y":_loc3_ - 100},0.25,§8h§.§#H§));
            this.§+o§ = §8h§.§`G§.§8!U§(_loc6_,§8h§.§`G§.§[O§(§+!`§.getItemByName("MovieClip_DrumBadge") as §6!L§,{"x":_loc2_},null,0.5,§8h§.§3!E§));
            this.§+o§.play();
         }
         else if((§+!`§.getItemByName("MovieClip_StarLeft") as §6!L§).mClip.currentLabel == "UnLit")
         {
            §'!U§.playSound("Hiscore_Count",§[!+§,100);
            §'!U§.§;&§(§ A§);
            §'!U§.playSound("Hiscore_Star_Splash1",§ A§);
            this.§ 5§.delay = 1000;
            this.§=!_§.§3u§(§"n§.§5]§.getScore());
            _loc7_ = this.§=!_§.getValue() / _loc4_ * 2;
            this.§]J§ = §8h§.§`G§.§[O§(this,{"mNewScoreCounter":this.§=!_§.getValue()},{"mNewScoreCounter":0},_loc7_);
            this.§]J§.onComplete = this.§<!%§;
            this.§]J§.play();
            (§+!`§.getItemByName("MovieClip_StarLeft") as §6!L§).mClip.gotoAndStop("Lit");
            _loc2_ = (§+!`§.getItemByName("MovieClip_StarLeft") as §6!L§).x + (§+!`§.getItemByName("Container_LevelEndStripe") as §'^§).x;
            _loc3_ = (§+!`§.getItemByName("MovieClip_StarLeft") as §6!L§).y + (§+!`§.getItemByName("Container_LevelEndStripe") as §'^§).y;
            this.§<!c§ = new §<@§(§=i§.§'0§,§=i§.§8-§,_loc2_,_loc3_,§<@§.§!;§);
            §+!`§.addChild(this.§<!c§);
            this.§%!b§.push(this.§<!c§);
         }
         else if(this.§=!_§.getValue() >= _loc5_ && (§+!`§.getItemByName("MovieClip_StarCenter") as §6!L§).mClip.currentLabel == "UnLit")
         {
            §'!U§.§;&§(§ A§);
            §'!U§.playSound("Hiscore_Star_Splash2",§ A§);
            (§+!`§.getItemByName("MovieClip_StarCenter") as §6!L§).mClip.gotoAndStop("Lit");
            _loc2_ = (§+!`§.getItemByName("MovieClip_StarCenter") as §6!L§).x + (§+!`§.getItemByName("Container_LevelEndStripe") as §'^§).x;
            _loc3_ = (§+!`§.getItemByName("MovieClip_StarCenter") as §6!L§).y + (§+!`§.getItemByName("Container_LevelEndStripe") as §'^§).y;
            this.§<!c§ = new §<@§(§=i§.§'0§,§=i§.§8-§,_loc2_,_loc3_,§<@§.§;!M§);
            §+!`§.addChild(this.§<!c§);
            this.§%!b§.push(this.§<!c§);
         }
         else if(this.§=!_§.getValue() >= _loc4_ && (§+!`§.getItemByName("MovieClip_StarRight") as §6!L§).mClip.currentLabel == "UnLit")
         {
            §'!U§.§;&§(§ A§);
            §'!U§.playSound("Hiscore_Star_Splash3",§ A§);
            (§+!`§.getItemByName("MovieClip_StarRight") as §6!L§).mClip.gotoAndStop("Lit");
            _loc2_ = (§+!`§.getItemByName("MovieClip_StarRight") as §6!L§).x + (§+!`§.getItemByName("Container_LevelEndStripe") as §'^§).x;
            _loc3_ = (§+!`§.getItemByName("MovieClip_StarRight") as §6!L§).y + (§+!`§.getItemByName("Container_LevelEndStripe") as §'^§).y;
            this.§<!c§ = new §<@§(§=i§.§'0§,§=i§.§8-§,_loc2_,_loc3_,§<@§.§'!c§);
            §+!`§.addChild(this.§<!c§);
            this.§%!b§.push(this.§<!c§);
         }
         else if(!this.§&!]§)
         {
            this.§&!]§ = true;
         }
         else
         {
            this.§ 5§.stop();
            if(this.§`s§)
            {
               (§+!`§.getItemByName("MovieClip_NewHighScoreBadge") as §6!L§).setVisibility(true);
            }
            else
            {
               (§+!`§.getItemByName("MovieClip_NewHighScoreBadge") as §6!L§).setVisibility(false);
            }
            this.§!!F§ = §8h§.§`G§.§[O§((§+!`§.getItemByName("MovieClip_NewHighScoreBadge") as §6!L§).mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":7,
               "scaleY":7
            },0.1);
            this.§!!F§.onComplete = this.§;=§;
            this.§!!F§.play();
         }
         ++this.§3J§;
      }
      
      private function §"Z§() : void
      {
         §'!U§.§;&§(§ A§);
         (§+!`§.getItemByName("MovieClip_DrumBadge") as §6!L§).mClip.gotoAndStop("Two");
         if((§+!`§.getItemByName("MovieClip_Drum1") as §6!L§).mClip.currentLabel == "UnLit")
         {
            (§+!`§.getItemByName("MovieClip_Drum1") as §6!L§).mClip.gotoAndStop("Lit");
            §'!U§.playSound("Drum_1_1",§ A§);
            §'!U§.playSound("Drum_Explode_1_1",§ A§);
         }
         else if((§+!`§.getItemByName("MovieClip_Drum2") as §6!L§).mClip.currentLabel == "UnLit")
         {
            (§+!`§.getItemByName("MovieClip_Drum2") as §6!L§).mClip.gotoAndStop("Lit");
            §'!U§.playSound("Drum_2_1",§ A§);
            §'!U§.playSound("Drum_Explode_2_1",§ A§);
         }
         else if((§+!`§.getItemByName("MovieClip_Drum3") as §6!L§).mClip.currentLabel == "UnLit")
         {
            (§+!`§.getItemByName("MovieClip_Drum3") as §6!L§).mClip.gotoAndStop("Lit");
            §'!U§.playSound("Drum_3_1",§ A§);
            §'!U§.playSound("Drum_Explode_3_1",§ A§);
         }
         else if((§+!`§.getItemByName("MovieClip_Drum4") as §6!L§).mClip.currentLabel == "UnLit")
         {
            (§+!`§.getItemByName("MovieClip_Drum4") as §6!L§).mClip.gotoAndStop("Lit");
            §'!U§.playSound("Drum_4_1",§ A§);
            §'!U§.playSound("Drum_Explode_4_1",§ A§);
         }
      }
      
      private function §<!%§() : void
      {
         §'!U§.§;&§(§[!+§);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:§<@§ = null;
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §&!R§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         §+!`§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScore");
         §+!`§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScoreEffects");
         for each(_loc3_ in this.§%!b§)
         {
            _loc3_.update(param1);
         }
         if(this.§7F§ > 0)
         {
            this.§;9§(param1);
         }
         if(mNextState.length > 0)
         {
            return §&!R§.STATE_STATUS_COMPLETED;
         }
         return §&!R§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§&!B§.§<#§(0);
         this.§<!2§();
         this.§7F§ = 0;
         §'!U§.§;&§(§[!+§);
         (§+!`§.getItemByName("Button_Menu") as §0!D§).setComponentVisualState(§ l§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§+!`§.getItemByName("Button_Replay") as §0!D§).setComponentVisualState(§ l§.COMPONENT_STATE_ACTIVE_DEFAULT);
         §+!`§.setText("0","TextField_LevelEndScore");
         §+!`§.setText("0","TextField_LevelEndScoreEffects");
      }
      
      private function §<!2§() : void
      {
         var _loc1_:§<@§ = null;
         if(this.§ 5§)
         {
            this.§ 5§.stop();
            this.§ 5§.removeEventListener(TimerEvent.TIMER,this.§=>§);
         }
         for each(_loc1_ in this.§%!b§)
         {
            if(§+!`§.contains(_loc1_))
            {
               §+!`§.removeChild(_loc1_);
            }
            _loc1_.clean();
         }
         this.§%!b§ = new Vector.<§<@§>();
         §+!`§.getItemByName("TextField_BestScore").setVisibility(false);
         §+!`§.getItemByName("MovieClip_BestScoreText").setVisibility(false);
         §+!`§.getItemByName("MovieClip_BestScoreStars").setVisibility(false);
         §+!`§.getItemByName("MovieClip_NewHighScore").setVisibility(false);
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
            mNextState = §'2§;
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§#!Z§) : void
      {
         super.uiInteractionHandler(param1,param2,param3);
         switch(param2)
         {
            case "NEXT_LEVEL":
               §'!-§.§>t§();
               mNextState = StateCutScene.§'2§;
               break;
            case "REPLAY":
               §'!-§.§^4§();
               mNextState = §'!-§.§'2§;
               break;
            case "MENU":
               mNextState = §=i§.§0!U§;
         }
      }
   }
}
