package §9!5§
{
   import §"R§.§ !Q§;
   import §0!N§.LevelManager;
   import §2h§.§'!^§;
   import §2h§.§[!'§;
   import §4L§.§,!_§;
   import §57§.§,!b§;
   import §57§.§4!Z§;
   import §9Y§.§+!!§;
   import §9Y§.§6!8§;
   import §<!>§.§?Y§;
   import §?!7§.§"j§;
   import §?!7§.§5!I§;
   import §?!7§.§[I§;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   import §true§.§ _§;
   
   public class §17§ extends §?Y§
   {
      
      public static const §?h§:String = "LevelEndEagleState";
      
      private static const §+%§:String = "ScoreLoopCountChannel";
       
      
      private var §<!_§:§4!Z§;
      
      private var §#x§:§,!_§;
      
      public var mEagleScoreCounter:Number;
      
      protected var §>!&§:Number;
      
      protected var §5-§:int;
      
      public function §17§(param1:Boolean = false, param2:String = "LevelEndEagleState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §5!P§ = new §'!^§(this);
         §5!P§.init(§[!'§.§+@§.Views.View_LevelEndEagle[0]);
         this.§>!&§ = (§5!P§.getItemByName("MovieClip_EagleMeterFill") as §[I§).width;
         § !Q§.§]!h§(§+%§,1,1);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§#x§ = new §,!_§(0,0,0,0);
         §5!P§.movieClip.addChildAt(this.§#x§,§5!P§.movieClip.numChildren - 1);
         §5!P§.getItemByName("MovieClip_EagleMeterEmpty").setVisibility(true);
         §5!P§.getItemByName("MovieClip_EagleMeterFill").setVisibility(true);
         § !Q§.playSound("LevelCompletedTheme1");
         this.§#x§.§7!+§(0.7);
         var _loc1_:int = § _§.§?!]§.getEagleScore();
         this.§5-§ = AngryBirdsFP11.sUserProgress.getEagleScoreForLevel(LevelManager.§4Y§);
         var _loc2_:* = _loc1_ > this.§5-§;
         if(_loc2_)
         {
            this.§;!4§(_loc1_);
         }
         (§5!P§.getItemByName("TextField_EaglePercentage") as §"j§).§"E§.text = _loc1_ + "%";
         § !Q§.playSound("Hiscore_Count",§+%§,100);
         this.§<!_§ = §,!b§.§<d§.§>a§(this,{"mEagleScoreCounter":_loc1_},{"mEagleScoreCounter":0},_loc1_ / 100 * 4);
         this.§<!_§.onComplete = this.§!!>§;
         this.§<!_§.play();
      }
      
      protected function §;!4§(param1:Number) : void
      {
         AngryBirdsFP11.sUserProgress.§5U§(LevelManager.§4Y§,param1);
      }
      
      protected function §!!>§() : void
      {
         var _loc1_:GlowFilter = null;
         § !Q§.§9!t§(§+%§);
         if(this.mEagleScoreCounter == 100)
         {
            § !Q§.playSound("Hiscore_Badge",§+%§);
            _loc1_ = new GlowFilter(16777215,1,22,22,2.5,10);
            (§5!P§.getItemByName("MovieClip_EagleMeterEffect") as §[I§).setVisibility(true);
            (§5!P§.getItemByName("MovieClip_EagleMeterFill") as §[I§).mClip.filters = [_loc1_];
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §?Y§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(int(this.mEagleScoreCounter) > this.§5-§)
         {
            (§5!P§.getItemByName("TextField_EaglePercentage") as §"j§).§"E§.text = int(this.mEagleScoreCounter) + "%";
            (§5!P§.getItemByName("TextField_EaglePercentageEffects") as §"j§).§"E§.text = int(this.mEagleScoreCounter) + "%";
         }
         else
         {
            (§5!P§.getItemByName("TextField_EaglePercentage") as §"j§).§"E§.text = int(this.§5-§) + "%";
            (§5!P§.getItemByName("TextField_EaglePercentageEffects") as §"j§).§"E§.text = int(this.§5-§) + "%";
         }
         var _loc3_:Rectangle = new Rectangle(0,0,this.§>!&§ * (this.mEagleScoreCounter / 100),(§5!P§.getItemByName("MovieClip_EagleMeterFill") as §[I§).height);
         (§5!P§.getItemByName("MovieClip_EagleMeterFill") as §[I§).mClip.scrollRect = _loc3_;
         (§5!P§.getItemByName("MovieClip_EagleMeterEffect") as §[I§).mClip.rotation = (§5!P§.getItemByName("MovieClip_EagleMeterEffect") as §[I§).mClip.rotation + param1 / 20;
         if(mNextState.length > 0)
         {
            § _§.§!6§.clearLevel();
            return §?Y§.STATE_STATUS_COMPLETED;
         }
         return §?Y§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         if(this.§#x§)
         {
            if(§5!P§.movieClip.contains(this.§#x§))
            {
               §5!P§.movieClip.removeChild(this.§#x§);
            }
            this.§#x§.clean();
            this.§#x§ = null;
         }
         § !Q§.§9!t§(§+%§);
         this.mEagleScoreCounter = 0;
         if(this.§<!_§)
         {
            this.§<!_§.stop();
            this.§<!_§ = null;
         }
         (§5!P§.getItemByName("MovieClip_EagleMeterFill") as §[I§).mClip.filters = [];
         (§5!P§.getItemByName("MovieClip_EagleMeterEffect") as §[I§).setVisibility(false);
         (§5!P§.getItemByName("Button_Menu") as §5!I§).setComponentVisualState(§+!!§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§5!P§.getItemByName("Button_Replay") as §5!I§).setComponentVisualState(§+!!§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§5!P§.getItemByName("Button_NextLevel") as §5!I§).setComponentVisualState(§+!!§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§6!8§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
               §#!c§.§ !0§();
               mNextState = StateCutScene.§?h§;
               break;
            case "REPLAY":
               §#!c§.§6d§();
               mNextState = §#!c§.§?h§;
               break;
            case "MENU":
               § !Q§.§"!"§();
               mNextState = § B§.§?h§;
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§3!a§.§8!d§();
         }
      }
   }
}
