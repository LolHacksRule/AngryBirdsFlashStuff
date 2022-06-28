package §`!%§
{
   import §"!&§.§ !5§;
   import §"!&§.§%!>§;
   import §"!5§.§,!!§;
   import §'X§.§9[§;
   import §,K§.§-!$§;
   import §1;§.§!!1§;
   import §1;§.§0!&§;
   import §=^§.§ p§;
   import §=^§.§[!B§;
   import §=^§.§]P§;
   import §>!C§.§6M§;
   import §?!?§.§3!E§;
   import §@s§.§'!0§;
   import §@s§.§9$§;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class §4d§ extends §9[§
   {
      
      public static const §0!7§:String = "LevelEndEagleState";
      
      private static const §[J§:String = "ScoreLoopCountChannel";
       
      
      private var §>q§:§ !5§;
      
      private var §>!;§:§-!$§;
      
      public var mEagleScoreCounter:Number;
      
      protected var §1k§:Number;
      
      protected var §+W§:int;
      
      public function §4d§(param1:Boolean = false, param2:String = "LevelEndEagleState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §#!4§ = new §!!1§(this);
         §#!4§.init(§0!&§.§'^§.Views.View_LevelEndEagle[0]);
         this.§1k§ = (§#!4§.getItemByName("MovieClip_EagleMeterFill") as §[!B§).width;
         §3!E§.§5!%§(§[J§,1,1);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§>!;§ = new §-!$§(0,0,0,0);
         §#!4§.movieClip.addChildAt(this.§>!;§,§#!4§.movieClip.numChildren - 1);
         §#!4§.getItemByName("MovieClip_EagleMeterEmpty").setVisibility(true);
         §#!4§.getItemByName("MovieClip_EagleMeterFill").setVisibility(true);
         §3!E§.§<!,§("LevelCompletedTheme1");
         this.§>!;§.§0C§(0.7);
         var _loc1_:int = §,!!§.controller.getEagleScore();
         this.§+W§ = AngryBirdsFP11.sUserProgress.§^z§(§6M§.§[z§);
         var _loc2_:* = _loc1_ > this.§+W§;
         if(_loc2_)
         {
            this.§&d§(_loc1_);
         }
         (§#!4§.getItemByName("TextField_EaglePercentage") as § p§).§!"§.text = _loc1_ + "%";
         §3!E§.§<!,§("Hiscore_Count",§[J§,100);
         this.§>q§ = §%!>§.§-]§.§?U§(this,{"mEagleScoreCounter":_loc1_},{"mEagleScoreCounter":0},_loc1_ / 100 * 4);
         this.§>q§.onComplete = this.§=!9§;
         this.§>q§.play();
      }
      
      protected function §&d§(param1:Number) : void
      {
         AngryBirdsFP11.sUserProgress.§4!4§(§6M§.§[z§,param1);
      }
      
      protected function §=!9§() : void
      {
         var _loc1_:GlowFilter = null;
         §3!E§.§9o§(§[J§);
         if(this.mEagleScoreCounter == 100)
         {
            §3!E§.§<!,§("Hiscore_Badge",§[J§);
            _loc1_ = new GlowFilter(16777215,1,22,22,2.5,10);
            (§#!4§.getItemByName("MovieClip_EagleMeterEffect") as §[!B§).setVisibility(true);
            (§#!4§.getItemByName("MovieClip_EagleMeterFill") as §[!B§).mClip.filters = [_loc1_];
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §9[§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(int(this.mEagleScoreCounter) > this.§+W§)
         {
            (§#!4§.getItemByName("TextField_EaglePercentage") as § p§).§!"§.text = int(this.mEagleScoreCounter) + "%";
            (§#!4§.getItemByName("TextField_EaglePercentageEffects") as § p§).§!"§.text = int(this.mEagleScoreCounter) + "%";
         }
         else
         {
            (§#!4§.getItemByName("TextField_EaglePercentage") as § p§).§!"§.text = int(this.§+W§) + "%";
            (§#!4§.getItemByName("TextField_EaglePercentageEffects") as § p§).§!"§.text = int(this.§+W§) + "%";
         }
         var _loc3_:Rectangle = new Rectangle(0,0,this.§1k§ * (this.mEagleScoreCounter / 100),(§#!4§.getItemByName("MovieClip_EagleMeterFill") as §[!B§).height);
         (§#!4§.getItemByName("MovieClip_EagleMeterFill") as §[!B§).mClip.scrollRect = _loc3_;
         (§#!4§.getItemByName("MovieClip_EagleMeterEffect") as §[!B§).mClip.rotation = (§#!4§.getItemByName("MovieClip_EagleMeterEffect") as §[!B§).mClip.rotation + param1 / 20;
         if(mNextState.length > 0)
         {
            §,!!§.§;4§.clearLevel();
            return §9[§.STATE_STATUS_COMPLETED;
         }
         return §9[§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         if(this.§>!;§)
         {
            if(§#!4§.movieClip.contains(this.§>!;§))
            {
               §#!4§.movieClip.removeChild(this.§>!;§);
            }
            this.§>!;§.clean();
            this.§>!;§ = null;
         }
         §3!E§.§9o§(§[J§);
         this.mEagleScoreCounter = 0;
         if(this.§>q§)
         {
            this.§>q§.stop();
            this.§>q§ = null;
         }
         (§#!4§.getItemByName("MovieClip_EagleMeterFill") as §[!B§).mClip.filters = [];
         (§#!4§.getItemByName("MovieClip_EagleMeterEffect") as §[!B§).setVisibility(false);
         (§#!4§.getItemByName("Button_Menu") as §]P§).setComponentVisualState(§9$§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§#!4§.getItemByName("Button_Replay") as §]P§).setComponentVisualState(§9$§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§#!4§.getItemByName("Button_NextLevel") as §]P§).setComponentVisualState(§9$§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§'!0§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
               § @§.§-!-§();
               mNextState = StateCutScene.§0!7§;
               break;
            case "REPLAY":
               § @§.§'d§();
               mNextState = § @§.§0!7§;
               break;
            case "MENU":
               §3!E§.§#'§();
               mNextState = §!,§.§0!7§;
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§@t§.§"&§();
         }
      }
   }
}
