package §""6§
{
   import § J§.§6"6§;
   import §'x§.§?z§;
   import §+!d§.§"r§;
   import §+!d§.§6=§;
   import §,Q§.§="2§;
   import §2!O§.§,w§;
   import §2i§.§%!+§;
   import §;!A§.§%!`§;
   import §;!A§.§2v§;
   import §;!A§.§;!u§;
   import §;"$§.§8!O§;
   import §;"$§.§`5§;
   import §<!k§.§!!g§;
   import §<!k§.§0"7§;
   import §<!p§.§]"7§;
   import §?!k§.§0!t§;
   import §?h§.§%!Z§;
   import §?h§.§8!K§;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §<a§ extends §,w§
   {
      
      public static const §^z§:String = "LevelEndStateBS";
      
      private static const §^!q§:String = "ScoreLoopCountChannel";
      
      private static const §'!,§:String = "EndScreenEffectChannel";
      
      protected static var §'!L§:Boolean = false;
       
      
      private const §0!V§:String = "likeButton";
      
      private const §5,§:String = "shareButton";
      
      private const §7!a§:String = "nextButton";
      
      private var §?G§:Boolean = false;
      
      private var §`i§:Timer;
      
      private var §;v§:§!!g§;
      
      private var §=3§:§0"7§;
      
      private var §1!g§:Vector.<§0"7§>;
      
      public var mNewScoreCounter:int;
      
      private var §>A§:int;
      
      private var §^f§:Boolean;
      
      private var §4!i§:§%!+§;
      
      private var §7!l§:§8!K§;
      
      protected var §,!?§:int;
      
      public function §<a§(param1:Boolean = false, param2:String = "LevelEndStateBS")
      {
         this.§4!i§ = new §%!+§();
         super(param1,param2);
      }
      
      public static function set §!%§(param1:Boolean) : void
      {
         §'!L§ = param1;
      }
      
      public static function get §!%§() : Boolean
      {
         return §'!L§;
      }
      
      override public function init() : void
      {
         super.init();
         §%""§ = new §`5§(this);
         §%""§.init(§8!O§.§'!J§.Views.View_LevelEndBS[0]);
         this.§1!g§ = new Vector.<§0"7§>();
         §0!t§.§2Q§(§^!q§,1,1);
         §0!t§.§2Q§(§'!,§,3,1);
      }
      
      override public function activate() : void
      {
         super.activate();
         §?z§.pause();
         this.§;v§ = new §!!g§(0,0,0,0);
         §%""§.movieClip.addChildAt(this.§;v§,§%""§.movieClip.numChildren - 1);
         this.mNewScoreCounter = 0;
         this.§^f§ = false;
         §0!t§.playSound("LevelCompletedTheme1");
         this.§;v§.§6"+§(0.7);
         this.§"!§();
         if(§%""§.getItemByName("Button_Like"))
         {
            §%""§.getItemByName("Button_Like").visible = §]"7§.§7U§().§ "1§(this.§0!V§);
         }
         if(§%""§.getItemByName("Button_Share"))
         {
            §%""§.getItemByName("Button_Share").visible = §]"7§.§7U§().§ "1§(this.§5,§);
         }
         if(§%""§.getItemByName("Button_NextLevel"))
         {
            §%""§.getItemByName("Button_NextLevel").visible = §]"7§.§7U§().§ "1§(this.§7!a§);
         }
         var _loc1_:Object = new Object();
         _loc1_["scores"] = §?z§.§6!#§.getScore();
         _loc1_["pigsKilled"] = §?z§.§=7§.§>"9§.§^!'§();
         _loc1_["birdsShot"] = §?z§.§=7§.§>"9§.§8!F§();
         _loc1_["valid"] = _loc1_["pigsKilled"] > 0 && _loc1_["birdsShot"] > 0;
         §'!L§ = _loc1_["valid"];
         §="2§.doJsCall("onLevelCompleted",JSON.stringify(_loc1_));
      }
      
      private function §"!§() : void
      {
         this.§1!Q§();
         this.§`i§ = new Timer(500);
         this.§>A§ = 0;
         this.§`i§.addEventListener(TimerEvent.TIMER,this.§8R§);
         this.§`i§.start();
      }
      
      protected function §1!Q§() : void
      {
         (§%""§.getItemByName("MovieClip_StarLeft") as §%!`§).mClip.gotoAndStop("UnLit");
         (§%""§.getItemByName("MovieClip_StarCenter") as §%!`§).mClip.gotoAndStop("UnLit");
         (§%""§.getItemByName("MovieClip_StarRight") as §%!`§).mClip.gotoAndStop("UnLit");
      }
      
      private function §8R§(param1:TimerEvent) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc4_:Number = §?z§.§=7§.§0!;§().mScoreGold;
         var _loc5_:Number = §?z§.§=7§.§0!;§().mScoreSilver;
         if((§%""§.getItemByName("MovieClip_StarLeft") as §%!`§).mClip.currentLabel == "UnLit")
         {
            §0!t§.playSound("Hiscore_Count",§^!q§,100);
            §0!t§.playSound("Hiscore_Star_Splash1",§'!,§);
            this.§`i§.delay = 1000;
            this.§4!i§.§`H§(§?z§.§6!#§.getScore());
            _loc6_ = this.§4!i§.getValue() / _loc4_ * 2;
            if(_loc4_ <= 0)
            {
               _loc6_ = 1;
            }
            this.§7!l§ = §%!Z§.§if §.§"<§(this,{"mNewScoreCounter":this.§4!i§.getValue()},{"mNewScoreCounter":0},_loc6_);
            this.§7!l§.onComplete = this.§>!k§;
            this.§7!l§.play();
            (§%""§.getItemByName("MovieClip_StarLeft") as §%!`§).mClip.gotoAndStop("Lit");
            _loc2_ = (§%""§.getItemByName("MovieClip_StarLeft") as §%!`§).x + (§%""§.getItemByName("Container_LevelEndStripe") as §;!u§).x;
            _loc3_ = (§%""§.getItemByName("MovieClip_StarLeft") as §%!`§).y + (§%""§.getItemByName("Container_LevelEndStripe") as §;!u§).y;
            this.§=3§ = new §0"7§(AngryBirdsFP11.§#k§,AngryBirdsFP11.§!7§,_loc2_,_loc3_,§0"7§.§^"§);
            §%""§.addChild(this.§=3§);
            this.§1!g§.push(this.§=3§);
         }
         else if(this.§4!i§.getValue() >= _loc5_ && (§%""§.getItemByName("MovieClip_StarCenter") as §%!`§).mClip.currentLabel == "UnLit")
         {
            §0!t§.playSound("Hiscore_Star_Splash2",§'!,§);
            (§%""§.getItemByName("MovieClip_StarCenter") as §%!`§).mClip.gotoAndStop("Lit");
            _loc2_ = (§%""§.getItemByName("MovieClip_StarCenter") as §%!`§).x + (§%""§.getItemByName("Container_LevelEndStripe") as §;!u§).x;
            _loc3_ = (§%""§.getItemByName("MovieClip_StarCenter") as §%!`§).y + (§%""§.getItemByName("Container_LevelEndStripe") as §;!u§).y;
            this.§=3§ = new §0"7§(AngryBirdsFP11.§#k§,AngryBirdsFP11.§!7§,_loc2_,_loc3_,§0"7§.§,0§);
            §%""§.addChild(this.§=3§);
            this.§1!g§.push(this.§=3§);
         }
         else if(this.§4!i§.getValue() >= _loc4_ && (§%""§.getItemByName("MovieClip_StarRight") as §%!`§).mClip.currentLabel == "UnLit")
         {
            §0!t§.playSound("Hiscore_Star_Splash3",§'!,§);
            (§%""§.getItemByName("MovieClip_StarRight") as §%!`§).mClip.gotoAndStop("Lit");
            _loc2_ = (§%""§.getItemByName("MovieClip_StarRight") as §%!`§).x + (§%""§.getItemByName("Container_LevelEndStripe") as §;!u§).x;
            _loc3_ = (§%""§.getItemByName("MovieClip_StarRight") as §%!`§).y + (§%""§.getItemByName("Container_LevelEndStripe") as §;!u§).y;
            this.§=3§ = new §0"7§(AngryBirdsFP11.§#k§,AngryBirdsFP11.§!7§,_loc2_,_loc3_,§0"7§.§5Y§);
            §%""§.addChild(this.§=3§);
            this.§1!g§.push(this.§=3§);
         }
         else if(!this.§^f§)
         {
            this.§^f§ = true;
         }
         else
         {
            this.§`i§.stop();
         }
         ++this.§>A§;
      }
      
      private function §>!k§() : void
      {
         §0!t§.§?!u§(§^!q§);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:§0"7§ = null;
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §,w§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         §%""§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScore");
         §%""§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScoreEffects");
         for each(_loc3_ in this.§1!g§)
         {
            _loc3_.update(param1);
         }
         if(mNextState.length > 0)
         {
            §?z§.§=7§.clearLevel();
            return §,w§.STATE_STATUS_COMPLETED;
         }
         return §,w§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§5"0§();
         this.mNewScoreCounter = 0;
         if(this.§7!l§)
         {
            this.§7!l§.stop();
            this.§7!l§ = null;
         }
         §0!t§.§?!u§(§^!q§);
         if(§%""§.getItemByName("Button_Menu"))
         {
            (§%""§.getItemByName("Button_Menu") as §2v§).setComponentVisualState(§"r§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         (§%""§.getItemByName("Button_Replay") as §2v§).setComponentVisualState(§"r§.COMPONENT_STATE_ACTIVE_DEFAULT);
         §%""§.setText("0","TextField_LevelEndScore");
         §%""§.setText("0","TextField_LevelEndScoreEffects");
         if(this.§;v§)
         {
            if(§%""§.movieClip.contains(this.§;v§))
            {
               §%""§.movieClip.removeChild(this.§;v§);
            }
            this.§;v§.clean();
            this.§;v§ = null;
         }
      }
      
      private function §5"0§() : void
      {
         var splash:§0"7§ = null;
         if(this.§`i§)
         {
            this.§`i§.stop();
            try
            {
               this.§`i§.removeEventListener(TimerEvent.TIMER,this.§8R§);
            }
            catch(e:Error)
            {
            }
         }
         for each(splash in this.§1!g§)
         {
            if(§%""§.contains(splash))
            {
               §%""§.removeChild(splash);
            }
            splash.clean();
         }
         this.§1!g§ = new Vector.<§0"7§>();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§6=§) : void
      {
         switch(param2)
         {
            case "REPLAY":
               §6"6§.§0!f§(StatePlayBS.§^z§);
               mNextState = §6"6§.§^z§;
               break;
            case "MENU":
               §="2§.doJsCall("onLevelMenuOpened");
               mNextState = §1f§.§^z§;
               break;
            case "FULLSCREEN_BUTTON":
               §="2§.doJsCall("onFullscreenToggle");
               break;
            case "LIKE":
               §="2§.doJsCall("onLevelLiked");
               break;
            case "SHARE":
               §="2§.doJsCall("onLevelShared");
               break;
            case "NEXT":
               §="2§.doJsCall("onNextLevel");
         }
      }
   }
}
