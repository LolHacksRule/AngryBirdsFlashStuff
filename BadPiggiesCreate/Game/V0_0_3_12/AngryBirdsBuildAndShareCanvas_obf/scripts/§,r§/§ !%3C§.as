package §,r§
{
   import §%!,§.§,v§;
   import §%B§.§^k§;
   import §-!^§.§<s§;
   import §0Z§.§+I§;
   import §0Z§.§-!M§;
   import §1!"§.§[f§;
   import §2I§.§,"+§;
   import §2I§.§0-§;
   import §5!8§.§+!?§;
   import §5!8§.§;!P§;
   import §5!8§.§;!Z§;
   import §7"1§.§%W§;
   import §7N§.§@!x§;
   import §=e§.§1!@§;
   import §@">§.§#! §;
   import §@">§.§%!u§;
   import §^x§.§;_§;
   import §^x§.§<!w§;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class § !<§ extends §,v§
   {
      
      public static const §8n§:String = "LevelEndStateBS";
      
      private static const §@!`§:String = "ScoreLoopCountChannel";
      
      private static const §+i§:String = "EndScreenEffectChannel";
       
      
      private const §-!X§:String = "likeButton";
      
      private const §"!n§:String = "shareButton";
      
      private const §^!a§:String = "nextButton";
      
      private var § q§:Boolean = false;
      
      private var §;h§:Timer;
      
      private var §1!<§:§,"+§;
      
      private var §&!D§:§0-§;
      
      private var §'v§:Vector.<§0-§>;
      
      public var mNewScoreCounter:int;
      
      private var §1!#§:int;
      
      private var §`[§:Boolean;
      
      private var §+!Y§:§<s§;
      
      private var §?!M§:§+I§;
      
      protected var §8<§:int;
      
      public function § !<§(param1:Boolean = false, param2:String = "LevelEndStateBS")
      {
         this.§+!Y§ = new §<s§();
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §?F§ = new §%!u§(this);
         §?F§.init(§#! §.§5!;§.Views.View_LevelEndBS[0]);
         this.§'v§ = new Vector.<§0-§>();
         §^k§.§>7§(§@!`§,1,1);
         §^k§.§>7§(§+i§,3,1);
      }
      
      override public function activate() : void
      {
         super.activate();
         §%W§.pause();
         this.§1!<§ = new §,"+§(0,0,0,0);
         §?F§.movieClip.addChildAt(this.§1!<§,§?F§.movieClip.numChildren - 1);
         this.mNewScoreCounter = 0;
         this.§`[§ = false;
         §^k§.playSound("LevelCompletedTheme1");
         this.§1!<§.§%r§(0.7);
         this.§%!y§();
         if(§?F§.getItemByName("Button_Like"))
         {
            §?F§.getItemByName("Button_Like").visible = §[f§.§@"3§().§ ",§(this.§-!X§);
         }
         if(§?F§.getItemByName("Button_Share"))
         {
            §?F§.getItemByName("Button_Share").visible = §[f§.§@"3§().§ ",§(this.§"!n§);
         }
         if(§?F§.getItemByName("Button_NextLevel"))
         {
            §?F§.getItemByName("Button_NextLevel").visible = §[f§.§@"3§().§ ",§(this.§^!a§);
         }
      }
      
      private function §%!y§() : void
      {
         this.§-!_§();
         this.§;h§ = new Timer(500);
         this.§1!#§ = 0;
         this.§;h§.addEventListener(TimerEvent.TIMER,this.§`"1§);
         this.§;h§.start();
      }
      
      protected function §-!_§() : void
      {
         (§?F§.getItemByName("MovieClip_StarLeft") as §;!P§).mClip.gotoAndStop("UnLit");
         (§?F§.getItemByName("MovieClip_StarCenter") as §;!P§).mClip.gotoAndStop("UnLit");
         (§?F§.getItemByName("MovieClip_StarRight") as §;!P§).mClip.gotoAndStop("UnLit");
      }
      
      private function §`"1§(param1:TimerEvent) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc4_:Number = §%W§.§5"8§.§7!k§().mScoreGold;
         var _loc5_:Number = §%W§.§5"8§.§7!k§().mScoreSilver;
         if((§?F§.getItemByName("MovieClip_StarLeft") as §;!P§).mClip.currentLabel == "UnLit")
         {
            §^k§.playSound("Hiscore_Count",§@!`§,100);
            §^k§.playSound("Hiscore_Star_Splash1",§+i§);
            this.§;h§.delay = 1000;
            this.§+!Y§.§8>§(§%W§.§6h§.getScore());
            _loc6_ = this.§+!Y§.getValue() / _loc4_ * 2;
            if(_loc4_ <= 0)
            {
               _loc6_ = 1;
            }
            this.§?!M§ = §-!M§.§ "!§.§+d§(this,{"mNewScoreCounter":this.§+!Y§.getValue()},{"mNewScoreCounter":0},_loc6_);
            this.§?!M§.onComplete = this.§&F§;
            this.§?!M§.play();
            (§?F§.getItemByName("MovieClip_StarLeft") as §;!P§).mClip.gotoAndStop("Lit");
            _loc2_ = (§?F§.getItemByName("MovieClip_StarLeft") as §;!P§).x + (§?F§.getItemByName("Container_LevelEndStripe") as §+!?§).x;
            _loc3_ = (§?F§.getItemByName("MovieClip_StarLeft") as §;!P§).y + (§?F§.getItemByName("Container_LevelEndStripe") as §+!?§).y;
            this.§&!D§ = new §0-§(AngryBirdsFP11.§<J§,AngryBirdsFP11.§%T§,_loc2_,_loc3_,§0-§.§`!c§);
            §?F§.addChild(this.§&!D§);
            this.§'v§.push(this.§&!D§);
         }
         else if(this.§+!Y§.getValue() >= _loc5_ && (§?F§.getItemByName("MovieClip_StarCenter") as §;!P§).mClip.currentLabel == "UnLit")
         {
            §^k§.playSound("Hiscore_Star_Splash2",§+i§);
            (§?F§.getItemByName("MovieClip_StarCenter") as §;!P§).mClip.gotoAndStop("Lit");
            _loc2_ = (§?F§.getItemByName("MovieClip_StarCenter") as §;!P§).x + (§?F§.getItemByName("Container_LevelEndStripe") as §+!?§).x;
            _loc3_ = (§?F§.getItemByName("MovieClip_StarCenter") as §;!P§).y + (§?F§.getItemByName("Container_LevelEndStripe") as §+!?§).y;
            this.§&!D§ = new §0-§(AngryBirdsFP11.§<J§,AngryBirdsFP11.§%T§,_loc2_,_loc3_,§0-§.§8!Q§);
            §?F§.addChild(this.§&!D§);
            this.§'v§.push(this.§&!D§);
         }
         else if(this.§+!Y§.getValue() >= _loc4_ && (§?F§.getItemByName("MovieClip_StarRight") as §;!P§).mClip.currentLabel == "UnLit")
         {
            §^k§.playSound("Hiscore_Star_Splash3",§+i§);
            (§?F§.getItemByName("MovieClip_StarRight") as §;!P§).mClip.gotoAndStop("Lit");
            _loc2_ = (§?F§.getItemByName("MovieClip_StarRight") as §;!P§).x + (§?F§.getItemByName("Container_LevelEndStripe") as §+!?§).x;
            _loc3_ = (§?F§.getItemByName("MovieClip_StarRight") as §;!P§).y + (§?F§.getItemByName("Container_LevelEndStripe") as §+!?§).y;
            this.§&!D§ = new §0-§(AngryBirdsFP11.§<J§,AngryBirdsFP11.§%T§,_loc2_,_loc3_,§0-§.§0k§);
            §?F§.addChild(this.§&!D§);
            this.§'v§.push(this.§&!D§);
         }
         else if(!this.§`[§)
         {
            this.§`[§ = true;
         }
         else
         {
            this.§;h§.stop();
         }
         ++this.§1!#§;
      }
      
      private function §&F§() : void
      {
         §^k§.§"E§(§@!`§);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:§0-§ = null;
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §,v§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         §?F§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScore");
         §?F§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScoreEffects");
         for each(_loc3_ in this.§'v§)
         {
            _loc3_.update(param1);
         }
         if(mNextState.length > 0)
         {
            §%W§.§5"8§.clearLevel();
            return §,v§.STATE_STATUS_COMPLETED;
         }
         return §,v§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§9Q§();
         this.mNewScoreCounter = 0;
         if(this.§?!M§)
         {
            this.§?!M§.stop();
            this.§?!M§ = null;
         }
         §^k§.§"E§(§@!`§);
         if(§?F§.getItemByName("Button_Menu"))
         {
            (§?F§.getItemByName("Button_Menu") as §;!Z§).setComponentVisualState(§;_§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         (§?F§.getItemByName("Button_Replay") as §;!Z§).setComponentVisualState(§;_§.COMPONENT_STATE_ACTIVE_DEFAULT);
         §?F§.setText("0","TextField_LevelEndScore");
         §?F§.setText("0","TextField_LevelEndScoreEffects");
         if(this.§1!<§)
         {
            if(§?F§.movieClip.contains(this.§1!<§))
            {
               §?F§.movieClip.removeChild(this.§1!<§);
            }
            this.§1!<§.clean();
            this.§1!<§ = null;
         }
      }
      
      private function §9Q§() : void
      {
         var splash:§0-§ = null;
         if(this.§;h§)
         {
            this.§;h§.stop();
            try
            {
               this.§;h§.removeEventListener(TimerEvent.TIMER,this.§`"1§);
            }
            catch(e:Error)
            {
            }
         }
         for each(splash in this.§'v§)
         {
            if(§?F§.contains(splash))
            {
               §?F§.removeChild(splash);
            }
            splash.clean();
         }
         this.§'v§ = new Vector.<§0-§>();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§<!w§) : void
      {
         switch(param2)
         {
            case "REPLAY":
               §@!x§.§8U§(StatePlayBS.§8n§);
               mNextState = §@!x§.§8n§;
               break;
            case "MENU":
               §1!@§.doJsCall("onLevelMenuOpened");
               mNextState = §5!L§.§8n§;
               break;
            case "FULLSCREEN_BUTTON":
               §1!@§.doJsCall("onFullscreenToggle");
               break;
            case "LIKE":
               §1!@§.doJsCall("onLevelLiked");
               break;
            case "SHARE":
               §1!@§.doJsCall("onLevelShared");
               break;
            case "NEXT":
               §1!@§.doJsCall("onNextLevel");
         }
      }
   }
}
