package §2";§
{
   import § !j§.§4#c§;
   import §#,§.§ !>§;
   import §#,§.§'!`§;
   import §#,§.§`"$§;
   import §%!-§.§5!z§;
   import §%!-§.§?l§;
   import §&$3§.§"!&§;
   import §&$3§.§7$C§;
   import §,!Q§.§+!2§;
   import §,!Q§.§6"n§;
   import §,"v§.§;"n§;
   import §5"t§.§<#r§;
   import §8#K§.§3Z§;
   import §`#@§.§7n§;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class §3#[§ extends §7!z§
   {
      
      public static const STATE_NAME:String = "LevelEndEagleState";
      
      private static const §5r§:String = "ScoreLoopCountChannel";
       
      
      private var §2!$§:§7$C§;
      
      private var §4!§:§<#r§;
      
      public var mEagleScoreCounter:Number;
      
      private var §8;§:Number;
      
      private var §3J§:int;
      
      public function §3#[§(param1:§;"n§, param2:§4#c§, param3:Boolean = false, param4:String = "LevelEndEagleState")
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         §[$5§ = new §5!z§(this);
         §[$5§.init(§?l§.§3m§.Views.View_LevelEndEagle[0]);
         this.§8;§ = (§[$5§.getItemByName("MovieClip_EagleMeterFill") as §'!`§).width;
         §3Z§.§'#E§(§5r§,1,1);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.§4!§ = new §<#r§(0,0,0,0);
         §[$5§.movieClip.addChildAt(this.§4!§,§[$5§.movieClip.numChildren - 1);
         (§[$5§.getItemByName("MovieClip_EagleMeterEmpty") as §'!`§).setVisibility(true);
         (§[$5§.getItemByName("MovieClip_EagleMeterFill") as §'!`§).setVisibility(false);
         §3Z§.playSound("LevelCompletedTheme1");
         this.§4!§.§>#0§(0.7);
         var _loc2_:int = §7n§.§ "'§.getEagleScore();
         this.§3J§ = AngryBirdsBase.singleton.dataModel.userProgress.getEagleScoreForLevel(mLevelManager.currentLevel);
         var _loc3_:* = _loc2_ > this.§3J§;
         if(_loc3_)
         {
            this.saveNewHighScore(_loc2_);
         }
         (§[$5§.getItemByName("TextField_EaglePercentage") as §`"$§).§2"<§.text = _loc2_ + "%";
         §3Z§.playSound("gamescorescreen_score_count_loop",§5r§,100);
         this.§2!$§ = §"!&§.§`"H§.§1"W§(this,{"mEagleScoreCounter":_loc2_},{"mEagleScoreCounter":0},_loc2_ / 100 * 4);
         this.§2!$§.onComplete = this.onCountComplete;
         this.§2!$§.play();
      }
      
      protected function saveNewHighScore(param1:Number) : void
      {
         AngryBirdsBase.singleton.dataModel.userProgress.§2#+§(mLevelManager.currentLevel,param1);
      }
      
      protected function onCountComplete() : void
      {
         var _loc1_:GlowFilter = null;
         §3Z§.§&$?§(§5r§);
         if(this.mEagleScoreCounter == 100)
         {
            §3Z§.playSound("highscore",§5r§);
            _loc1_ = new GlowFilter(16777215,1,22,22,2.5,10);
            (§[$5§.getItemByName("MovieClip_EagleMeterEffect") as §'!`§).setVisibility(true);
            (§[$5§.getItemByName("MovieClip_EagleMeterFill") as §'!`§).mClip.filters = [_loc1_];
         }
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         (§[$5§.getItemByName("TextField_EaglePercentage") as §`"$§).§2"<§.text = int(this.mEagleScoreCounter) + "%";
         (§[$5§.getItemByName("TextField_EaglePercentageEffects") as §`"$§).§2"<§.text = int(this.mEagleScoreCounter) + "%";
         if(!§[$5§.getItemByName("MovieClip_EagleMeterFill").visible)
         {
            §[$5§.getItemByName("MovieClip_EagleMeterFill").setVisibility(true);
         }
         var _loc2_:Rectangle = new Rectangle(0,0,this.§8;§ * (this.mEagleScoreCounter / 100),(§[$5§.getItemByName("MovieClip_EagleMeterFill") as §'!`§).height);
         (§[$5§.getItemByName("MovieClip_EagleMeterFill") as §'!`§).mClip.scrollRect = _loc2_;
         (§[$5§.getItemByName("MovieClip_EagleMeterEffect") as §'!`§).mClip.rotation = (§[$5§.getItemByName("MovieClip_EagleMeterEffect") as §'!`§).mClip.rotation + param1 / 20;
         if(nextState.length > 0)
         {
            §7n§.§6#K§.clearLevel();
         }
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         if(this.§4!§)
         {
            if(§[$5§.movieClip.contains(this.§4!§))
            {
               §[$5§.movieClip.removeChild(this.§4!§);
            }
            this.§4!§.§"#%§();
            this.§4!§ = null;
         }
         §3Z§.§&$?§(§5r§);
         this.mEagleScoreCounter = 0;
         if(this.§2!$§)
         {
            this.§2!$§.stop();
            this.§2!$§ = null;
         }
         (§[$5§.getItemByName("MovieClip_EagleMeterFill") as §'!`§).mClip.filters = [];
         (§[$5§.getItemByName("MovieClip_EagleMeterEffect") as §'!`§).setVisibility(false);
         (§[$5§.getItemByName("Button_Menu") as § !>§).setComponentVisualState(§+!2§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§[$5§.getItemByName("Button_Replay") as § !>§).setComponentVisualState(§+!2§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§[$5§.getItemByName("Button_NextLevel") as § !>§).setComponentVisualState(§+!2§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§6"n§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
               prepareToLoadNextClassicLevel();
               §1!L§(StateCutScene.STATE_NAME);
               break;
            case "REPLAY":
               §3Z§.playSound("Menu_Confirm",§3Z§.§[!F§);
               §1!L§(§9!R§.STATE_NAME);
               break;
            case "MENU":
               §3Z§.§3j§();
               §3Z§.playSound("Menu_Confirm",§3Z§.§[!F§);
               §1!L§(this.getMenuButtonTargetState());
               break;
            case "FULLSCREEN_BUTTON":
               §3Z§.playSound("Menu_Confirm",§3Z§.§[!F§);
               AngryBirdsBase.singleton.§1a§();
         }
      }
      
      public function getMenuButtonTargetState() : String
      {
         return §9#7§.STATE_NAME;
      }
   }
}
