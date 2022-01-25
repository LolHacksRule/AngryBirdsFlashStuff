package §,H§
{
   import §%!c§.§@2§;
   import §%3§.§7b§;
   import §%3§.§>!A§;
   import §'!^§.§4!2§;
   import §3U§.§2!%§;
   import §4!W§.§=!G§;
   import §4!W§.§@R§;
   import §6a§.§'!9§;
   import §6a§.§;!a§;
   import §7!H§.§12§;
   import §7!H§.§`f§;
   import §8!<§.§29§;
   import §8!<§.§2W§;
   import §8!<§.§6!=§;
   import §;A§.§7!K§;
   import §=L§.§@E§;
   import §@W§.§2!_§;
   import §^!&§.§=!Z§;
   import flash.events.KeyboardEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class § P§ extends §1!a§
   {
      
      public static const §^!O§:String = "LevelEndState3";
      
      public static const §`!1§:Number = 30;
      
      private static const §@! §:String = "ScoreLoopCountChannel";
      
      private static const § !^§:String = "EndScreenEffectChannel";
       
      
      private var §&!7§:§'!9§;
      
      private var §#!-§:§'!9§;
      
      private var §@!S§:Number;
      
      private var §2!J§:Number;
      
      private var §6$§:Number;
      
      private var §;v§:Number;
      
      private var §8!1§:Number;
      
      private var §2C§:int;
      
      private var §^!U§:Boolean;
      
      private var §^^§:Boolean = false;
      
      private var § !;§:Timer;
      
      private var §]!]§:§@R§;
      
      private var §-! §:§=!G§;
      
      private var §@o§:Vector.<§=!G§>;
      
      public var mNewScoreCounter:int;
      
      private var §8g§:int;
      
      private var §2'§:Boolean;
      
      private var §7r§:§4!2§;
      
      private var §3!3§:Boolean;
      
      private var §,!G§:§'!9§;
      
      private var §'U§:Array;
      
      public function § P§(param1:Boolean = false, param2:String = "LevelEndState3")
      {
         this.§7r§ = new §4!2§();
         this.§'U§ = [];
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §=!I§ = new §7b§(this);
         §=!I§.init(§>!A§.§;&§.Views.View_LevelEndRio[0]);
         this.§`g§();
         this.§]!]§ = new §@R§(0,0,0,0);
         §=!I§.movieClip.addChildAt(this.§]!]§,§=!I§.movieClip.numChildren - 1);
         this.§@o§ = new Vector.<§=!G§>();
         §@E§.§8!-§(§@! §,1,1);
         §@E§.§8!-§(§ !^§,16,1);
         this.§;v§ = §=!I§.getItemByName("MovieClip_DrumBadge").x;
         this.§8!1§ = §=!I§.getItemByName("MovieClip_DrumBadge").x;
      }
      
      protected function §`g§() : void
      {
         this.§'U§.push(§=!I§.getItemByName("Button_Menu").x);
         this.§'U§.push(§=!I§.getItemByName("Button_Replay").x);
         this.§'U§.push(§=!I§.getItemByName("Button_Next").x);
      }
      
      protected function §2s§(param1:Boolean) : void
      {
         §=!I§.getItemByName("Button_Menu").setVisibility(true);
         §=!I§.getItemByName("Button_Replay").setVisibility(true);
         if(param1)
         {
            §=!I§.getItemByName("Button_Next").setVisibility(true);
            §=!I§.getItemByName("Button_Menu").x = this.§'U§[0];
            §=!I§.getItemByName("Button_Replay").x = this.§'U§[1];
            §=!I§.getItemByName("Button_Next").x = this.§'U§[2];
         }
         else
         {
            §=!I§.getItemByName("Button_Next").setVisibility(false);
            §=!I§.getItemByName("Button_Menu").x = this.§'U§[0] + Math.abs(this.§'U§[1] - this.§'U§[0]) / 2;
            §=!I§.getItemByName("Button_Replay").x = this.§'U§[1] + Math.abs(this.§'U§[2] - this.§'U§[1]) / 2 + §=!I§.getItemByName("Button_Replay").width / 4;
         }
      }
      
      override public function activate() : void
      {
         super.activate();
         §+D§.enableHelpButton(false);
         §7!K§.§=j§.§ i§(true);
         this.mNewScoreCounter = 0;
         this.§2'§ = false;
         §@E§.playSound("LevelCompletedTheme1");
         this.§]!]§.§=@§(0.7);
         this.§5?§();
         this.§2C§ = §6T§.§>c§.§^!b§();
         §=!I§.getItemByName("MovieClip_DrumBadge").x = this.§;v§;
         §=!I§.getItemByName("MovieClip_DrumBadge").x = this.§8!1§;
         this.§^!U§ = false;
         §@2§.§<!#§();
         §+D§.changeState(§+D§.currentState);
         this.§2s§(§@2§.§ case§(§2!%§.§>1§()));
      }
      
      override protected function setInitialState() : void
      {
         if(§2!%§.§[!=§ == 0)
         {
            §=!I§.getItemByName("MovieClip_Drum1").setVisibility(false);
            §=!I§.getItemByName("MovieClip_Drum2").setVisibility(false);
            §=!I§.getItemByName("MovieClip_Drum3").setVisibility(false);
            §=!I§.getItemByName("MovieClip_Drum4").setVisibility(false);
         }
         else
         {
            §=!I§.getItemByName("MovieClip_Drum1").setVisibility(true);
            §=!I§.getItemByName("MovieClip_Drum2").setVisibility(true);
            §=!I§.getItemByName("MovieClip_Drum3").setVisibility(true);
            §=!I§.getItemByName("MovieClip_Drum4").setVisibility(true);
         }
      }
      
      private function §5?§() : void
      {
         this.§9_§();
         this.§ !;§ = new Timer(500);
         this.§8g§ = 0;
         this.§ !;§.addEventListener(TimerEvent.TIMER,this.§"r§);
         this.§ !;§.start();
      }
      
      private function §9_§() : void
      {
         var _loc6_:int = 0;
         var _loc1_:int = §6T§.§>c§.§3o§(§2!%§.§<G§);
         var _loc2_:int = (§7!K§.§0!9§ as §=!Z§).getScore();
         this.§3!3§ = _loc2_ >= _loc1_;
         if(this.§3!3§)
         {
            _loc1_ = _loc2_;
            §6T§.§>c§.§%!M§(§2!%§.§<G§,_loc1_);
         }
         else
         {
            §=!I§.setText("" + _loc1_.toString(),"TextField_BestScore");
            _loc6_ = §2!%§.§^V§(§2!%§.§<G§,_loc1_);
            switch(_loc6_)
            {
               case 1:
                  (§=!I§.getItemByName("MovieClip_BestScoreStars") as §6!=§).§4&§("OneStar");
                  break;
               case 2:
                  (§=!I§.getItemByName("MovieClip_BestScoreStars") as §6!=§).§4&§("TwoStar");
                  break;
               case 3:
                  (§=!I§.getItemByName("MovieClip_BestScoreStars") as §6!=§).§4&§("ThreeStar");
            }
         }
         var _loc3_:int = §7!K§.§0!9§.getEagleScore();
         var _loc4_:Number = §6T§.§>c§.§^!'§(§2!%§.§<G§);
         var _loc5_:*;
         if(_loc5_ = _loc3_ > _loc4_)
         {
            _loc4_ = _loc3_;
            §6T§.§>c§.§@!&§(§2!%§.§<G§,_loc4_);
         }
         (§=!I§.getItemByName("MovieClip_NewHighScoreBadge") as §6!=§).setVisibility(false);
         (§=!I§.getItemByName("MovieClip_StarLeft") as §6!=§).mClip.gotoAndStop("UnLit");
         (§=!I§.getItemByName("MovieClip_StarCenter") as §6!=§).mClip.gotoAndStop("UnLit");
         (§=!I§.getItemByName("MovieClip_StarRight") as §6!=§).mClip.gotoAndStop("UnLit");
         (§=!I§.getItemByName("MovieClip_Drum1") as §6!=§).mClip.gotoAndStop("UnLit");
         (§=!I§.getItemByName("MovieClip_Drum2") as §6!=§).mClip.gotoAndStop("UnLit");
         (§=!I§.getItemByName("MovieClip_Drum3") as §6!=§).mClip.gotoAndStop("UnLit");
         (§=!I§.getItemByName("MovieClip_Drum4") as §6!=§).mClip.gotoAndStop("UnLit");
         (§=!I§.getItemByName("MovieClip_DrumBadge") as §6!=§).mClip.gotoAndStop("One");
      }
      
      private function §-!T§() : void
      {
         if(this.§3!3§)
         {
            §@E§.§1o§(§ !^§);
            §@E§.playSound("Hiscore_Badge",§ !^§);
            §=!I§.getItemByName("MovieClip_NewHighScore").setVisibility(true);
            §=!I§.getItemByName("MovieClip_BestScoreStars").setVisibility(false);
            §=!I§.getItemByName("MovieClip_BestScoreText").setVisibility(false);
            §=!I§.getItemByName("TextField_BestScore").setVisibility(false);
            this.§]M§();
         }
         else
         {
            §=!I§.getItemByName("TextField_BestScore").setVisibility(true);
            §=!I§.getItemByName("MovieClip_BestScoreStars").setVisibility(true);
            §=!I§.getItemByName("MovieClip_BestScoreText").setVisibility(true);
         }
      }
      
      private function §]M§() : void
      {
         this.§2!J§ = (§=!I§.getItemByName("Container_LevelEndStripe") as §2W§).x;
         this.§6$§ = (§=!I§.getItemByName("Container_LevelEndStripe") as §2W§).y;
         this.§@!S§ = §`!1§;
      }
      
      private function §9!O§(param1:Number) : void
      {
         if(this.§@!S§ <= 0)
         {
            (§=!I§.getItemByName("Container_LevelEndStripe") as §2W§).x = this.§2!J§;
            (§=!I§.getItemByName("Container_LevelEndStripe") as §2W§).y = this.§6$§;
         }
         else
         {
            (§=!I§.getItemByName("Container_LevelEndStripe") as §2W§).x = this.§2!J§ + (Math.random() - 0.5) * (this.§@!S§ / §`!1§) * 20;
            (§=!I§.getItemByName("Container_LevelEndStripe") as §2W§).y = this.§6$§ + (Math.random() - 0.5) * (this.§@!S§ / §`!1§) * 20;
         }
         this.§@!S§ -= param1 / 10;
      }
      
      private function §"r§(param1:TimerEvent) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc6_:§'!9§ = null;
         var _loc7_:Number = NaN;
         var _loc4_:Number = §2!%§.§&j§(§2!%§.§<G§).§[p§;
         var _loc5_:Number = §2!%§.§&j§(§2!%§.§<G§).§>!+§;
         if((§=!I§.getItemByName("MovieClip_Drum1") as §6!=§).mClip.currentLabel == "UnLit" && this.§2C§ >= 1)
         {
            (§=!I§.getItemByName("MovieClip_DrumBadge") as §6!=§).mClip.gotoAndStop("One");
            this.§ !;§.delay = 600;
            this.§^!U§ = true;
            _loc2_ = (§=!I§.getItemByName("MovieClip_Drum1") as §6!=§).x + (§=!I§.getItemByName("Container_LevelEndStripe") as §2W§).x;
            _loc3_ = (§=!I§.getItemByName("MovieClip_Drum1") as §6!=§).y + (§=!I§.getItemByName("Container_LevelEndStripe") as §2W§).y;
            this.§-! § = new §=!G§(§6T§.§,x§,§6T§.§+!U§,_loc2_,_loc3_,§=!G§.§7!C§,5,500);
            §=!I§.addChild(this.§-! §);
            this.§@o§.push(this.§-! §);
            _loc2_ -= (§=!I§.getItemByName("Container_LevelEndStripe") as §2W§).x;
            _loc3_ -= (§=!I§.getItemByName("Container_LevelEndStripe") as §2W§).y + 40;
            if(this.§#!-§)
            {
               this.§#!-§.stop();
            }
            _loc6_ = §;!a§.§0%§.§0y§(§;!a§.§0%§.§,w§(§=!I§.getItemByName("MovieClip_DrumBadge") as §6!=§,{"y":_loc3_ - 100},{"y":_loc3_},0.25,§;!a§.§5!L§),§;!a§.§0%§.§,w§(§=!I§.getItemByName("MovieClip_DrumBadge") as §6!=§,{"y":_loc3_},{"y":_loc3_ - 100},0.25,§;!a§.§!!D§));
            this.§#!-§ = §;!a§.§0%§.§4$§(_loc6_,§;!a§.§0%§.§,w§(§=!I§.getItemByName("MovieClip_DrumBadge") as §6!=§,{"x":_loc2_},null,0.5,§;!a§.§5!L§));
            this.§#!-§.onComplete = this.§7!?§;
            this.§#!-§.play();
         }
         else if((§=!I§.getItemByName("MovieClip_Drum2") as §6!=§).mClip.currentLabel == "UnLit" && this.§2C§ >= 2)
         {
            (§=!I§.getItemByName("MovieClip_DrumBadge") as §6!=§).mClip.gotoAndStop("One");
            _loc2_ = (§=!I§.getItemByName("MovieClip_Drum2") as §6!=§).x + (§=!I§.getItemByName("Container_LevelEndStripe") as §2W§).x;
            _loc3_ = (§=!I§.getItemByName("MovieClip_Drum2") as §6!=§).y + (§=!I§.getItemByName("Container_LevelEndStripe") as §2W§).y;
            this.§-! § = new §=!G§(§6T§.§,x§,§6T§.§+!U§,_loc2_,_loc3_,§=!G§.§7!C§,5,500);
            §=!I§.addChild(this.§-! §);
            this.§@o§.push(this.§-! §);
            _loc2_ -= (§=!I§.getItemByName("Container_LevelEndStripe") as §2W§).x;
            _loc3_ -= (§=!I§.getItemByName("Container_LevelEndStripe") as §2W§).y + 40;
            if(this.§#!-§)
            {
               this.§#!-§.stop();
            }
            _loc6_ = §;!a§.§0%§.§0y§(§;!a§.§0%§.§,w§(§=!I§.getItemByName("MovieClip_DrumBadge") as §6!=§,{"y":_loc3_ - 100},{"y":_loc3_},0.25,§;!a§.§5!L§),§;!a§.§0%§.§,w§(§=!I§.getItemByName("MovieClip_DrumBadge") as §6!=§,{"y":_loc3_},{"y":_loc3_ - 100},0.25,§;!a§.§!!D§));
            this.§#!-§ = §;!a§.§0%§.§4$§(_loc6_,§;!a§.§0%§.§,w§(§=!I§.getItemByName("MovieClip_DrumBadge") as §6!=§,{"x":_loc2_},null,0.5,§;!a§.§5!L§));
            this.§#!-§.onComplete = this.§7!?§;
            this.§#!-§.play();
         }
         else if((§=!I§.getItemByName("MovieClip_Drum3") as §6!=§).mClip.currentLabel == "UnLit" && this.§2C§ >= 3)
         {
            (§=!I§.getItemByName("MovieClip_DrumBadge") as §6!=§).mClip.gotoAndStop("One");
            _loc2_ = (§=!I§.getItemByName("MovieClip_Drum3") as §6!=§).x + (§=!I§.getItemByName("Container_LevelEndStripe") as §2W§).x;
            _loc3_ = (§=!I§.getItemByName("MovieClip_Drum3") as §6!=§).y + (§=!I§.getItemByName("Container_LevelEndStripe") as §2W§).y;
            this.§-! § = new §=!G§(§6T§.§,x§,§6T§.§+!U§,_loc2_,_loc3_,§=!G§.§7!C§,5,500);
            §=!I§.addChild(this.§-! §);
            this.§@o§.push(this.§-! §);
            _loc2_ -= (§=!I§.getItemByName("Container_LevelEndStripe") as §2W§).x;
            _loc3_ -= (§=!I§.getItemByName("Container_LevelEndStripe") as §2W§).y + 40;
            if(this.§#!-§)
            {
               this.§#!-§.stop();
            }
            _loc6_ = §;!a§.§0%§.§0y§(§;!a§.§0%§.§,w§(§=!I§.getItemByName("MovieClip_DrumBadge") as §6!=§,{"y":_loc3_ - 100},{"y":_loc3_},0.25,§;!a§.§5!L§),§;!a§.§0%§.§,w§(§=!I§.getItemByName("MovieClip_DrumBadge") as §6!=§,{"y":_loc3_},{"y":_loc3_ - 100},0.25,§;!a§.§!!D§));
            this.§#!-§ = §;!a§.§0%§.§4$§(_loc6_,§;!a§.§0%§.§,w§(§=!I§.getItemByName("MovieClip_DrumBadge") as §6!=§,{"x":_loc2_},null,0.5,§;!a§.§5!L§));
            this.§#!-§.onComplete = this.§7!?§;
            this.§#!-§.play();
         }
         else if((§=!I§.getItemByName("MovieClip_Drum4") as §6!=§).mClip.currentLabel == "UnLit" && this.§2C§ >= 4)
         {
            (§=!I§.getItemByName("MovieClip_DrumBadge") as §6!=§).mClip.gotoAndStop("One");
            _loc2_ = (§=!I§.getItemByName("MovieClip_Drum4") as §6!=§).x + (§=!I§.getItemByName("Container_LevelEndStripe") as §2W§).x;
            _loc3_ = (§=!I§.getItemByName("MovieClip_Drum4") as §6!=§).y + (§=!I§.getItemByName("Container_LevelEndStripe") as §2W§).y;
            this.§-! § = new §=!G§(§6T§.§,x§,§6T§.§+!U§,_loc2_,_loc3_,§=!G§.§7!C§,5,500);
            §=!I§.addChild(this.§-! §);
            this.§@o§.push(this.§-! §);
            _loc2_ -= (§=!I§.getItemByName("Container_LevelEndStripe") as §2W§).x;
            _loc3_ -= (§=!I§.getItemByName("Container_LevelEndStripe") as §2W§).y + 40;
            if(this.§#!-§)
            {
               this.§#!-§.stop();
            }
            _loc6_ = §;!a§.§0%§.§0y§(§;!a§.§0%§.§,w§(§=!I§.getItemByName("MovieClip_DrumBadge") as §6!=§,{"y":_loc3_ - 100},{"y":_loc3_},0.25,§;!a§.§5!L§),§;!a§.§0%§.§,w§(§=!I§.getItemByName("MovieClip_DrumBadge") as §6!=§,{"y":_loc3_},{"y":_loc3_ - 100},0.25,§;!a§.§!!D§));
            this.§#!-§ = §;!a§.§0%§.§4$§(_loc6_,§;!a§.§0%§.§,w§(§=!I§.getItemByName("MovieClip_DrumBadge") as §6!=§,{"x":_loc2_},null,0.5,§;!a§.§5!L§));
            this.§#!-§.onComplete = this.§7!?§;
            this.§#!-§.play();
         }
         else if(this.§^!U§)
         {
            this.§^!U§ = false;
            _loc2_ = 700;
            _loc3_ = (§=!I§.getItemByName("MovieClip_DrumBadge") as §6!=§).y;
            if(this.§#!-§)
            {
               this.§#!-§.stop();
            }
            _loc6_ = §;!a§.§0%§.§0y§(§;!a§.§0%§.§,w§(§=!I§.getItemByName("MovieClip_DrumBadge") as §6!=§,{"y":_loc3_ - 100},{"y":_loc3_},0.25,§;!a§.§5!L§),§;!a§.§0%§.§,w§(§=!I§.getItemByName("MovieClip_DrumBadge") as §6!=§,{"y":_loc3_},{"y":_loc3_ - 100},0.25,§;!a§.§!!D§));
            this.§#!-§ = §;!a§.§0%§.§4$§(_loc6_,§;!a§.§0%§.§,w§(§=!I§.getItemByName("MovieClip_DrumBadge") as §6!=§,{"x":_loc2_},null,0.5,§;!a§.§5!L§));
            this.§#!-§.play();
         }
         else if((§=!I§.getItemByName("MovieClip_StarLeft") as §6!=§).mClip.currentLabel == "UnLit")
         {
            §@E§.playSound("Hiscore_Count",§@! §,100);
            §@E§.§1o§(§ !^§);
            §@E§.playSound("Hiscore_Star_Splash1",§ !^§);
            this.§ !;§.delay = 1000;
            this.§7r§.§#!V§(§7!K§.§0!9§.getScore());
            _loc7_ = this.§7r§.getValue() / _loc4_ * 2;
            this.§,!G§ = §;!a§.§0%§.§,w§(this,{"mNewScoreCounter":this.§7r§.getValue()},{"mNewScoreCounter":0},_loc7_);
            this.§,!G§.onComplete = this.§"6§;
            this.§,!G§.play();
            (§=!I§.getItemByName("MovieClip_StarLeft") as §6!=§).mClip.gotoAndStop("Lit");
            _loc2_ = (§=!I§.getItemByName("MovieClip_StarLeft") as §6!=§).x + (§=!I§.getItemByName("Container_LevelEndStripe") as §2W§).x;
            _loc3_ = (§=!I§.getItemByName("MovieClip_StarLeft") as §6!=§).y + (§=!I§.getItemByName("Container_LevelEndStripe") as §2W§).y;
            this.§-! § = new §=!G§(§6T§.§,x§,§6T§.§+!U§,_loc2_,_loc3_,§=!G§.§4c§);
            §=!I§.addChild(this.§-! §);
            this.§@o§.push(this.§-! §);
         }
         else if(this.§7r§.getValue() >= _loc5_ && (§=!I§.getItemByName("MovieClip_StarCenter") as §6!=§).mClip.currentLabel == "UnLit")
         {
            §@E§.§1o§(§ !^§);
            §@E§.playSound("Hiscore_Star_Splash2",§ !^§);
            (§=!I§.getItemByName("MovieClip_StarCenter") as §6!=§).mClip.gotoAndStop("Lit");
            _loc2_ = (§=!I§.getItemByName("MovieClip_StarCenter") as §6!=§).x + (§=!I§.getItemByName("Container_LevelEndStripe") as §2W§).x;
            _loc3_ = (§=!I§.getItemByName("MovieClip_StarCenter") as §6!=§).y + (§=!I§.getItemByName("Container_LevelEndStripe") as §2W§).y;
            this.§-! § = new §=!G§(§6T§.§,x§,§6T§.§+!U§,_loc2_,_loc3_,§=!G§.§?!$§);
            §=!I§.addChild(this.§-! §);
            this.§@o§.push(this.§-! §);
         }
         else if(this.§7r§.getValue() >= _loc4_ && (§=!I§.getItemByName("MovieClip_StarRight") as §6!=§).mClip.currentLabel == "UnLit")
         {
            §@E§.§1o§(§ !^§);
            §@E§.playSound("Hiscore_Star_Splash3",§ !^§);
            (§=!I§.getItemByName("MovieClip_StarRight") as §6!=§).mClip.gotoAndStop("Lit");
            _loc2_ = (§=!I§.getItemByName("MovieClip_StarRight") as §6!=§).x + (§=!I§.getItemByName("Container_LevelEndStripe") as §2W§).x;
            _loc3_ = (§=!I§.getItemByName("MovieClip_StarRight") as §6!=§).y + (§=!I§.getItemByName("Container_LevelEndStripe") as §2W§).y;
            this.§-! § = new §=!G§(§6T§.§,x§,§6T§.§+!U§,_loc2_,_loc3_,§=!G§.§ "§);
            §=!I§.addChild(this.§-! §);
            this.§@o§.push(this.§-! §);
         }
         else if(!this.§2'§)
         {
            this.§2'§ = true;
         }
         else
         {
            this.§ !;§.stop();
            if(this.§3!3§)
            {
               (§=!I§.getItemByName("MovieClip_NewHighScoreBadge") as §6!=§).setVisibility(true);
            }
            else
            {
               (§=!I§.getItemByName("MovieClip_NewHighScoreBadge") as §6!=§).setVisibility(false);
            }
            this.§&!7§ = §;!a§.§0%§.§,w§((§=!I§.getItemByName("MovieClip_NewHighScoreBadge") as §6!=§).mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":7,
               "scaleY":7
            },0.1);
            this.§&!7§.onComplete = this.§-!T§;
            this.§&!7§.play();
         }
         ++this.§8g§;
      }
      
      private function §7!?§() : void
      {
         §@E§.§1o§(§ !^§);
         (§=!I§.getItemByName("MovieClip_DrumBadge") as §6!=§).mClip.gotoAndStop("Two");
         if((§=!I§.getItemByName("MovieClip_Drum1") as §6!=§).mClip.currentLabel == "UnLit")
         {
            (§=!I§.getItemByName("MovieClip_Drum1") as §6!=§).mClip.gotoAndStop("Lit");
            §@E§.playSound("Drum_1_1",§ !^§);
            §@E§.playSound("Drum_Explode_1_1",§ !^§);
         }
         else if((§=!I§.getItemByName("MovieClip_Drum2") as §6!=§).mClip.currentLabel == "UnLit")
         {
            (§=!I§.getItemByName("MovieClip_Drum2") as §6!=§).mClip.gotoAndStop("Lit");
            §@E§.playSound("Drum_2_1",§ !^§);
            §@E§.playSound("Drum_Explode_2_1",§ !^§);
         }
         else if((§=!I§.getItemByName("MovieClip_Drum3") as §6!=§).mClip.currentLabel == "UnLit")
         {
            (§=!I§.getItemByName("MovieClip_Drum3") as §6!=§).mClip.gotoAndStop("Lit");
            §@E§.playSound("Drum_3_1",§ !^§);
            §@E§.playSound("Drum_Explode_3_1",§ !^§);
         }
         else if((§=!I§.getItemByName("MovieClip_Drum4") as §6!=§).mClip.currentLabel == "UnLit")
         {
            (§=!I§.getItemByName("MovieClip_Drum4") as §6!=§).mClip.gotoAndStop("Lit");
            §@E§.playSound("Drum_4_1",§ !^§);
            §@E§.playSound("Drum_Explode_4_1",§ !^§);
         }
      }
      
      private function §"6§() : void
      {
         §@E§.§1o§(§@! §);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:§=!G§ = null;
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §2!_§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         §=!I§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScore");
         §=!I§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScoreEffects");
         for each(_loc3_ in this.§@o§)
         {
            _loc3_.update(param1);
         }
         if(this.§@!S§ > 0)
         {
            this.§9!O§(param1);
         }
         if(mNextState.length > 0)
         {
            return §2!_§.STATE_STATUS_COMPLETED;
         }
         return §2!_§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§]!]§.§9v§(0);
         this.§%G§();
         this.§@!S§ = 0;
         §@E§.§1o§(§@! §);
         (§=!I§.getItemByName("Button_Menu") as §29§).setComponentVisualState(§`f§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§=!I§.getItemByName("Button_Replay") as §29§).setComponentVisualState(§`f§.COMPONENT_STATE_ACTIVE_DEFAULT);
         §=!I§.setText("0","TextField_LevelEndScore");
         §=!I§.setText("0","TextField_LevelEndScoreEffects");
      }
      
      private function §%G§() : void
      {
         var _loc1_:§=!G§ = null;
         if(this.§ !;§)
         {
            this.§ !;§.stop();
            this.§ !;§.removeEventListener(TimerEvent.TIMER,this.§"r§);
         }
         for each(_loc1_ in this.§@o§)
         {
            if(§=!I§.contains(_loc1_))
            {
               §=!I§.removeChild(_loc1_);
            }
            _loc1_.clean();
         }
         this.§@o§ = new Vector.<§=!G§>();
         §=!I§.getItemByName("TextField_BestScore").setVisibility(false);
         §=!I§.getItemByName("MovieClip_BestScoreText").setVisibility(false);
         §=!I§.getItemByName("MovieClip_BestScoreStars").setVisibility(false);
         §=!I§.getItemByName("MovieClip_NewHighScore").setVisibility(false);
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
            mNextState = §^!O§;
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§12§) : void
      {
         super.uiInteractionHandler(param1,param2,param3);
         switch(param2)
         {
            case "NEXT_LEVEL":
               §5d§.§[!8§();
               mNextState = StateCutScene.§^!O§;
               break;
            case "REPLAY":
               §5d§.§=O§();
               mNextState = §5d§.§^!O§;
               break;
            case "MENU":
               mNextState = §6T§.§-5§;
         }
      }
   }
}
