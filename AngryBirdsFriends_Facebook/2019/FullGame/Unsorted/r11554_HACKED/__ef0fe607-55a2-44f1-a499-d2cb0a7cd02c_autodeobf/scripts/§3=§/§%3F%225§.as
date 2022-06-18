package §3=§
{
   import §"$=§.§'![§;
   import §%#v§.§0"j§;
   import §%#v§.§?!F§;
   import §3"G§.§16§;
   import §4!n§.§'!,§;
   import §4!n§.§'!V§;
   import §5!$§.§"S§;
   import §5!$§.§-#j§;
   import §5!$§.§>§;
   import §6§.§'#n§;
   import §6§.§]%§;
   import §=!2§.§%"T§;
   import §>"9§.§[#%§;
   import §>#O§.§]U§;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class §?"5§ extends §-"4§
   {
      
      public static const STATE_NAME:String = "LevelEndEagleState";
      
      private static const §-w§:String = "ScoreLoopCountChannel";
       
      
      private var §,Z§:§]%§;
      
      private var §>5§:§]U§;
      
      public var mEagleScoreCounter:Number;
      
      private var §`$0§:Number;
      
      private var §"#K§:int;
      
      public function §?"5§(param1:§'![§, param2:§16§, param3:Boolean = false, param4:String = "LevelEndEagleState")
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         §<"`§ = new §?!F§(this);
         §<"`§.init(§0"j§.§-i§.Views.View_LevelEndEagle[0]);
         this.§`$0§ = (§<"`§.getItemByName("MovieClip_EagleMeterFill") as §>#8§).width;
         §[#%§.§8!3§(§-w§,1,1);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.§>5§ = new §]U§(0,0,0,0);
         §<"`§.movieClip.addChildAt(this.§>5§,§<"`§.movieClip.numChildren - 1);
         (§<"`§.getItemByName("MovieClip_EagleMeterEmpty") as §>#8§).setVisibility(true);
         (§<"`§.getItemByName("MovieClip_EagleMeterFill") as §>#8§).setVisibility(false);
         §[#%§.playSound("LevelCompletedTheme1");
         this.§>5§.§3#q§(0.7);
         var _loc2_:int = §%"T§.§+"M§.getEagleScore();
         this.§"#K§ = AngryBirdsBase.singleton.dataModel.userProgress.getEagleScoreForLevel(mLevelManager.currentLevel);
         var _loc3_:* = _loc2_ > this.§"#K§;
         if(_loc3_)
         {
            this.saveNewHighScore(_loc2_);
         }
         (§<"`§.getItemByName("TextField_EaglePercentage") as §-#j§).§^g§.text = _loc2_ + "%";
         §[#%§.playSound("gamescorescreen_score_count_loop",§-w§,100);
         this.§,Z§ = §'#n§.§?q§.§9!N§(this,{"mEagleScoreCounter":_loc2_},{"mEagleScoreCounter":0},_loc2_ / 100 * 4);
         this.§,Z§.onComplete = this.onCountComplete;
         this.§,Z§.play();
      }
      
      protected function saveNewHighScore(param1:Number) : void
      {
         AngryBirdsBase.singleton.dataModel.userProgress.§5!+§(mLevelManager.currentLevel,param1);
      }
      
      protected function onCountComplete() : void
      {
         var _loc1_:GlowFilter = null;
         §[#%§.§3$A§(§-w§);
         if(this.mEagleScoreCounter == 100)
         {
            §[#%§.playSound("highscore",§-w§);
            _loc1_ = new GlowFilter(16777215,1,22,22,2.5,10);
            (§<"`§.getItemByName("MovieClip_EagleMeterEffect") as §>#8§).setVisibility(true);
            (§<"`§.getItemByName("MovieClip_EagleMeterFill") as §>#8§).mClip.filters = [_loc1_];
         }
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         (§<"`§.getItemByName("TextField_EaglePercentage") as §-#j§).§^g§.text = int(this.mEagleScoreCounter) + "%";
         (§<"`§.getItemByName("TextField_EaglePercentageEffects") as §-#j§).§^g§.text = int(this.mEagleScoreCounter) + "%";
         if(!§<"`§.getItemByName("MovieClip_EagleMeterFill").visible)
         {
            §<"`§.getItemByName("MovieClip_EagleMeterFill").setVisibility(true);
         }
         var _loc2_:Rectangle = new Rectangle(0,0,this.§`$0§ * (this.mEagleScoreCounter / 100),(§<"`§.getItemByName("MovieClip_EagleMeterFill") as §>#8§).height);
         (§<"`§.getItemByName("MovieClip_EagleMeterFill") as §>#8§).mClip.scrollRect = _loc2_;
         (§<"`§.getItemByName("MovieClip_EagleMeterEffect") as §>#8§).mClip.rotation = (§<"`§.getItemByName("MovieClip_EagleMeterEffect") as §>#8§).mClip.rotation + param1 / 20;
         if(nextState.length > 0)
         {
            §%"T§.§;`§.clearLevel();
         }
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         if(this.§>5§)
         {
            if(§<"`§.movieClip.contains(this.§>5§))
            {
               §<"`§.movieClip.removeChild(this.§>5§);
            }
            this.§>5§.§4#y§();
            this.§>5§ = null;
         }
         §[#%§.§3$A§(§-w§);
         this.mEagleScoreCounter = 0;
         if(this.§,Z§)
         {
            this.§,Z§.stop();
            this.§,Z§ = null;
         }
         (§<"`§.getItemByName("MovieClip_EagleMeterFill") as §>#8§).mClip.filters = [];
         (§<"`§.getItemByName("MovieClip_EagleMeterEffect") as §>#8§).setVisibility(false);
         (§<"`§.getItemByName("Button_Menu") as §"S§).setComponentVisualState(§'!V§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§<"`§.getItemByName("Button_Replay") as §"S§).setComponentVisualState(§'!V§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§<"`§.getItemByName("Button_NextLevel") as §"S§).setComponentVisualState(§'!V§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§'!,§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
               prepareToLoadNextClassicLevel();
               §%D§(StateCutScene.STATE_NAME);
               break;
            case "REPLAY":
               §[#%§.playSound("Menu_Confirm",§[#%§.§-"I§);
               §%D§(§#$@§.STATE_NAME);
               break;
            case "MENU":
               §[#%§.§^L§();
               §[#%§.playSound("Menu_Confirm",§[#%§.§-"I§);
               §%D§(this.getMenuButtonTargetState());
               break;
            case "FULLSCREEN_BUTTON":
               §[#%§.playSound("Menu_Confirm",§[#%§.§-"I§);
               AngryBirdsBase.singleton.§3'§();
         }
      }
      
      public function getMenuButtonTargetState() : String
      {
         return §8$8§.STATE_NAME;
      }
   }
}
