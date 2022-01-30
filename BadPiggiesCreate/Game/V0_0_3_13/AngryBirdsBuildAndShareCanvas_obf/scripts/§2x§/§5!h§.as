package §2x§
{
   import § true§.§%!7§;
   import § true§.§1H§;
   import § true§.§8K§;
   import §#!8§.§&!'§;
   import §%!W§.§9!K§;
   import §&k§.§3l§;
   import §&k§.§;]§;
   import §,!!§.§0"!§;
   import §0!C§.§,!h§;
   import §0!C§.§=!]§;
   import §4!j§.§""3§;
   import §4!j§.§0p§;
   import §=!<§.§5!U§;
   import §>!5§.§>!T§;
   import §>Z§.§5;§;
   import §^^§.§1§;
   import §catch§.§"L§;
   import §catch§.§-!m§;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §5!h§ extends §>!T§
   {
      
      public static const §>H§:String = "LevelEndStateBS";
      
      private static const §^j§:String = "ScoreLoopCountChannel";
      
      private static const §`!f§:String = "EndScreenEffectChannel";
       
      
      private const §6!9§:String = "likeButton";
      
      private const §-!=§:String = "shareButton";
      
      private const §;!3§:String = "nextButton";
      
      private var § G§:Boolean = false;
      
      private var §5c§:Timer;
      
      private var §!<§:§3l§;
      
      private var §=!j§:§;]§;
      
      private var §!""§:Vector.<§;]§>;
      
      public var mNewScoreCounter:int;
      
      private var §!X§:int;
      
      private var §#!D§:Boolean;
      
      private var §,B§:§0"!§;
      
      private var §<!h§:§-!m§;
      
      protected var §-!;§:int;
      
      public function §5!h§(param1:Boolean = false, param2:String = "LevelEndStateBS")
      {
         this.§,B§ = new §0"!§();
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §3?§ = new §=!]§(this);
         §3?§.init(§,!h§.§`C§.Views.View_LevelEndBS[0]);
         this.§!""§ = new Vector.<§;]§>();
         §5;§.§9L§(§^j§,3,1);
         §5;§.§9L§(§`!f§,3,1);
      }
      
      override public function activate() : void
      {
         super.activate();
         §5!U§.pause();
         this.§!<§ = new §3l§(0,0,0,0);
         §3?§.movieClip.addChildAt(this.§!<§,§3?§.movieClip.numChildren - 1);
         this.mNewScoreCounter = 0;
         this.§#!D§ = false;
         §5;§.playSound("LevelCompletedTheme1");
         this.§!<§.§[5§(0.7);
         this.§^E§();
         if(§3?§.getItemByName("Button_Like"))
         {
            §3?§.getItemByName("Button_Like").visible = §9!K§.§8!?§().§6E§(this.§6!9§);
         }
         if(§3?§.getItemByName("Button_Share"))
         {
            §3?§.getItemByName("Button_Share").visible = §9!K§.§8!?§().§6E§(this.§-!=§);
         }
         if(§3?§.getItemByName("Button_NextLevel"))
         {
            §3?§.getItemByName("Button_NextLevel").visible = §9!K§.§8!?§().§6E§(this.§;!3§);
         }
      }
      
      private function §^E§() : void
      {
         this.§##§();
         this.§5c§ = new Timer(500);
         this.§!X§ = 0;
         this.§5c§.addEventListener(TimerEvent.TIMER,this.§8!%§);
         this.§5c§.start();
      }
      
      protected function §##§() : void
      {
         (§3?§.getItemByName("MovieClip_StarLeft") as §%!7§).mClip.gotoAndStop("UnLit");
         (§3?§.getItemByName("MovieClip_StarCenter") as §%!7§).mClip.gotoAndStop("UnLit");
         (§3?§.getItemByName("MovieClip_StarRight") as §%!7§).mClip.gotoAndStop("UnLit");
      }
      
      private function §8!%§(param1:TimerEvent) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc4_:Number = §5!U§.§,!E§.§ null§().mScoreGold;
         var _loc5_:Number = §5!U§.§,!E§.§ null§().mScoreSilver;
         if((§3?§.getItemByName("MovieClip_StarLeft") as §%!7§).mClip.currentLabel == "UnLit")
         {
            §5;§.playSound("Hiscore_Count",§^j§,100);
            §5;§.playSound("Hiscore_Star_Splash1",§`!f§);
            this.§5c§.delay = 1000;
            this.§,B§.§`S§(§5!U§.§ !t§.getScore());
            _loc6_ = this.§,B§.getValue() / _loc4_ * 2;
            if(_loc4_ <= 0)
            {
               _loc6_ = 1;
            }
            this.§<!h§ = §"L§.§7!?§.§4!P§(this,{"mNewScoreCounter":this.§,B§.getValue()},{"mNewScoreCounter":0},_loc6_);
            this.§<!h§.onComplete = this.§2,§;
            this.§<!h§.play();
            (§3?§.getItemByName("MovieClip_StarLeft") as §%!7§).mClip.gotoAndStop("Lit");
            _loc2_ = (§3?§.getItemByName("MovieClip_StarLeft") as §%!7§).x + (§3?§.getItemByName("Container_LevelEndStripe") as §1H§).x;
            _loc3_ = (§3?§.getItemByName("MovieClip_StarLeft") as §%!7§).y + (§3?§.getItemByName("Container_LevelEndStripe") as §1H§).y;
            this.§=!j§ = new §;]§(AngryBirdsFP11.§`!4§,AngryBirdsFP11.§!,§,_loc2_,_loc3_,§;]§.§6!#§);
            §3?§.addChild(this.§=!j§);
            this.§!""§.push(this.§=!j§);
         }
         else if(this.§,B§.getValue() >= _loc5_ && (§3?§.getItemByName("MovieClip_StarCenter") as §%!7§).mClip.currentLabel == "UnLit")
         {
            §5;§.playSound("Hiscore_Star_Splash2",§`!f§);
            (§3?§.getItemByName("MovieClip_StarCenter") as §%!7§).mClip.gotoAndStop("Lit");
            _loc2_ = (§3?§.getItemByName("MovieClip_StarCenter") as §%!7§).x + (§3?§.getItemByName("Container_LevelEndStripe") as §1H§).x;
            _loc3_ = (§3?§.getItemByName("MovieClip_StarCenter") as §%!7§).y + (§3?§.getItemByName("Container_LevelEndStripe") as §1H§).y;
            this.§=!j§ = new §;]§(AngryBirdsFP11.§`!4§,AngryBirdsFP11.§!,§,_loc2_,_loc3_,§;]§.§^!v§);
            §3?§.addChild(this.§=!j§);
            this.§!""§.push(this.§=!j§);
         }
         else if(this.§,B§.getValue() >= _loc4_ && (§3?§.getItemByName("MovieClip_StarRight") as §%!7§).mClip.currentLabel == "UnLit")
         {
            §5;§.playSound("Hiscore_Star_Splash3",§`!f§);
            (§3?§.getItemByName("MovieClip_StarRight") as §%!7§).mClip.gotoAndStop("Lit");
            _loc2_ = (§3?§.getItemByName("MovieClip_StarRight") as §%!7§).x + (§3?§.getItemByName("Container_LevelEndStripe") as §1H§).x;
            _loc3_ = (§3?§.getItemByName("MovieClip_StarRight") as §%!7§).y + (§3?§.getItemByName("Container_LevelEndStripe") as §1H§).y;
            this.§=!j§ = new §;]§(AngryBirdsFP11.§`!4§,AngryBirdsFP11.§!,§,_loc2_,_loc3_,§;]§.§>X§);
            §3?§.addChild(this.§=!j§);
            this.§!""§.push(this.§=!j§);
         }
         else if(!this.§#!D§)
         {
            this.§#!D§ = true;
         }
         else
         {
            this.§5c§.stop();
         }
         ++this.§!X§;
      }
      
      private function §2,§() : void
      {
         §5;§.§@g§(§^j§);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:§;]§ = null;
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §>!T§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         §3?§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScore");
         §3?§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScoreEffects");
         for each(_loc3_ in this.§!""§)
         {
            _loc3_.update(param1);
         }
         if(mNextState.length > 0)
         {
            §5!U§.§,!E§.clearLevel();
            return §>!T§.STATE_STATUS_COMPLETED;
         }
         return §>!T§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§4!-§();
         this.mNewScoreCounter = 0;
         if(this.§<!h§)
         {
            this.§<!h§.stop();
            this.§<!h§ = null;
         }
         §5;§.§@g§(§^j§);
         if(§3?§.getItemByName("Button_Menu"))
         {
            (§3?§.getItemByName("Button_Menu") as §8K§).setComponentVisualState(§""3§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         (§3?§.getItemByName("Button_Replay") as §8K§).setComponentVisualState(§""3§.COMPONENT_STATE_ACTIVE_DEFAULT);
         §3?§.setText("0","TextField_LevelEndScore");
         §3?§.setText("0","TextField_LevelEndScoreEffects");
         if(this.§!<§)
         {
            if(§3?§.movieClip.contains(this.§!<§))
            {
               §3?§.movieClip.removeChild(this.§!<§);
            }
            this.§!<§.clean();
            this.§!<§ = null;
         }
      }
      
      private function §4!-§() : void
      {
         var splash:§;]§ = null;
         if(this.§5c§)
         {
            this.§5c§.stop();
            try
            {
               this.§5c§.removeEventListener(TimerEvent.TIMER,this.§8!%§);
            }
            catch(e:Error)
            {
            }
         }
         for each(splash in this.§!""§)
         {
            if(§3?§.contains(splash))
            {
               §3?§.removeChild(splash);
            }
            splash.clean();
         }
         this.§!""§ = new Vector.<§;]§>();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§0p§) : void
      {
         switch(param2)
         {
            case "REPLAY":
               §1§.§+!u§(StatePlayBS.§>H§);
               mNextState = §1§.§>H§;
               break;
            case "MENU":
               §&!'§.doJsCall("onLevelMenuOpened");
               mNextState = §!!6§.§>H§;
               break;
            case "FULLSCREEN_BUTTON":
               §&!'§.doJsCall("onFullscreenToggle");
               break;
            case "LIKE":
               §&!'§.doJsCall("onLevelLiked");
               break;
            case "SHARE":
               §&!'§.doJsCall("onLevelShared");
               break;
            case "NEXT":
               §&!'§.doJsCall("onNextLevel");
         }
      }
   }
}
