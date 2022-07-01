package §1!F§
{
   import §!!8§.§-!D§;
   import §!y§.§2U§;
   import §!y§.§=!Z§;
   import §"!E§.§#!'§;
   import §"!E§.§%O§;
   import §"!E§.§[!s§;
   import §#!4§.§+!S§;
   import §#!4§.§<f§;
   import §+]§.§7&§;
   import §1?§.§+!§;
   import §2!s§.§>!D§;
   import §5!`§.§ !c§;
   import §5!`§.§%!Y§;
   import §8!Q§.§2!7§;
   import §=!3§.§;!!§;
   import §?!-§.§'!V§;
   import §?!4§.§=Y§;
   import §@!i§.§@!n§;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §"![§ extends §;!!§
   {
      
      public static const STATE_NAME:String = "LevelEndStateBS";
      
      private static const §]!2§:String = "ScoreLoopCountChannel";
      
      private static const §;X§:String = "EndScreenEffectChannel";
      
      protected static var §`!u§:Boolean = false;
       
      
      private const §>!c§:String = "likeButton";
      
      private const §,!?§:String = "shareButton";
      
      private const §^9§:String = "nextButton";
      
      private var §#!<§:Boolean = false;
      
      private var §1!+§:Timer;
      
      private var §7H§:§%!Y§;
      
      private var §>!^§:§ !c§;
      
      private var §>!_§:Vector.<§ !c§>;
      
      public var mNewScoreCounter:int;
      
      private var §=w§:int;
      
      private var §9i§:Boolean;
      
      private var §]!4§:§2!7§;
      
      private var §47§:§=Y§;
      
      protected var §4!$§:int;
      
      public function §"![§(param1:Boolean = false, param2:String = "LevelEndStateBS")
      {
         this.§]!4§ = new §2!7§();
         super(param1,param2);
      }
      
      public static function §?!W§() : Boolean
      {
         return §`!u§;
      }
      
      override public function init() : void
      {
         super.init();
         §+!$§ = new §2U§(this);
         §+!$§.init(§=!Z§.§;K§.Views.View_LevelEndBS[0]);
         this.§>!_§ = new Vector.<§ !c§>();
         §+!§.§#n§(§]!2§,1,1);
         §+!§.§#n§(§;X§,3,1);
      }
      
      override public function activate() : void
      {
         super.activate();
         §'!V§.pause();
         this.§7H§ = new §%!Y§(0,0,0,0);
         §+!$§.movieClip.addChildAt(this.§7H§,§+!$§.movieClip.numChildren - 1);
         this.mNewScoreCounter = 0;
         this.§9i§ = false;
         §+!§.§4c§("LevelCompletedTheme1");
         this.§7H§.§#[§(0.7);
         this.§5!t§();
         if(§+!$§.getItemByName("Button_Like"))
         {
            §+!$§.getItemByName("Button_Like").visible = §7&§.§=n§().§4V§(this.§>!c§);
         }
         if(§+!$§.getItemByName("Button_Share"))
         {
            §+!$§.getItemByName("Button_Share").visible = §7&§.§=n§().§4V§(this.§,!?§);
         }
         if(§+!$§.getItemByName("Button_NextLevel"))
         {
            §+!$§.getItemByName("Button_NextLevel").visible = §7&§.§=n§().§4V§(this.§^9§);
         }
         var _loc1_:Object = new Object();
         _loc1_["scores"] = §'!V§.§?!G§.getScore();
         _loc1_["pigsKilled"] = §'!V§.§1!2§.levelObjects.§ !q§();
         _loc1_["birdsShot"] = §'!V§.§1!2§.levelObjects.§6!&§();
         _loc1_["valid"] = _loc1_["pigsKilled"] > 0 && _loc1_["birdsShot"] > 0;
         §`!u§ = _loc1_["valid"];
         §-!D§.§?5§("onLevelCompleted",JSON.stringify(_loc1_));
      }
      
      private function §5!t§() : void
      {
         this.setScoreData();
         this.§1!+§ = new Timer(500);
         this.§=w§ = 0;
         this.§1!+§.addEventListener(TimerEvent.TIMER,this.§;#§);
         this.§1!+§.start();
      }
      
      protected function setScoreData() : void
      {
         (§+!$§.getItemByName("MovieClip_StarLeft") as §%O§).mClip.gotoAndStop("UnLit");
         (§+!$§.getItemByName("MovieClip_StarCenter") as §%O§).mClip.gotoAndStop("UnLit");
         (§+!$§.getItemByName("MovieClip_StarRight") as §%O§).mClip.gotoAndStop("UnLit");
      }
      
      private function §;#§(param1:TimerEvent) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc4_:Number = §'!V§.§1!2§.getCurrentLevelData().§9>§;
         var _loc5_:Number = §'!V§.§1!2§.getCurrentLevelData().§6!H§;
         if((§+!$§.getItemByName("MovieClip_StarLeft") as §%O§).mClip.currentLabel == "UnLit")
         {
            §+!§.§4c§("Hiscore_Count",§]!2§,100);
            §+!§.§4c§("Hiscore_Star_Splash1",§;X§);
            this.§1!+§.delay = 1000;
            this.§]!4§.assign(§'!V§.§?!G§.getScore());
            _loc6_ = this.§]!4§.getValue() / _loc4_ * 2;
            if(_loc4_ <= 0)
            {
               _loc6_ = 1;
            }
            this.§47§ = §>!D§.§-8§(this,{"mNewScoreCounter":this.§]!4§.getValue()},{"mNewScoreCounter":0},_loc6_);
            this.§47§.onComplete = this.§7a§;
            this.§47§.play();
            (§+!$§.getItemByName("MovieClip_StarLeft") as §%O§).mClip.gotoAndStop("Lit");
            _loc2_ = (§+!$§.getItemByName("MovieClip_StarLeft") as §%O§).x + (§+!$§.getItemByName("Container_LevelEndStripe") as §[!s§).x;
            _loc3_ = (§+!$§.getItemByName("MovieClip_StarLeft") as §%O§).y + (§+!$§.getItemByName("Container_LevelEndStripe") as §[!s§).y;
            this.§>!^§ = new § !c§(AngryBirdsFP11.screenWidth,AngryBirdsFP11.screenHeight,_loc2_,_loc3_,§ !c§.§&$§);
            §+!$§.addChild(this.§>!^§);
            this.§>!_§.push(this.§>!^§);
         }
         else if(this.§]!4§.getValue() >= _loc5_ && (§+!$§.getItemByName("MovieClip_StarCenter") as §%O§).mClip.currentLabel == "UnLit")
         {
            §+!§.§4c§("Hiscore_Star_Splash2",§;X§);
            (§+!$§.getItemByName("MovieClip_StarCenter") as §%O§).mClip.gotoAndStop("Lit");
            _loc2_ = (§+!$§.getItemByName("MovieClip_StarCenter") as §%O§).x + (§+!$§.getItemByName("Container_LevelEndStripe") as §[!s§).x;
            _loc3_ = (§+!$§.getItemByName("MovieClip_StarCenter") as §%O§).y + (§+!$§.getItemByName("Container_LevelEndStripe") as §[!s§).y;
            this.§>!^§ = new § !c§(AngryBirdsFP11.screenWidth,AngryBirdsFP11.screenHeight,_loc2_,_loc3_,§ !c§.§#4§);
            §+!$§.addChild(this.§>!^§);
            this.§>!_§.push(this.§>!^§);
         }
         else if(this.§]!4§.getValue() >= _loc4_ && (§+!$§.getItemByName("MovieClip_StarRight") as §%O§).mClip.currentLabel == "UnLit")
         {
            §+!§.§4c§("Hiscore_Star_Splash3",§;X§);
            (§+!$§.getItemByName("MovieClip_StarRight") as §%O§).mClip.gotoAndStop("Lit");
            _loc2_ = (§+!$§.getItemByName("MovieClip_StarRight") as §%O§).x + (§+!$§.getItemByName("Container_LevelEndStripe") as §[!s§).x;
            _loc3_ = (§+!$§.getItemByName("MovieClip_StarRight") as §%O§).y + (§+!$§.getItemByName("Container_LevelEndStripe") as §[!s§).y;
            this.§>!^§ = new § !c§(AngryBirdsFP11.screenWidth,AngryBirdsFP11.screenHeight,_loc2_,_loc3_,§ !c§.§%p§);
            §+!$§.addChild(this.§>!^§);
            this.§>!_§.push(this.§>!^§);
         }
         else if(!this.§9i§)
         {
            this.§9i§ = true;
         }
         else
         {
            this.§1!+§.stop();
         }
         ++this.§=w§;
      }
      
      private function §7a§() : void
      {
         §+!§.§+!h§(§]!2§);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:§ !c§ = null;
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §;!!§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         §+!$§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScore");
         §+!$§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScoreEffects");
         for each(_loc3_ in this.§>!_§)
         {
            _loc3_.update(param1);
         }
         if(mNextState.length > 0)
         {
            §'!V§.§1!2§.clearLevel();
            return §;!!§.STATE_STATUS_COMPLETED;
         }
         return §;!!§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§!>§();
         this.mNewScoreCounter = 0;
         if(this.§47§)
         {
            this.§47§.stop();
            this.§47§ = null;
         }
         §+!§.§+!h§(§]!2§);
         if(§+!$§.getItemByName("Button_Menu"))
         {
            (§+!$§.getItemByName("Button_Menu") as §#!'§).setComponentVisualState(§<f§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         (§+!$§.getItemByName("Button_Replay") as §#!'§).setComponentVisualState(§<f§.COMPONENT_STATE_ACTIVE_DEFAULT);
         §+!$§.setText("0","TextField_LevelEndScore");
         §+!$§.setText("0","TextField_LevelEndScoreEffects");
         if(this.§7H§)
         {
            if(§+!$§.movieClip.contains(this.§7H§))
            {
               §+!$§.movieClip.removeChild(this.§7H§);
            }
            this.§7H§.clean();
            this.§7H§ = null;
         }
      }
      
      private function §!>§() : void
      {
         var splash:§ !c§ = null;
         if(this.§1!+§)
         {
            this.§1!+§.stop();
            try
            {
               this.§1!+§.removeEventListener(TimerEvent.TIMER,this.§;#§);
            }
            catch(e:Error)
            {
            }
         }
         for each(splash in this.§>!_§)
         {
            if(§+!$§.contains(splash))
            {
               §+!$§.removeChild(splash);
            }
            splash.clean();
         }
         this.§>!_§ = new Vector.<§ !c§>();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§+!S§) : void
      {
         switch(param2)
         {
            case "REPLAY":
               §@!n§.§!=§(StatePlayBS.STATE_NAME);
               mNextState = §@!n§.STATE_NAME;
               break;
            case "MENU":
               §-!D§.§?5§("onLevelMenuOpened");
               mNextState = §6+§.STATE_NAME;
               break;
            case "FULLSCREEN_BUTTON":
               §-!D§.§?5§("onFullscreenToggle");
               break;
            case "LIKE":
               §-!D§.§?5§("onLevelLiked");
               break;
            case "SHARE":
               §-!D§.§?5§("onLevelShared");
               break;
            case "NEXT":
               §-!D§.§?5§("onNextLevel");
         }
      }
   }
}
