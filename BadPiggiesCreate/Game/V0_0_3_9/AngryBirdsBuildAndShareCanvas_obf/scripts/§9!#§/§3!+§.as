package §9!#§
{
   import §!!A§.§""5§;
   import §"h§.§<"+§;
   import §&!&§.§+!A§;
   import §&!&§.§7!8§;
   import §0Q§.§6w§;
   import §0Q§.§]`§;
   import §3!S§.§%s§;
   import §6!&§.§1!c§;
   import §6p§.§'!B§;
   import §<!I§.§&5§;
   import §<!I§.§7!N§;
   import §<!I§.§="5§;
   import §<!I§.§>"-§;
   import §<Z§.§"!f§;
   import §<Z§.§7!!§;
   import §>!J§.§"g§;
   import §>!J§.§^!#§;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §3!+§ extends §<"+§
   {
      
      public static const §8G§:String = "LevelEndStateRio";
      
      public static const §[!D§:Number = 30;
      
      protected static const §;1§:String = "ScoreLoopCountChannel";
      
      protected static const § "&§:String = "EndScreenEffectChannel";
       
      
      private var §%0§:§^!#§;
      
      private var §]!y§:Number;
      
      private var §2!=§:Number = 0.0;
      
      private var § K§:Number = 0.0;
      
      private var §^!]§:Boolean = false;
      
      private var §6C§:Timer;
      
      private var §#h§:§]`§;
      
      protected var §+@§:Array;
      
      protected var §[j§:§6w§;
      
      protected var §>h§:Vector.<§6w§>;
      
      public var mNewScoreCounter:int;
      
      private var §4_§:int;
      
      private var §&!s§:Boolean;
      
      protected var §2!$§:Boolean;
      
      private var §," §:§""5§;
      
      protected var §2;§:Boolean;
      
      private var §;!m§:§^!#§;
      
      protected var §7h§:Boolean;
      
      protected var §+!"§:int;
      
      public function §3!+§(param1:Boolean = false, param2:String = "LevelEndStateRio")
      {
         this.§+@§ = [];
         this.§," § = new §""5§();
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §;i§ = new §7!!§(this);
         §;i§.init(this.§'!H§());
         this.§0K§();
         this.§>h§ = new Vector.<§6w§>();
         §'!B§.§#3§(§;1§,1,1);
         §'!B§.§#3§(§ "&§,3,1);
      }
      
      protected function §0K§() : void
      {
         this.§+@§.push((§;i§.getItemByName("Button_Menu") as §="5§).x);
         this.§+@§.push((§;i§.getItemByName("Button_Replay") as §="5§).x);
         this.§+@§.push((§;i§.getItemByName("Button_NextLevel") as §="5§).x);
         this.§+@§.push((§;i§.getItemByName("Button_CutScene") as §="5§).x);
      }
      
      protected function §'!H§() : XML
      {
         return §"!f§.§%!1§.Views.View_LevelEndRio[0];
      }
      
      protected function §+f§() : void
      {
         if(!AngryBirdsFP11.§5!c§.§90§(§1!c§.§'Z§))
         {
            (§;i§.getItemByName("Button_Menu") as §="5§).setVisibility(false);
            (§;i§.getItemByName("Button_Replay") as §="5§).setVisibility(true);
            (§;i§.getItemByName("Button_NextLevel") as §="5§).setVisibility(false);
            (§;i§.getItemByName("Button_CutScene") as §="5§).setVisibility(true);
            (§;i§.getItemByName("Button_Replay") as §="5§).x = this.§+@§[0] + Math.abs(this.§+@§[1] - this.§+@§[0]) / 2;
            (§;i§.getItemByName("Button_CutScene") as §="5§).x = this.§+@§[1] + Math.abs(this.§+@§[2] - this.§+@§[1]) / 2;
         }
         else
         {
            (§;i§.getItemByName("Button_Menu") as §="5§).setVisibility(true);
            (§;i§.getItemByName("Button_Replay") as §="5§).setVisibility(true);
            (§;i§.getItemByName("Button_NextLevel") as §="5§).setVisibility(false);
            (§;i§.getItemByName("Button_CutScene") as §="5§).setVisibility(true);
            (§;i§.getItemByName("Button_Menu") as §="5§).x = this.§+@§[0];
            (§;i§.getItemByName("Button_Replay") as §="5§).x = this.§+@§[1];
            (§;i§.getItemByName("Button_CutScene") as §="5§).x = this.§+@§[2];
         }
      }
      
      protected function §<"6§() : void
      {
         (§;i§.getItemByName("Button_Menu") as §="5§).setVisibility(true);
         (§;i§.getItemByName("Button_Replay") as §="5§).setVisibility(true);
         (§;i§.getItemByName("Button_CutScene") as §="5§).setVisibility(false);
         if(§1!c§.§+5§())
         {
            (§;i§.getItemByName("Button_NextLevel") as §="5§).setVisibility(true);
            (§;i§.getItemByName("Button_Menu") as §="5§).x = this.§+@§[0];
            (§;i§.getItemByName("Button_Replay") as §="5§).x = this.§+@§[1];
            (§;i§.getItemByName("Button_NextLevel") as §="5§).x = this.§+@§[2];
         }
         else
         {
            (§;i§.getItemByName("Button_NextLevel") as §="5§).setVisibility(false);
            (§;i§.getItemByName("Button_Menu") as §="5§).x = this.§+@§[0] + Math.abs(this.§+@§[1] - this.§+@§[0]) / 2;
            (§;i§.getItemByName("Button_Replay") as §="5§).x = this.§+@§[1] + Math.abs(this.§+@§[2] - this.§+@§[1]) / 2;
         }
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§7h§ = false;
         §%s§.pause();
         this.§#h§ = new §]`§(0,0,0,0);
         §;i§.movieClip.addChildAt(this.§#h§,§;i§.movieClip.numChildren - 1);
         if(§1!c§.§ "'§())
         {
            this.§+f§();
         }
         else
         {
            this.§<"6§();
         }
         this.mNewScoreCounter = 0;
         this.§&!s§ = false;
         §'!B§.playSound("LevelCompletedTheme1");
         this.§#h§.§8!%§(0.7);
         this.§2!=§ = 0;
         this.§ K§ = 0;
         this.§=!6§();
      }
      
      private function §=!6§() : void
      {
         this.§2!$§ = false;
         this.§`!p§();
         this.§6C§ = new Timer(500);
         this.§4_§ = 0;
         this.§6C§.addEventListener(TimerEvent.TIMER,this.§5;§);
         this.§6C§.start();
      }
      
      protected function §+,§() : void
      {
         if(AngryBirdsFP11.§5!c§.§,!z§(§1!c§.§'Z§) == 100)
         {
            (§;i§.getItemByName("MovieClip_ResultMEFeather") as §&5§).mClip.gotoAndStop("On");
         }
         else
         {
            (§;i§.getItemByName("MovieClip_ResultMEFeather") as §&5§).mClip.gotoAndStop("Off");
         }
      }
      
      protected function §-!f§(param1:int, param2:int) : void
      {
         if(this.§2;§)
         {
            param2 = param1;
            AngryBirdsFP11.§5!c§.§0"&§(§1!c§.§'Z§,param2);
            §;i§.setText("New Highscore!","TextField_BestScore");
         }
         else
         {
            §;i§.setText("Best " + param2.toString(),"TextField_BestScore");
            this.§+!"§ = §1!c§.§!t§(§1!c§.§'Z§,param2);
            switch(this.§+!"§)
            {
               case 1:
                  (§;i§.getItemByName("MovieClip_BestScoreStars") as §&5§).§9!T§("OneStar");
                  break;
               case 2:
                  (§;i§.getItemByName("MovieClip_BestScoreStars") as §&5§).§9!T§("TwoStar");
                  break;
               case 3:
                  (§;i§.getItemByName("MovieClip_BestScoreStars") as §&5§).§9!T§("ThreeStar");
            }
         }
      }
      
      protected function §`!p§() : void
      {
         var _loc1_:int = AngryBirdsFP11.§5!c§.§0!^§(§1!c§.§'Z§);
         var _loc2_:int = §%s§.§]x§.getScore();
         this.§2;§ = _loc2_ > _loc1_;
         this.§-!f§(_loc2_,_loc1_);
         this.§+,§();
         var _loc3_:int = §%s§.§]x§.getEagleScore();
         var _loc4_:int = AngryBirdsFP11.§5!c§.§,!z§(§1!c§.§'Z§);
         var _loc5_:*;
         if(_loc5_ = _loc3_ > _loc4_)
         {
            _loc4_ = _loc3_;
            AngryBirdsFP11.§5!c§.§"!=§(§1!c§.§'Z§,_loc4_);
         }
         var _loc6_:int = AngryBirdsFP11.§5!c§.§'!5§(§1!c§.§'Z§,_loc2_);
         (§;i§.getItemByName("MovieClip_NewHighScoreBadge") as §&5§).setVisibility(false);
         (§;i§.getItemByName("MovieClip_StarLeft") as §&5§).mClip.gotoAndStop("UnLit");
         (§;i§.getItemByName("MovieClip_StarCenter") as §&5§).mClip.gotoAndStop("UnLit");
         (§;i§.getItemByName("MovieClip_StarRight") as §&5§).mClip.gotoAndStop("UnLit");
      }
      
      protected function include() : void
      {
         if(this.§2;§)
         {
            §'!B§.playSound("Hiscore_Badge",§ "&§);
            §;i§.setText("New Highscore!","TextField_NewHighScore");
            (§;i§.getItemByName("TextField_NewHighScore") as §7!N§).setVisibility(true);
            (§;i§.getItemByName("MovieClip_BestScoreStars") as §&5§).setVisibility(false);
            this.§>!9§();
         }
         else
         {
            (§;i§.getItemByName("TextField_BestScore") as §7!N§).setVisibility(true);
            (§;i§.getItemByName("MovieClip_BestScoreStars") as §&5§).setVisibility(true);
         }
      }
      
      protected function §>!9§() : void
      {
         this.§2!=§ = 0;
         this.§ K§ = 0;
         this.§]!y§ = §[!D§;
      }
      
      private function §"!1§(param1:Number) : void
      {
         (§;i§.getItemByName("Container_LevelEndStripe") as §>"-§).x = (§;i§.getItemByName("Container_LevelEndStripe") as §>"-§).x - this.§2!=§;
         (§;i§.getItemByName("Container_LevelEndStripe") as §>"-§).y = (§;i§.getItemByName("Container_LevelEndStripe") as §>"-§).y - this.§ K§;
         if(this.§]!y§ > 0)
         {
            this.§2!=§ = (Math.random() - 0.5) * (this.§]!y§ / §[!D§) * 20;
            this.§ K§ = (Math.random() - 0.5) * (this.§]!y§ / §[!D§) * 20;
            (§;i§.getItemByName("Container_LevelEndStripe") as §>"-§).x = (§;i§.getItemByName("Container_LevelEndStripe") as §>"-§).x + this.§2!=§;
            (§;i§.getItemByName("Container_LevelEndStripe") as §>"-§).y = (§;i§.getItemByName("Container_LevelEndStripe") as §>"-§).y + this.§ K§;
         }
         else
         {
            this.§]!y§ = -1;
            this.§case§();
            this.§2!=§ = 0;
            this.§ K§ = 0;
         }
         this.§]!y§ -= param1 / 10;
      }
      
      protected function §case§() : void
      {
      }
      
      private function §5;§(param1:TimerEvent) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc4_:Number = §1!c§.§-!q§(§1!c§.§'Z§).mScoreGold;
         var _loc5_:Number = §1!c§.§-!q§(§1!c§.§'Z§).mScoreSilver;
         if((§;i§.getItemByName("MovieClip_StarLeft") as §&5§).mClip.currentLabel == "UnLit")
         {
            §'!B§.playSound("Hiscore_Count",§;1§,100);
            §'!B§.playSound("Hiscore_Star_Splash1",§ "&§);
            this.§6C§.delay = 1000;
            this.§," §.§9!<§(§%s§.§]x§.getScore());
            _loc6_ = this.§," §.getValue() / _loc4_ * 2;
            if(_loc4_ <= 0)
            {
               _loc6_ = 1;
            }
            this.§;!m§ = §"g§.§'!o§.§while§(this,{"mNewScoreCounter":this.§," §.getValue()},{"mNewScoreCounter":0},_loc6_);
            this.§;!m§.onComplete = this.§-T§;
            this.§;!m§.play();
            (§;i§.getItemByName("MovieClip_StarLeft") as §&5§).mClip.gotoAndStop("Lit");
            _loc2_ = (§;i§.getItemByName("MovieClip_StarLeft") as §&5§).x + (§;i§.getItemByName("Container_LevelEndStripe") as §>"-§).x;
            _loc3_ = (§;i§.getItemByName("MovieClip_StarLeft") as §&5§).y + (§;i§.getItemByName("Container_LevelEndStripe") as §>"-§).y;
            this.§[j§ = new §6w§(AngryBirdsFP11.§`6§,AngryBirdsFP11.§ "2§,_loc2_,_loc3_,§6w§.§+y§);
            §;i§.addChild(this.§[j§);
            this.§>h§.push(this.§[j§);
         }
         else if(this.§," §.getValue() >= _loc5_ && (§;i§.getItemByName("MovieClip_StarCenter") as §&5§).mClip.currentLabel == "UnLit")
         {
            §'!B§.playSound("Hiscore_Star_Splash2",§ "&§);
            (§;i§.getItemByName("MovieClip_StarCenter") as §&5§).mClip.gotoAndStop("Lit");
            _loc2_ = (§;i§.getItemByName("MovieClip_StarCenter") as §&5§).x + (§;i§.getItemByName("Container_LevelEndStripe") as §>"-§).x;
            _loc3_ = (§;i§.getItemByName("MovieClip_StarCenter") as §&5§).y + (§;i§.getItemByName("Container_LevelEndStripe") as §>"-§).y;
            this.§[j§ = new §6w§(AngryBirdsFP11.§`6§,AngryBirdsFP11.§ "2§,_loc2_,_loc3_,§6w§.§%!Y§);
            §;i§.addChild(this.§[j§);
            this.§>h§.push(this.§[j§);
         }
         else if(this.§," §.getValue() >= _loc4_ && (§;i§.getItemByName("MovieClip_StarRight") as §&5§).mClip.currentLabel == "UnLit")
         {
            this.§7h§ = true;
            §'!B§.playSound("Hiscore_Star_Splash3",§ "&§);
            (§;i§.getItemByName("MovieClip_StarRight") as §&5§).mClip.gotoAndStop("Lit");
            _loc2_ = (§;i§.getItemByName("MovieClip_StarRight") as §&5§).x + (§;i§.getItemByName("Container_LevelEndStripe") as §>"-§).x;
            _loc3_ = (§;i§.getItemByName("MovieClip_StarRight") as §&5§).y + (§;i§.getItemByName("Container_LevelEndStripe") as §>"-§).y;
            this.§[j§ = new §6w§(AngryBirdsFP11.§`6§,AngryBirdsFP11.§ "2§,_loc2_,_loc3_,§6w§.§8!2§);
            §;i§.addChild(this.§[j§);
            this.§>h§.push(this.§[j§);
         }
         else if(!this.§&!s§)
         {
            this.§&!s§ = true;
         }
         else
         {
            this.§6C§.stop();
            if(this.§2;§ && !this.§2!$§)
            {
               (§;i§.getItemByName("MovieClip_NewHighScoreBadge") as §&5§).setVisibility(true);
            }
            else
            {
               (§;i§.getItemByName("MovieClip_NewHighScoreBadge") as §&5§).setVisibility(false);
            }
            this.§%0§ = §"g§.§'!o§.§while§((§;i§.getItemByName("MovieClip_NewHighScoreBadge") as §&5§).mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":7,
               "scaleY":7
            },0.1);
            this.§%0§.onComplete = this.include;
            this.§%0§.play();
         }
         ++this.§4_§;
      }
      
      private function §-T§() : void
      {
         §'!B§.§&!r§(§;1§);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:§6w§ = null;
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §<"+§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         §;i§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScore");
         §;i§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScoreEffects");
         for each(_loc3_ in this.§>h§)
         {
            _loc3_.update(param1);
         }
         if(this.§]!y§ > -1)
         {
            this.§"!1§(param1);
         }
         if(mNextState.length > 0)
         {
            §%s§.§`!f§.clearLevel();
            return §<"+§.STATE_STATUS_COMPLETED;
         }
         return §<"+§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§'c§();
         this.§]!y§ = 0;
         this.mNewScoreCounter = 0;
         if(this.§;!m§)
         {
            this.§;!m§.stop();
            this.§;!m§ = null;
         }
         if(this.§%0§)
         {
            this.§%0§.stop();
            this.§%0§ = null;
         }
         §'!B§.§&!r§(§;1§);
         this.§^![§(§+!A§.COMPONENT_STATE_ACTIVE_DEFAULT);
         §;i§.setText("0","TextField_LevelEndScore");
         §;i§.setText("0","TextField_LevelEndScoreEffects");
         if(this.§#h§)
         {
            if(§;i§.movieClip.contains(this.§#h§))
            {
               §;i§.movieClip.removeChild(this.§#h§);
            }
            this.§#h§.clean();
            this.§#h§ = null;
         }
      }
      
      protected function §^![§(param1:String) : void
      {
         (§;i§.getItemByName("Button_Menu") as §="5§).setComponentVisualState(param1);
         (§;i§.getItemByName("Button_Replay") as §="5§).setComponentVisualState(param1);
         (§;i§.getItemByName("Button_NextLevel") as §="5§).setComponentVisualState(param1);
         (§;i§.getItemByName("Button_CutScene") as §="5§).setComponentVisualState(param1);
      }
      
      private function §'c§() : void
      {
         var splash:§6w§ = null;
         if(this.§6C§)
         {
            this.§6C§.stop();
            try
            {
               this.§6C§.removeEventListener(TimerEvent.TIMER,this.§5;§);
            }
            catch(e:Error)
            {
            }
         }
         for each(splash in this.§>h§)
         {
            if(§;i§.contains(splash))
            {
               §;i§.removeChild(splash);
            }
            splash.clean();
         }
         this.§>h§ = new Vector.<§6w§>();
         this.§0D§();
      }
      
      protected function §0D§() : void
      {
         (§;i§.getItemByName("TextField_BestScore") as §7!N§).setVisibility(false);
         (§;i§.getItemByName("MovieClip_BestScoreStars") as §&5§).setVisibility(false);
         (§;i§.getItemByName("TextField_NewHighScore") as §7!N§).setVisibility(false);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      protected function §]!u§() : void
      {
         §+0§.§!i§();
         mNextState = this.§5i§();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§7!8§) : void
      {
         var _loc4_:String = null;
         switch(param2)
         {
            case "NEXT_LEVEL":
               this.§]!u§();
               break;
            case "REPLAY":
               §+0§.§2!2§();
               mNextState = this.§^!+§();
               break;
            case "WATCH_REPLAY":
               §+0§.§2!2§();
               mNextState = this.§^!+§();
               if(_loc4_ = §%s§.§`!f§.§6!n§())
               {
                  §%s§.§`!f§.§0!X§(_loc4_);
               }
               break;
            case "MENU":
               §'!B§.§>T§();
               mNextState = this.§,!N§();
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§?!-§.§>=§();
         }
      }
      
      protected function §^!+§() : String
      {
         return §+0§.§8G§;
      }
      
      protected function §5i§() : String
      {
         return StateCutScene.§8G§;
      }
      
      public function §,!N§() : String
      {
         return §#B§.§8G§;
      }
   }
}
