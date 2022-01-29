package §"!@§
{
   import § %§.§0"8§;
   import § %§.§1Q§;
   import §!#"§.§&"H§;
   import §!#"§.§4[§;
   import §'",§.§6#s§;
   import §3#T§.§'§;
   import §3#T§.§,#[§;
   import §5P§.§""C§;
   import §;#D§.§3#U§;
   import §;$3§.§8=§;
   import §<h§.§%M§;
   import §<h§.§>"0§;
   import §<h§.§@N§;
   import §@!M§.§!"p§;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class §@,§ extends §@"S§
   {
      
      public static const STATE_NAME:String = "LevelEndEagleState";
      
      private static const §!!?§:String = "ScoreLoopCountChannel";
       
      
      private var §<"q§:§4[§;
      
      private var §"!7§:§6#s§;
      
      public var mEagleScoreCounter:Number;
      
      private var §4!8§:Number;
      
      private var §]_§:int;
      
      public function §@,§(param1:§8=§, param2:§""C§, param3:Boolean = false, param4:String = "LevelEndEagleState")
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         §`!H§ = new §0"8§(this);
         §`!H§.init(§1Q§.§5T§.Views.View_LevelEndEagle[0]);
         this.§4!8§ = (§`!H§.getItemByName("MovieClip_EagleMeterFill") as §@N§).width;
         §!"p§.§5#4§(§!!?§,1,1);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.§"!7§ = new §6#s§(0,0,0,0);
         §`!H§.movieClip.addChildAt(this.§"!7§,§`!H§.movieClip.numChildren - 1);
         (§`!H§.getItemByName("MovieClip_EagleMeterEmpty") as §@N§).setVisibility(true);
         (§`!H§.getItemByName("MovieClip_EagleMeterFill") as §@N§).setVisibility(false);
         §!"p§.playSound("LevelCompletedTheme1");
         this.§"!7§.§>$6§(0.7);
         var _loc2_:int = §3#U§.§8I§.getEagleScore();
         this.§]_§ = AngryBirdsBase.singleton.dataModel.userProgress.getEagleScoreForLevel(mLevelManager.currentLevel);
         var _loc3_:* = _loc2_ > this.§]_§;
         if(_loc3_)
         {
            this.saveNewHighScore(_loc2_);
         }
         (§`!H§.getItemByName("TextField_EaglePercentage") as §%M§).§4!"§.text = _loc2_ + "%";
         §!"p§.playSound("gamescorescreen_score_count_loop",§!!?§,100);
         this.§<"q§ = §&"H§.§6!§.§6C§(this,{"mEagleScoreCounter":_loc2_},{"mEagleScoreCounter":0},_loc2_ / 100 * 4);
         this.§<"q§.onComplete = this.onCountComplete;
         this.§<"q§.play();
      }
      
      protected function saveNewHighScore(param1:Number) : void
      {
         AngryBirdsBase.singleton.dataModel.userProgress.§5#+§(mLevelManager.currentLevel,param1);
      }
      
      protected function onCountComplete() : void
      {
         var _loc1_:GlowFilter = null;
         §!"p§.§5#u§(§!!?§);
         if(this.mEagleScoreCounter == 100)
         {
            §!"p§.playSound("highscore",§!!?§);
            _loc1_ = new GlowFilter(16777215,1,22,22,2.5,10);
            (§`!H§.getItemByName("MovieClip_EagleMeterEffect") as §@N§).setVisibility(true);
            (§`!H§.getItemByName("MovieClip_EagleMeterFill") as §@N§).mClip.filters = [_loc1_];
         }
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         (§`!H§.getItemByName("TextField_EaglePercentage") as §%M§).§4!"§.text = int(this.mEagleScoreCounter) + "%";
         (§`!H§.getItemByName("TextField_EaglePercentageEffects") as §%M§).§4!"§.text = int(this.mEagleScoreCounter) + "%";
         if(!§`!H§.getItemByName("MovieClip_EagleMeterFill").visible)
         {
            §`!H§.getItemByName("MovieClip_EagleMeterFill").setVisibility(true);
         }
         var _loc2_:Rectangle = new Rectangle(0,0,this.§4!8§ * (this.mEagleScoreCounter / 100),(§`!H§.getItemByName("MovieClip_EagleMeterFill") as §@N§).height);
         (§`!H§.getItemByName("MovieClip_EagleMeterFill") as §@N§).mClip.scrollRect = _loc2_;
         (§`!H§.getItemByName("MovieClip_EagleMeterEffect") as §@N§).mClip.rotation = (§`!H§.getItemByName("MovieClip_EagleMeterEffect") as §@N§).mClip.rotation + param1 / 20;
         if(nextState.length > 0)
         {
            §3#U§.§#$4§.clearLevel();
         }
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         if(this.§"!7§)
         {
            if(§`!H§.movieClip.contains(this.§"!7§))
            {
               §`!H§.movieClip.removeChild(this.§"!7§);
            }
            this.§"!7§.§,"I§();
            this.§"!7§ = null;
         }
         §!"p§.§5#u§(§!!?§);
         this.mEagleScoreCounter = 0;
         if(this.§<"q§)
         {
            this.§<"q§.stop();
            this.§<"q§ = null;
         }
         (§`!H§.getItemByName("MovieClip_EagleMeterFill") as §@N§).mClip.filters = [];
         (§`!H§.getItemByName("MovieClip_EagleMeterEffect") as §@N§).setVisibility(false);
         (§`!H§.getItemByName("Button_Menu") as §>"0§).setComponentVisualState(§,#[§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§`!H§.getItemByName("Button_Replay") as §>"0§).setComponentVisualState(§,#[§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§`!H§.getItemByName("Button_NextLevel") as §>"0§).setComponentVisualState(§,#[§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§'#0§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
               prepareToLoadNextClassicLevel();
               §1"h§(StateCutScene.STATE_NAME);
               break;
            case "REPLAY":
               §!"p§.playSound("Menu_Confirm",§!"p§.§+!;§);
               §1"h§(§8"o§.STATE_NAME);
               break;
            case "MENU":
               §!"p§.§>#p§();
               §!"p§.playSound("Menu_Confirm",§!"p§.§+!;§);
               §1"h§(this.getMenuButtonTargetState());
               break;
            case "FULLSCREEN_BUTTON":
               §!"p§.playSound("Menu_Confirm",§!"p§.§+!;§);
               AngryBirdsBase.singleton.§5#p§();
         }
      }
      
      public function getMenuButtonTargetState() : String
      {
         return §1S§.STATE_NAME;
      }
   }
}
