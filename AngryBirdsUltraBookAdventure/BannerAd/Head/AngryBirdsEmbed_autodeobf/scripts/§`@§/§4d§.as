package §`@§
{
   import §"!&§.§ !5§;
   import §"!&§.§%!>§;
   import §"!5§.§,!!§;
   import §,K§.§-!$§;
   import §0!§.§0!5§;
   import §1;§.§!!1§;
   import §1;§.§0!&§;
   import §1h§.§ use§;
   import §1h§.§@s§;
   import §2!<§.§?!?§;
   import §>!C§.§6M§;
   import §^@§.§!"§;
   import §^@§.§=^§;
   import §^@§.§`Y§;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class §4d§ extends §0!5§
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
         §#Z§ = new §!!1§(this);
         §#Z§.init(§0!&§.§'^§.Views.View_LevelEndEagle[0]);
         this.§1k§ = (§#Z§.getItemByName("MovieClip_EagleMeterFill") as §!"§).width;
         §?!?§.§&P§(§[J§,1,1);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§>!;§ = new §-!$§(0,0,0,0);
         §#Z§.movieClip.addChildAt(this.§>!;§,§#Z§.movieClip.numChildren - 1);
         §#Z§.getItemByName("MovieClip_EagleMeterEmpty").setVisibility(true);
         §#Z§.getItemByName("MovieClip_EagleMeterFill").setVisibility(true);
         §?!?§.§#'§("LevelCompletedTheme1");
         this.§>!;§.§0C§(0.7);
         var _loc1_:int = §,!!§.controller.getEagleScore();
         this.§+W§ = AngryBirdsFP11.sUserProgress.§^z§(§6M§.§[z§);
         var _loc2_:* = _loc1_ > this.§+W§;
         if(_loc2_)
         {
            this.§&d§(_loc1_);
         }
         (§#Z§.getItemByName("TextField_EaglePercentage") as §`Y§).§ p§.text = _loc1_ + "%";
         §?!?§.§#'§("Hiscore_Count",§[J§,100);
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
         §?!?§.§<!,§(§[J§);
         if(this.mEagleScoreCounter == 100)
         {
            §?!?§.§#'§("Hiscore_Badge",§[J§);
            _loc1_ = new GlowFilter(16777215,1,22,22,2.5,10);
            (§#Z§.getItemByName("MovieClip_EagleMeterEffect") as §!"§).setVisibility(true);
            (§#Z§.getItemByName("MovieClip_EagleMeterFill") as §!"§).mClip.filters = [_loc1_];
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §0!5§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(int(this.mEagleScoreCounter) > this.§+W§)
         {
            (§#Z§.getItemByName("TextField_EaglePercentage") as §`Y§).§ p§.text = int(this.mEagleScoreCounter) + "%";
            (§#Z§.getItemByName("TextField_EaglePercentageEffects") as §`Y§).§ p§.text = int(this.mEagleScoreCounter) + "%";
         }
         else
         {
            (§#Z§.getItemByName("TextField_EaglePercentage") as §`Y§).§ p§.text = int(this.§+W§) + "%";
            (§#Z§.getItemByName("TextField_EaglePercentageEffects") as §`Y§).§ p§.text = int(this.§+W§) + "%";
         }
         var _loc3_:Rectangle = new Rectangle(0,0,this.§1k§ * (this.mEagleScoreCounter / 100),(§#Z§.getItemByName("MovieClip_EagleMeterFill") as §!"§).height);
         (§#Z§.getItemByName("MovieClip_EagleMeterFill") as §!"§).mClip.scrollRect = _loc3_;
         (§#Z§.getItemByName("MovieClip_EagleMeterEffect") as §!"§).mClip.rotation = (§#Z§.getItemByName("MovieClip_EagleMeterEffect") as §!"§).mClip.rotation + param1 / 20;
         if(mNextState.length > 0)
         {
            §,!!§.§;4§.clearLevel();
            return §0!5§.STATE_STATUS_COMPLETED;
         }
         return §0!5§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         if(this.§>!;§)
         {
            if(§#Z§.movieClip.contains(this.§>!;§))
            {
               §#Z§.movieClip.removeChild(this.§>!;§);
            }
            this.§>!;§.clean();
            this.§>!;§ = null;
         }
         §?!?§.§<!,§(§[J§);
         this.mEagleScoreCounter = 0;
         if(this.§>q§)
         {
            this.§>q§.stop();
            this.§>q§ = null;
         }
         (§#Z§.getItemByName("MovieClip_EagleMeterFill") as §!"§).mClip.filters = [];
         (§#Z§.getItemByName("MovieClip_EagleMeterEffect") as §!"§).setVisibility(false);
         (§#Z§.getItemByName("Button_Menu") as §=^§).setComponentVisualState(§ use§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§#Z§.getItemByName("Button_Replay") as §=^§).setComponentVisualState(§ use§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§#Z§.getItemByName("Button_NextLevel") as §=^§).setComponentVisualState(§ use§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§@s§) : void
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
               §?!?§.§%!%§();
               mNextState = §!,§.§0!7§;
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§@t§.§"&§();
         }
      }
   }
}
