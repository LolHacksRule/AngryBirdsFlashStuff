package §9!#§
{
   import §!!A§.§""5§;
   import §"h§.§<"+§;
   import §&!&§.§+!A§;
   import §&!&§.§7!8§;
   import §&"&§.§8!"§;
   import §0Q§.§6w§;
   import §0Q§.§]`§;
   import §3!S§.§%s§;
   import §6p§.§'!B§;
   import §8""§.§,"!§;
   import §<!I§.§&5§;
   import §<!I§.§="5§;
   import §<!I§.§>"-§;
   import §<Z§.§"!f§;
   import §<Z§.§7!!§;
   import §=!^§.§9!V§;
   import §=;§.§=!"§;
   import §?""§.§&z§;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §4X§ extends §<"+§
   {
      
      public static const §8G§:String = "LevelEndStateBS";
      
      private static const §;1§:String = "ScoreLoopCountChannel";
      
      private static const § "&§:String = "EndScreenEffectChannel";
      
      protected static var §7!I§:Boolean = false;
       
      
      private const §[!f§:String = "likeButton";
      
      private const §@J§:String = "shareButton";
      
      private const § !s§:String = "nextButton";
      
      private var §^!]§:Boolean = false;
      
      private var §6C§:Timer;
      
      private var §#h§:§]`§;
      
      private var §[j§:§6w§;
      
      private var §>h§:Vector.<§6w§>;
      
      public var mNewScoreCounter:int;
      
      private var §4_§:int;
      
      private var §&!s§:Boolean;
      
      private var §," §:§""5§;
      
      private var §;!m§:§9!V§;
      
      protected var §+!"§:int;
      
      public function §4X§(param1:Boolean = false, param2:String = "LevelEndStateBS")
      {
         this.§," § = new §""5§();
         super(param1,param2);
      }
      
      public static function set § !o§(param1:Boolean) : void
      {
         §7!I§ = param1;
      }
      
      public static function get § !o§() : Boolean
      {
         return §7!I§;
      }
      
      override public function init() : void
      {
         super.init();
         §;i§ = new §7!!§(this);
         §;i§.init(§"!f§.§%!1§.Views.View_LevelEndBS[0]);
         this.§>h§ = new Vector.<§6w§>();
         §'!B§.§#3§(§;1§,1,1);
         §'!B§.§#3§(§ "&§,3,1);
      }
      
      override public function activate() : void
      {
         super.activate();
         §%s§.pause();
         this.§#h§ = new §]`§(0,0,0,0);
         §;i§.movieClip.addChildAt(this.§#h§,§;i§.movieClip.numChildren - 1);
         this.mNewScoreCounter = 0;
         this.§&!s§ = false;
         §'!B§.playSound("LevelCompletedTheme1");
         this.§#h§.§8!%§(0.7);
         this.§=!6§();
         if(§;i§.getItemByName("Button_Like"))
         {
            §;i§.getItemByName("Button_Like").visible = §&z§.§%!w§().§>!M§(this.§[!f§);
         }
         if(§;i§.getItemByName("Button_Share"))
         {
            §;i§.getItemByName("Button_Share").visible = §&z§.§%!w§().§>!M§(this.§@J§);
         }
         if(§;i§.getItemByName("Button_NextLevel"))
         {
            §;i§.getItemByName("Button_NextLevel").visible = §&z§.§%!w§().§>!M§(this.§ !s§);
         }
         var _loc1_:Object = new Object();
         _loc1_["scores"] = §%s§.§]x§.getScore();
         _loc1_["pigsKilled"] = §%s§.§`!f§.§00§.§<"$§();
         _loc1_["birdsShot"] = §%s§.§`!f§.§00§.§&!a§();
         _loc1_["valid"] = _loc1_["pigsKilled"] > 0 && _loc1_["birdsShot"] > 0;
         §7!I§ = _loc1_["valid"];
         §8!"§.doJsCall("onLevelCompleted",JSON.stringify(_loc1_));
      }
      
      private function §=!6§() : void
      {
         this.§`!p§();
         this.§6C§ = new Timer(500);
         this.§4_§ = 0;
         this.§6C§.addEventListener(TimerEvent.TIMER,this.§5;§);
         this.§6C§.start();
      }
      
      protected function §`!p§() : void
      {
         (§;i§.getItemByName("MovieClip_StarLeft") as §&5§).mClip.gotoAndStop("UnLit");
         (§;i§.getItemByName("MovieClip_StarCenter") as §&5§).mClip.gotoAndStop("UnLit");
         (§;i§.getItemByName("MovieClip_StarRight") as §&5§).mClip.gotoAndStop("UnLit");
      }
      
      private function §5;§(param1:TimerEvent) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc4_:Number = §%s§.§`!f§.§!4§().mScoreGold;
         var _loc5_:Number = §%s§.§`!f§.§!4§().mScoreSilver;
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
            this.§;!m§ = §,"!§.§`?§(this,{"mNewScoreCounter":this.§," §.getValue()},{"mNewScoreCounter":0},_loc6_);
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
         this.mNewScoreCounter = 0;
         if(this.§;!m§)
         {
            this.§;!m§.stop();
            this.§;!m§ = null;
         }
         §'!B§.§&!r§(§;1§);
         if(§;i§.getItemByName("Button_Menu"))
         {
            (§;i§.getItemByName("Button_Menu") as §="5§).setComponentVisualState(§+!A§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         (§;i§.getItemByName("Button_Replay") as §="5§).setComponentVisualState(§+!A§.COMPONENT_STATE_ACTIVE_DEFAULT);
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
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§7!8§) : void
      {
         switch(param2)
         {
            case "REPLAY":
               §=!"§.§2!2§(StatePlayBS.§8G§);
               mNextState = §=!"§.§8G§;
               break;
            case "MENU":
               §8!"§.doJsCall("onLevelMenuOpened");
               mNextState = §?w§.§8G§;
               break;
            case "FULLSCREEN_BUTTON":
               §8!"§.doJsCall("onFullscreenToggle");
               break;
            case "LIKE":
               §8!"§.doJsCall("onLevelLiked");
               break;
            case "SHARE":
               §8!"§.doJsCall("onLevelShared");
               break;
            case "NEXT":
               §8!"§.doJsCall("onNextLevel");
         }
      }
   }
}
