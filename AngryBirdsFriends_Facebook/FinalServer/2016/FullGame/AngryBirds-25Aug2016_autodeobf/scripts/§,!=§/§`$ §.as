package §,!=§
{
   import §#v§.§#!?§;
   import §&#S§.§""Z§;
   import §&#S§.§+,§;
   import §'!U§.§0!?§;
   import §'!U§.§4P§;
   import §'U§.§]#[§;
   import §6"r§.§="T§;
   import §6"r§.§=O§;
   import §6"r§.§]$!§;
   import §8§.§#$+§;
   import §<!=§.§;§;
   import §<!O§.§'k§;
   import §<!O§.§@#`§;
   import §?§.§>"$§;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class §`$ § extends §7"S§
   {
      
      public static const STATE_NAME:String = "LevelEndEagleState";
      
      private static const §<$"§:String = "ScoreLoopCountChannel";
       
      
      private var §2"M§:§+,§;
      
      private var §"?§:§;#1§;
      
      public var mEagleScoreCounter:Number;
      
      private var §8!u§:Number;
      
      private var §!"+§:int;
      
      public function §`$ §(param1:§#!?§, param2:§]#[§, param3:Boolean = false, param4:String = "LevelEndEagleState")
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         §!$§ = new §'k§(this);
         §!$§.init(§@#`§.§#!c§.Views.View_LevelEndEagle[0]);
         this.§8!u§ = (§!$§.getItemByName("MovieClip_EagleMeterFill") as §="T§).width;
         §#$+§.§9"]§(§<$"§,1,1);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.§"?§ = new §;#1§(0,0,0,0);
         §!$§.movieClip.addChildAt(this.§"?§,§!$§.movieClip.numChildren - 1);
         (§!$§.getItemByName("MovieClip_EagleMeterEmpty") as §="T§).setVisibility(true);
         (§!$§.getItemByName("MovieClip_EagleMeterFill") as §="T§).setVisibility(false);
         §#$+§.playSound("LevelCompletedTheme1");
         this.§"?§.§@!z§(0.7);
         var _loc2_:int = §>"$§.§#0§.getEagleScore();
         this.§!"+§ = AngryBirdsBase.singleton.dataModel.userProgress.getEagleScoreForLevel(mLevelManager.currentLevel);
         var _loc3_:* = _loc2_ > this.§!"+§;
         if(_loc3_)
         {
            this.saveNewHighScore(_loc2_);
         }
         (§!$§.getItemByName("TextField_EaglePercentage") as §]$!§).§@]§.text = _loc2_ + "%";
         §#$+§.playSound("Hiscore_Count",§<$"§,100);
         this.§2"M§ = §""Z§.§3!]§.§5"0§(this,{"mEagleScoreCounter":_loc2_},{"mEagleScoreCounter":0},_loc2_ / 100 * 4);
         this.§2"M§.onComplete = this.onCountComplete;
         this.§2"M§.play();
      }
      
      protected function saveNewHighScore(param1:Number) : void
      {
         AngryBirdsBase.singleton.dataModel.userProgress.§1$,§(mLevelManager.currentLevel,param1);
      }
      
      protected function onCountComplete() : void
      {
         var _loc1_:GlowFilter = null;
         §#$+§.§%!!§(§<$"§);
         if(this.mEagleScoreCounter == 100)
         {
            §#$+§.playSound("Hiscore_Badge",§<$"§);
            _loc1_ = new GlowFilter(16777215,1,22,22,2.5,10);
            (§!$§.getItemByName("MovieClip_EagleMeterEffect") as §="T§).setVisibility(true);
            (§!$§.getItemByName("MovieClip_EagleMeterFill") as §="T§).mClip.filters = [_loc1_];
         }
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         (§!$§.getItemByName("TextField_EaglePercentage") as §]$!§).§@]§.text = int(this.mEagleScoreCounter) + "%";
         (§!$§.getItemByName("TextField_EaglePercentageEffects") as §]$!§).§@]§.text = int(this.mEagleScoreCounter) + "%";
         if(!§!$§.getItemByName("MovieClip_EagleMeterFill").visible)
         {
            §!$§.getItemByName("MovieClip_EagleMeterFill").setVisibility(true);
         }
         var _loc2_:Rectangle = new Rectangle(0,0,this.§8!u§ * (this.mEagleScoreCounter / 100),(§!$§.getItemByName("MovieClip_EagleMeterFill") as §="T§).height);
         (§!$§.getItemByName("MovieClip_EagleMeterFill") as §="T§).mClip.scrollRect = _loc2_;
         (§!$§.getItemByName("MovieClip_EagleMeterEffect") as §="T§).mClip.rotation = (§!$§.getItemByName("MovieClip_EagleMeterEffect") as §="T§).mClip.rotation + param1 / 20;
         if(nextState.length > 0)
         {
            §>"$§.§3#'§.clearLevel();
         }
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         if(this.§"?§)
         {
            if(§!$§.movieClip.contains(this.§"?§))
            {
               §!$§.movieClip.removeChild(this.§"?§);
            }
            this.§"?§.§4#1§();
            this.§"?§ = null;
         }
         §#$+§.§%!!§(§<$"§);
         this.mEagleScoreCounter = 0;
         if(this.§2"M§)
         {
            this.§2"M§.stop();
            this.§2"M§ = null;
         }
         (§!$§.getItemByName("MovieClip_EagleMeterFill") as §="T§).mClip.filters = [];
         (§!$§.getItemByName("MovieClip_EagleMeterEffect") as §="T§).setVisibility(false);
         (§!$§.getItemByName("Button_Menu") as §=O§).setComponentVisualState(§4P§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§!$§.getItemByName("Button_Replay") as §=O§).setComponentVisualState(§4P§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§!$§.getItemByName("Button_NextLevel") as §=O§).setComponentVisualState(§4P§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§0!?§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
               prepareToLoadNextClassicLevel();
               §7P§(StateCutScene.STATE_NAME);
               break;
            case "REPLAY":
               §#$+§.playSound("Menu_Confirm",§#$+§.§'!o§);
               §7P§(§@#j§.STATE_NAME);
               break;
            case "MENU":
               §#$+§.§#$-§();
               §#$+§.playSound("Menu_Confirm",§#$+§.§'!o§);
               §7P§(this.getMenuButtonTargetState());
               break;
            case "FULLSCREEN_BUTTON":
               §#$+§.playSound("Menu_Confirm",§#$+§.§'!o§);
               AngryBirdsBase.singleton.§&f§();
         }
      }
      
      public function getMenuButtonTargetState() : String
      {
         return §<!B§.STATE_NAME;
      }
   }
}
