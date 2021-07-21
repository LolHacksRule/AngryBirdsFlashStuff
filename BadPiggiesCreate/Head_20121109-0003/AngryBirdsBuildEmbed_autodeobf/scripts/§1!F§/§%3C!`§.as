package §1!F§
{
   import §!y§.§2U§;
   import §!y§.§=!Z§;
   import §"!E§.§#!'§;
   import §"!E§.§%O§;
   import §"!E§.§;!j§;
   import §#!4§.§+!S§;
   import §#!4§.§<f§;
   import §-!0§.§1^§;
   import §1?§.§+!§;
   import §5!`§.§%!Y§;
   import §9!n§.§0Y§;
   import §9!n§.§@!T§;
   import §=!3§.§;!!§;
   import §?!-§.§'!V§;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class §<!`§ extends §;!!§
   {
      
      public static const STATE_NAME:String = "LevelEndEagleState";
      
      private static const §]!2§:String = "ScoreLoopCountChannel";
       
      
      private var §5!E§:§0Y§;
      
      private var §7H§:§%!Y§;
      
      public var mEagleScoreCounter:Number;
      
      private var §-!d§:Number;
      
      private var §`;§:int;
      
      public function §<!`§(param1:Boolean = false, param2:String = "LevelEndEagleState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §+!$§ = new §2U§(this);
         §+!$§.init(§=!Z§.§;K§.Views.View_LevelEndEagle[0]);
         this.§-!d§ = (§+!$§.getItemByName("MovieClip_EagleMeterFill") as §%O§).width;
         §+!§.§#n§(§]!2§,1,1);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§7H§ = new §%!Y§(0,0,0,0);
         §+!$§.movieClip.addChildAt(this.§7H§,§+!$§.movieClip.numChildren - 1);
         (§+!$§.getItemByName("MovieClip_EagleMeterEmpty") as §%O§).setVisibility(true);
         (§+!$§.getItemByName("MovieClip_EagleMeterFill") as §%O§).setVisibility(true);
         §+!§.§4c§("LevelCompletedTheme1");
         this.§7H§.§#[§(0.7);
         var _loc1_:int = §'!V§.§?!G§.getEagleScore();
         this.§`;§ = AngryBirdsFP11.sUserProgress.§8!O§(§1^§.§ ]§);
         var _loc2_:* = _loc1_ > this.§`;§;
         if(_loc2_)
         {
            this.§>!!§(_loc1_);
         }
         (§+!$§.getItemByName("TextField_EaglePercentage") as §;!j§).§!D§.text = _loc1_ + "%";
         §+!§.§4c§("Hiscore_Count",§]!2§,100);
         this.§5!E§ = §@!T§.§`!t§.§8!"§(this,{"mEagleScoreCounter":_loc1_},{"mEagleScoreCounter":0},_loc1_ / 100 * 4);
         this.§5!E§.onComplete = this.§<I§;
         this.§5!E§.play();
      }
      
      protected function §>!!§(param1:Number) : void
      {
         AngryBirdsFP11.sUserProgress.§]!L§(§1^§.§ ]§,param1);
      }
      
      protected function §<I§() : void
      {
         var _loc1_:GlowFilter = null;
         §+!§.§+!h§(§]!2§);
         if(this.mEagleScoreCounter == 100)
         {
            §+!§.§4c§("Hiscore_Badge",§]!2§);
            _loc1_ = new GlowFilter(16777215,1,22,22,2.5,10);
            (§+!$§.getItemByName("MovieClip_EagleMeterEffect") as §%O§).setVisibility(true);
            (§+!$§.getItemByName("MovieClip_EagleMeterFill") as §%O§).mClip.filters = [_loc1_];
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §;!!§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(int(this.mEagleScoreCounter) > this.§`;§)
         {
            (§+!$§.getItemByName("TextField_EaglePercentage") as §;!j§).§!D§.text = int(this.mEagleScoreCounter) + "%";
            (§+!$§.getItemByName("TextField_EaglePercentageEffects") as §;!j§).§!D§.text = int(this.mEagleScoreCounter) + "%";
         }
         else
         {
            (§+!$§.getItemByName("TextField_EaglePercentage") as §;!j§).§!D§.text = int(this.§`;§) + "%";
            (§+!$§.getItemByName("TextField_EaglePercentageEffects") as §;!j§).§!D§.text = int(this.§`;§) + "%";
         }
         var _loc3_:Rectangle = new Rectangle(0,0,this.§-!d§ * (this.mEagleScoreCounter / 100),(§+!$§.getItemByName("MovieClip_EagleMeterFill") as §%O§).height);
         (§+!$§.getItemByName("MovieClip_EagleMeterFill") as §%O§).mClip.scrollRect = _loc3_;
         (§+!$§.getItemByName("MovieClip_EagleMeterEffect") as §%O§).mClip.rotation = (§+!$§.getItemByName("MovieClip_EagleMeterEffect") as §%O§).mClip.rotation + param1 / 20;
         if(mNextState.length > 0)
         {
            §'!V§.§1!2§.clearLevel();
            return §;!!§.STATE_STATUS_COMPLETED;
         }
         return §;!!§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         if(this.§7H§)
         {
            if(§+!$§.movieClip.contains(this.§7H§))
            {
               §+!$§.movieClip.removeChild(this.§7H§);
            }
            this.§7H§.clean();
            this.§7H§ = null;
         }
         §+!§.§+!h§(§]!2§);
         this.mEagleScoreCounter = 0;
         if(this.§5!E§)
         {
            this.§5!E§.stop();
            this.§5!E§ = null;
         }
         (§+!$§.getItemByName("MovieClip_EagleMeterFill") as §%O§).mClip.filters = [];
         (§+!$§.getItemByName("MovieClip_EagleMeterEffect") as §%O§).setVisibility(false);
         (§+!$§.getItemByName("Button_Menu") as §#!'§).setComponentVisualState(§<f§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§+!$§.getItemByName("Button_Replay") as §#!'§).setComponentVisualState(§<f§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§+!$§.getItemByName("Button_NextLevel") as §#!'§).setComponentVisualState(§<f§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§+!S§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
               §26§.§=0§();
               mNextState = StateCutScene.STATE_NAME;
               break;
            case "REPLAY":
               §26§.§!=§();
               mNextState = §26§.STATE_NAME;
               break;
            case "MENU":
               §+!§.§'!Q§();
               mNextState = §?&§.STATE_NAME;
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§`!d§.§!5§();
         }
      }
   }
}
