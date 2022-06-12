package §,i§
{
   import §&!&§.§1"7§;
   import §0!d§.§%!9§;
   import §0!d§.§7!a§;
   import §0!d§.§8!r§;
   import §0!d§.§`G§;
   import §1U§.§"!V§;
   import §3[§.§0!K§;
   import §4!t§.§1!=§;
   import §4!t§.§=p§;
   import §5^§.§ !x§;
   import §7M§.§"?§;
   import §<8§.§"h§;
   import §<8§.§7!n§;
   import §>"2§.§<y§;
   import §>"2§.§^F§;
   import §]!X§.§&S§;
   import §]!X§.§?7§;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §=B§ extends §0!K§
   {
      
      public static const §]"2§:String = "LevelEndStateRio";
      
      public static const §]!;§:Number = 30;
      
      protected static const §+k§:String = "ScoreLoopCountChannel";
      
      protected static const §@!i§:String = "EndScreenEffectChannel";
       
      
      private var §%p§:§^F§;
      
      private var §'&§:Number;
      
      private var §%u§:Number = 0.0;
      
      private var §,!v§:Number = 0.0;
      
      private var § use§:Boolean = false;
      
      private var §!f§:Timer;
      
      private var §`H§:§?7§;
      
      protected var §1W§:Array;
      
      protected var §3!Y§:§&S§;
      
      protected var §1F§:Vector.<§&S§>;
      
      public var mNewScoreCounter:int;
      
      private var §3q§:int;
      
      private var §6!f§:Boolean;
      
      protected var §-V§:Boolean;
      
      private var §82§:§1"7§;
      
      protected var § !>§:Boolean;
      
      private var §6!=§:§^F§;
      
      protected var §!!-§:Boolean;
      
      protected var §8!>§:int;
      
      public function §=B§(param1:Boolean = false, param2:String = "LevelEndStateRio")
      {
         this.§1W§ = [];
         this.§82§ = new §1"7§();
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §'K§ = new §=p§(this);
         §'K§.init(this.§5!,§());
         this.§^!a§();
         this.§1F§ = new Vector.<§&S§>();
         § !x§.§'^§(§+k§,1,1);
         § !x§.§'^§(§@!i§,3,1);
      }
      
      protected function §^!a§() : void
      {
         this.§1W§.push((§'K§.getItemByName("Button_Menu") as §8!r§).x);
         this.§1W§.push((§'K§.getItemByName("Button_Replay") as §8!r§).x);
         this.§1W§.push((§'K§.getItemByName("Button_NextLevel") as §8!r§).x);
         this.§1W§.push((§'K§.getItemByName("Button_CutScene") as §8!r§).x);
      }
      
      protected function §5!,§() : XML
      {
         return §1!=§.§8X§.Views.View_LevelEndRio[0];
      }
      
      protected function §>"8§() : void
      {
         if(!AngryBirdsFP11.§<U§.§]'§(§"?§.§4M§))
         {
            (§'K§.getItemByName("Button_Menu") as §8!r§).setVisibility(false);
            (§'K§.getItemByName("Button_Replay") as §8!r§).setVisibility(true);
            (§'K§.getItemByName("Button_NextLevel") as §8!r§).setVisibility(false);
            (§'K§.getItemByName("Button_CutScene") as §8!r§).setVisibility(true);
            (§'K§.getItemByName("Button_Replay") as §8!r§).x = this.§1W§[0] + Math.abs(this.§1W§[1] - this.§1W§[0]) / 2;
            (§'K§.getItemByName("Button_CutScene") as §8!r§).x = this.§1W§[1] + Math.abs(this.§1W§[2] - this.§1W§[1]) / 2;
         }
         else
         {
            (§'K§.getItemByName("Button_Menu") as §8!r§).setVisibility(true);
            (§'K§.getItemByName("Button_Replay") as §8!r§).setVisibility(true);
            (§'K§.getItemByName("Button_NextLevel") as §8!r§).setVisibility(false);
            (§'K§.getItemByName("Button_CutScene") as §8!r§).setVisibility(true);
            (§'K§.getItemByName("Button_Menu") as §8!r§).x = this.§1W§[0];
            (§'K§.getItemByName("Button_Replay") as §8!r§).x = this.§1W§[1];
            (§'K§.getItemByName("Button_CutScene") as §8!r§).x = this.§1W§[2];
         }
      }
      
      protected function §#x§() : void
      {
         (§'K§.getItemByName("Button_Menu") as §8!r§).setVisibility(true);
         (§'K§.getItemByName("Button_Replay") as §8!r§).setVisibility(true);
         (§'K§.getItemByName("Button_CutScene") as §8!r§).setVisibility(false);
         if(§"?§.§7!=§())
         {
            (§'K§.getItemByName("Button_NextLevel") as §8!r§).setVisibility(true);
            (§'K§.getItemByName("Button_Menu") as §8!r§).x = this.§1W§[0];
            (§'K§.getItemByName("Button_Replay") as §8!r§).x = this.§1W§[1];
            (§'K§.getItemByName("Button_NextLevel") as §8!r§).x = this.§1W§[2];
         }
         else
         {
            (§'K§.getItemByName("Button_NextLevel") as §8!r§).setVisibility(false);
            (§'K§.getItemByName("Button_Menu") as §8!r§).x = this.§1W§[0] + Math.abs(this.§1W§[1] - this.§1W§[0]) / 2;
            (§'K§.getItemByName("Button_Replay") as §8!r§).x = this.§1W§[1] + Math.abs(this.§1W§[2] - this.§1W§[1]) / 2;
         }
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§!!-§ = false;
         §"!V§.pause();
         this.§`H§ = new §?7§(0,0,0,0);
         §'K§.movieClip.addChildAt(this.§`H§,§'K§.movieClip.numChildren - 1);
         if(§"?§.§0k§())
         {
            this.§>"8§();
         }
         else
         {
            this.§#x§();
         }
         this.mNewScoreCounter = 0;
         this.§6!f§ = false;
         § !x§.playSound("LevelCompletedTheme1");
         this.§`H§.§%H§(0.7);
         this.§%u§ = 0;
         this.§,!v§ = 0;
         this.§ !7§();
      }
      
      private function § !7§() : void
      {
         this.§-V§ = false;
         this.§%Z§();
         this.§!f§ = new Timer(500);
         this.§3q§ = 0;
         this.§!f§.addEventListener(TimerEvent.TIMER,this.§3r§);
         this.§!f§.start();
      }
      
      protected function §>,§() : void
      {
         if(AngryBirdsFP11.§<U§.§,[§(§"?§.§4M§) == 100)
         {
            (§'K§.getItemByName("MovieClip_ResultMEFeather") as §%!9§).mClip.gotoAndStop("On");
         }
         else
         {
            (§'K§.getItemByName("MovieClip_ResultMEFeather") as §%!9§).mClip.gotoAndStop("Off");
         }
      }
      
      protected function § o§(param1:int, param2:int) : void
      {
         if(this.§ !>§)
         {
            param2 = param1;
            AngryBirdsFP11.§<U§.§+!Y§(§"?§.§4M§,param2);
            §'K§.setText("New Highscore!","TextField_BestScore");
         }
         else
         {
            §'K§.setText("Best " + param2.toString(),"TextField_BestScore");
            this.§8!>§ = §"?§.§!8§(§"?§.§4M§,param2);
            switch(this.§8!>§)
            {
               case 1:
                  (§'K§.getItemByName("MovieClip_BestScoreStars") as §%!9§).§?!D§("OneStar");
                  break;
               case 2:
                  (§'K§.getItemByName("MovieClip_BestScoreStars") as §%!9§).§?!D§("TwoStar");
                  break;
               case 3:
                  (§'K§.getItemByName("MovieClip_BestScoreStars") as §%!9§).§?!D§("ThreeStar");
            }
         }
      }
      
      protected function §%Z§() : void
      {
         var _loc1_:int = AngryBirdsFP11.§<U§.§,s§(§"?§.§4M§);
         var _loc2_:int = §"!V§.§ !o§.getScore();
         this.§ !>§ = _loc2_ > _loc1_;
         this.§ o§(_loc2_,_loc1_);
         this.§>,§();
         var _loc3_:int = §"!V§.§ !o§.getEagleScore();
         var _loc4_:int = AngryBirdsFP11.§<U§.§,[§(§"?§.§4M§);
         var _loc5_:*;
         if(_loc5_ = _loc3_ > _loc4_)
         {
            _loc4_ = _loc3_;
            AngryBirdsFP11.§<U§.§0!A§(§"?§.§4M§,_loc4_);
         }
         var _loc6_:int = AngryBirdsFP11.§<U§.§!!q§(§"?§.§4M§,_loc2_);
         (§'K§.getItemByName("MovieClip_NewHighScoreBadge") as §%!9§).setVisibility(false);
         (§'K§.getItemByName("MovieClip_StarLeft") as §%!9§).mClip.gotoAndStop("UnLit");
         (§'K§.getItemByName("MovieClip_StarCenter") as §%!9§).mClip.gotoAndStop("UnLit");
         (§'K§.getItemByName("MovieClip_StarRight") as §%!9§).mClip.gotoAndStop("UnLit");
      }
      
      protected function §0!0§() : void
      {
         if(this.§ !>§)
         {
            § !x§.playSound("Hiscore_Badge",§@!i§);
            §'K§.setText("New Highscore!","TextField_NewHighScore");
            (§'K§.getItemByName("TextField_NewHighScore") as §`G§).setVisibility(true);
            (§'K§.getItemByName("MovieClip_BestScoreStars") as §%!9§).setVisibility(false);
            this.§,N§();
         }
         else
         {
            (§'K§.getItemByName("TextField_BestScore") as §`G§).setVisibility(true);
            (§'K§.getItemByName("MovieClip_BestScoreStars") as §%!9§).setVisibility(true);
         }
      }
      
      protected function §,N§() : void
      {
         this.§%u§ = 0;
         this.§,!v§ = 0;
         this.§'&§ = §]!;§;
      }
      
      private function § ,§(param1:Number) : void
      {
         (§'K§.getItemByName("Container_LevelEndStripe") as §7!a§).x = (§'K§.getItemByName("Container_LevelEndStripe") as §7!a§).x - this.§%u§;
         (§'K§.getItemByName("Container_LevelEndStripe") as §7!a§).y = (§'K§.getItemByName("Container_LevelEndStripe") as §7!a§).y - this.§,!v§;
         if(this.§'&§ > 0)
         {
            this.§%u§ = (Math.random() - 0.5) * (this.§'&§ / §]!;§) * 20;
            this.§,!v§ = (Math.random() - 0.5) * (this.§'&§ / §]!;§) * 20;
            (§'K§.getItemByName("Container_LevelEndStripe") as §7!a§).x = (§'K§.getItemByName("Container_LevelEndStripe") as §7!a§).x + this.§%u§;
            (§'K§.getItemByName("Container_LevelEndStripe") as §7!a§).y = (§'K§.getItemByName("Container_LevelEndStripe") as §7!a§).y + this.§,!v§;
         }
         else
         {
            this.§'&§ = -1;
            this.§ !3§();
            this.§%u§ = 0;
            this.§,!v§ = 0;
         }
         this.§'&§ -= param1 / 10;
      }
      
      protected function § !3§() : void
      {
      }
      
      private function §3r§(param1:TimerEvent) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc4_:Number = §"?§.§+!M§(§"?§.§4M§).mScoreGold;
         var _loc5_:Number = §"?§.§+!M§(§"?§.§4M§).mScoreSilver;
         if((§'K§.getItemByName("MovieClip_StarLeft") as §%!9§).mClip.currentLabel == "UnLit")
         {
            § !x§.playSound("Hiscore_Count",§+k§,100);
            § !x§.playSound("Hiscore_Star_Splash1",§@!i§);
            this.§!f§.delay = 1000;
            this.§82§.§ <§(§"!V§.§ !o§.getScore());
            _loc6_ = this.§82§.getValue() / _loc4_ * 2;
            if(_loc4_ <= 0)
            {
               _loc6_ = 1;
            }
            this.§6!=§ = §<y§.§,l§.§]!C§(this,{"mNewScoreCounter":this.§82§.getValue()},{"mNewScoreCounter":0},_loc6_);
            this.§6!=§.onComplete = this.§[t§;
            this.§6!=§.play();
            (§'K§.getItemByName("MovieClip_StarLeft") as §%!9§).mClip.gotoAndStop("Lit");
            _loc2_ = (§'K§.getItemByName("MovieClip_StarLeft") as §%!9§).x + (§'K§.getItemByName("Container_LevelEndStripe") as §7!a§).x;
            _loc3_ = (§'K§.getItemByName("MovieClip_StarLeft") as §%!9§).y + (§'K§.getItemByName("Container_LevelEndStripe") as §7!a§).y;
            this.§3!Y§ = new §&S§(AngryBirdsFP11.§#"8§,AngryBirdsFP11.§2!e§,_loc2_,_loc3_,§&S§.dynamic);
            §'K§.addChild(this.§3!Y§);
            this.§1F§.push(this.§3!Y§);
         }
         else if(this.§82§.getValue() >= _loc5_ && (§'K§.getItemByName("MovieClip_StarCenter") as §%!9§).mClip.currentLabel == "UnLit")
         {
            § !x§.playSound("Hiscore_Star_Splash2",§@!i§);
            (§'K§.getItemByName("MovieClip_StarCenter") as §%!9§).mClip.gotoAndStop("Lit");
            _loc2_ = (§'K§.getItemByName("MovieClip_StarCenter") as §%!9§).x + (§'K§.getItemByName("Container_LevelEndStripe") as §7!a§).x;
            _loc3_ = (§'K§.getItemByName("MovieClip_StarCenter") as §%!9§).y + (§'K§.getItemByName("Container_LevelEndStripe") as §7!a§).y;
            this.§3!Y§ = new §&S§(AngryBirdsFP11.§#"8§,AngryBirdsFP11.§2!e§,_loc2_,_loc3_,§&S§.§=w§);
            §'K§.addChild(this.§3!Y§);
            this.§1F§.push(this.§3!Y§);
         }
         else if(this.§82§.getValue() >= _loc4_ && (§'K§.getItemByName("MovieClip_StarRight") as §%!9§).mClip.currentLabel == "UnLit")
         {
            this.§!!-§ = true;
            § !x§.playSound("Hiscore_Star_Splash3",§@!i§);
            (§'K§.getItemByName("MovieClip_StarRight") as §%!9§).mClip.gotoAndStop("Lit");
            _loc2_ = (§'K§.getItemByName("MovieClip_StarRight") as §%!9§).x + (§'K§.getItemByName("Container_LevelEndStripe") as §7!a§).x;
            _loc3_ = (§'K§.getItemByName("MovieClip_StarRight") as §%!9§).y + (§'K§.getItemByName("Container_LevelEndStripe") as §7!a§).y;
            this.§3!Y§ = new §&S§(AngryBirdsFP11.§#"8§,AngryBirdsFP11.§2!e§,_loc2_,_loc3_,§&S§.§'!b§);
            §'K§.addChild(this.§3!Y§);
            this.§1F§.push(this.§3!Y§);
         }
         else if(!this.§6!f§)
         {
            this.§6!f§ = true;
         }
         else
         {
            this.§!f§.stop();
            if(this.§ !>§ && !this.§-V§)
            {
               (§'K§.getItemByName("MovieClip_NewHighScoreBadge") as §%!9§).setVisibility(true);
            }
            else
            {
               (§'K§.getItemByName("MovieClip_NewHighScoreBadge") as §%!9§).setVisibility(false);
            }
            this.§%p§ = §<y§.§,l§.§]!C§((§'K§.getItemByName("MovieClip_NewHighScoreBadge") as §%!9§).mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":7,
               "scaleY":7
            },0.1);
            this.§%p§.onComplete = this.§0!0§;
            this.§%p§.play();
         }
         ++this.§3q§;
      }
      
      private function §[t§() : void
      {
         § !x§.§`"4§(§+k§);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:§&S§ = null;
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §0!K§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         §'K§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScore");
         §'K§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScoreEffects");
         for each(_loc3_ in this.§1F§)
         {
            _loc3_.update(param1);
         }
         if(this.§'&§ > -1)
         {
            this.§ ,§(param1);
         }
         if(mNextState.length > 0)
         {
            §"!V§.§!j§.clearLevel();
            return §0!K§.STATE_STATUS_COMPLETED;
         }
         return §0!K§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§?!<§();
         this.§'&§ = 0;
         this.mNewScoreCounter = 0;
         if(this.§6!=§)
         {
            this.§6!=§.stop();
            this.§6!=§ = null;
         }
         if(this.§%p§)
         {
            this.§%p§.stop();
            this.§%p§ = null;
         }
         § !x§.§`"4§(§+k§);
         this.§@5§(§"h§.COMPONENT_STATE_ACTIVE_DEFAULT);
         §'K§.setText("0","TextField_LevelEndScore");
         §'K§.setText("0","TextField_LevelEndScoreEffects");
         if(this.§`H§)
         {
            if(§'K§.movieClip.contains(this.§`H§))
            {
               §'K§.movieClip.removeChild(this.§`H§);
            }
            this.§`H§.clean();
            this.§`H§ = null;
         }
      }
      
      protected function §@5§(param1:String) : void
      {
         (§'K§.getItemByName("Button_Menu") as §8!r§).setComponentVisualState(param1);
         (§'K§.getItemByName("Button_Replay") as §8!r§).setComponentVisualState(param1);
         (§'K§.getItemByName("Button_NextLevel") as §8!r§).setComponentVisualState(param1);
         (§'K§.getItemByName("Button_CutScene") as §8!r§).setComponentVisualState(param1);
      }
      
      private function §?!<§() : void
      {
         var splash:§&S§ = null;
         if(this.§!f§)
         {
            this.§!f§.stop();
            try
            {
               this.§!f§.removeEventListener(TimerEvent.TIMER,this.§3r§);
            }
            catch(e:Error)
            {
            }
         }
         for each(splash in this.§1F§)
         {
            if(§'K§.contains(splash))
            {
               §'K§.removeChild(splash);
            }
            splash.clean();
         }
         this.§1F§ = new Vector.<§&S§>();
         this.§3!r§();
      }
      
      protected function §3!r§() : void
      {
         (§'K§.getItemByName("TextField_BestScore") as §`G§).setVisibility(false);
         (§'K§.getItemByName("MovieClip_BestScoreStars") as §%!9§).setVisibility(false);
         (§'K§.getItemByName("TextField_NewHighScore") as §`G§).setVisibility(false);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      protected function §]!x§() : void
      {
         §>Y§.§;X§();
         mNextState = this.§+!N§();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§7!n§) : void
      {
         var _loc4_:String = null;
         switch(param2)
         {
            case "NEXT_LEVEL":
               this.§]!x§();
               break;
            case "REPLAY":
               §>Y§.§"l§();
               mNextState = this.§`w§();
               break;
            case "WATCH_REPLAY":
               §>Y§.§"l§();
               mNextState = this.§`w§();
               if(_loc4_ = §"!V§.§!j§.§<"7§())
               {
                  §"!V§.§!j§.§8a§(_loc4_);
               }
               break;
            case "MENU":
               § !x§.§ X§();
               mNextState = this.§<d§();
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§'"0§.§[!>§();
         }
      }
      
      protected function §`w§() : String
      {
         return §>Y§.§]"2§;
      }
      
      protected function §+!N§() : String
      {
         return StateCutScene.§]"2§;
      }
      
      public function §<d§() : String
      {
         return §6!x§.§]"2§;
      }
   }
}
