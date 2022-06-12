package §-P§
{
   import §!!T§.§"!S§;
   import §!",§.§"F§;
   import §!D§.§ use§;
   import §!D§.§3!6§;
   import §!D§.§<!5§;
   import §&T§.§,!0§;
   import §,E§.§ t§;
   import §0!!§.§%!w§;
   import §0!!§.§2z§;
   import §6`§.§?!7§;
   import §9!7§.§#p§;
   import §9!7§.§6"0§;
   import §>w§.§4E§;
   import §?!V§.§ T§;
   import §?!V§.§"a§;
   import §]!l§.§-"&§;
   import §`"5§.§ !J§;
   import §`%§.§8!0§;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §1""§ extends §4E§
   {
      
      public static const §#!w§:String = "LevelEndStateBS";
      
      private static const §<,§:String = "ScoreLoopCountChannel";
      
      private static const §^!o§:String = "EndScreenEffectChannel";
      
      protected static var §2!o§:Boolean = false;
       
      
      private const §+y§:String = "likeButton";
      
      private const §6!'§:String = "shareButton";
      
      private const §]!<§:String = "nextButton";
      
      private var §"!p§:Boolean = false;
      
      private var §>!D§:Timer;
      
      private var §;!z§:§%!w§;
      
      private var §#y§:§2z§;
      
      private var §<!k§:Vector.<§2z§>;
      
      public var mNewScoreCounter:int;
      
      private var §]!j§:int;
      
      private var §7h§:Boolean;
      
      private var §'!s§:§ t§;
      
      private var §="2§:§ !J§;
      
      protected var §3!&§:int;
      
      public function §1""§(param1:Boolean = false, param2:String = "LevelEndStateBS")
      {
         this.§'!s§ = new § t§();
         super(param1,param2);
      }
      
      public static function set §[3§(param1:Boolean) : void
      {
         §2!o§ = param1;
      }
      
      public static function get §[3§() : Boolean
      {
         return §2!o§;
      }
      
      override public function init() : void
      {
         super.init();
         §1!j§ = new § T§(this);
         §1!j§.init(§"a§.§-!g§.Views.View_LevelEndBS[0]);
         this.§<!k§ = new Vector.<§2z§>();
         §?!7§.§!!l§(§<,§,1,1);
         §?!7§.§!!l§(§^!o§,3,1);
      }
      
      override public function activate() : void
      {
         super.activate();
         §8!0§.pause();
         this.§;!z§ = new §%!w§(0,0,0,0);
         §1!j§.movieClip.addChildAt(this.§;!z§,§1!j§.movieClip.numChildren - 1);
         this.mNewScoreCounter = 0;
         this.§7h§ = false;
         §?!7§.playSound("LevelCompletedTheme1");
         this.§;!z§.§4g§(0.7);
         this.§1A§();
         if(§1!j§.getItemByName("Button_Like"))
         {
            §1!j§.getItemByName("Button_Like").visible = §-"&§.§?!Q§().§3"#§(this.§+y§);
         }
         if(§1!j§.getItemByName("Button_Share"))
         {
            §1!j§.getItemByName("Button_Share").visible = §-"&§.§?!Q§().§3"#§(this.§6!'§);
         }
         if(§1!j§.getItemByName("Button_NextLevel"))
         {
            §1!j§.getItemByName("Button_NextLevel").visible = §-"&§.§?!Q§().§3"#§(this.§]!<§);
         }
         var _loc1_:Object = new Object();
         _loc1_["scores"] = §8!0§.§00§.getScore();
         _loc1_["pigsKilled"] = §8!0§.§?2§.§2!H§.§]R§();
         _loc1_["birdsShot"] = §8!0§.§?2§.§2!H§.§5J§();
         _loc1_["valid"] = _loc1_["pigsKilled"] > 0 && _loc1_["birdsShot"] > 0;
         §2!o§ = _loc1_["valid"];
         §"!S§.doJsCall("onLevelCompleted",JSON.stringify(_loc1_));
      }
      
      private function §1A§() : void
      {
         this.§`i§();
         this.§>!D§ = new Timer(500);
         this.§]!j§ = 0;
         this.§>!D§.addEventListener(TimerEvent.TIMER,this.§,Y§);
         this.§>!D§.start();
      }
      
      protected function §`i§() : void
      {
         (§1!j§.getItemByName("MovieClip_StarLeft") as §<!5§).mClip.gotoAndStop("UnLit");
         (§1!j§.getItemByName("MovieClip_StarCenter") as §<!5§).mClip.gotoAndStop("UnLit");
         (§1!j§.getItemByName("MovieClip_StarRight") as §<!5§).mClip.gotoAndStop("UnLit");
      }
      
      private function §,Y§(param1:TimerEvent) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc4_:Number = §8!0§.§?2§.§&,§().mScoreGold;
         var _loc5_:Number = §8!0§.§?2§.§&,§().mScoreSilver;
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
            this.§="2§ = §,!0§.§#t§(this,{"mNewScoreCounter":this.§'!s§.getValue()},{"mNewScoreCounter":0},_loc6_);
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
         this.mNewScoreCounter = 0;
         if(this.§="2§)
         {
            this.§="2§.stop();
            this.§="2§ = null;
         }
         §?!7§.§[N§(§<,§);
         if(§1!j§.getItemByName("Button_Menu"))
         {
            (§1!j§.getItemByName("Button_Menu") as §3!6§).setComponentVisualState(§6"0§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         (§1!j§.getItemByName("Button_Replay") as §3!6§).setComponentVisualState(§6"0§.COMPONENT_STATE_ACTIVE_DEFAULT);
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
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§#p§) : void
      {
         switch(param2)
         {
            case "REPLAY":
               §"F§.§%!,§(StatePlayBS.§#!w§);
               mNextState = §"F§.§#!w§;
               break;
            case "MENU":
               §"!S§.doJsCall("onLevelMenuOpened");
               mNextState = §1Z§.§#!w§;
               break;
            case "FULLSCREEN_BUTTON":
               §"!S§.doJsCall("onFullscreenToggle");
               break;
            case "LIKE":
               §"!S§.doJsCall("onLevelLiked");
               break;
            case "SHARE":
               §"!S§.doJsCall("onLevelShared");
               break;
            case "NEXT":
               §"!S§.doJsCall("onNextLevel");
         }
      }
   }
}
