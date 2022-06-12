package §-P§
{
   import §!D§.§ use§;
   import §!D§.§%c§;
   import §!D§.§3!6§;
   import §!D§.§<!5§;
   import §"!0§.§"!5§;
   import §"!0§.§;!5§;
   import §'!O§.§[!m§;
   import §,E§.§ t§;
   import §0!!§.§%!w§;
   import §0!!§.§2z§;
   import §6`§.§?!7§;
   import §9!7§.§#p§;
   import §9!7§.§6"0§;
   import §>w§.§4E§;
   import §?!V§.§ T§;
   import §?!V§.§"a§;
   import §`%§.§8!0§;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §?!B§ extends §4E§
   {
      
      public static const §#!w§:String = "LevelEndStateRio";
      
      public static const §7!t§:Number = 30;
      
      protected static const §<,§:String = "ScoreLoopCountChannel";
      
      protected static const §^!o§:String = "EndScreenEffectChannel";
       
      
      private var §;U§:§;!5§;
      
      private var §9I§:Number;
      
      private var §4K§:Number = 0.0;
      
      private var §3""§:Number = 0.0;
      
      private var §"!p§:Boolean = false;
      
      private var §>!D§:Timer;
      
      private var §;!z§:§%!w§;
      
      protected var §9p§:Array;
      
      protected var §#y§:§2z§;
      
      protected var §<!k§:Vector.<§2z§>;
      
      public var mNewScoreCounter:int;
      
      private var §]!j§:int;
      
      private var §7h§:Boolean;
      
      protected var §39§:Boolean;
      
      private var §'!s§:§ t§;
      
      protected var §%!§:Boolean;
      
      private var §="2§:§;!5§;
      
      protected var §'x§:Boolean;
      
      protected var §3!&§:int;
      
      public function §?!B§(param1:Boolean = false, param2:String = "LevelEndStateRio")
      {
         this.§9p§ = [];
         this.§'!s§ = new § t§();
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §1!j§ = new § T§(this);
         §1!j§.init(this.§!"0§());
         this.§<!Y§();
         this.§<!k§ = new Vector.<§2z§>();
         §?!7§.§!!l§(§<,§,1,1);
         §?!7§.§!!l§(§^!o§,3,1);
      }
      
      protected function §<!Y§() : void
      {
         this.§9p§.push((§1!j§.getItemByName("Button_Menu") as §3!6§).x);
         this.§9p§.push((§1!j§.getItemByName("Button_Replay") as §3!6§).x);
         this.§9p§.push((§1!j§.getItemByName("Button_NextLevel") as §3!6§).x);
         this.§9p§.push((§1!j§.getItemByName("Button_CutScene") as §3!6§).x);
      }
      
      protected function §!"0§() : XML
      {
         return §"a§.§-!g§.Views.View_LevelEndRio[0];
      }
      
      protected function §8!]§() : void
      {
         if(!AngryBirdsFP11.§8!v§.§8h§(§[!m§.§<!D§))
         {
            (§1!j§.getItemByName("Button_Menu") as §3!6§).setVisibility(false);
            (§1!j§.getItemByName("Button_Replay") as §3!6§).setVisibility(true);
            (§1!j§.getItemByName("Button_NextLevel") as §3!6§).setVisibility(false);
            (§1!j§.getItemByName("Button_CutScene") as §3!6§).setVisibility(true);
            (§1!j§.getItemByName("Button_Replay") as §3!6§).x = this.§9p§[0] + Math.abs(this.§9p§[1] - this.§9p§[0]) / 2;
            (§1!j§.getItemByName("Button_CutScene") as §3!6§).x = this.§9p§[1] + Math.abs(this.§9p§[2] - this.§9p§[1]) / 2;
         }
         else
         {
            (§1!j§.getItemByName("Button_Menu") as §3!6§).setVisibility(true);
            (§1!j§.getItemByName("Button_Replay") as §3!6§).setVisibility(true);
            (§1!j§.getItemByName("Button_NextLevel") as §3!6§).setVisibility(false);
            (§1!j§.getItemByName("Button_CutScene") as §3!6§).setVisibility(true);
            (§1!j§.getItemByName("Button_Menu") as §3!6§).x = this.§9p§[0];
            (§1!j§.getItemByName("Button_Replay") as §3!6§).x = this.§9p§[1];
            (§1!j§.getItemByName("Button_CutScene") as §3!6§).x = this.§9p§[2];
         }
      }
      
      protected function §?"#§() : void
      {
         (§1!j§.getItemByName("Button_Menu") as §3!6§).setVisibility(true);
         (§1!j§.getItemByName("Button_Replay") as §3!6§).setVisibility(true);
         (§1!j§.getItemByName("Button_CutScene") as §3!6§).setVisibility(false);
         if(§[!m§.§7>§())
         {
            (§1!j§.getItemByName("Button_NextLevel") as §3!6§).setVisibility(true);
            (§1!j§.getItemByName("Button_Menu") as §3!6§).x = this.§9p§[0];
            (§1!j§.getItemByName("Button_Replay") as §3!6§).x = this.§9p§[1];
            (§1!j§.getItemByName("Button_NextLevel") as §3!6§).x = this.§9p§[2];
         }
         else
         {
            (§1!j§.getItemByName("Button_NextLevel") as §3!6§).setVisibility(false);
            (§1!j§.getItemByName("Button_Menu") as §3!6§).x = this.§9p§[0] + Math.abs(this.§9p§[1] - this.§9p§[0]) / 2;
            (§1!j§.getItemByName("Button_Replay") as §3!6§).x = this.§9p§[1] + Math.abs(this.§9p§[2] - this.§9p§[1]) / 2;
         }
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§'x§ = false;
         §8!0§.pause();
         this.§;!z§ = new §%!w§(0,0,0,0);
         §1!j§.movieClip.addChildAt(this.§;!z§,§1!j§.movieClip.numChildren - 1);
         if(§[!m§.§+§())
         {
            this.§8!]§();
         }
         else
         {
            this.§?"#§();
         }
         this.mNewScoreCounter = 0;
         this.§7h§ = false;
         §?!7§.playSound("LevelCompletedTheme1");
         this.§;!z§.§4g§(0.7);
         this.§4K§ = 0;
         this.§3""§ = 0;
         this.§1A§();
      }
      
      private function §1A§() : void
      {
         this.§39§ = false;
         this.§`i§();
         this.§>!D§ = new Timer(500);
         this.§]!j§ = 0;
         this.§>!D§.addEventListener(TimerEvent.TIMER,this.§,Y§);
         this.§>!D§.start();
      }
      
      protected function §9d§() : void
      {
         if(AngryBirdsFP11.§8!v§.§7!$§(§[!m§.§<!D§) == 100)
         {
            (§1!j§.getItemByName("MovieClip_ResultMEFeather") as §<!5§).mClip.gotoAndStop("On");
         }
         else
         {
            (§1!j§.getItemByName("MovieClip_ResultMEFeather") as §<!5§).mClip.gotoAndStop("Off");
         }
      }
      
      protected function §]k§(param1:int, param2:int) : void
      {
         if(this.§%!§)
         {
            param2 = param1;
            AngryBirdsFP11.§8!v§.§8"#§(§[!m§.§<!D§,param2);
            §1!j§.setText("New Highscore!","TextField_BestScore");
         }
         else
         {
            §1!j§.setText("Best " + param2.toString(),"TextField_BestScore");
            this.§3!&§ = §[!m§.§`p§(§[!m§.§<!D§,param2);
            switch(this.§3!&§)
            {
               case 1:
                  (§1!j§.getItemByName("MovieClip_BestScoreStars") as §<!5§).§do§("OneStar");
                  break;
               case 2:
                  (§1!j§.getItemByName("MovieClip_BestScoreStars") as §<!5§).§do§("TwoStar");
                  break;
               case 3:
                  (§1!j§.getItemByName("MovieClip_BestScoreStars") as §<!5§).§do§("ThreeStar");
            }
         }
      }
      
      protected function §`i§() : void
      {
         var _loc1_:int = AngryBirdsFP11.§8!v§.§]!Q§(§[!m§.§<!D§);
         var _loc2_:int = §8!0§.§00§.getScore();
         this.§%!§ = _loc2_ > _loc1_;
         this.§]k§(_loc2_,_loc1_);
         this.§9d§();
         var _loc3_:int = §8!0§.§00§.getEagleScore();
         var _loc4_:int = AngryBirdsFP11.§8!v§.§7!$§(§[!m§.§<!D§);
         var _loc5_:*;
         if(_loc5_ = _loc3_ > _loc4_)
         {
            _loc4_ = _loc3_;
            AngryBirdsFP11.§8!v§.§5!i§(§[!m§.§<!D§,_loc4_);
         }
         var _loc6_:int = AngryBirdsFP11.§8!v§.§4!z§(§[!m§.§<!D§,_loc2_);
         (§1!j§.getItemByName("MovieClip_NewHighScoreBadge") as §<!5§).setVisibility(false);
         (§1!j§.getItemByName("MovieClip_StarLeft") as §<!5§).mClip.gotoAndStop("UnLit");
         (§1!j§.getItemByName("MovieClip_StarCenter") as §<!5§).mClip.gotoAndStop("UnLit");
         (§1!j§.getItemByName("MovieClip_StarRight") as §<!5§).mClip.gotoAndStop("UnLit");
      }
      
      protected function §!R§() : void
      {
         if(this.§%!§)
         {
            §?!7§.playSound("Hiscore_Badge",§^!o§);
            §1!j§.setText("New Highscore!","TextField_NewHighScore");
            (§1!j§.getItemByName("TextField_NewHighScore") as §%c§).setVisibility(true);
            (§1!j§.getItemByName("MovieClip_BestScoreStars") as §<!5§).setVisibility(false);
            this.§;`§();
         }
         else
         {
            (§1!j§.getItemByName("TextField_BestScore") as §%c§).setVisibility(true);
            (§1!j§.getItemByName("MovieClip_BestScoreStars") as §<!5§).setVisibility(true);
         }
      }
      
      protected function §;`§() : void
      {
         this.§4K§ = 0;
         this.§3""§ = 0;
         this.§9I§ = §7!t§;
      }
      
      private function §&!d§(param1:Number) : void
      {
         (§1!j§.getItemByName("Container_LevelEndStripe") as § use§).x = (§1!j§.getItemByName("Container_LevelEndStripe") as § use§).x - this.§4K§;
         (§1!j§.getItemByName("Container_LevelEndStripe") as § use§).y = (§1!j§.getItemByName("Container_LevelEndStripe") as § use§).y - this.§3""§;
         if(this.§9I§ > 0)
         {
            this.§4K§ = (Math.random() - 0.5) * (this.§9I§ / §7!t§) * 20;
            this.§3""§ = (Math.random() - 0.5) * (this.§9I§ / §7!t§) * 20;
            (§1!j§.getItemByName("Container_LevelEndStripe") as § use§).x = (§1!j§.getItemByName("Container_LevelEndStripe") as § use§).x + this.§4K§;
            (§1!j§.getItemByName("Container_LevelEndStripe") as § use§).y = (§1!j§.getItemByName("Container_LevelEndStripe") as § use§).y + this.§3""§;
         }
         else
         {
            this.§9I§ = -1;
            this.§&!h§();
            this.§4K§ = 0;
            this.§3""§ = 0;
         }
         this.§9I§ -= param1 / 10;
      }
      
      protected function §&!h§() : void
      {
      }
      
      private function §,Y§(param1:TimerEvent) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc4_:Number = §[!m§.§&l§(§[!m§.§<!D§).mScoreGold;
         var _loc5_:Number = §[!m§.§&l§(§[!m§.§<!D§).mScoreSilver;
         if((§1!j§.getItemByName("MovieClip_StarLeft") as §<!5§).mClip.currentLabel == "UnLit")
         {
            §?!7§.playSound("Hiscore_Count",§<,§,100);
            §?!7§.playSound("Hiscore_Star_Splash1",§^!o§);
            this.§>!D§.delay = 1000;
            this.§'!s§.§,V§(§8!0§.§00§.getScore());
            _loc6_ = this.§'!s§.getValue() / _loc4_ * 2;
            if(_loc4_ <= 0)
            {
               _loc6_ = 1;
            }
            this.§="2§ = §"!5§.§9j§.§4!p§(this,{"mNewScoreCounter":this.§'!s§.getValue()},{"mNewScoreCounter":0},_loc6_);
            this.§="2§.onComplete = this.§,t§;
            this.§="2§.play();
            (§1!j§.getItemByName("MovieClip_StarLeft") as §<!5§).mClip.gotoAndStop("Lit");
            _loc2_ = (§1!j§.getItemByName("MovieClip_StarLeft") as §<!5§).x + (§1!j§.getItemByName("Container_LevelEndStripe") as § use§).x;
            _loc3_ = (§1!j§.getItemByName("MovieClip_StarLeft") as §<!5§).y + (§1!j§.getItemByName("Container_LevelEndStripe") as § use§).y;
            this.§#y§ = new §2z§(AngryBirdsFP11.§'A§,AngryBirdsFP11.§7!;§,_loc2_,_loc3_,§2z§.§;!V§);
            §1!j§.addChild(this.§#y§);
            this.§<!k§.push(this.§#y§);
         }
         else if(this.§'!s§.getValue() >= _loc5_ && (§1!j§.getItemByName("MovieClip_StarCenter") as §<!5§).mClip.currentLabel == "UnLit")
         {
            §?!7§.playSound("Hiscore_Star_Splash2",§^!o§);
            (§1!j§.getItemByName("MovieClip_StarCenter") as §<!5§).mClip.gotoAndStop("Lit");
            _loc2_ = (§1!j§.getItemByName("MovieClip_StarCenter") as §<!5§).x + (§1!j§.getItemByName("Container_LevelEndStripe") as § use§).x;
            _loc3_ = (§1!j§.getItemByName("MovieClip_StarCenter") as §<!5§).y + (§1!j§.getItemByName("Container_LevelEndStripe") as § use§).y;
            this.§#y§ = new §2z§(AngryBirdsFP11.§'A§,AngryBirdsFP11.§7!;§,_loc2_,_loc3_,§2z§.§?!p§);
            §1!j§.addChild(this.§#y§);
            this.§<!k§.push(this.§#y§);
         }
         else if(this.§'!s§.getValue() >= _loc4_ && (§1!j§.getItemByName("MovieClip_StarRight") as §<!5§).mClip.currentLabel == "UnLit")
         {
            this.§'x§ = true;
            §?!7§.playSound("Hiscore_Star_Splash3",§^!o§);
            (§1!j§.getItemByName("MovieClip_StarRight") as §<!5§).mClip.gotoAndStop("Lit");
            _loc2_ = (§1!j§.getItemByName("MovieClip_StarRight") as §<!5§).x + (§1!j§.getItemByName("Container_LevelEndStripe") as § use§).x;
            _loc3_ = (§1!j§.getItemByName("MovieClip_StarRight") as §<!5§).y + (§1!j§.getItemByName("Container_LevelEndStripe") as § use§).y;
            this.§#y§ = new §2z§(AngryBirdsFP11.§'A§,AngryBirdsFP11.§7!;§,_loc2_,_loc3_,§2z§.§%"§);
            §1!j§.addChild(this.§#y§);
            this.§<!k§.push(this.§#y§);
         }
         else if(!this.§7h§)
         {
            this.§7h§ = true;
         }
         else
         {
            this.§>!D§.stop();
            if(this.§%!§ && !this.§39§)
            {
               (§1!j§.getItemByName("MovieClip_NewHighScoreBadge") as §<!5§).setVisibility(true);
            }
            else
            {
               (§1!j§.getItemByName("MovieClip_NewHighScoreBadge") as §<!5§).setVisibility(false);
            }
            this.§;U§ = §"!5§.§9j§.§4!p§((§1!j§.getItemByName("MovieClip_NewHighScoreBadge") as §<!5§).mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":7,
               "scaleY":7
            },0.1);
            this.§;U§.onComplete = this.§!R§;
            this.§;U§.play();
         }
         ++this.§]!j§;
      }
      
      private function §,t§() : void
      {
         §?!7§.§[N§(§<,§);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:§2z§ = null;
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §4E§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         §1!j§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScore");
         §1!j§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScoreEffects");
         for each(_loc3_ in this.§<!k§)
         {
            _loc3_.update(param1);
         }
         if(this.§9I§ > -1)
         {
            this.§&!d§(param1);
         }
         if(mNextState.length > 0)
         {
            §8!0§.§?2§.clearLevel();
            return §4E§.STATE_STATUS_COMPLETED;
         }
         return §4E§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§=!Z§();
         this.§9I§ = 0;
         this.mNewScoreCounter = 0;
         if(this.§="2§)
         {
            this.§="2§.stop();
            this.§="2§ = null;
         }
         if(this.§;U§)
         {
            this.§;U§.stop();
            this.§;U§ = null;
         }
         §?!7§.§[N§(§<,§);
         this.§`[§(§6"0§.COMPONENT_STATE_ACTIVE_DEFAULT);
         §1!j§.setText("0","TextField_LevelEndScore");
         §1!j§.setText("0","TextField_LevelEndScoreEffects");
         if(this.§;!z§)
         {
            if(§1!j§.movieClip.contains(this.§;!z§))
            {
               §1!j§.movieClip.removeChild(this.§;!z§);
            }
            this.§;!z§.clean();
            this.§;!z§ = null;
         }
      }
      
      protected function §`[§(param1:String) : void
      {
         (§1!j§.getItemByName("Button_Menu") as §3!6§).setComponentVisualState(param1);
         (§1!j§.getItemByName("Button_Replay") as §3!6§).setComponentVisualState(param1);
         (§1!j§.getItemByName("Button_NextLevel") as §3!6§).setComponentVisualState(param1);
         (§1!j§.getItemByName("Button_CutScene") as §3!6§).setComponentVisualState(param1);
      }
      
      private function §=!Z§() : void
      {
         var splash:§2z§ = null;
         if(this.§>!D§)
         {
            this.§>!D§.stop();
            try
            {
               this.§>!D§.removeEventListener(TimerEvent.TIMER,this.§,Y§);
            }
            catch(e:Error)
            {
            }
         }
         for each(splash in this.§<!k§)
         {
            if(§1!j§.contains(splash))
            {
               §1!j§.removeChild(splash);
            }
            splash.clean();
         }
         this.§<!k§ = new Vector.<§2z§>();
         this.§3!$§();
      }
      
      protected function §3!$§() : void
      {
         (§1!j§.getItemByName("TextField_BestScore") as §%c§).setVisibility(false);
         (§1!j§.getItemByName("MovieClip_BestScoreStars") as §<!5§).setVisibility(false);
         (§1!j§.getItemByName("TextField_NewHighScore") as §%c§).setVisibility(false);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      protected function §6!1§() : void
      {
         §[!E§.§ !E§();
         mNextState = this.§@"2§();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§#p§) : void
      {
         var _loc4_:String = null;
         switch(param2)
         {
            case "NEXT_LEVEL":
               this.§6!1§();
               break;
            case "REPLAY":
               §[!E§.§%!,§();
               mNextState = this.§#!'§();
               break;
            case "WATCH_REPLAY":
               §[!E§.§%!,§();
               mNextState = this.§#!'§();
               if(_loc4_ = §8!0§.§?2§.§%Z§())
               {
                  §8!0§.§?2§.§ "4§(_loc4_);
               }
               break;
            case "MENU":
               §?!7§.§@"!§();
               mNextState = this.§1![§();
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§"!U§.§2!Z§();
         }
      }
      
      protected function §#!'§() : String
      {
         return §[!E§.§#!w§;
      }
      
      protected function §@"2§() : String
      {
         return StateCutScene.§#!w§;
      }
      
      public function §1![§() : String
      {
         return §1f§.§#!w§;
      }
   }
}
