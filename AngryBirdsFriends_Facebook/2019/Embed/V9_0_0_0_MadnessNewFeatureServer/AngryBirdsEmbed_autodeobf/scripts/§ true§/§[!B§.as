package § true§
{
   import §"!B§.§"t§;
   import §"!B§.§+!9§;
   import §"!B§.§6!"§;
   import §+[§.§%G§;
   import §<!A§.§,!?§;
   import §>!O§.§[+§;
   import §?j§.§`R§;
   import §@a§.§'p§;
   import §@a§.§8H§;
   import §]!=§.§&P§;
   import §]!=§.§;!6§;
   import §`! §.§!!K§;
   import §`!1§.§'a§;
   import §`!1§.§-!&§;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class §[!B§ extends §,!?§
   {
      
      public static const §`W§:String = "LevelEndEagleState";
      
      private static const §&I§:String = "ScoreLoopCountChannel";
       
      
      private var §@!B§:§'a§;
      
      private var § 5§:§!!K§;
      
      public var mEagleScoreCounter:Number;
      
      protected var § P§:Number;
      
      protected var §&k§:int;
      
      public function §[!B§(param1:Boolean = false, param2:String = "LevelEndEagleState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §while§ = new §8H§(this);
         §while§.init(§'p§.§ ,§.Views.View_LevelEndEagle[0]);
         this.§ P§ = (§while§.getItemByName("MovieClip_EagleMeterFill") as §"t§).width;
         §%G§.§>,§(§&I§,1,1);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§ 5§ = new §!!K§(0,0,0,0);
         §while§.movieClip.addChildAt(this.§ 5§,§while§.movieClip.numChildren - 1);
         §while§.getItemByName("MovieClip_EagleMeterEmpty").setVisibility(true);
         §while§.getItemByName("MovieClip_EagleMeterFill").setVisibility(true);
         §%G§.§48§("LevelCompletedTheme1");
         this.§ 5§.§3h§(0.7);
         var _loc1_:int = §[+§.controller.getEagleScore();
         this.§&k§ = AngryBirdsFP11.sUserProgress.§!!#§(§`R§.§7S§);
         var _loc2_:* = _loc1_ > this.§&k§;
         if(_loc2_)
         {
            this.§02§(_loc1_);
         }
         (§while§.getItemByName("TextField_EaglePercentage") as §6!"§).§#!B§.text = _loc1_ + "%";
         §%G§.§48§("Hiscore_Count",§&I§,100);
         this.§@!B§ = §-!&§.§;R§.§2w§(this,{"mEagleScoreCounter":_loc1_},{"mEagleScoreCounter":0},_loc1_ / 100 * 4);
         this.§@!B§.onComplete = this.§]!9§;
         this.§@!B§.play();
      }
      
      protected function §02§(param1:Number) : void
      {
         AngryBirdsFP11.sUserProgress.§[x§(§`R§.§7S§,param1);
      }
      
      protected function §]!9§() : void
      {
         var _loc1_:GlowFilter = null;
         §%G§.§8e§(§&I§);
         if(this.mEagleScoreCounter == 100)
         {
            §%G§.§48§("Hiscore_Badge",§&I§);
            _loc1_ = new GlowFilter(16777215,1,22,22,2.5,10);
            (§while§.getItemByName("MovieClip_EagleMeterEffect") as §"t§).setVisibility(true);
            (§while§.getItemByName("MovieClip_EagleMeterFill") as §"t§).mClip.filters = [_loc1_];
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §,!?§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(int(this.mEagleScoreCounter) > this.§&k§)
         {
            (§while§.getItemByName("TextField_EaglePercentage") as §6!"§).§#!B§.text = int(this.mEagleScoreCounter) + "%";
            (§while§.getItemByName("TextField_EaglePercentageEffects") as §6!"§).§#!B§.text = int(this.mEagleScoreCounter) + "%";
         }
         else
         {
            (§while§.getItemByName("TextField_EaglePercentage") as §6!"§).§#!B§.text = int(this.§&k§) + "%";
            (§while§.getItemByName("TextField_EaglePercentageEffects") as §6!"§).§#!B§.text = int(this.§&k§) + "%";
         }
         var _loc3_:Rectangle = new Rectangle(0,0,this.§ P§ * (this.mEagleScoreCounter / 100),(§while§.getItemByName("MovieClip_EagleMeterFill") as §"t§).height);
         (§while§.getItemByName("MovieClip_EagleMeterFill") as §"t§).mClip.scrollRect = _loc3_;
         (§while§.getItemByName("MovieClip_EagleMeterEffect") as §"t§).mClip.rotation = (§while§.getItemByName("MovieClip_EagleMeterEffect") as §"t§).mClip.rotation + param1 / 20;
         if(mNextState.length > 0)
         {
            §[+§.§,!&§.clearLevel();
            return §,!?§.STATE_STATUS_COMPLETED;
         }
         return §,!?§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         if(this.§ 5§)
         {
            if(§while§.movieClip.contains(this.§ 5§))
            {
               §while§.movieClip.removeChild(this.§ 5§);
            }
            this.§ 5§.clean();
            this.§ 5§ = null;
         }
         §%G§.§8e§(§&I§);
         this.mEagleScoreCounter = 0;
         if(this.§@!B§)
         {
            this.§@!B§.stop();
            this.§@!B§ = null;
         }
         (§while§.getItemByName("MovieClip_EagleMeterFill") as §"t§).mClip.filters = [];
         (§while§.getItemByName("MovieClip_EagleMeterEffect") as §"t§).setVisibility(false);
         (§while§.getItemByName("Button_Menu") as §+!9§).setComponentVisualState(§&P§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§while§.getItemByName("Button_Replay") as §+!9§).setComponentVisualState(§&P§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§while§.getItemByName("Button_NextLevel") as §+!9§).setComponentVisualState(§&P§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§;!6§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
               §case §.§-!5§();
               mNextState = StateCutScene.§`W§;
               break;
            case "REPLAY":
               §case §.§"n§();
               mNextState = §case §.§`W§;
               break;
            case "MENU":
               §%G§.§^R§();
               mNextState = this.§7!>§();
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§6Z§.§9#§();
         }
      }
      
      public function §7!>§() : String
      {
         return §&!F§.§`W§;
      }
   }
}
