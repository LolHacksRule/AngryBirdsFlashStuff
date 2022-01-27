package §!X§
{
   import §"!P§.§5X§;
   import §""d§.§,m§;
   import §""d§.§2"8§;
   import §'! §.§4!Q§;
   import §'! §.§41§;
   import §'+§.§="B§;
   import §,"v§.§@§;
   import §,#+§.§7!m§;
   import §4##§.§7!B§;
   import §4##§.§7!Y§;
   import §5",§.§%"@§;
   import §7A§.§<1§;
   import §8"h§.§ "e§;
   import §^!`§.§%n§;
   import §^!`§.§6"!§;
   import com.angrybirds.§;!e§;
   import flash.display.MovieClip;
   import flash.events.TimerEvent;
   import flash.text.TextField;
   import flash.utils.Timer;
   
   public class §?![§ extends §@!?§
   {
      
      public static const §'#2§:String = "LevelEndState";
      
      protected static const §;?§:String = "ScoreLoopCountChannel";
      
      protected static const §-#1§:String = "EndScreenEffectChannel";
      
      protected static const §["8§:int = 40;
      
      protected static const §!!o§:int = 30;
      
      protected static const §%"X§:int = 95;
       
      
      protected var §2_§:§4!Q§;
      
      protected var §2O§:int;
      
      protected var §-"?§:§%"@§;
      
      protected var §<!T§:Vector.<§%"@§>;
      
      protected var §=!r§:Boolean;
      
      protected var § null§:Timer;
      
      public var mNewScoreCounter:int;
      
      protected var §4!j§:§<1§;
      
      protected var §-"g§:§ "e§;
      
      protected var §4!U§:Boolean;
      
      protected var §8!#§:Boolean;
      
      protected var §+"6§:Boolean;
      
      protected var §,r§:§,m§;
      
      protected var §"V§:§2"8§;
      
      protected var §7"0§:§2"8§;
      
      protected var §[#4§:§2"8§;
      
      protected var §[u§:§2"8§;
      
      protected var §#"A§:§,m§;
      
      protected var §;"i§:§,m§;
      
      protected var §#!G§:MovieClip;
      
      protected var §1"N§:TextField;
      
      protected var §1!F§:MovieClip;
      
      protected var §;!,§:TextField;
      
      protected var §2n§:MovieClip;
      
      protected var §&!1§:MovieClip;
      
      protected var §9!>§:MovieClip;
      
      protected var §4#-§:MovieClip;
      
      protected var §+"v§:§5X§;
      
      public function §?![§(param1:§7!m§, param2:§="B§, param3:Boolean = false, param4:String = "LevelEndState")
      {
         this.§4!j§ = new §<1§();
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         this.§+"v§ = §;"@§.singleton.dataModel.userProgress;
         §>I§ = new §6"!§(this);
         §>I§.init(this.getViewXML());
         this.§<"k§();
         this.§<!T§ = new Vector.<§%"@§>();
         §@§.§"#'§(§;?§,1,1);
         §@§.§"#'§(§-#1§,3,1);
      }
      
      protected function getViewXML() : XML
      {
         return §%n§.§ set§.Views.View_LevelEnd[0];
      }
      
      protected function §<"k§() : void
      {
         this.§,r§ = §,m§(§>I§.getItemByName("Container_Content"));
         this.§"V§ = §2"8§(§>I§.getItemByName("Button_Menu"));
         this.§7"0§ = §2"8§(§>I§.getItemByName("Button_Replay"));
         this.§[#4§ = §2"8§(§>I§.getItemByName("Button_NextLevel"));
         this.§[u§ = §2"8§(§>I§.getItemByName("Button_CutScene"));
         this.§#"A§ = §,m§(§>I§.getItemByName("Container_NextButton"));
         this.§;"i§ = §,m§(§>I§.getItemByName("Container_ReplayButton"));
         this.§#!G§ = §>I§.getItemByName("MovieClip_FalconBadge").mClip;
         this.§#!G§.visible = false;
         this.§;!,§ = TextField(§>I§.getItemByName("MovieClip_LevelEndScore").mClip.txtLabel);
         this.§1"N§ = TextField(§>I§.getItemByName("TextField_BestScore").mClip.text);
         this.§1"N§.visible = true;
         this.§1!F§ = §>I§.getItemByName("TextField_BestScore").mClip;
         this.§2n§ = §>I§.getItemByName("MovieClip_BestStars").mClip;
         this.§&!1§ = §>I§.getItemByName("MovieClip_StarLeft").mClip;
         this.§9!>§ = §>I§.getItemByName("MovieClip_StarMiddle").mClip;
         this.§4#-§ = §>I§.getItemByName("MovieClip_StarRight").mClip;
         this.§;!,§.defaultTextFormat = this.§;!,§.getTextFormat();
      }
      
      protected function §!"%§() : void
      {
         this.§"V§.setVisibility(true);
         this.§;"i§.setVisibility(true);
         this.§[#4§.setVisibility(false);
         this.§[u§.setVisibility(true);
         this.§#"A§.setVisibility(true);
         this.setButtonAlignment();
      }
      
      protected function §%"V§() : void
      {
         this.§"V§.setVisibility(true);
         this.§;"i§.setVisibility(true);
         this.§[u§.setVisibility(false);
         this.§[#4§.setVisibility(true);
         if(§ !p§.getNextLevelId())
         {
            this.§#"A§.setVisibility(true);
         }
         else
         {
            this.§#"A§.setVisibility(false);
         }
         this.setButtonAlignment();
      }
      
      protected function setButtonAlignment() : void
      {
         var _loc1_:Boolean = this.§#"A§.visible;
         var _loc2_:Boolean = this.§"V§.visible;
         var _loc3_:int = §%"X§;
         _loc3_ += !!_loc2_ ? §!!o§ + §%"X§ : 0;
         _loc3_ += !!_loc1_ ? §!!o§ + §%"X§ : 0;
         var _loc4_:int = -_loc3_ / 2 + §["8§;
         if(_loc2_)
         {
            this.§"V§.x = _loc4_;
            _loc4_ += §!!o§ + §%"X§;
         }
         this.§;"i§.x = _loc4_;
         _loc4_ += §!!o§ + §%"X§;
         if(_loc1_)
         {
            this.§#"A§.x = _loc4_;
            _loc4_ += §!!o§ + §%"X§;
         }
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §;!e§.pause();
         this.§8!#§ = false;
         this.§=!r§ = false;
         this.mNewScoreCounter = 0;
         this.§-"g§ = new § "e§(this.§,r§,this.§,r§.getItemByName("MovieClip_NewHighScoreBadge").mClip);
         if(§ !p§.isCutSceneNext())
         {
            this.§!"%§();
         }
         else
         {
            this.§%"V§();
         }
         this.setButtonAlignment();
         this.§<"I§();
         this.§#!G§.visible = false;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§63§();
         this.§-"g§.dispose();
         this.§-"g§ = null;
         this.mNewScoreCounter = 0;
         if(this.§2_§)
         {
            this.§2_§.stop();
            this.§2_§ = null;
         }
         §@§.§@!D§(§;?§);
         this.§?"f§(§7!Y§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.§;!,§.text = "0";
      }
      
      private function §<"I§() : void
      {
         this.§+"6§ = false;
         this.setScoreData();
         this.§ null§ = new Timer(500);
         this.§2O§ = 0;
         this.§ null§.addEventListener(TimerEvent.TIMER,this.§^"_§);
         this.§ null§.start();
      }
      
      protected function §<m§() : void
      {
         if(this.§+"v§.getEagleScoreForLevel(§ !p§.currentLevel) == 100)
         {
            this.§#!G§.gotoAndStop(4);
         }
         else if(this.§+"v§.getEagleScoreForLevel(§ !p§.currentLevel) < 100 && this.§+"v§.getEagleScoreForLevel(§ !p§.currentLevel) > 50)
         {
            this.§#!G§.gotoAndStop(3);
         }
         else if(this.§+"v§.getEagleScoreForLevel(§ !p§.currentLevel) <= 50 && this.§+"v§.getEagleScoreForLevel(§ !p§.currentLevel) > 0)
         {
            this.§#!G§.gotoAndStop(2);
         }
         else
         {
            this.§#!G§.gotoAndStop(1);
         }
      }
      
      protected function §6!@§(param1:int, param2:int) : void
      {
         var _loc3_:int = 0;
         if(this.§4!U§)
         {
            param2 = param1;
            this.§+"v§.§&'§(§ !p§.currentLevel,param2);
            this.§1"N§.text = "New Highscore!";
         }
         else
         {
            this.§1"N§.text = "Best " + param2.toString();
            _loc3_ = § !p§.getNumStarsForLevel(§ !p§.currentLevel,param2);
            this.§2n§.gotoAndStop(_loc3_);
         }
      }
      
      protected function setScoreData() : void
      {
         var _loc1_:int = this.§+"v§.getScoreForLevel(§ !p§.currentLevel);
         var _loc2_:int = §;!e§.§%e§.getScore(10);
         this.§4!U§ = _loc2_ > _loc1_;
         this.§6!@§(_loc2_,_loc1_);
         this.§<m§();
         var _loc3_:int = §;!e§.§%e§.getEagleScore();
         var _loc4_:int = this.§+"v§.getEagleScoreForLevel(§ !p§.currentLevel);
         var _loc5_:*;
         if(_loc5_ = _loc3_ > _loc4_)
         {
            _loc4_ = _loc3_;
            this.§+"v§.§?"I§(§ !p§.currentLevel,_loc4_);
         }
         this.§-"g§.visible = false;
         this.§&!1§.gotoAndStop("unlit");
         this.§9!>§.gotoAndStop("unlit");
         this.§4#-§.gotoAndStop("unlit");
      }
      
      private function §^"_§(param1:TimerEvent) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc4_:Number = § !p§.getGoldScoreForLevel(§ !p§.currentLevel);
         var _loc5_:Number = § !p§.getSilverScoreForLevel(§ !p§.currentLevel);
         if(this.§&!1§.currentLabel == "unlit")
         {
            this.lightStar(1);
            §@§.§=Y§("misc_score_1",§;?§,100);
            this.§ null§.delay = 1000;
            this.§4!j§.§6!b§(§;!e§.§%e§.getScore(10));
            _loc6_ = this.§4!j§.getValue() / _loc4_ * 2;
            if(_loc4_ <= 0)
            {
               _loc6_ = 1;
            }
            this.§2_§ = §41§.§-G§.§&#'§(this,{"mNewScoreCounter":this.§4!j§.getValue()},{"mNewScoreCounter":0},_loc6_);
            this.§2_§.onComplete = this.§^z§;
            this.§2_§.play();
         }
         else if(this.§4!j§.getValue() >= _loc5_ && this.§9!>§.currentLabel == "unlit")
         {
            this.lightStar(2);
         }
         else if(this.§4!j§.getValue() >= _loc4_ && this.§4#-§.currentLabel == "unlit")
         {
            this.lightStar(3);
            this.§8!#§ = true;
         }
         else if(!this.§=!r§)
         {
            this.§=!r§ = true;
         }
         else
         {
            this.§ null§.stop();
            this.showScore();
         }
         ++this.§2O§;
      }
      
      protected function lightStar(param1:int) : void
      {
         §@§.§=Y§("star_" + param1,§-#1§);
         var _loc2_:MovieClip = [this.§&!1§,this.§9!>§,this.§4#-§][param1 - 1];
         _loc2_.gotoAndStop("lit");
         this.§-"?§ = new §%"@§(§;"@§.screenWidth,§;"@§.screenHeight,_loc2_.x + this.§,r§.x + 70,_loc2_.y + this.§,r§.y + 70,[§%"@§.§'!$§,§%"@§.§`#&§,§%"@§.§=!I§][param1 - 1]);
         §>I§.addChild(this.§-"?§);
         this.§<!T§.push(this.§-"?§);
      }
      
      protected function showScore() : void
      {
         if(this.§4!U§)
         {
            this.§2n§.visible = false;
            this.showHighScoreBadge();
         }
         else
         {
            this.§-"g§.visible = false;
            this.§1!F§.visible = true;
            this.§2n§.visible = true;
         }
      }
      
      protected function showHighScoreBadge() : void
      {
         if(!this.§+"6§)
         {
            this.§-"g§.visible = true;
            §@§.§=Y§("highscore");
            this.§-"g§.show();
         }
      }
      
      private function §^z§() : void
      {
         §@§.§@!D§(§;?§);
      }
      
      override protected function update(param1:Number) : void
      {
         var _loc2_:§%"@§ = null;
         super.update(param1);
         this.§;!,§.text = this.mNewScoreCounter.toString();
         for each(_loc2_ in this.§<!T§)
         {
            _loc2_.update(param1);
         }
         this.§-"g§.update(param1);
         if(nextState.length > 0)
         {
            §;!e§.§<x§.clearLevel();
         }
      }
      
      protected function §?"f§(param1:String) : void
      {
         this.§"V§.setComponentVisualState(param1);
         this.§7"0§.setComponentVisualState(param1);
         this.§[u§.setComponentVisualState(param1);
      }
      
      private function §63§() : void
      {
         var splash:§%"@§ = null;
         if(this.§ null§)
         {
            this.§ null§.stop();
            try
            {
               this.§ null§.removeEventListener(TimerEvent.TIMER,this.§^"_§);
            }
            catch(e:Error)
            {
            }
         }
         for each(splash in this.§<!T§)
         {
            if(§>I§.contains(splash))
            {
               §>I§.removeChild(splash);
            }
            splash.§;!k§();
         }
         this.§<!T§ = new Vector.<§%"@§>();
         this.§7b§();
      }
      
      protected function §7b§() : void
      {
         this.§1!F§.visible = false;
         this.§2n§.visible = false;
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      protected function loadNextLevel() : void
      {
         § !Y§();
         §0"B§(this.getCutSceneState());
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§7!B§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
               this.loadNextLevel();
               break;
            case "REPLAY":
               §0"B§(this.getStateLevelLoadState());
               break;
            case "MENU":
               §@§.§+A§();
               §0"B§(this.getMenuButtonTargetState());
         }
      }
      
      protected function getStateLevelLoadState() : String
      {
         return §>!I§.§'#2§;
      }
      
      protected function getCutSceneState() : String
      {
         return StateCutScene.§'#2§;
      }
      
      public function getMenuButtonTargetState() : String
      {
         return §,"p§.§'#2§;
      }
   }
}
