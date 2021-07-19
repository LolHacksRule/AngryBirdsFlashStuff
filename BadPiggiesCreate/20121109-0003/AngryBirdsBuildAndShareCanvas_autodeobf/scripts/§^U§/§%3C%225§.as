package §^U§
{
   import §#";§.§0"#§;
   import §&!<§.§>!V§;
   import §&!<§.§]!M§;
   import §'V§.§7I§;
   import §'V§.§=!r§;
   import §,P§.§'_§;
   import §05§.§?s§;
   import §6!A§.§4!%§;
   import §;<§.§'B§;
   import §;b§.§@"0§;
   import §<!1§.§9!=§;
   import §<!]§.§2U§;
   import §<!]§.§]!v§;
   import §=!7§.§6W§;
   import §=!7§.§9"8§;
   import §=!7§.§@u§;
   import §@y§.§0=§;
   import §@y§.§>!D§;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §<"5§ extends §'B§
   {
      
      public static const §%!Q§:String = "LevelEndStateBS";
      
      private static const §]!9§:String = "ScoreLoopCountChannel";
      
      private static const §4!P§:String = "EndScreenEffectChannel";
       
      
      private const §#""§:String = "likeButton";
      
      private const §"!E§:String = "shareButton";
      
      private const §4L§:String = "nextButton";
      
      private var §%?§:Boolean = false;
      
      private var §1!"§:Timer;
      
      private var §<E§:§]!v§;
      
      private var §@"#§:§2U§;
      
      private var §!!N§:Vector.<§2U§>;
      
      public var mNewScoreCounter:int;
      
      private var §7!S§:int;
      
      private var §%!t§:Boolean;
      
      private var §4!?§:§9!=§;
      
      private var §1!8§:§=!r§;
      
      protected var §<u§:int;
      
      public function §<"5§(param1:Boolean = false, param2:String = "LevelEndStateBS")
      {
         this.§4!?§ = new §9!=§();
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §`!v§ = new §>!V§(this);
         §`!v§.init(§]!M§.§"!V§.Views.View_LevelEndBS[0]);
         this.§!!N§ = new Vector.<§2U§>();
         §0"#§.§4!m§(§]!9§,3,1);
         §0"#§.§4!m§(§4!P§,3,1);
      }
      
      override public function activate() : void
      {
         super.activate();
         §'_§.pause();
         this.§<E§ = new §]!v§(0,0,0,0);
         §`!v§.movieClip.addChildAt(this.§<E§,§`!v§.movieClip.numChildren - 1);
         this.mNewScoreCounter = 0;
         this.§%!t§ = false;
         §0"#§.§9"2§("LevelCompletedTheme1");
         this.§<E§.§[!r§(0.7);
         this.§&D§();
         if(§`!v§.getItemByName("Button_Like"))
         {
            §`!v§.getItemByName("Button_Like").visible = §4!%§.§`-§().§9y§(this.§#""§);
         }
         if(§`!v§.getItemByName("Button_Share"))
         {
            §`!v§.getItemByName("Button_Share").visible = §4!%§.§`-§().§9y§(this.§"!E§);
         }
         if(§`!v§.getItemByName("Button_NextLevel"))
         {
            §`!v§.getItemByName("Button_NextLevel").visible = §4!%§.§`-§().§9y§(this.§4L§);
         }
      }
      
      private function §&D§() : void
      {
         this.§[V§();
         this.§1!"§ = new Timer(500);
         this.§7!S§ = 0;
         this.§1!"§.addEventListener(TimerEvent.TIMER,this.§5N§);
         this.§1!"§.start();
      }
      
      protected function §[V§() : void
      {
         (§`!v§.getItemByName("MovieClip_StarLeft") as §@u§).mClip.gotoAndStop("UnLit");
         (§`!v§.getItemByName("MovieClip_StarCenter") as §@u§).mClip.gotoAndStop("UnLit");
         (§`!v§.getItemByName("MovieClip_StarRight") as §@u§).mClip.gotoAndStop("UnLit");
      }
      
      private function §5N§(param1:TimerEvent) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc4_:Number = §'_§.§=M§.§-!R§().mScoreGold;
         var _loc5_:Number = §'_§.§=M§.§-!R§().mScoreSilver;
         if((§`!v§.getItemByName("MovieClip_StarLeft") as §@u§).mClip.currentLabel == "UnLit")
         {
            §0"#§.§9"2§("Hiscore_Count",§]!9§,100);
            §0"#§.§9"2§("Hiscore_Star_Splash1",§4!P§);
            this.§1!"§.delay = 1000;
            this.§4!?§.§2">§(§'_§.§=R§.getScore());
            _loc6_ = this.§4!?§.getValue() / _loc4_ * 2;
            if(_loc4_ <= 0)
            {
               _loc6_ = 1;
            }
            this.§1!8§ = §7I§.§[E§.§ ";§(this,{"mNewScoreCounter":this.§4!?§.getValue()},{"mNewScoreCounter":0},_loc6_);
            this.§1!8§.onComplete = this.§`!1§;
            this.§1!8§.play();
            (§`!v§.getItemByName("MovieClip_StarLeft") as §@u§).mClip.gotoAndStop("Lit");
            _loc2_ = (§`!v§.getItemByName("MovieClip_StarLeft") as §@u§).x + (§`!v§.getItemByName("Container_LevelEndStripe") as §6W§).x;
            _loc3_ = (§`!v§.getItemByName("MovieClip_StarLeft") as §@u§).y + (§`!v§.getItemByName("Container_LevelEndStripe") as §6W§).y;
            this.§@"#§ = new §2U§(AngryBirdsFP11.§6j§,AngryBirdsFP11.§+#§,_loc2_,_loc3_,§2U§.§%!b§);
            §`!v§.addChild(this.§@"#§);
            this.§!!N§.push(this.§@"#§);
         }
         else if(this.§4!?§.getValue() >= _loc5_ && (§`!v§.getItemByName("MovieClip_StarCenter") as §@u§).mClip.currentLabel == "UnLit")
         {
            §0"#§.§9"2§("Hiscore_Star_Splash2",§4!P§);
            (§`!v§.getItemByName("MovieClip_StarCenter") as §@u§).mClip.gotoAndStop("Lit");
            _loc2_ = (§`!v§.getItemByName("MovieClip_StarCenter") as §@u§).x + (§`!v§.getItemByName("Container_LevelEndStripe") as §6W§).x;
            _loc3_ = (§`!v§.getItemByName("MovieClip_StarCenter") as §@u§).y + (§`!v§.getItemByName("Container_LevelEndStripe") as §6W§).y;
            this.§@"#§ = new §2U§(AngryBirdsFP11.§6j§,AngryBirdsFP11.§+#§,_loc2_,_loc3_,§2U§.§%D§);
            §`!v§.addChild(this.§@"#§);
            this.§!!N§.push(this.§@"#§);
         }
         else if(this.§4!?§.getValue() >= _loc4_ && (§`!v§.getItemByName("MovieClip_StarRight") as §@u§).mClip.currentLabel == "UnLit")
         {
            §0"#§.§9"2§("Hiscore_Star_Splash3",§4!P§);
            (§`!v§.getItemByName("MovieClip_StarRight") as §@u§).mClip.gotoAndStop("Lit");
            _loc2_ = (§`!v§.getItemByName("MovieClip_StarRight") as §@u§).x + (§`!v§.getItemByName("Container_LevelEndStripe") as §6W§).x;
            _loc3_ = (§`!v§.getItemByName("MovieClip_StarRight") as §@u§).y + (§`!v§.getItemByName("Container_LevelEndStripe") as §6W§).y;
            this.§@"#§ = new §2U§(AngryBirdsFP11.§6j§,AngryBirdsFP11.§+#§,_loc2_,_loc3_,§2U§.§?E§);
            §`!v§.addChild(this.§@"#§);
            this.§!!N§.push(this.§@"#§);
         }
         else if(!this.§%!t§)
         {
            this.§%!t§ = true;
         }
         else
         {
            this.§1!"§.stop();
         }
         ++this.§7!S§;
      }
      
      private function §`!1§() : void
      {
         §0"#§.§<"0§(§]!9§);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:§2U§ = null;
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §'B§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         §`!v§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScore");
         §`!v§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScoreEffects");
         for each(_loc3_ in this.§!!N§)
         {
            _loc3_.update(param1);
         }
         if(mNextState.length > 0)
         {
            §'_§.§=M§.clearLevel();
            return §'B§.STATE_STATUS_COMPLETED;
         }
         return §'B§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§&V§();
         this.mNewScoreCounter = 0;
         if(this.§1!8§)
         {
            this.§1!8§.stop();
            this.§1!8§ = null;
         }
         §0"#§.§<"0§(§]!9§);
         if(§`!v§.getItemByName("Button_Menu"))
         {
            (§`!v§.getItemByName("Button_Menu") as §9"8§).setComponentVisualState(§>!D§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         (§`!v§.getItemByName("Button_Replay") as §9"8§).setComponentVisualState(§>!D§.COMPONENT_STATE_ACTIVE_DEFAULT);
         §`!v§.setText("0","TextField_LevelEndScore");
         §`!v§.setText("0","TextField_LevelEndScoreEffects");
         if(this.§<E§)
         {
            if(§`!v§.movieClip.contains(this.§<E§))
            {
               §`!v§.movieClip.removeChild(this.§<E§);
            }
            this.§<E§.clean();
            this.§<E§ = null;
         }
      }
      
      private function §&V§() : void
      {
         var splash:§2U§ = null;
         if(this.§1!"§)
         {
            this.§1!"§.stop();
            try
            {
               this.§1!"§.removeEventListener(TimerEvent.TIMER,this.§5N§);
            }
            catch(e:Error)
            {
            }
         }
         for each(splash in this.§!!N§)
         {
            if(§`!v§.contains(splash))
            {
               §`!v§.removeChild(splash);
            }
            splash.clean();
         }
         this.§!!N§ = new Vector.<§2U§>();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§0=§) : void
      {
         switch(param2)
         {
            case "REPLAY":
               §@"0§.§%P§(StatePlayBS.§%!Q§);
               mNextState = §@"0§.§%!Q§;
               break;
            case "MENU":
               §?s§.doJsCall("onLevelMenuOpened");
               mNextState = §&y§.§%!Q§;
               break;
            case "FULLSCREEN_BUTTON":
               §?s§.doJsCall("onFullscreenToggle");
               break;
            case "LIKE":
               §?s§.doJsCall("onLevelLiked");
               break;
            case "SHARE":
               §?s§.doJsCall("onLevelShared");
               break;
            case "NEXT":
               §?s§.doJsCall("onNextLevel");
         }
      }
   }
}
