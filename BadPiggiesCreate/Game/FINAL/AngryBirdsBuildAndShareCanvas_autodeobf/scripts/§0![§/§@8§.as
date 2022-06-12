package §0![§
{
   import § "@§.§%!3§;
   import §%_§.§4m§;
   import §%c§.§=!X§;
   import §&"'§.§3^§;
   import §&"'§.§7!E§;
   import §'!A§.§-!S§;
   import §'!A§.§9!!§;
   import §'@§.§^J§;
   import §'p§.§%+§;
   import §'p§.§="#§;
   import §'p§.§`!T§;
   import §-!n§.§5!U§;
   import §1"2§.§'s§;
   import §1"2§.§`7§;
   import §5"-§.§5y§;
   import §6" §.§<8§;
   import §[!w§.§4!i§;
   import §[!w§.§@!I§;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §@8§ extends §5y§
   {
      
      public static const §'=§:String = "LevelEndStateBS";
      
      private static const §2!_§:String = "ScoreLoopCountChannel";
      
      private static const §^!4§:String = "EndScreenEffectChannel";
       
      
      private const §#"7§:String = "likeButton";
      
      private const §]!!§:String = "shareButton";
      
      private const §8h§:String = "nextButton";
      
      private var §=l§:Boolean = false;
      
      private var §^K§:Timer;
      
      private var §?!+§:§4!i§;
      
      private var §7d§:§@!I§;
      
      private var § !Q§:Vector.<§@!I§>;
      
      public var mNewScoreCounter:int;
      
      private var §@!6§:int;
      
      private var §!!S§:Boolean;
      
      private var §3!z§:§^J§;
      
      private var §^!9§:§3^§;
      
      protected var §=!1§:int;
      
      public function §@8§(param1:Boolean = false, param2:String = "LevelEndStateBS")
      {
         this.§3!z§ = new §^J§();
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §?E§ = new §'s§(this);
         §?E§.init(§`7§.§>"?§.Views.View_LevelEndBS[0]);
         this.§ !Q§ = new Vector.<§@!I§>();
         §5!U§.§2R§(§2!_§,3,1);
         §5!U§.§2R§(§^!4§,3,1);
      }
      
      override public function activate() : void
      {
         super.activate();
         §=!X§.pause();
         this.§?!+§ = new §4!i§(0,0,0,0);
         §?E§.movieClip.addChildAt(this.§?!+§,§?E§.movieClip.numChildren - 1);
         this.mNewScoreCounter = 0;
         this.§!!S§ = false;
         §5!U§.playSound("LevelCompletedTheme1");
         this.§?!+§.§>=§(0.7);
         this.§!_§();
         if(§?E§.getItemByName("Button_Like"))
         {
            §?E§.getItemByName("Button_Like").visible = §<8§.§5!i§().§&!h§(this.§#"7§);
         }
         if(§?E§.getItemByName("Button_Share"))
         {
            §?E§.getItemByName("Button_Share").visible = §<8§.§5!i§().§&!h§(this.§]!!§);
         }
         if(§?E§.getItemByName("Button_NextLevel"))
         {
            §?E§.getItemByName("Button_NextLevel").visible = §<8§.§5!i§().§&!h§(this.§8h§);
         }
      }
      
      private function §!_§() : void
      {
         this.§""1§();
         this.§^K§ = new Timer(500);
         this.§@!6§ = 0;
         this.§^K§.addEventListener(TimerEvent.TIMER,this.§`"0§);
         this.§^K§.start();
      }
      
      protected function §""1§() : void
      {
         (§?E§.getItemByName("MovieClip_StarLeft") as §%+§).mClip.gotoAndStop("UnLit");
         (§?E§.getItemByName("MovieClip_StarCenter") as §%+§).mClip.gotoAndStop("UnLit");
         (§?E§.getItemByName("MovieClip_StarRight") as §%+§).mClip.gotoAndStop("UnLit");
      }
      
      private function §`"0§(param1:TimerEvent) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc4_:Number = §=!X§.§!'§.§49§().mScoreGold;
         var _loc5_:Number = §=!X§.§!'§.§49§().mScoreSilver;
         if((§?E§.getItemByName("MovieClip_StarLeft") as §%+§).mClip.currentLabel == "UnLit")
         {
            §5!U§.playSound("Hiscore_Count",§2!_§,100);
            §5!U§.playSound("Hiscore_Star_Splash1",§^!4§);
            this.§^K§.delay = 1000;
            this.§3!z§.§&!Y§(§=!X§.§#H§.getScore());
            _loc6_ = this.§3!z§.getValue() / _loc4_ * 2;
            if(_loc4_ <= 0)
            {
               _loc6_ = 1;
            }
            this.§^!9§ = §7!E§.§2=§.§<!C§(this,{"mNewScoreCounter":this.§3!z§.getValue()},{"mNewScoreCounter":0},_loc6_);
            this.§^!9§.onComplete = this.§9!y§;
            this.§^!9§.play();
            (§?E§.getItemByName("MovieClip_StarLeft") as §%+§).mClip.gotoAndStop("Lit");
            _loc2_ = (§?E§.getItemByName("MovieClip_StarLeft") as §%+§).x + (§?E§.getItemByName("Container_LevelEndStripe") as §`!T§).x;
            _loc3_ = (§?E§.getItemByName("MovieClip_StarLeft") as §%+§).y + (§?E§.getItemByName("Container_LevelEndStripe") as §`!T§).y;
            this.§7d§ = new §@!I§(AngryBirdsFP11.§>!U§,AngryBirdsFP11.§>Y§,_loc2_,_loc3_,§@!I§.§;0§);
            §?E§.addChild(this.§7d§);
            this.§ !Q§.push(this.§7d§);
         }
         else if(this.§3!z§.getValue() >= _loc5_ && (§?E§.getItemByName("MovieClip_StarCenter") as §%+§).mClip.currentLabel == "UnLit")
         {
            §5!U§.playSound("Hiscore_Star_Splash2",§^!4§);
            (§?E§.getItemByName("MovieClip_StarCenter") as §%+§).mClip.gotoAndStop("Lit");
            _loc2_ = (§?E§.getItemByName("MovieClip_StarCenter") as §%+§).x + (§?E§.getItemByName("Container_LevelEndStripe") as §`!T§).x;
            _loc3_ = (§?E§.getItemByName("MovieClip_StarCenter") as §%+§).y + (§?E§.getItemByName("Container_LevelEndStripe") as §`!T§).y;
            this.§7d§ = new §@!I§(AngryBirdsFP11.§>!U§,AngryBirdsFP11.§>Y§,_loc2_,_loc3_,§@!I§.§<!-§);
            §?E§.addChild(this.§7d§);
            this.§ !Q§.push(this.§7d§);
         }
         else if(this.§3!z§.getValue() >= _loc4_ && (§?E§.getItemByName("MovieClip_StarRight") as §%+§).mClip.currentLabel == "UnLit")
         {
            §5!U§.playSound("Hiscore_Star_Splash3",§^!4§);
            (§?E§.getItemByName("MovieClip_StarRight") as §%+§).mClip.gotoAndStop("Lit");
            _loc2_ = (§?E§.getItemByName("MovieClip_StarRight") as §%+§).x + (§?E§.getItemByName("Container_LevelEndStripe") as §`!T§).x;
            _loc3_ = (§?E§.getItemByName("MovieClip_StarRight") as §%+§).y + (§?E§.getItemByName("Container_LevelEndStripe") as §`!T§).y;
            this.§7d§ = new §@!I§(AngryBirdsFP11.§>!U§,AngryBirdsFP11.§>Y§,_loc2_,_loc3_,§@!I§.§`N§);
            §?E§.addChild(this.§7d§);
            this.§ !Q§.push(this.§7d§);
         }
         else if(!this.§!!S§)
         {
            this.§!!S§ = true;
         }
         else
         {
            this.§^K§.stop();
         }
         ++this.§@!6§;
      }
      
      private function §9!y§() : void
      {
         §5!U§.§+!7§(§2!_§);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:§@!I§ = null;
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §5y§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         §?E§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScore");
         §?E§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScoreEffects");
         for each(_loc3_ in this.§ !Q§)
         {
            _loc3_.update(param1);
         }
         if(mNextState.length > 0)
         {
            §=!X§.§!'§.clearLevel();
            return §5y§.STATE_STATUS_COMPLETED;
         }
         return §5y§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§#!x§();
         this.mNewScoreCounter = 0;
         if(this.§^!9§)
         {
            this.§^!9§.stop();
            this.§^!9§ = null;
         }
         §5!U§.§+!7§(§2!_§);
         if(§?E§.getItemByName("Button_Menu"))
         {
            (§?E§.getItemByName("Button_Menu") as §="#§).setComponentVisualState(§9!!§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         (§?E§.getItemByName("Button_Replay") as §="#§).setComponentVisualState(§9!!§.COMPONENT_STATE_ACTIVE_DEFAULT);
         §?E§.setText("0","TextField_LevelEndScore");
         §?E§.setText("0","TextField_LevelEndScoreEffects");
         if(this.§?!+§)
         {
            if(§?E§.movieClip.contains(this.§?!+§))
            {
               §?E§.movieClip.removeChild(this.§?!+§);
            }
            this.§?!+§.clean();
            this.§?!+§ = null;
         }
      }
      
      private function §#!x§() : void
      {
         var splash:§@!I§ = null;
         if(this.§^K§)
         {
            this.§^K§.stop();
            try
            {
               this.§^K§.removeEventListener(TimerEvent.TIMER,this.§`"0§);
            }
            catch(e:Error)
            {
            }
         }
         for each(splash in this.§ !Q§)
         {
            if(§?E§.contains(splash))
            {
               §?E§.removeChild(splash);
            }
            splash.clean();
         }
         this.§ !Q§ = new Vector.<§@!I§>();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§-!S§) : void
      {
         switch(param2)
         {
            case "REPLAY":
               §%!3§.§4[§(StatePlayBS.§'=§);
               mNextState = §%!3§.§'=§;
               break;
            case "MENU":
               §4m§.doJsCall("onLevelMenuOpened");
               mNextState = §^! §.§'=§;
               break;
            case "FULLSCREEN_BUTTON":
               §4m§.doJsCall("onFullscreenToggle");
               break;
            case "LIKE":
               §4m§.doJsCall("onLevelLiked");
               break;
            case "SHARE":
               §4m§.doJsCall("onLevelShared");
               break;
            case "NEXT":
               §4m§.doJsCall("onNextLevel");
         }
      }
   }
}
