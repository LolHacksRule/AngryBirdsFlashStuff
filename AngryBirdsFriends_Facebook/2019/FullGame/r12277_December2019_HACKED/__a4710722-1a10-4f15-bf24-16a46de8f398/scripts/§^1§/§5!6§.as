package §^1§
{
   import § "v§.§4$4§;
   import § #_§.§?!>§;
   import § null§.§5"<§;
   import § null§.§@§;
   import §+!n§.§+!p§;
   import §-"Y§.§"!1§;
   import §2$;§.§-$5§;
   import §2$;§.§;!b§;
   import §2$;§.§=!Z§;
   import §<8§.§8!g§;
   import §<8§.§;"k§;
   import §?o§.§4#?§;
   import §[#A§.§&n§;
   import §[#A§.§+#<§;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class §5!6§ extends §';§
   {
      
      public static const STATE_NAME:String = "LevelEndEagleState";
      
      private static const §<>§:String = "ScoreLoopCountChannel";
       
      
      private var §+"b§:§@#5§;
      
      private var §#"?§:§"!1§;
      
      public var mEagleScoreCounter:Number;
      
      private var §?t§:Number;
      
      private var §@#=§:int;
      
      public function §5!6§(param1:§4#?§, param2:§?!>§, param3:Boolean = false, param4:String = "LevelEndEagleState")
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         §@!D§ = new §+#<§(this);
         §@!D§.init(§&n§.§7a§.Views.View_LevelEndEagle[0]);
         this.§?t§ = (§@!D§.getItemByName("MovieClip_EagleMeterFill") as §=!Z§).width;
         §4$4§.§<!A§(§<>§,1,1);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.§#"?§ = new §"!1§(0,0,0,0);
         §@!D§.movieClip.addChildAt(this.§#"?§,§@!D§.movieClip.numChildren - 1);
         (§@!D§.getItemByName("MovieClip_EagleMeterEmpty") as §=!Z§).setVisibility(true);
         (§@!D§.getItemByName("MovieClip_EagleMeterFill") as §=!Z§).setVisibility(false);
         §4$4§.playSound("LevelCompletedTheme1");
         this.§#"?§.§5d§(0.7);
         var _loc2_:int = §+!p§.§-#W§.getEagleScore();
         this.§@#=§ = AngryBirdsBase.singleton.dataModel.userProgress.getEagleScoreForLevel(mLevelManager.currentLevel);
         var _loc3_:* = _loc2_ > this.§@#=§;
         if(_loc3_)
         {
            this.saveNewHighScore(_loc2_);
         }
         (§@!D§.getItemByName("TextField_EaglePercentage") as §-$5§).§>$D§.text = _loc2_ + "%";
         §4$4§.playSound("gamescorescreen_score_count_loop",§<>§,100);
         this.§+"b§ = §5"<§.§3"1§.§3#§(this,{"mEagleScoreCounter":_loc2_},{"mEagleScoreCounter":0},_loc2_ / 100 * 4);
         this.§+"b§.onComplete = this.onCountComplete;
         this.§+"b§.play();
      }
      
      protected function saveNewHighScore(param1:Number) : void
      {
         AngryBirdsBase.singleton.dataModel.userProgress.§5"P§(mLevelManager.currentLevel,param1);
      }
      
      protected function onCountComplete() : void
      {
         var _loc1_:GlowFilter = null;
         §4$4§.§'!?§(§<>§);
         if(this.mEagleScoreCounter == 100)
         {
            §4$4§.playSound("highscore",§<>§);
            _loc1_ = new GlowFilter(16777215,1,22,22,2.5,10);
            (§@!D§.getItemByName("MovieClip_EagleMeterEffect") as §=!Z§).setVisibility(true);
            (§@!D§.getItemByName("MovieClip_EagleMeterFill") as §=!Z§).mClip.filters = [_loc1_];
         }
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         (§@!D§.getItemByName("TextField_EaglePercentage") as §-$5§).§>$D§.text = int(this.mEagleScoreCounter) + "%";
         (§@!D§.getItemByName("TextField_EaglePercentageEffects") as §-$5§).§>$D§.text = int(this.mEagleScoreCounter) + "%";
         if(!§@!D§.getItemByName("MovieClip_EagleMeterFill").visible)
         {
            §@!D§.getItemByName("MovieClip_EagleMeterFill").setVisibility(true);
         }
         var _loc2_:Rectangle = new Rectangle(0,0,this.§?t§ * (this.mEagleScoreCounter / 100),(§@!D§.getItemByName("MovieClip_EagleMeterFill") as §=!Z§).height);
         (§@!D§.getItemByName("MovieClip_EagleMeterFill") as §=!Z§).mClip.scrollRect = _loc2_;
         (§@!D§.getItemByName("MovieClip_EagleMeterEffect") as §=!Z§).mClip.rotation = (§@!D§.getItemByName("MovieClip_EagleMeterEffect") as §=!Z§).mClip.rotation + param1 / 20;
         if(nextState.length > 0)
         {
            §+!p§.§`?§.clearLevel();
         }
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         if(this.§#"?§)
         {
            if(§@!D§.movieClip.contains(this.§#"?§))
            {
               §@!D§.movieClip.removeChild(this.§#"?§);
            }
            this.§#"?§.§ !1§();
            this.§#"?§ = null;
         }
         §4$4§.§'!?§(§<>§);
         this.mEagleScoreCounter = 0;
         if(this.§+"b§)
         {
            this.§+"b§.stop();
            this.§+"b§ = null;
         }
         (§@!D§.getItemByName("MovieClip_EagleMeterFill") as §=!Z§).mClip.filters = [];
         (§@!D§.getItemByName("MovieClip_EagleMeterEffect") as §=!Z§).setVisibility(false);
         (§@!D§.getItemByName("Button_Menu") as §;!b§).setComponentVisualState(§;"k§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§@!D§.getItemByName("Button_Replay") as §;!b§).setComponentVisualState(§;"k§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§@!D§.getItemByName("Button_NextLevel") as §;!b§).setComponentVisualState(§;"k§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§8!g§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
               prepareToLoadNextClassicLevel();
               §%!?§(StateCutScene.STATE_NAME);
               break;
            case "REPLAY":
               §4$4§.playSound("Menu_Confirm",§4$4§.§1#l§);
               §%!?§(§2t§.STATE_NAME);
               break;
            case "MENU":
               §4$4§.§?#l§();
               §4$4§.playSound("Menu_Confirm",§4$4§.§1#l§);
               §%!?§(this.getMenuButtonTargetState());
               break;
            case "FULLSCREEN_BUTTON":
               §4$4§.playSound("Menu_Confirm",§4$4§.§1#l§);
               AngryBirdsBase.singleton.§=!Y§();
         }
      }
      
      public function getMenuButtonTargetState() : String
      {
         return §;O§.STATE_NAME;
      }
   }
}
