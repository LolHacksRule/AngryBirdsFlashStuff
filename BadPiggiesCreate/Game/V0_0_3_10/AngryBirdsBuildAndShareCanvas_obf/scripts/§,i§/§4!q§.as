package §,i§
{
   import §!!+§.§4!l§;
   import §&!&§.§1"7§;
   import §-! §.§"A§;
   import §0!d§.§%!9§;
   import §0!d§.§7!a§;
   import §0!d§.§8!r§;
   import §1U§.§"!V§;
   import §3[§.§0!K§;
   import §4!t§.§1!=§;
   import §4!t§.§=p§;
   import §5^§.§ !x§;
   import §7!&§.§!!k§;
   import §8"'§.§?!`§;
   import §<8§.§"h§;
   import §<8§.§7!n§;
   import §]!N§.§7"3§;
   import §]!X§.§&S§;
   import §]!X§.§?7§;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §4!q§ extends §0!K§
   {
      
      public static const §]"2§:String = "LevelEndStateBS";
      
      private static const §+k§:String = "ScoreLoopCountChannel";
      
      private static const §@!i§:String = "EndScreenEffectChannel";
      
      protected static var §&"4§:Boolean = false;
       
      
      private const §=j§:String = "likeButton";
      
      private const §2!5§:String = "shareButton";
      
      private const §@E§:String = "nextButton";
      
      private var § use§:Boolean = false;
      
      private var §!f§:Timer;
      
      private var §`H§:§?7§;
      
      private var §3!Y§:§&S§;
      
      private var §1F§:Vector.<§&S§>;
      
      public var mNewScoreCounter:int;
      
      private var §3q§:int;
      
      private var §6!f§:Boolean;
      
      private var §82§:§1"7§;
      
      private var §6!=§:§7"3§;
      
      protected var §8!>§:int;
      
      public function §4!q§(param1:Boolean = false, param2:String = "LevelEndStateBS")
      {
         this.§82§ = new §1"7§();
         super(param1,param2);
      }
      
      public static function set §;!3§(param1:Boolean) : void
      {
         §&"4§ = param1;
      }
      
      public static function get §;!3§() : Boolean
      {
         return §&"4§;
      }
      
      override public function init() : void
      {
         super.init();
         §'K§ = new §=p§(this);
         §'K§.init(§1!=§.§8X§.Views.View_LevelEndBS[0]);
         this.§1F§ = new Vector.<§&S§>();
         § !x§.§'^§(§+k§,1,1);
         § !x§.§'^§(§@!i§,3,1);
      }
      
      override public function activate() : void
      {
         super.activate();
         §"!V§.pause();
         this.§`H§ = new §?7§(0,0,0,0);
         §'K§.movieClip.addChildAt(this.§`H§,§'K§.movieClip.numChildren - 1);
         this.mNewScoreCounter = 0;
         this.§6!f§ = false;
         § !x§.playSound("LevelCompletedTheme1");
         this.§`H§.§%H§(0.7);
         this.§ !7§();
         if(§'K§.getItemByName("Button_Like"))
         {
            §'K§.getItemByName("Button_Like").visible = §!!k§.§4Z§().§;K§(this.§=j§);
         }
         if(§'K§.getItemByName("Button_Share"))
         {
            §'K§.getItemByName("Button_Share").visible = §!!k§.§4Z§().§;K§(this.§2!5§);
         }
         if(§'K§.getItemByName("Button_NextLevel"))
         {
            §'K§.getItemByName("Button_NextLevel").visible = §!!k§.§4Z§().§;K§(this.§@E§);
         }
         var _loc1_:Object = new Object();
         _loc1_["scores"] = §"!V§.§ !o§.getScore();
         _loc1_["pigsKilled"] = §"!V§.§!j§.§6!"§.§1!f§();
         _loc1_["birdsShot"] = §"!V§.§!j§.§6!"§.§7!N§();
         _loc1_["valid"] = _loc1_["pigsKilled"] > 0 && _loc1_["birdsShot"] > 0;
         §&"4§ = _loc1_["valid"];
         §?!`§.doJsCall("onLevelCompleted",JSON.stringify(_loc1_));
      }
      
      private function § !7§() : void
      {
         this.§%Z§();
         this.§!f§ = new Timer(500);
         this.§3q§ = 0;
         this.§!f§.addEventListener(TimerEvent.TIMER,this.§3r§);
         this.§!f§.start();
      }
      
      protected function §%Z§() : void
      {
         (§'K§.getItemByName("MovieClip_StarLeft") as §%!9§).mClip.gotoAndStop("UnLit");
         (§'K§.getItemByName("MovieClip_StarCenter") as §%!9§).mClip.gotoAndStop("UnLit");
         (§'K§.getItemByName("MovieClip_StarRight") as §%!9§).mClip.gotoAndStop("UnLit");
      }
      
      private function §3r§(param1:TimerEvent) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc4_:Number = §"!V§.§!j§.§8§().mScoreGold;
         var _loc5_:Number = §"!V§.§!j§.§8§().mScoreSilver;
         if((§'K§.getItemByName("MovieClip_StarLeft") as §%!9§).mClip.currentLabel == "UnLit")
         {
            § !x§.playSound("Hiscore_Count",§+k§,100);
            § !x§.playSound("Hiscore_Star_Splash1",§@!i§);
            this.§!f§.delay = 1000;
            this.§82§.§ <§(§"!V§.§ !o§.getScore());
            _loc6_ = this.§82§.getValue() / _loc4_ * 2;
            if(_loc4_ <= 0)
            {
               _loc6_ = 1;
            }
            this.§6!=§ = §"A§.§3!+§(this,{"mNewScoreCounter":this.§82§.getValue()},{"mNewScoreCounter":0},_loc6_);
            this.§6!=§.onComplete = this.§[t§;
            this.§6!=§.play();
            (§'K§.getItemByName("MovieClip_StarLeft") as §%!9§).mClip.gotoAndStop("Lit");
            _loc2_ = (§'K§.getItemByName("MovieClip_StarLeft") as §%!9§).x + (§'K§.getItemByName("Container_LevelEndStripe") as §7!a§).x;
            _loc3_ = (§'K§.getItemByName("MovieClip_StarLeft") as §%!9§).y + (§'K§.getItemByName("Container_LevelEndStripe") as §7!a§).y;
            this.§3!Y§ = new §&S§(AngryBirdsFP11.§#"8§,AngryBirdsFP11.§2!e§,_loc2_,_loc3_,§&S§.dynamic);
            §'K§.addChild(this.§3!Y§);
            this.§1F§.push(this.§3!Y§);
         }
         else if(this.§82§.getValue() >= _loc5_ && (§'K§.getItemByName("MovieClip_StarCenter") as §%!9§).mClip.currentLabel == "UnLit")
         {
            § !x§.playSound("Hiscore_Star_Splash2",§@!i§);
            (§'K§.getItemByName("MovieClip_StarCenter") as §%!9§).mClip.gotoAndStop("Lit");
            _loc2_ = (§'K§.getItemByName("MovieClip_StarCenter") as §%!9§).x + (§'K§.getItemByName("Container_LevelEndStripe") as §7!a§).x;
            _loc3_ = (§'K§.getItemByName("MovieClip_StarCenter") as §%!9§).y + (§'K§.getItemByName("Container_LevelEndStripe") as §7!a§).y;
            this.§3!Y§ = new §&S§(AngryBirdsFP11.§#"8§,AngryBirdsFP11.§2!e§,_loc2_,_loc3_,§&S§.§=w§);
            §'K§.addChild(this.§3!Y§);
            this.§1F§.push(this.§3!Y§);
         }
         else if(this.§82§.getValue() >= _loc4_ && (§'K§.getItemByName("MovieClip_StarRight") as §%!9§).mClip.currentLabel == "UnLit")
         {
            § !x§.playSound("Hiscore_Star_Splash3",§@!i§);
            (§'K§.getItemByName("MovieClip_StarRight") as §%!9§).mClip.gotoAndStop("Lit");
            _loc2_ = (§'K§.getItemByName("MovieClip_StarRight") as §%!9§).x + (§'K§.getItemByName("Container_LevelEndStripe") as §7!a§).x;
            _loc3_ = (§'K§.getItemByName("MovieClip_StarRight") as §%!9§).y + (§'K§.getItemByName("Container_LevelEndStripe") as §7!a§).y;
            this.§3!Y§ = new §&S§(AngryBirdsFP11.§#"8§,AngryBirdsFP11.§2!e§,_loc2_,_loc3_,§&S§.§'!b§);
            §'K§.addChild(this.§3!Y§);
            this.§1F§.push(this.§3!Y§);
         }
         else if(!this.§6!f§)
         {
            this.§6!f§ = true;
         }
         else
         {
            this.§!f§.stop();
         }
         ++this.§3q§;
      }
      
      private function §[t§() : void
      {
         § !x§.§`"4§(§+k§);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:§&S§ = null;
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §0!K§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         §'K§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScore");
         §'K§.setText(this.mNewScoreCounter.toString(),"TextField_LevelEndScoreEffects");
         for each(_loc3_ in this.§1F§)
         {
            _loc3_.update(param1);
         }
         if(mNextState.length > 0)
         {
            §"!V§.§!j§.clearLevel();
            return §0!K§.STATE_STATUS_COMPLETED;
         }
         return §0!K§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§?!<§();
         this.mNewScoreCounter = 0;
         if(this.§6!=§)
         {
            this.§6!=§.stop();
            this.§6!=§ = null;
         }
         § !x§.§`"4§(§+k§);
         if(§'K§.getItemByName("Button_Menu"))
         {
            (§'K§.getItemByName("Button_Menu") as §8!r§).setComponentVisualState(§"h§.COMPONENT_STATE_ACTIVE_DEFAULT);
         }
         (§'K§.getItemByName("Button_Replay") as §8!r§).setComponentVisualState(§"h§.COMPONENT_STATE_ACTIVE_DEFAULT);
         §'K§.setText("0","TextField_LevelEndScore");
         §'K§.setText("0","TextField_LevelEndScoreEffects");
         if(this.§`H§)
         {
            if(§'K§.movieClip.contains(this.§`H§))
            {
               §'K§.movieClip.removeChild(this.§`H§);
            }
            this.§`H§.clean();
            this.§`H§ = null;
         }
      }
      
      private function §?!<§() : void
      {
         var splash:§&S§ = null;
         if(this.§!f§)
         {
            this.§!f§.stop();
            try
            {
               this.§!f§.removeEventListener(TimerEvent.TIMER,this.§3r§);
            }
            catch(e:Error)
            {
            }
         }
         for each(splash in this.§1F§)
         {
            if(§'K§.contains(splash))
            {
               §'K§.removeChild(splash);
            }
            splash.clean();
         }
         this.§1F§ = new Vector.<§&S§>();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§7!n§) : void
      {
         switch(param2)
         {
            case "REPLAY":
               §4!l§.§"l§(StatePlayBS.§]"2§);
               mNextState = §4!l§.§]"2§;
               break;
            case "MENU":
               §?!`§.doJsCall("onLevelMenuOpened");
               mNextState = §8!0§.§]"2§;
               break;
            case "FULLSCREEN_BUTTON":
               §?!`§.doJsCall("onFullscreenToggle");
               break;
            case "LIKE":
               §?!`§.doJsCall("onLevelLiked");
               break;
            case "SHARE":
               §?!`§.doJsCall("onLevelShared");
               break;
            case "NEXT":
               §?!`§.doJsCall("onNextLevel");
         }
      }
   }
}
