package §]§
{
   import § "L§.§"!A§;
   import § "L§.§1"r§;
   import § "L§.§7`§;
   import §";§.§%"X§;
   import §";§.§false§;
   import §+`§.§%"q§;
   import §-#;§.§5#J§;
   import §3"V§.§ b§;
   import §7#$§.§]#q§;
   import §;"5§.§6"W§;
   import §;"5§.§@$-§;
   import §?#z§.§]$?§;
   import §^"3§.§ #&§;
   import §^"3§.§`$4§;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class §!#l§ extends §1$?§
   {
      
      public static const STATE_NAME:String = "LevelEndEagleState";
      
      private static const §7$&§:String = "ScoreLoopCountChannel";
       
      
      private var §1!U§:§@$-§;
      
      private var §##h§:§5#J§;
      
      public var mEagleScoreCounter:Number;
      
      private var §+h§:Number;
      
      private var §'#D§:int;
      
      public function §!#l§(param1:§]#q§, param2:§%"q§, param3:Boolean = false, param4:String = "LevelEndEagleState")
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         §;!w§ = new §%"X§(this);
         §;!w§.init(§false§.§4#;§.Views.View_LevelEndEagle[0]);
         this.§+h§ = (§;!w§.getItemByName("MovieClip_EagleMeterFill") as §"!A§).width;
         § b§.§%#C§(§7$&§,1,1);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.§##h§ = new §5#J§(0,0,0,0);
         §;!w§.movieClip.addChildAt(this.§##h§,§;!w§.movieClip.numChildren - 1);
         (§;!w§.getItemByName("MovieClip_EagleMeterEmpty") as §"!A§).setVisibility(true);
         (§;!w§.getItemByName("MovieClip_EagleMeterFill") as §"!A§).setVisibility(false);
         § b§.playSound("LevelCompletedTheme1");
         this.§##h§.§?!4§(0.7);
         var _loc2_:int = §]$?§.§;r§.getEagleScore();
         this.§'#D§ = AngryBirdsBase.singleton.dataModel.userProgress.getEagleScoreForLevel(mLevelManager.currentLevel);
         var _loc3_:* = _loc2_ > this.§'#D§;
         if(_loc3_)
         {
            this.saveNewHighScore(_loc2_);
         }
         (§;!w§.getItemByName("TextField_EaglePercentage") as §7`§).§%!8§.text = _loc2_ + "%";
         § b§.playSound("gamescorescreen_score_count_loop",§7$&§,100);
         this.§1!U§ = §6"W§.§+!,§.§9!n§(this,{"mEagleScoreCounter":_loc2_},{"mEagleScoreCounter":0},_loc2_ / 100 * 4);
         this.§1!U§.onComplete = this.onCountComplete;
         this.§1!U§.play();
      }
      
      protected function saveNewHighScore(param1:Number) : void
      {
         AngryBirdsBase.singleton.dataModel.userProgress.§ d§(mLevelManager.currentLevel,param1);
      }
      
      protected function onCountComplete() : void
      {
         var _loc1_:GlowFilter = null;
         § b§.§8!7§(§7$&§);
         if(this.mEagleScoreCounter == 100)
         {
            § b§.playSound("highscore",§7$&§);
            _loc1_ = new GlowFilter(16777215,1,22,22,2.5,10);
            (§;!w§.getItemByName("MovieClip_EagleMeterEffect") as §"!A§).setVisibility(true);
            (§;!w§.getItemByName("MovieClip_EagleMeterFill") as §"!A§).mClip.filters = [_loc1_];
         }
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         (§;!w§.getItemByName("TextField_EaglePercentage") as §7`§).§%!8§.text = int(this.mEagleScoreCounter) + "%";
         (§;!w§.getItemByName("TextField_EaglePercentageEffects") as §7`§).§%!8§.text = int(this.mEagleScoreCounter) + "%";
         if(!§;!w§.getItemByName("MovieClip_EagleMeterFill").visible)
         {
            §;!w§.getItemByName("MovieClip_EagleMeterFill").setVisibility(true);
         }
         var _loc2_:Rectangle = new Rectangle(0,0,this.§+h§ * (this.mEagleScoreCounter / 100),(§;!w§.getItemByName("MovieClip_EagleMeterFill") as §"!A§).height);
         (§;!w§.getItemByName("MovieClip_EagleMeterFill") as §"!A§).mClip.scrollRect = _loc2_;
         (§;!w§.getItemByName("MovieClip_EagleMeterEffect") as §"!A§).mClip.rotation = (§;!w§.getItemByName("MovieClip_EagleMeterEffect") as §"!A§).mClip.rotation + param1 / 20;
         if(nextState.length > 0)
         {
            §]$?§.§2#§.clearLevel();
         }
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         if(this.§##h§)
         {
            if(§;!w§.movieClip.contains(this.§##h§))
            {
               §;!w§.movieClip.removeChild(this.§##h§);
            }
            this.§##h§.§<![§();
            this.§##h§ = null;
         }
         § b§.§8!7§(§7$&§);
         this.mEagleScoreCounter = 0;
         if(this.§1!U§)
         {
            this.§1!U§.stop();
            this.§1!U§ = null;
         }
         (§;!w§.getItemByName("MovieClip_EagleMeterFill") as §"!A§).mClip.filters = [];
         (§;!w§.getItemByName("MovieClip_EagleMeterEffect") as §"!A§).setVisibility(false);
         (§;!w§.getItemByName("Button_Menu") as §1"r§).setComponentVisualState(§ #&§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§;!w§.getItemByName("Button_Replay") as §1"r§).setComponentVisualState(§ #&§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§;!w§.getItemByName("Button_NextLevel") as §1"r§).setComponentVisualState(§ #&§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§`$4§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
               prepareToLoadNextClassicLevel();
               §3#§(StateCutScene.STATE_NAME);
               break;
            case "REPLAY":
               § b§.playSound("Menu_Confirm",§ b§.§;$5§);
               §3#§(§8$C§.STATE_NAME);
               break;
            case "MENU":
               § b§.§#! §();
               § b§.playSound("Menu_Confirm",§ b§.§;$5§);
               §3#§(this.getMenuButtonTargetState());
               break;
            case "FULLSCREEN_BUTTON":
               § b§.playSound("Menu_Confirm",§ b§.§;$5§);
               AngryBirdsBase.singleton.§`<§();
         }
      }
      
      public function getMenuButtonTargetState() : String
      {
         return §#!$§.STATE_NAME;
      }
   }
}
