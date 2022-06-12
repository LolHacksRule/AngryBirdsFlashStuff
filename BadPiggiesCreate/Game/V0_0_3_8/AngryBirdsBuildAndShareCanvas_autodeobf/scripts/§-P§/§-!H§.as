package §-P§
{
   import §!D§.§%c§;
   import §!D§.§3!6§;
   import §!D§.§<!5§;
   import §"!0§.§"!5§;
   import §"!0§.§;!5§;
   import §'!O§.§[!m§;
   import §0!!§.§%!w§;
   import §6`§.§?!7§;
   import §9!7§.§#p§;
   import §9!7§.§6"0§;
   import §>w§.§4E§;
   import §?!V§.§ T§;
   import §?!V§.§"a§;
   import §`%§.§8!0§;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class §-!H§ extends §4E§
   {
      
      public static const §#!w§:String = "LevelEndEagleState";
      
      private static const §<,§:String = "ScoreLoopCountChannel";
       
      
      private var §4!B§:§;!5§;
      
      private var §;!z§:§%!w§;
      
      public var mEagleScoreCounter:Number;
      
      protected var §1b§:Number;
      
      protected var §8L§:int;
      
      public function §-!H§(param1:Boolean = false, param2:String = "LevelEndEagleState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §1!j§ = new § T§(this);
         §1!j§.init(§"a§.§-!g§.Views.View_LevelEndEagle[0]);
         this.§1b§ = (§1!j§.getItemByName("MovieClip_EagleMeterFill") as §<!5§).width;
         §?!7§.§!!l§(§<,§,1,1);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§;!z§ = new §%!w§(0,0,0,0);
         §1!j§.movieClip.addChildAt(this.§;!z§,§1!j§.movieClip.numChildren - 1);
         §1!j§.getItemByName("MovieClip_EagleMeterEmpty").setVisibility(true);
         §1!j§.getItemByName("MovieClip_EagleMeterFill").setVisibility(true);
         §?!7§.playSound("LevelCompletedTheme1");
         this.§;!z§.§4g§(0.7);
         var _loc1_:int = §8!0§.§00§.getEagleScore();
         this.§8L§ = AngryBirdsFP11.§8!v§.§7!$§(§[!m§.§<!D§);
         var _loc2_:* = _loc1_ > this.§8L§;
         if(_loc2_)
         {
            this.§ !-§(_loc1_);
         }
         (§1!j§.getItemByName("TextField_EaglePercentage") as §%c§).§3v§.text = _loc1_ + "%";
         §?!7§.playSound("Hiscore_Count",§<,§,100);
         this.§4!B§ = §"!5§.§9j§.§4!p§(this,{"mEagleScoreCounter":_loc1_},{"mEagleScoreCounter":0},_loc1_ / 100 * 4);
         this.§4!B§.onComplete = this.§ !e§;
         this.§4!B§.play();
      }
      
      protected function § !-§(param1:Number) : void
      {
         AngryBirdsFP11.§8!v§.§5!i§(§[!m§.§<!D§,param1);
      }
      
      protected function § !e§() : void
      {
         var _loc1_:GlowFilter = null;
         §?!7§.§[N§(§<,§);
         if(this.mEagleScoreCounter == 100)
         {
            §?!7§.playSound("Hiscore_Badge",§<,§);
            _loc1_ = new GlowFilter(16777215,1,22,22,2.5,10);
            (§1!j§.getItemByName("MovieClip_EagleMeterEffect") as §<!5§).setVisibility(true);
            (§1!j§.getItemByName("MovieClip_EagleMeterFill") as §<!5§).mClip.filters = [_loc1_];
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §4E§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(int(this.mEagleScoreCounter) > this.§8L§)
         {
            (§1!j§.getItemByName("TextField_EaglePercentage") as §%c§).§3v§.text = int(this.mEagleScoreCounter) + "%";
            (§1!j§.getItemByName("TextField_EaglePercentageEffects") as §%c§).§3v§.text = int(this.mEagleScoreCounter) + "%";
         }
         else
         {
            (§1!j§.getItemByName("TextField_EaglePercentage") as §%c§).§3v§.text = int(this.§8L§) + "%";
            (§1!j§.getItemByName("TextField_EaglePercentageEffects") as §%c§).§3v§.text = int(this.§8L§) + "%";
         }
         var _loc3_:Rectangle = new Rectangle(0,0,this.§1b§ * (this.mEagleScoreCounter / 100),(§1!j§.getItemByName("MovieClip_EagleMeterFill") as §<!5§).height);
         (§1!j§.getItemByName("MovieClip_EagleMeterFill") as §<!5§).mClip.scrollRect = _loc3_;
         (§1!j§.getItemByName("MovieClip_EagleMeterEffect") as §<!5§).mClip.rotation = (§1!j§.getItemByName("MovieClip_EagleMeterEffect") as §<!5§).mClip.rotation + param1 / 20;
         if(mNextState.length > 0)
         {
            §8!0§.§?2§.clearLevel();
            return §4E§.STATE_STATUS_COMPLETED;
         }
         return §4E§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         if(this.§;!z§)
         {
            if(§1!j§.movieClip.contains(this.§;!z§))
            {
               §1!j§.movieClip.removeChild(this.§;!z§);
            }
            this.§;!z§.clean();
            this.§;!z§ = null;
         }
         §?!7§.§[N§(§<,§);
         this.mEagleScoreCounter = 0;
         if(this.§4!B§)
         {
            this.§4!B§.stop();
            this.§4!B§ = null;
         }
         (§1!j§.getItemByName("MovieClip_EagleMeterFill") as §<!5§).mClip.filters = [];
         (§1!j§.getItemByName("MovieClip_EagleMeterEffect") as §<!5§).setVisibility(false);
         (§1!j§.getItemByName("Button_Menu") as §3!6§).setComponentVisualState(§6"0§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§1!j§.getItemByName("Button_Replay") as §3!6§).setComponentVisualState(§6"0§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§1!j§.getItemByName("Button_NextLevel") as §3!6§).setComponentVisualState(§6"0§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§#p§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
               §[!E§.§ !E§();
               mNextState = StateCutScene.§#!w§;
               break;
            case "REPLAY":
               §[!E§.§%!,§();
               mNextState = §[!E§.§#!w§;
               break;
            case "MENU":
               §?!7§.§@"!§();
               mNextState = this.§1![§();
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§"!U§.§2!Z§();
         }
      }
      
      public function §1![§() : String
      {
         return §1f§.§#!w§;
      }
   }
}
