package §<"c§
{
   import § "4§.§8!R§;
   import §+D§.§ #^§;
   import §+D§.§^"m§;
   import §1!i§.§;7§;
   import §3§.§<#A§;
   import §6"G§.§-#C§;
   import §6"G§.§[#R§;
   import §7!$§.§&$§;
   import §7!$§.§]#[§;
   import §;"Y§.§&#X§;
   import §;"Y§.§1"z§;
   import §="2§.§?!r§;
   import §>@§.§5"H§;
   import §?m§.§+"2§;
   import §^!v§.§@"A§;
   import com.angrybirds.§,!q§;
   import flash.display.MovieClip;
   import flash.events.TimerEvent;
   import flash.text.TextField;
   import flash.utils.Timer;
   
   public class §""o§ extends §]"_§
   {
      
      public static const §^!7§:String = "LevelEndState";
      
      protected static const §0,§:String = "ScoreLoopCountChannel";
      
      protected static const §`O§:String = "EndScreenEffectChannel";
      
      protected static const §<!K§:int = 40;
      
      protected static const §5"n§:int = 30;
      
      protected static const §,#9§:int = 95;
       
      
      protected var §3!F§:§[#R§;
      
      protected var §-!t§:int;
      
      protected var §0!r§:§<#A§;
      
      protected var §%#>§:Vector.<§<#A§>;
      
      protected var §5"G§:Boolean;
      
      protected var §6!6§:Timer;
      
      public var mNewScoreCounter:int;
      
      protected var §]!w§:§;7§;
      
      protected var §[N§:§@"A§;
      
      protected var §<!L§:Boolean;
      
      protected var §%!x§:Boolean;
      
      protected var §[m§:Boolean;
      
      protected var §^c§:§ #^§;
      
      protected var §^W§:§^"m§;
      
      protected var §^"^§:§^"m§;
      
      protected var §,>§:§^"m§;
      
      protected var §]6§:§^"m§;
      
      protected var §9!#§:§ #^§;
      
      protected var §5"t§:§ #^§;
      
      protected var §"!'§:MovieClip;
      
      protected var §9!@§:TextField;
      
      protected var §7C§:MovieClip;
      
      protected var §`!b§:TextField;
      
      protected var §+#7§:MovieClip;
      
      protected var §1u§:MovieClip;
      
      protected var §`##§:MovieClip;
      
      protected var §3$§:MovieClip;
      
      protected var §">§:§8!R§;
      
      public function §""o§(param1:§+"2§, param2:§5"H§, param3:Boolean = false, param4:String = "LevelEndState")
      {
         this.§]!w§ = new §;7§();
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         this.§">§ = §4#;§.singleton.dataModel.userProgress;
         §@;§ = new §]#[§(this);
         §@;§.init(this.getViewXML());
         this.§#"y§();
         this.§%#>§ = new Vector.<§<#A§>();
         §?!r§.§,"d§(§0,§,1,1);
         §?!r§.§,"d§(§`O§,3,1);
      }
      
      protected function getViewXML() : XML
      {
         return §&$§.§@8§.Views.View_LevelEnd[0];
      }
      
      protected function §#"y§() : void
      {
         this.§^c§ = § #^§(§@;§.getItemByName("Container_Content"));
         this.§^W§ = §^"m§(§@;§.getItemByName("Button_Menu"));
         this.§^"^§ = §^"m§(§@;§.getItemByName("Button_Replay"));
         this.§,>§ = §^"m§(§@;§.getItemByName("Button_NextLevel"));
         this.§]6§ = §^"m§(§@;§.getItemByName("Button_CutScene"));
         this.§9!#§ = § #^§(§@;§.getItemByName("Container_NextButton"));
         this.§5"t§ = § #^§(§@;§.getItemByName("Container_ReplayButton"));
         this.§"!'§ = §@;§.getItemByName("MovieClip_FalconBadge").mClip;
         this.§"!'§.visible = false;
         this.§`!b§ = TextField(§@;§.getItemByName("MovieClip_LevelEndScore").mClip.txtLabel);
         this.§9!@§ = TextField(§@;§.getItemByName("TextField_BestScore").mClip.text);
         this.§9!@§.visible = true;
         this.§7C§ = §@;§.getItemByName("TextField_BestScore").mClip;
         this.§+#7§ = §@;§.getItemByName("MovieClip_BestStars").mClip;
         this.§1u§ = §@;§.getItemByName("MovieClip_StarLeft").mClip;
         this.§`##§ = §@;§.getItemByName("MovieClip_StarMiddle").mClip;
         this.§3$§ = §@;§.getItemByName("MovieClip_StarRight").mClip;
         this.§`!b§.defaultTextFormat = this.§`!b§.getTextFormat();
      }
      
      protected function §[r§() : void
      {
         this.§^W§.setVisibility(true);
         this.§5"t§.setVisibility(true);
         this.§,>§.setVisibility(false);
         this.§]6§.setVisibility(true);
         this.§9!#§.setVisibility(true);
         this.setButtonAlignment();
      }
      
      protected function §#N§() : void
      {
         this.§^W§.setVisibility(true);
         this.§5"t§.setVisibility(true);
         this.§]6§.setVisibility(false);
         this.§,>§.setVisibility(true);
         if(§+!b§.getNextLevelId())
         {
            this.§9!#§.setVisibility(true);
         }
         else
         {
            this.§9!#§.setVisibility(false);
         }
         this.setButtonAlignment();
      }
      
      protected function setButtonAlignment() : void
      {
         var _loc1_:Boolean = this.§9!#§.visible;
         var _loc2_:Boolean = this.§^W§.visible;
         var _loc3_:int = §,#9§;
         _loc3_ += !!_loc2_ ? §5"n§ + §,#9§ : 0;
         _loc3_ += !!_loc1_ ? §5"n§ + §,#9§ : 0;
         var _loc4_:int = -_loc3_ / 2 + §<!K§;
         if(_loc2_)
         {
            this.§^W§.x = _loc4_;
            _loc4_ += §5"n§ + §,#9§;
         }
         this.§5"t§.x = _loc4_;
         _loc4_ += §5"n§ + §,#9§;
         if(_loc1_)
         {
            this.§9!#§.x = _loc4_;
            _loc4_ += §5"n§ + §,#9§;
         }
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §,!q§.pause();
         this.§%!x§ = false;
         this.§5"G§ = false;
         this.mNewScoreCounter = 0;
         this.§[N§ = new §@"A§(this.§^c§,this.§^c§.getItemByName("MovieClip_NewHighScoreBadge").mClip);
         if(§+!b§.isCutSceneNext())
         {
            this.§[r§();
         }
         else
         {
            this.§#N§();
         }
         this.setButtonAlignment();
         this.§="B§();
         this.§"!'§.visible = false;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§"#V§();
         this.§[N§.dispose();
         this.§[N§ = null;
         this.mNewScoreCounter = 0;
         if(this.§3!F§)
         {
            this.§3!F§.stop();
            this.§3!F§ = null;
         }
         §?!r§.§9"4§(§0,§);
         this.§7b§(§1"z§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.§`!b§.text = "0";
      }
      
      private function §="B§() : void
      {
         this.§[m§ = false;
         this.setScoreData();
         this.§6!6§ = new Timer(500);
         this.§-!t§ = 0;
         this.§6!6§.addEventListener(TimerEvent.TIMER,this.§-K§);
         this.§6!6§.start();
      }
      
      protected function §+"N§() : void
      {
         if(this.§">§.getEagleScoreForLevel(§+!b§.currentLevel) == 100)
         {
            this.§"!'§.gotoAndStop(4);
         }
         else if(this.§">§.getEagleScoreForLevel(§+!b§.currentLevel) < 100 && this.§">§.getEagleScoreForLevel(§+!b§.currentLevel) > 50)
         {
            this.§"!'§.gotoAndStop(3);
         }
         else if(this.§">§.getEagleScoreForLevel(§+!b§.currentLevel) <= 50 && this.§">§.getEagleScoreForLevel(§+!b§.currentLevel) > 0)
         {
            this.§"!'§.gotoAndStop(2);
         }
         else
         {
            this.§"!'§.gotoAndStop(1);
         }
      }
      
      protected function § >§(param1:int, param2:int) : void
      {
         var _loc3_:int = 0;
         if(this.§<!L§)
         {
            param2 = param1;
            this.§">§.§9!R§(§+!b§.currentLevel,param2);
            this.§9!@§.text = "New Highscore!";
         }
         else
         {
            this.§9!@§.text = "Best " + param2.toString();
            _loc3_ = §+!b§.getNumStarsForLevel(§+!b§.currentLevel,param2);
            this.§+#7§.gotoAndStop(_loc3_);
         }
      }
      
      protected function setScoreData() : void
      {
         var _loc1_:int = this.§">§.getScoreForLevel(§+!b§.currentLevel);
         var _loc2_:int = §,!q§.§>k§.getScore(10);
         this.§<!L§ = _loc2_ > _loc1_;
         this.§ >§(_loc2_,_loc1_);
         this.§+"N§();
         var _loc3_:int = §,!q§.§>k§.getEagleScore();
         var _loc4_:int = this.§">§.getEagleScoreForLevel(§+!b§.currentLevel);
         var _loc5_:*;
         if(_loc5_ = _loc3_ > _loc4_)
         {
            _loc4_ = _loc3_;
            this.§">§.§]"D§(§+!b§.currentLevel,_loc4_);
         }
         this.§[N§.visible = false;
         this.§1u§.gotoAndStop("unlit");
         this.§`##§.gotoAndStop("unlit");
         this.§3$§.gotoAndStop("unlit");
      }
      
      private function §-K§(param1:TimerEvent) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc4_:Number = §+!b§.getGoldScoreForLevel(§+!b§.currentLevel);
         var _loc5_:Number = §+!b§.getSilverScoreForLevel(§+!b§.currentLevel);
         if(this.§1u§.currentLabel == "unlit")
         {
            this.lightStar(1);
            §?!r§.§"#_§("misc_score_1",§0,§,100);
            this.§6!6§.delay = 1000;
            this.§]!w§.§3"Q§(§,!q§.§>k§.getScore(10));
            _loc6_ = this.§]!w§.getValue() / _loc4_ * 2;
            if(_loc4_ <= 0)
            {
               _loc6_ = 1;
            }
            this.§3!F§ = §-#C§.§%!E§.§^!H§(this,{"mNewScoreCounter":this.§]!w§.getValue()},{"mNewScoreCounter":0},_loc6_);
            this.§3!F§.onComplete = this.§?!z§;
            this.§3!F§.play();
         }
         else if(this.§]!w§.getValue() >= _loc5_ && this.§`##§.currentLabel == "unlit")
         {
            this.lightStar(2);
         }
         else if(this.§]!w§.getValue() >= _loc4_ && this.§3$§.currentLabel == "unlit")
         {
            this.lightStar(3);
            this.§%!x§ = true;
         }
         else if(!this.§5"G§)
         {
            this.§5"G§ = true;
         }
         else
         {
            this.§6!6§.stop();
            this.showScore();
         }
         ++this.§-!t§;
      }
      
      protected function lightStar(param1:int) : void
      {
         §?!r§.§"#_§("star_" + param1,§`O§);
         var _loc2_:MovieClip = [this.§1u§,this.§`##§,this.§3$§][param1 - 1];
         _loc2_.gotoAndStop("lit");
         this.§0!r§ = new §<#A§(§4#;§.screenWidth,§4#;§.screenHeight,_loc2_.x + this.§^c§.x + 70,_loc2_.y + this.§^c§.y + 70,[§<#A§.§=!D§,§<#A§.§!&§,§<#A§.§?b§][param1 - 1]);
         §@;§.addChild(this.§0!r§);
         this.§%#>§.push(this.§0!r§);
      }
      
      protected function showScore() : void
      {
         if(this.§<!L§)
         {
            this.§+#7§.visible = false;
            this.showHighScoreBadge();
         }
         else
         {
            this.§[N§.visible = false;
            this.§7C§.visible = true;
            this.§+#7§.visible = true;
         }
      }
      
      protected function showHighScoreBadge() : void
      {
         if(!this.§[m§)
         {
            this.§[N§.visible = true;
            §?!r§.§"#_§("highscore");
            this.§[N§.show();
         }
      }
      
      private function §?!z§() : void
      {
         §?!r§.§9"4§(§0,§);
      }
      
      override protected function update(param1:Number) : void
      {
         var _loc2_:§<#A§ = null;
         super.update(param1);
         this.§`!b§.text = this.mNewScoreCounter.toString();
         for each(_loc2_ in this.§%#>§)
         {
            _loc2_.update(param1);
         }
         this.§[N§.update(param1);
         if(nextState.length > 0)
         {
            §,!q§.§9!,§.clearLevel();
         }
      }
      
      protected function §7b§(param1:String) : void
      {
         this.§^W§.setComponentVisualState(param1);
         this.§^"^§.setComponentVisualState(param1);
         this.§]6§.setComponentVisualState(param1);
      }
      
      private function §"#V§() : void
      {
         var splash:§<#A§ = null;
         if(this.§6!6§)
         {
            this.§6!6§.stop();
            try
            {
               this.§6!6§.removeEventListener(TimerEvent.TIMER,this.§-K§);
            }
            catch(e:Error)
            {
            }
         }
         for each(splash in this.§%#>§)
         {
            if(§@;§.contains(splash))
            {
               §@;§.removeChild(splash);
            }
            splash.§%!G§();
         }
         this.§%#>§ = new Vector.<§<#A§>();
         this.§?N§();
      }
      
      protected function §?N§() : void
      {
         this.§7C§.visible = false;
         this.§+#7§.visible = false;
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      protected function loadNextLevel() : void
      {
         §'$§();
         § g§(this.getCutSceneState());
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§&#X§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
               this.loadNextLevel();
               break;
            case "REPLAY":
               § g§(this.getStateLevelLoadState());
               break;
            case "MENU":
               §?!r§.§0"#§();
               § g§(this.getMenuButtonTargetState());
         }
      }
      
      protected function getStateLevelLoadState() : String
      {
         return §<2§.§^!7§;
      }
      
      protected function getCutSceneState() : String
      {
         return StateCutScene.§^!7§;
      }
      
      public function getMenuButtonTargetState() : String
      {
         return §+#?§.§^!7§;
      }
   }
}
