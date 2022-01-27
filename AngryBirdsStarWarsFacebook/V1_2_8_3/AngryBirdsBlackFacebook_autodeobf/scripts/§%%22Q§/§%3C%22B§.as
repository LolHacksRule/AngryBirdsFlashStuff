package §%"Q§
{
   import §"#§.§+§;
   import §&!j§.§5#+§;
   import §+d§.§0#&§;
   import §0"g§.§%b§;
   import §0"g§.§5!%§;
   import §8!h§.§%"z§;
   import §8!h§.§-V§;
   import §9!a§.§&!q§;
   import §=Z§.§;g§;
   import §=Z§.§@!8§;
   import §[!H§.§4Z§;
   import §[!H§.§^x§;
   import §`"1§.§=Q§;
   import §`"n§.§^!-§;
   import com.angrybirds.§<!J§;
   import flash.display.MovieClip;
   import flash.events.TimerEvent;
   import flash.text.TextField;
   import flash.utils.Timer;
   import §null §.§5#§;
   
   public class §<"B§ extends §`!6§
   {
      
      public static const §-!U§:String = "LevelEndState";
      
      protected static const §2"p§:String = "ScoreLoopCountChannel";
      
      protected static const §2"n§:String = "EndScreenEffectChannel";
      
      protected static const §7!E§:int = 40;
      
      protected static const §##&§:int = 30;
      
      protected static const §2!z§:int = 95;
       
      
      protected var §,!z§:§%b§;
      
      protected var §]!m§:int;
      
      protected var §4#-§:§&!q§;
      
      protected var §["P§:Vector.<§&!q§>;
      
      protected var §,r§:Boolean;
      
      protected var §"9§:Timer;
      
      public var mNewScoreCounter:int;
      
      protected var §3"B§:§0#&§;
      
      protected var §8"t§:§+#6§;
      
      protected var §#$§:Boolean;
      
      protected var §6B§:Boolean;
      
      protected var §4!Q§:Boolean;
      
      protected var §[#,§:§@!8§;
      
      protected var §%N§:§;g§;
      
      protected var §"f§:§;g§;
      
      protected var § ]§:§;g§;
      
      protected var §1"K§:§;g§;
      
      protected var §<!k§:§@!8§;
      
      protected var §!'§:§@!8§;
      
      protected var §'"s§:MovieClip;
      
      protected var §6!"§:TextField;
      
      protected var §7!Z§:MovieClip;
      
      protected var §#!^§:TextField;
      
      protected var §0!G§:MovieClip;
      
      protected var §<# §:MovieClip;
      
      protected var §-"y§:MovieClip;
      
      protected var §&!z§:MovieClip;
      
      protected var §3"§:§^!-§;
      
      public function §<"B§(param1:§5#§, param2:§5#+§, param3:Boolean = false, param4:String = "LevelEndState")
      {
         this.§3"B§ = new §0#&§();
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         this.§3"§ = §4"#§.singleton.dataModel.userProgress;
         §^!b§ = new §4Z§(this);
         §^!b§.init(this.getViewXML());
         this.§<B§();
         this.§["P§ = new Vector.<§&!q§>();
         §=Q§.§`"u§(§2"p§,1,1);
         §=Q§.§`"u§(§2"n§,3,1);
      }
      
      protected function getViewXML() : XML
      {
         return §^x§.§ '§.Views.View_LevelEnd[0];
      }
      
      protected function §<B§() : void
      {
         this.§[#,§ = §@!8§(§^!b§.getItemByName("Container_Content"));
         this.§%N§ = §;g§(§^!b§.getItemByName("Button_Menu"));
         this.§"f§ = §;g§(§^!b§.getItemByName("Button_Replay"));
         this.§ ]§ = §;g§(§^!b§.getItemByName("Button_NextLevel"));
         this.§1"K§ = §;g§(§^!b§.getItemByName("Button_CutScene"));
         this.§<!k§ = §@!8§(§^!b§.getItemByName("Container_NextButton"));
         this.§!'§ = §@!8§(§^!b§.getItemByName("Container_ReplayButton"));
         this.§'"s§ = §^!b§.getItemByName("MovieClip_FalconBadge").mClip;
         this.§'"s§.visible = false;
         this.§#!^§ = TextField(§^!b§.getItemByName("MovieClip_LevelEndScore").mClip.txtLabel);
         this.§6!"§ = TextField(§^!b§.getItemByName("TextField_BestScore").mClip.text);
         this.§6!"§.visible = true;
         this.§7!Z§ = §^!b§.getItemByName("TextField_BestScore").mClip;
         this.§0!G§ = §^!b§.getItemByName("MovieClip_BestStars").mClip;
         this.§<# § = §^!b§.getItemByName("MovieClip_StarLeft").mClip;
         this.§-"y§ = §^!b§.getItemByName("MovieClip_StarMiddle").mClip;
         this.§&!z§ = §^!b§.getItemByName("MovieClip_StarRight").mClip;
         this.§#!^§.defaultTextFormat = this.§#!^§.getTextFormat();
      }
      
      protected function §3n§() : void
      {
         this.§%N§.setVisibility(true);
         this.§!'§.setVisibility(true);
         this.§ ]§.setVisibility(false);
         this.§1"K§.setVisibility(true);
         this.§<!k§.setVisibility(true);
         this.setButtonAlignment();
      }
      
      protected function §-E§() : void
      {
         this.§%N§.setVisibility(true);
         this.§!'§.setVisibility(true);
         this.§1"K§.setVisibility(false);
         this.§ ]§.setVisibility(true);
         if(§'""§.getNextLevelId())
         {
            this.§<!k§.setVisibility(true);
         }
         else
         {
            this.§<!k§.setVisibility(false);
         }
         this.setButtonAlignment();
      }
      
      protected function setButtonAlignment() : void
      {
         var _loc1_:Boolean = this.§<!k§.visible;
         var _loc2_:Boolean = this.§%N§.visible;
         var _loc3_:int = §2!z§;
         _loc3_ += !!_loc2_ ? §##&§ + §2!z§ : 0;
         _loc3_ += !!_loc1_ ? §##&§ + §2!z§ : 0;
         var _loc4_:int = -_loc3_ / 2 + §7!E§;
         if(_loc2_)
         {
            this.§%N§.x = _loc4_;
            _loc4_ += §##&§ + §2!z§;
         }
         this.§!'§.x = _loc4_;
         _loc4_ += §##&§ + §2!z§;
         if(_loc1_)
         {
            this.§<!k§.x = _loc4_;
            _loc4_ += §##&§ + §2!z§;
         }
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §<!J§.pause();
         this.§6B§ = false;
         this.§,r§ = false;
         this.mNewScoreCounter = 0;
         this.§8"t§ = new §+#6§(this.§[#,§,this.§[#,§.getItemByName("MovieClip_NewHighScoreBadge").mClip);
         if(§'""§.isCutSceneNext())
         {
            this.§3n§();
         }
         else
         {
            this.§-E§();
         }
         this.setButtonAlignment();
         this.§6"k§();
         this.§'"s§.visible = false;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         this.§6!q§();
         this.§8"t§.dispose();
         this.§8"t§ = null;
         this.mNewScoreCounter = 0;
         if(this.§,!z§)
         {
            this.§,!z§.stop();
            this.§,!z§ = null;
         }
         §=Q§.§&"=§(§2"p§);
         this.§[!,§(§%"z§.COMPONENT_STATE_ACTIVE_DEFAULT);
         this.§#!^§.text = "0";
      }
      
      private function §6"k§() : void
      {
         this.§4!Q§ = false;
         this.setScoreData();
         this.§"9§ = new Timer(500);
         this.§]!m§ = 0;
         this.§"9§.addEventListener(TimerEvent.TIMER,this.§%!t§);
         this.§"9§.start();
      }
      
      protected function §!"$§() : void
      {
         if(this.§3"§.getEagleScoreForLevel(§'""§.currentLevel) == 100)
         {
            this.§'"s§.gotoAndStop(4);
         }
         else if(this.§3"§.getEagleScoreForLevel(§'""§.currentLevel) < 100 && this.§3"§.getEagleScoreForLevel(§'""§.currentLevel) > 50)
         {
            this.§'"s§.gotoAndStop(3);
         }
         else if(this.§3"§.getEagleScoreForLevel(§'""§.currentLevel) <= 50 && this.§3"§.getEagleScoreForLevel(§'""§.currentLevel) > 0)
         {
            this.§'"s§.gotoAndStop(2);
         }
         else
         {
            this.§'"s§.gotoAndStop(1);
         }
      }
      
      protected function §&"K§(param1:int, param2:int) : void
      {
         var _loc3_:int = 0;
         if(this.§#$§)
         {
            param2 = param1;
            this.§3"§.§>"t§(§'""§.currentLevel,param2);
            this.§6!"§.text = "New Highscore!";
         }
         else
         {
            this.§6!"§.text = "Best " + param2.toString();
            _loc3_ = §'""§.getNumStarsForLevel(§'""§.currentLevel,param2);
            this.§0!G§.gotoAndStop(_loc3_);
         }
      }
      
      protected function setScoreData() : void
      {
         var _loc1_:int = this.§3"§.getScoreForLevel(§'""§.currentLevel);
         var _loc2_:int = §<!J§.§]!D§.getScore(10);
         this.§#$§ = _loc2_ > _loc1_;
         this.§&"K§(_loc2_,_loc1_);
         this.§!"$§();
         var _loc3_:int = §<!J§.§]!D§.getEagleScore();
         var _loc4_:int = this.§3"§.getEagleScoreForLevel(§'""§.currentLevel);
         var _loc5_:*;
         if(_loc5_ = _loc3_ > _loc4_)
         {
            _loc4_ = _loc3_;
            this.§3"§.§#!C§(§'""§.currentLevel,_loc4_);
         }
         this.§8"t§.visible = false;
         this.§<# §.gotoAndStop("unlit");
         this.§-"y§.gotoAndStop("unlit");
         this.§&!z§.gotoAndStop("unlit");
      }
      
      private function §%!t§(param1:TimerEvent) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc4_:Number = §'""§.getGoldScoreForLevel(§'""§.currentLevel);
         var _loc5_:Number = §'""§.getSilverScoreForLevel(§'""§.currentLevel);
         if(this.§<# §.currentLabel == "unlit")
         {
            this.lightStar(1);
            §=Q§.§`!A§("misc_score_1",§2"p§,100);
            this.§"9§.delay = 1000;
            this.§3"B§.§-[§(§<!J§.§]!D§.getScore(10));
            _loc6_ = this.§3"B§.getValue() / _loc4_ * 2;
            if(_loc4_ <= 0)
            {
               _loc6_ = 1;
            }
            this.§,!z§ = §5!%§.§!6§.§4!M§(this,{"mNewScoreCounter":this.§3"B§.getValue()},{"mNewScoreCounter":0},_loc6_);
            this.§,!z§.onComplete = this.§;"3§;
            this.§,!z§.play();
         }
         else if(this.§3"B§.getValue() >= _loc5_ && this.§-"y§.currentLabel == "unlit")
         {
            this.lightStar(2);
         }
         else if(this.§3"B§.getValue() >= _loc4_ && this.§&!z§.currentLabel == "unlit")
         {
            this.lightStar(3);
            this.§6B§ = true;
         }
         else if(!this.§,r§)
         {
            this.§,r§ = true;
         }
         else
         {
            this.§"9§.stop();
            this.showScore();
         }
         ++this.§]!m§;
      }
      
      protected function lightStar(param1:int) : void
      {
         §=Q§.§`!A§("star_" + param1,§2"n§);
         var _loc2_:MovieClip = [this.§<# §,this.§-"y§,this.§&!z§][param1 - 1];
         _loc2_.gotoAndStop("lit");
         this.§4#-§ = new §&!q§(§4"#§.screenWidth,§4"#§.screenHeight,_loc2_.x + this.§[#,§.x + 70,_loc2_.y + this.§[#,§.y + 70,[§&!q§.§[0§,§&!q§.§=!N§,§&!q§.§[">§][param1 - 1]);
         §^!b§.addChild(this.§4#-§);
         this.§["P§.push(this.§4#-§);
      }
      
      protected function showScore() : void
      {
         if(this.§#$§)
         {
            this.§0!G§.visible = false;
            this.showHighScoreBadge();
         }
         else
         {
            this.§8"t§.visible = false;
            this.§7!Z§.visible = true;
            this.§0!G§.visible = true;
         }
      }
      
      protected function showHighScoreBadge() : void
      {
         if(!this.§4!Q§)
         {
            this.§8"t§.visible = true;
            §=Q§.§`!A§("highscore");
            this.§8"t§.show();
         }
      }
      
      private function §;"3§() : void
      {
         §=Q§.§&"=§(§2"p§);
      }
      
      override protected function update(param1:Number) : void
      {
         var _loc2_:§&!q§ = null;
         super.update(param1);
         this.§#!^§.text = this.mNewScoreCounter.toString();
         for each(_loc2_ in this.§["P§)
         {
            _loc2_.update(param1);
         }
         this.§8"t§.update(param1);
         if(nextState.length > 0)
         {
            §<!J§.§=!%§.clearLevel();
         }
      }
      
      protected function §[!,§(param1:String) : void
      {
         this.§%N§.setComponentVisualState(param1);
         this.§"f§.setComponentVisualState(param1);
         this.§1"K§.setComponentVisualState(param1);
      }
      
      private function §6!q§() : void
      {
         var splash:§&!q§ = null;
         if(this.§"9§)
         {
            this.§"9§.stop();
            try
            {
               this.§"9§.removeEventListener(TimerEvent.TIMER,this.§%!t§);
            }
            catch(e:Error)
            {
            }
         }
         for each(splash in this.§["P§)
         {
            if(§^!b§.contains(splash))
            {
               §^!b§.removeChild(splash);
            }
            splash.§ "!§();
         }
         this.§["P§ = new Vector.<§&!q§>();
         this.§;!'§();
      }
      
      protected function §;!'§() : void
      {
         this.§7!Z§.visible = false;
         this.§0!G§.visible = false;
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      protected function loadNextLevel() : void
      {
         §`"y§();
         §`0§(this.getCutSceneState());
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§-V§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
               this.loadNextLevel();
               break;
            case "REPLAY":
               §`0§(this.getStateLevelLoadState());
               break;
            case "MENU":
               §=Q§.§!#,§();
               §`0§(this.getMenuButtonTargetState());
         }
      }
      
      protected function getStateLevelLoadState() : String
      {
         return §7"9§.§-!U§;
      }
      
      protected function getCutSceneState() : String
      {
         return StateCutScene.§-!U§;
      }
      
      public function getMenuButtonTargetState() : String
      {
         return §`=§.§-!U§;
      }
   }
}
