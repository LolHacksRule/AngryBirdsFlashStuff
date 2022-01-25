package §>I§
{
   import § !C§.§6!W§;
   import §"m§.§3]§;
   import §%!^§.§"=§;
   import §&$§.§!!R§;
   import §&V§.§4o§;
   import §&V§.§9t§;
   import §+x§.§-6§;
   import §-"§.§,_§;
   import §0!_§.§-!F§;
   import §0!_§.§>!'§;
   import §0!b§.§#!=§;
   import §68§.§0_§;
   import §68§.§4!;§;
   import §68§.§`?§;
   import §7H§.§'!Y§;
   import §7H§.§8Q§;
   import §^6§.§5@§;
   import §^6§.§;l§;
   import flash.events.KeyboardEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §3!R§ extends §for §
   {
      
      public static const § !P§:String = "LevelEndState3";
      
      public static const §?O§:Number = 30;
      
      private static const §#!J§:String = "ScoreLoopCountChannel";
      
      private static const §^M§:String = "EndScreenEffectChannel";
       
      
      private var §?!,§:§'!Y§;
      
      private var §9!M§:§'!Y§;
      
      private var §8K§:Number;
      
      private var §"!P§:Number;
      
      private var §+![§:Number;
      
      private var §1!&§:Number;
      
      private var §@1§:Number;
      
      private var §+!W§:int;
      
      private var § i§:Boolean;
      
      private var §<!1§:Boolean = false;
      
      private var §;!^§:Timer;
      
      private var §,]§:§>!'§;
      
      private var §@!S§:§-!F§;
      
      private var §]!B§:Vector.<§-!F§>;
      
      public var mNewScoreCounter:int;
      
      private var §^E§:int;
      
      private var §^!B§:Boolean;
      
      private var §14§:§!!R§;
      
      private var §;d§:Boolean;
      
      private var §!!V§:§'!Y§;
      
      private var §>V§:Array;
      
      public function §3!R§(param1:Boolean = false, param2:String = "LevelEndState3")
      {
         this.§14§ = new §!!R§();
         this.§>V§ = [];
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §^!;§ = new §;l§(this);
         §^!;§.init(§5@§.§^!1§.Views.View_LevelEndRio[0]);
         this.§ e§();
         this.§,]§ = new §>!'§(0,0,0,0);
         §^!;§.movieClip.addChildAt(this.§,]§,§^!;§.movieClip.numChildren - 1);
         this.§]!B§ = new Vector.<§-!F§>();
         §-6§.§;!J§(§#!J§,1,1);
         §-6§.§;!J§(§^M§,16,1);
         this.§1!&§ = §^!;§.getItemByName("MovieClip_DrumBadge").x;
         this.§@1§ = §^!;§.getItemByName("MovieClip_DrumBadge").x;
      }
      
      protected function § e§() : void
      {
         this.§>V§.push(§^!;§.getItemByName("Button_Menu").x);
         this.§>V§.push(§^!;§.getItemByName("Button_Replay").x);
         this.§>V§.push(§^!;§.getItemByName("Button_Next").x);
      }
      
      protected function §,2§(param1:Boolean) : void
      {
         §^!;§.getItemByName("Button_Menu").setVisibility(true);
         §^!;§.getItemByName("Button_Replay").setVisibility(true);
         if(param1)
         {
            §^!;§.getItemByName("Button_Next").setVisibility(true);
            §^!;§.getItemByName("Button_Menu").x = this.§>V§[0];
            §^!;§.getItemByName("Button_Replay").x = this.§>V§[1];
            §^!;§.getItemByName("Button_Next").x = this.§>V§[2];
         }
         else
         {
            §^!;§.getItemByName("Button_Next").setVisibility(false);
            §^!;§.getItemByName("Button_Menu").x = this.§>V§[0] + Math.abs(this.§>V§[1] - this.§>V§[0]) / 2;
            §^!;§.getItemByName("Button_Replay").x = this.§>V§[1] + Math.abs(this.§>V§[2] - this.§>V§[1]) / 2 + §^!;§.getItemByName("Button_Replay").width / 4;
         }
      }
      
      override public function activate() : void
      {
         super.activate();
         §^c§.enableHelpButton(false);
         §#!=§.§&![§.§[!&§(true);
         this.mNewScoreCounter = 0;
         this.§^!B§ = false;
         §-6§.§6!#§("LevelCompletedTheme1");
         this.§,]§.§6k§(0.7);
         this.§]!9§();
         this.§+!W§ = §-!#§.§4,§.§3!&§();
         §^!;§.getItemByName("MovieClip_DrumBadge").x = this.§1!&§;
         §^!;§.getItemByName("MovieClip_DrumBadge").x = this.§@1§;
         this.§ i§ = false;
         §,_§.§%t§();
         §^c§.changeState(§^c§.currentState);
         this.§,2§(§,_§.§%!F§(§"=§.§9D§()));
      }
      
      override protected function setInitialState() : void
      {
         if(§"=§.§<q§ == 0)
         {
            §^!;§.getItemByName("MovieClip_Drum1").setVisibility(false);
            §^!;§.getItemByName("MovieClip_Drum2").setVisibility(false);
            §^!;§.getItemByName("MovieClip_Drum3").setVisibility(false);
            §^!;§.getItemByName("MovieClip_Drum4").setVisibility(false);
         }
         else
         {
            §^!;§.getItemByName("MovieClip_Drum1").setVisibility(true);
            §^!;§.getItemByName("MovieClip_Drum2").setVisibility(true);
            §^!;§.getItemByName("MovieClip_Drum3").setVisibility(true);
            §^!;§.getItemByName("MovieClip_Drum4").setVisibility(true);
         }
      }
      
      private function §]!9§() : void
      {
         this.§#M§();
         this.§;!^§ = new Timer(500);
         this.§^E§ = 0;
         this.§;!^§.addEventListener(TimerEvent.TIMER,this.§`,§);
         this.§;!^§.start();
      }
      
      private function §#M§() : void
      {
         var _loc6_:int = 0;
         var _loc1_:int = §-!#§.§4,§.§!G§(§"=§.§?x§);
         var _loc2_:int = (§#!=§.§3!W§ as §3]§).getScore();
         this.§;d§ = _loc2_ >= _loc1_;
         if(this.§;d§)
         {
            _loc1_ = _loc2_;
            §-!#§.§4,§.§=!+§(§"=§.§?x§,_loc1_);
         }
         else
         {
            §^!;§.setText("" + _loc1_.toString(),"TextField_BestScore");
            _loc6_ = §"=§.§]K§(§"=§.§?x§,_loc1_);
            switch(_loc6_)
            {
               case 1:
                  (§^!;§.getItemByName("MovieClip_BestScoreStars") as §4!;§).§<!!§("OneStar");
                  break;
               case 2:
                  (§^!;§.getItemByName("MovieClip_BestScoreStars") as §4!;§).§<!!§("TwoStar");
                  break;
               case 3:
                  (§^!;§.getItemByName("MovieClip_BestScoreStars") as §4!;§).§<!!§("ThreeStar");
            }
         }
         var _loc3_:int = §#!=§.§3!W§.getEagleScore();
         var _loc4_:Number = §-!#§.§4,§.§5!b§(§"=§.§?x§);
         var _loc5_:*;
         if(_loc5_ = _loc3_ > _loc4_)
         {
            _loc4_ = _loc3_;
            §-!#§.§4,§.§@!W§(§"=§.§?x§,_loc4_);
         }
         (§^!;§.getItemByName("MovieClip_NewHighScoreBadge") as §4!;§).setVisibility(false);
         (§^!;§.getItemByName("MovieClip_StarLeft") as §4!;§).mClip.gotoAndStop("UnLit");
         (§^!;§.getItemByName("MovieClip_StarCenter") as §4!;§).mClip.gotoAndStop("UnLit");
         (§^!;§.getItemByName("MovieClip_StarRight") as §4!;§).mClip.gotoAndStop("UnLit");
         (§^!;§.getItemByName("MovieClip_Drum1") as §4!;§).mClip.gotoAndStop("UnLit");
         (§^!;§.getItemByName("MovieClip_Drum2") as §4!;§).mClip.gotoAndStop("UnLit");
         (§^!;§.getItemByName("MovieClip_Drum3") as §4!;§).mClip.gotoAndStop("UnLit");
         (§^!;§.getItemByName("MovieClip_Drum4") as §4!;§).mClip.gotoAndStop("UnLit");
         (§^!;§.getItemByName("MovieClip_DrumBadge") as §4!;§).mClip.gotoAndStop("One");
      }
      
      private function §4!U§() : void
      {
         if(this.§;d§)
         {
            §-6§.§^Z§(§^M§);
            §-6§.§6!#§("Hiscore_Badge",§^M§);
            §^!;§.getItemByName("MovieClip_NewHighScore").setVisibility(true);
            §^!;§.getItemByName("MovieClip_BestScoreStars").setVisibility(false);
            §^!;§.getItemByName("MovieClip_BestScoreText").setVisibility(false);
            §^!;§.getItemByName("TextField_BestScore").setVisibility(false);
            this.§3i§();
         }
         else
         {
            §^!;§.getItemByName("TextField_BestScore").setVisibility(true);
            §^!;§.getItemByName("MovieClip_BestScoreStars").setVisibility(true);
            §^!;§.getItemByName("MovieClip_BestScoreText").setVisibility(true);
         }
      }
      
      private function §3i§() : void
      {
         this.§"!P§ = (§^!;§.getItemByName("Container_LevelEndStripe") as §`?§).x;
         this.§+![§ = (§^!;§.getItemByName("Container_LevelEndStripe") as §`?§).y;
         this.§8K§ = §?O§;
      }
      
      private function §'8§(param1:Number) : void
      {
         if(this.§8K§ <= 0)
         {
            (§^!;§.getItemByName("Container_LevelEndStripe") as §`?§).x = this.§"!P§;
            (§^!;§.getItemByName("Container_LevelEndStripe") as §`?§).y = this.§+![§;
         }
         else
         {
            (§^!;§.getItemByName("Container_LevelEndStripe") as §`?§).x = this.§"!P§ + (Math.random() - 0.5) * (this.§8K§ / §?O§) * 20;
            (§^!;§.getItemByName("Container_LevelEndStripe") as §`?§).y = this.§+![§ + (Math.random() - 0.5) * (this.§8K§ / §?O§) * 20;
         }
         this.§8K§ -= param1 / 10;
      }
      
      private function §`,§(param1:TimerEvent) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc6_:§'!Y§ = null;
         var _loc7_:Number = NaN;
         var _loc4_:Number = §"=§.§'a§(§"=§.§?x§).§?!<§;
         var _loc5_:Number = §"=§.§'a§(§"=§.§?x§).§!N§;
         if((§^!;§.getItemByName("MovieClip_Drum1") as §4!;§).mClip.currentLabel == "UnLit" && this.§+!W§ >= 1)
         {
            (§^!;§.getItemByName("MovieClip_DrumBadge") as §4!;§).mClip.gotoAndStop("One");
            this.§;!^§.delay = 600;
            this.§ i§ = true;
            _loc2_ = (§^!;§.getItemByName("MovieClip_Drum1") as §4!;§).x + (§^!;§.getItemByName("Container_LevelEndStripe") as §`?§).x;
            _loc3_ = (§^!;§.getItemByName("MovieClip_Drum1") as §4!;§).y + (§^!;§.getItemByName("Container_LevelEndStripe") as §`?§).y;
            this.§@!S§ = new §-!F§(§-!#§.§6`§,§-!#§.§?!E§,_loc2_,_loc3_,§-!F§.§#7§,5,500);
            §^!;§.addChild(this.§@!S§);
            this.§]!B§.push(this.§@!S§);
            _loc2_ -= (§^!;§.getItemByName("Container_LevelEndStripe") as §`?§).x;
            _loc3_ -= (§^!;§.getItemByName("Container_LevelEndStripe") as §`?§).y + 40;
            if(this.§9!M§)
            {
               this.§9!M§.stop();
            }
            _loc6_ = §8Q§.§]!D§.§1!^§(§8Q§.§]!D§.§^w§(§^!;§.getItemByName("MovieClip_DrumBadge") as §4!;§,{"y":_loc3_ - 100},{"y":_loc3_},0.25,§8Q§.§;!'§),§8Q§.§]!D§.§^w§(§^!;§.getItemByName("MovieClip_DrumBadge") as §4!;§,{"y":_loc3_},{"y":_loc3_ - 100},0.25,§8Q§.§,j§));
            this.§9!M§ = §8Q§.§]!D§.§4I§(_loc6_,§8Q§.§]!D§.§^w§(§^!;§.getItemByName("MovieClip_DrumBadge") as §4!;§,{"x":_loc2_},null,0.5,§8Q§.§;!'§));
            this.§9!M§.onComplete = this.§"!2§;
            this.§9!M§.play();
         }
         else if((§^!;§.getItemByName("MovieClip_Drum2") as §4!;§).mClip.currentLabel == "UnLit" && this.§+!W§ >= 2)
         {
            (§^!;§.getItemByName("MovieClip_DrumBadge") as §4!;§).mClip.gotoAndStop("One");
            _loc2_ = (§^!;§.getItemByName("MovieClip_Drum2") as §4!;§).x + (§^!;§.getItemByName("Container_LevelEndStripe") as §`?§).x;
            _loc3_ = (§^!;§.getItemByName("MovieClip_Drum2") as §4!;§).y + (§^!;§.getItemByName("Container_LevelEndStripe") as §`?§).y;
            this.§@!S§ = new §-!F§(§-!#§.§6`§,§-!#§.§?!E§,_loc2_,_loc3_,§-!F§.§#7§,5,500);
            §^!;§.addChild(this.§@!S§);
            this.§]!B§.push(this.§@!S§);
            _loc2_ -= (§^!;§.getItemByName("Container_LevelEndStripe") as §`?§).x;
            _loc3_ -= (§^!;§.getItemByName("Container_LevelEndStripe") as §`?§).y + 40;
            if(this.§9!M§)
            {
               this.§9!M§.stop();
            }
            _loc6_ = §8Q§.§]!D§.§1!^§(§8Q§.§]!D§.§^w§(§^!;§.getItemByName("MovieClip_DrumBadge") as §4!;§,{"y":_loc3_ - 100},{"y":_loc3_},0.25,§8Q§.§;!'§),§8Q§.§]!D§.§^w§(§^!;§.getItemByName("MovieClip_DrumBadge") as §4!;§,{"y":_loc3_},{"y":_loc3_ - 100},0.25,§8Q§.§,j§));
            this.§9!M§ = §8Q§.§]!D§.§4I§(_loc6_,§8Q§.§]!D§.§^w§(§^!;§.getItemByName("MovieClip_DrumBadge") as §4!;§,{"x":_loc2_},null,0.5,§8Q§.§;!'§));
            this.§9!M§.onComplete = this.§"!2§;
            this.§9!M§.play();
         }
         else if((§^!;§.getItemByName("MovieClip_Drum3") as §4!;§).mClip.currentLabel == "UnLit" && this.§+!W§ >= 3)
         {
            (§^!;§.getItemByName("MovieClip_DrumBadge") as §4!;§).mClip.gotoAndStop("One");
            _loc2_ = (§^!;§.getItemByName("MovieClip_Drum3") as §4!;§).x + (§^!;§.getItemByName("Container_LevelEndStripe") as §`?§).x;
            _loc3_ = (§^!;§.getItemByName("MovieClip_Drum3") as §4!;§).y + (§^!;§.getItemByName("Container_LevelEndStripe") as §`?§).y;
            this.§@!S§ = new §-!F§(§-!#§.§6`§,§-!#§.§?!E§,_loc2_,_loc3_,§-!F§.§#7§,5,500);
            §^!;§.addChild(this.§@!S§);
            this.§]!B§.push(this.§@!S§);
            _loc2_ -= (§^!;§.getItemByName("Container_LevelEndStripe") as §`?§).x;
            _loc3_ -= (§^!;§.getItemByName("Container_LevelEndStripe") as §`?§).y + 40;
            if(this.§9!M§)
            {
               this.§9!M§.stop();
            }
            _loc6_ = §8Q§.§]!D§.§1!^§(§8Q§.§]!D§.§^w§(§^!;§.getItemByName("MovieClip_DrumBadge") as §4!;§,{"y":_loc3_ - 100},{"y":_loc3_},0.25,§8Q§.§;!'§),§8Q§.§]!D§.§^w§(§^!;§.getItemByName("MovieClip_DrumBadge") as §4!;§,{"y":_loc3_},{"y":_loc3_ - 100},0.25,§8Q§.§,j§));
            this.§9!M§ = §8Q§.§]!D§.§4I§(_loc6_,§8Q§.§]!D§.§^w§(§^!;§.getItemByName("MovieClip_DrumBadge") as §4!;§,{"x":_loc2_},null,0.5,§8Q§.§;!'§));
            this.§9!M§.onComplete = this.§"!2§;
            this.§9!M§.play();
         }
         else if((§^!;§.getItemByName("MovieClip_Drum4") as §4!;§).mClip.currentLabel == "UnLit" && this.§+!W§ >= 4)
         {
            (§^!;§.getItemByName("MovieClip_DrumBadge") as §4!;§).mClip.gotoAndStop("One");
            _loc2_ = (§^!;§.getItemByName("MovieClip_Drum4") as §4!;§).x + (§^!;§.getItemByName("Container_LevelEndStripe") as §`?§).x;
            _loc3_ = (§^!;§.getItemByName("MovieClip_Drum4") as §4!;§).y + (§^!;§.getItemByName("Container_LevelEndStripe") as §`?§).y;
            this.§@!S§ = new §-!F§(§-!#§.§6`§,§-!#§.§?!E§,_loc2_,_loc3_,§-!F§.§#7§,5,500);
            §^!;§.addChild(this.§@!S§);
            this.§]!B§.push(this.§@!S§);
            _loc2_ -= (§^!;§.getItemByName("Container_LevelEndStripe") as §`?§).x;
            _loc3_ -= (§^!;§.getItemByName("Container_LevelEndStripe") as §`?§).y + 40;
            if(this.§9!M§)
            {
               this.§9!M§.stop();
            }
            _loc6_ = §8Q§.§]!D§.§1!^§(§8Q§.§]!D§.§^w§(§^!;§.getItemByName("MovieClip_DrumBadge") as §4!;§,{"y":_loc3_ - 100},{"y":_loc3_},0.25,§8Q§.§;!'§),§8Q§.§]!D§.§^w§(§^!;§.getItemByName("MovieClip_DrumBadge") as §4!;§,{"y":_loc3_},{"y":_loc3_ - 100},0.25,§8Q§.§,j§));
            this.§9!M§ = §8Q§.§]!D§.§4I§(_loc6_,§8Q§.§]!D§.§^w§(§^!;§.getItemByName("MovieClip_DrumBadge") as §4!;§,{"x":_loc2_},null,0.5,§8Q§.§;!'§));
            this.§9!M§.onComplete = this.§"!2§;
            this.§9!M§.play();
         }
         else if(this.§ i§)
         {
            this.§ i§ = false;
            _loc2_ = 700;
            _loc3_ = (§^!;§.getItemByName("MovieClip_DrumBadge") as §4!;§).y;
            if(this.§9!M§)
            {
               this.§9!M§.stop();
            }
            _loc6_ = §8Q§.§]!D§.§1!^§(§8Q§.§]!D§.§^w§(§^!;§.getItemByName("MovieClip_DrumBadge") as §4!;§,{"y":_loc3_ - 100},{"y":_loc3_},0.25,§8Q§.§;!'§),§8Q§.§]!D§.§^w§(§^!;§.getItemByName("MovieClip_DrumBadge") as §4!;§,{"y":_loc3_},{"y":_loc3_ - 100},0.25,§8Q§.§,j§));
            this.§9!M§ = §8Q§.§]!D§.§4I§(_loc6_,§8Q§.§]!D§.§^w§(§^!;§.getItemByName("MovieClip_DrumBadge") as §4!;§,{"x":_loc2_},null,0.5,§8Q§.§;!'§));
            this.§9!M§.play();
         }
         else if((§^!;§.getItemByName("MovieClip_StarLeft") as §4!;§).mClip.currentLabel == "UnLit")
         {
            §-6§.§6!#§("Hiscore_Count",§#!J§,100);
            §-6§.§^Z§(§^M§);
            §-6§.§6!#§("Hiscore_Star_Splash1",§^M§);
            this.§;!^§.delay = 1000;
            this.§14§.§9P§(§#!=§.§3!W§.getScore());
            _loc7_ = this.§14§.getValue() / _loc4_ * 2;
            this.§!!V§ = §8Q§.§]!D§.§^w§(this,{"mNewScoreCounter":this.§14§.getValue()},{"mNewScoreCounter":0},_loc7_);
            this.§!!V§.onComplete = this.§8!_§;
            this.§!!V§.play();
            (§^!;§.getItemByName("MovieClip_StarLeft") as §4!;§).mClip.gotoAndStop("Lit");
            _loc2_ = (§^!;§.getItemByName("MovieClip_StarLeft") as §4!;§).x + (§^!;§.getItemByName("Container_LevelEndStripe") as §`?§).x;
            _loc3_ = (§^!;§.getItemByName("MovieClip_StarLeft") as §4!;§).y + (§^!;§.getItemByName("Container_LevelEndStripe") as §`?§).y;
            this.§@!S§ = new §-!F§(§-!#§.§6`§,§-!#§.§?!E§,_loc2_,_loc3_,§-!F§.§"C§);
            §^!;§.addChild(this.§@!S§);
            this.§]!B§.push(this.§@!S§);
         }
         else if(this.§14§.getValue() >= _loc5_ && (§^!;§.getItemByName("MovieClip_StarCenter") as §4!;§).mClip.currentLabel == "UnLit")
         {
            §-6§.§^Z§(§^M§);
            §-6§.§6!#§("Hiscore_Star_Splash2",§^M§);
            (§^!;§.getItemByName("MovieClip_StarCenter") as §4!;§).mClip.gotoAndStop("Lit");
            _loc2_ = (§^!;§.getItemByName("MovieClip_StarCenter") as §4!;§).x + (§^!;§.getItemByName("Container_LevelEndStripe") as §`?§).x;
            _loc3_ = (§^!;§.getItemByName("MovieClip_StarCenter") as §4!;§).y + (§^!;§.getItemByName("Container_LevelEndStripe") as §`?§).y;
            this.§@!S§ = new §-!F§(§-!#§.§6`§,§-!#§.§?!E§,_loc2_,_loc3_,§-!F§.§&p§);
            §^!;§.addChild(this.§@!S§);
            this.§]!B§.push(this.§@!S§);
         }
         else if(this.§14§.getValue() >= _loc4_ && (§^!;§.getItemByName("MovieClip_StarRight") as §4!;§).mClip.currentLabel == "UnLit")
         {
            §-6§.§^Z§(§^M§);
            §-6§.§6!#§("Hiscore_Star_Splash3",§^M§);
            (§^!;§.getItemByName("MovieClip_StarRight") as §4!;§).mClip.gotoAndStop("Lit");
            _loc2_ = (§^!;§.getItemByName("MovieClip_StarRight") as §4!;§).x + (§^!;§.getItemByName("Container_LevelEndStripe") as §`?§).x;
            _loc3_ = (§^!;§.getItemByName("MovieClip_StarRight") as §4!;§).y + (§^!;§.getItemByName("Container_LevelEndStripe") as §`?§).y;
            this.§@!S§ = new §-!F§(§-!#§.§6`§,§-!#§.§?!E§,_loc2_,_loc3_,§-!F§.§6!`§);
            §^!;§.addChild(this.§@!S§);
            this.§]!B§.push(this.§@!S§);
         }
         else if(!this.§^!B§)
         {
            this.§^!B§ = true;
         }
         else
         {
            this.§;!^§.stop();
            if(this.§;d§)
            {
               (§^!;§.getItemByName("MovieClip_NewHighScoreBadge") as §4!;§).setVisibility(true);
            }
            else
            {
               (§^!;§.getItemByName("MovieClip_NewHighScoreBadge") as §4!;§).setVisibility(false);
            }
            this.§?!,§ = §8Q§.§]!D§.§^w§((§^!;§.getItemByName("MovieClip_NewHighScoreBadge") as §4!;§).mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":7,
               "scaleY":7
            },0.1);
            this.§?!,§.onComplete = this.§4!U§;
            this.§?!,§.play();
         }
         ++this.§^E§;
      }
      
      private function §"!2§() : void
      {
         §-6§.§^Z§(§^M§);
         (§^!;§.getItemByName("MovieClip_DrumBadge") as §4!;§).mClip.gotoAndStop("Two");
         if((§^!;§.getItemByName("MovieClip_Drum1") as §4!;§).mClip.currentLabel == "UnLit")
         {
            (§^!;§.getItemByName("MovieClip_Drum1") as §4!;§).mClip.gotoAndStop("Lit");
            §-6§.§6!#§("Drum_1_1",§^M§);
            §-6§.§6!#§("Drum_Explode_1_1",§^M§);
         }
         else if((§^!;§.getItemByName("MovieClip_Drum2") as §4!;§).mClip.currentLabel == "UnLit")
         {
            (§^!;§.getItemByName("MovieClip_Drum2") as §4!;§).mClip.gotoAndStop("Lit");
            §-6§.§6!#§("Drum_2_1",§^M§);
            §-6§.§6!#§("Drum_Explode_2_1",§^M§);
         }
         else if((§^!;§.getItemByName("MovieClip_Drum3") as §4!;§).mClip.currentLabel == "UnLit")
         {
            (§^!;§.getItemByName("MovieClip_Drum3") as §4!;§).mClip.gotoAndStop("Lit");
            §-6§.§6!#§("Drum_3_1",§^M§);
            §-6§.§6!#§("Drum_Explode_3_1",§^M§);
         }
         else if((§^!;§.getItemByName("MovieClip_Drum4") as §4!;§).mClip.currentLabel == "UnLit")
         {
            (§^!;§.getItemByName("MovieClip_Drum4") as §4!;§).mClip.gotoAndStop("Lit");
            §-6§.§6!#§("Drum_4_1",§^M§);
            §-6§.§6!#§("Drum_Explode_4_1",§^M§);
         }
      }
      
      private function §8!_§() : void
      {
         §-6§.§^Z§(§#!J§);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:§-!F§ = null;
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §6!W§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         §^!;§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScore");
         §^!;§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScoreEffects");
         for each(_loc3_ in this.§]!B§)
         {
            _loc3_.update(param1);
         }
         if(this.§8K§ > 0)
         {
            this.§'8§(param1);
         }
         if(mNextState.length > 0)
         {
            return §6!W§.STATE_STATUS_COMPLETED;
         }
         return §6!W§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§,]§.§;!E§(0);
         this.§,!c§();
         this.§8K§ = 0;
         §-6§.§^Z§(§#!J§);
         (§^!;§.getItemByName("Button_Menu") as §0_§).setComponentVisualState(§4o§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§^!;§.getItemByName("Button_Replay") as §0_§).setComponentVisualState(§4o§.COMPONENT_STATE_ACTIVE_DEFAULT);
         §^!;§.setText("0","TextField_LevelEndScore");
         §^!;§.setText("0","TextField_LevelEndScoreEffects");
      }
      
      private function §,!c§() : void
      {
         var _loc1_:§-!F§ = null;
         if(this.§;!^§)
         {
            this.§;!^§.stop();
            this.§;!^§.removeEventListener(TimerEvent.TIMER,this.§`,§);
         }
         for each(_loc1_ in this.§]!B§)
         {
            if(§^!;§.contains(_loc1_))
            {
               §^!;§.removeChild(_loc1_);
            }
            _loc1_.clean();
         }
         this.§]!B§ = new Vector.<§-!F§>();
         §^!;§.getItemByName("TextField_BestScore").setVisibility(false);
         §^!;§.getItemByName("MovieClip_BestScoreText").setVisibility(false);
         §^!;§.getItemByName("MovieClip_BestScoreStars").setVisibility(false);
         §^!;§.getItemByName("MovieClip_NewHighScore").setVisibility(false);
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
            mNextState = § !P§;
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§9t§) : void
      {
         super.uiInteractionHandler(param1,param2,param3);
         switch(param2)
         {
            case "NEXT_LEVEL":
               §]#§.§7w§();
               mNextState = StateCutScene.§ !P§;
               break;
            case "REPLAY":
               §]#§.§[4§();
               mNextState = §]#§.§ !P§;
               break;
            case "MENU":
               mNextState = §-!#§.§2t§;
         }
      }
   }
}
