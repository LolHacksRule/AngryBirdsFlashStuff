package §?7§
{
   import §"V§.§true§;
   import §-l§.§?'§;
   import §1!8§.§;!>§;
   import §5Y§.§"!4§;
   import §5Y§.§1!$§;
   import §8B§.§+;§;
   import §8B§.§6!9§;
   import §<!@§.§!P§;
   import §?!%§.§ l§;
   import §?!%§.§?!7§;
   import §?u§.§9&§;
   import §[V§.§02§;
   import §[V§.§1;§;
   import §[V§.§`@§;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class §[!B§ extends §true§
   {
      
      public static const §4!&§:String = "LevelEndEagleState";
      
      private static const §-<§:String = "ScoreLoopCountChannel";
       
      
      private var §!§:§ l§;
      
      private var §@"§:§9&§;
      
      public var mEagleScoreCounter:Number;
      
      private var §7!<§:Number;
      
      private var §"b§:int;
      
      public function §[!B§(param1:Boolean = false, param2:String = "LevelEndEagleState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §6!$§ = new §"!4§(this);
         §6!$§.init(§1!$§.§7e§.Views.View_LevelEndEagle[0]);
         this.§7!<§ = (§6!$§.getItemByName("MovieClip_EagleMeterFill") as §02§).width;
         §;!>§.§]t§(§-<§,1,1);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§@"§ = new §9&§(0,0,0,0);
         §6!$§.movieClip.addChildAt(this.§@"§,§6!$§.movieClip.numChildren - 1);
         (§6!$§.getItemByName("MovieClip_EagleMeterEmpty") as §02§).setVisibility(true);
         (§6!$§.getItemByName("MovieClip_EagleMeterFill") as §02§).setVisibility(true);
         §;!>§.§>t§("LevelCompletedTheme1");
         this.§@"§.§%4§(0.7);
         var _loc1_:int = §?'§.controller.getEagleScore();
         this.§"b§ = AngryBirdsFP11.sUserProgress.§8!4§(§!P§.§4R§);
         var _loc2_:* = _loc1_ > this.§"b§;
         if(_loc2_)
         {
            this.§%!>§(_loc1_);
         }
         (§6!$§.getItemByName("TextField_EaglePercentage") as §`@§).§66§.text = _loc1_ + "%";
         §;!>§.§>t§("Hiscore_Count",§-<§,100);
         this.§!§ = §?!7§.§^7§.§^!0§(this,{"mEagleScoreCounter":_loc1_},{"mEagleScoreCounter":0},_loc1_ / 100 * 4);
         this.§!§.onComplete = this.§&J§;
         this.§!§.play();
      }
      
      protected function §%!>§(param1:Number) : void
      {
         AngryBirdsFP11.sUserProgress.§-H§(§!P§.§4R§,param1);
      }
      
      protected function §&J§() : void
      {
         var _loc1_:GlowFilter = null;
         §;!>§.§8!"§(§-<§);
         if(this.mEagleScoreCounter == 100)
         {
            §;!>§.§>t§("Hiscore_Badge",§-<§);
            _loc1_ = new GlowFilter(16777215,1,22,22,2.5,10);
            (§6!$§.getItemByName("MovieClip_EagleMeterEffect") as §02§).setVisibility(true);
            (§6!$§.getItemByName("MovieClip_EagleMeterFill") as §02§).mClip.filters = [_loc1_];
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §true§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(int(this.mEagleScoreCounter) > this.§"b§)
         {
            (§6!$§.getItemByName("TextField_EaglePercentage") as §`@§).§66§.text = int(this.mEagleScoreCounter) + "%";
            (§6!$§.getItemByName("TextField_EaglePercentageEffects") as §`@§).§66§.text = int(this.mEagleScoreCounter) + "%";
         }
         else
         {
            (§6!$§.getItemByName("TextField_EaglePercentage") as §`@§).§66§.text = int(this.§"b§) + "%";
            (§6!$§.getItemByName("TextField_EaglePercentageEffects") as §`@§).§66§.text = int(this.§"b§) + "%";
         }
         var _loc3_:Rectangle = new Rectangle(0,0,this.§7!<§ * (this.mEagleScoreCounter / 100),(§6!$§.getItemByName("MovieClip_EagleMeterFill") as §02§).height);
         (§6!$§.getItemByName("MovieClip_EagleMeterFill") as §02§).mClip.scrollRect = _loc3_;
         (§6!$§.getItemByName("MovieClip_EagleMeterEffect") as §02§).mClip.rotation = (§6!$§.getItemByName("MovieClip_EagleMeterEffect") as §02§).mClip.rotation + param1 / 20;
         if(mNextState.length > 0)
         {
            §?'§.§5!§.clearLevel();
            return §true§.STATE_STATUS_COMPLETED;
         }
         return §true§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         if(this.§@"§)
         {
            if(§6!$§.movieClip.contains(this.§@"§))
            {
               §6!$§.movieClip.removeChild(this.§@"§);
            }
            this.§@"§.clean();
            this.§@"§ = null;
         }
         §;!>§.§8!"§(§-<§);
         this.mEagleScoreCounter = 0;
         if(this.§!§)
         {
            this.§!§.stop();
            this.§!§ = null;
         }
         (§6!$§.getItemByName("MovieClip_EagleMeterFill") as §02§).mClip.filters = [];
         (§6!$§.getItemByName("MovieClip_EagleMeterEffect") as §02§).setVisibility(false);
         (§6!$§.getItemByName("Button_Menu") as §1;§).setComponentVisualState(§+;§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§6!$§.getItemByName("Button_Replay") as §1;§).setComponentVisualState(§+;§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§6!$§.getItemByName("Button_NextLevel") as §1;§).setComponentVisualState(§+;§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§6!9§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
               §'!6§.§'X§();
               mNextState = StateCutScene.§4!&§;
               break;
            case "REPLAY":
               §'!6§.§ !F§();
               mNextState = §'!6§.§4!&§;
               break;
            case "MENU":
               §;!>§.§&;§();
               mNextState = §<!D§.§4!&§;
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§ for§.§>§();
         }
      }
   }
}
