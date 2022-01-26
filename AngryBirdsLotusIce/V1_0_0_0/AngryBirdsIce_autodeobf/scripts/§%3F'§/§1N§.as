package §?'§
{
   import §%S§.§%X§;
   import §%S§.§7g§;
   import §%S§.§;!5§;
   import §+N§.§!j§;
   import §+N§.§]G§;
   import §2U§.§'0§;
   import §87§.§2-§;
   import §87§.§]T§;
   import §;f§.§&#§;
   import §;j§.§8[§;
   import §>Z§.§2;§;
   import §`<§.§,!6§;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   import §in§.§%K§;
   import §in§.§9c§;
   
   public class §1N§ extends §,!6§
   {
      
      public static const §`%§:String = "LevelEndEagleState";
      
      private static const §#9§:String = "ScoreLoopCountChannel";
       
      
      private var §>!8§:§]G§;
      
      private var §30§:§'0§;
      
      public var mEagleScoreCounter:Number;
      
      private var §&!H§:Number;
      
      private var §;H§:int;
      
      public function §1N§(param1:Boolean = false, param2:String = "LevelEndEagleState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §<o§ = new §]T§(this);
         §<o§.init(§2-§.§+J§.Views.View_LevelEndEagle[0]);
         this.§&!H§ = (§<o§.getItemByName("MovieClip_EagleMeterFill") as §;!5§).width;
         §2;§.§^=§(§#9§,1,1);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§30§ = new §'0§(0,0,0,0);
         §<o§.movieClip.addChildAt(this.§30§,§<o§.movieClip.numChildren - 1);
         (§<o§.getItemByName("MovieClip_EagleMeterEmpty") as §;!5§).setVisibility(true);
         (§<o§.getItemByName("MovieClip_EagleMeterFill") as §;!5§).setVisibility(true);
         §2;§.playSound("LevelCompletedTheme1");
         this.§30§.§!y§(0.7);
         var _loc1_:int = §8[§.controller.getEagleScore();
         this.§;H§ = AngryBirdsFP11.§[l§.§7!;§(§&#§.§<Y§);
         var _loc2_:* = _loc1_ > this.§;H§;
         if(_loc2_)
         {
            this.§&Y§(_loc1_);
         }
         (§<o§.getItemByName("TextField_EaglePercentage") as §7g§).§1p§.text = _loc1_ + "%";
         §2;§.playSound("Hiscore_Count",§#9§,100);
         this.§>!8§ = §!j§.§5!B§.§+I§(this,{"mEagleScoreCounter":_loc1_},{"mEagleScoreCounter":0},_loc1_ / 100 * 4);
         this.§>!8§.onComplete = this.§4S§;
         this.§>!8§.play();
      }
      
      protected function §&Y§(param1:Number) : void
      {
         AngryBirdsFP11.§[l§.§%W§(§&#§.§<Y§,param1);
      }
      
      protected function §4S§() : void
      {
         var _loc1_:GlowFilter = null;
         §2;§.§%j§(§#9§);
         if(this.mEagleScoreCounter == 100)
         {
            §2;§.playSound("Hiscore_Badge",§#9§);
            _loc1_ = new GlowFilter(16777215,1,22,22,2.5,10);
            (§<o§.getItemByName("MovieClip_EagleMeterEffect") as §;!5§).setVisibility(true);
            (§<o§.getItemByName("MovieClip_EagleMeterFill") as §;!5§).mClip.filters = [_loc1_];
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §,!6§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(int(this.mEagleScoreCounter) > this.§;H§)
         {
            (§<o§.getItemByName("TextField_EaglePercentage") as §7g§).§1p§.text = int(this.mEagleScoreCounter) + "%";
            (§<o§.getItemByName("TextField_EaglePercentageEffects") as §7g§).§1p§.text = int(this.mEagleScoreCounter) + "%";
         }
         else
         {
            (§<o§.getItemByName("TextField_EaglePercentage") as §7g§).§1p§.text = int(this.§;H§) + "%";
            (§<o§.getItemByName("TextField_EaglePercentageEffects") as §7g§).§1p§.text = int(this.§;H§) + "%";
         }
         var _loc3_:Rectangle = new Rectangle(0,0,this.§&!H§ * (this.mEagleScoreCounter / 100),(§<o§.getItemByName("MovieClip_EagleMeterFill") as §;!5§).height);
         (§<o§.getItemByName("MovieClip_EagleMeterFill") as §;!5§).mClip.scrollRect = _loc3_;
         (§<o§.getItemByName("MovieClip_EagleMeterEffect") as §;!5§).mClip.rotation = (§<o§.getItemByName("MovieClip_EagleMeterEffect") as §;!5§).mClip.rotation + param1 / 20;
         if(mNextState.length > 0)
         {
            §8[§.§import§.clearLevel();
            return §,!6§.STATE_STATUS_COMPLETED;
         }
         return §,!6§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         if(this.§30§)
         {
            if(§<o§.movieClip.contains(this.§30§))
            {
               §<o§.movieClip.removeChild(this.§30§);
            }
            this.§30§.clean();
            this.§30§ = null;
         }
         §2;§.§%j§(§#9§);
         this.mEagleScoreCounter = 0;
         if(this.§>!8§)
         {
            this.§>!8§.stop();
            this.§>!8§ = null;
         }
         (§<o§.getItemByName("MovieClip_EagleMeterFill") as §;!5§).mClip.filters = [];
         (§<o§.getItemByName("MovieClip_EagleMeterEffect") as §;!5§).setVisibility(false);
         (§<o§.getItemByName("Button_Menu") as §%X§).setComponentVisualState(§9c§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§<o§.getItemByName("Button_Replay") as §%X§).setComponentVisualState(§9c§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§<o§.getItemByName("Button_NextLevel") as §%X§).setComponentVisualState(§9c§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§%K§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
               §`0§.§6p§();
               mNextState = StateCutScene.§`%§;
               break;
            case "REPLAY":
               §`0§.§#T§();
               mNextState = §`0§.§`%§;
               break;
            case "MENU":
               §2;§.§'T§();
               mNextState = §8m§.§`%§;
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§`H§.§>&§();
         }
      }
   }
}
