package §!$§
{
   import §!^§.§"%§;
   import §!^§.§+!5§;
   import §'N§.§^]§;
   import §,!$§.§8O§;
   import §-!'§.§&!H§;
   import §-!'§.§;f§;
   import §-!'§.§@D§;
   import §-!C§.§#!G§;
   import §6[§.§;q§;
   import §6[§.§`!-§;
   import §>%§.§]3§;
   import §[A§.§3!'§;
   import §^s§.§&"§;
   import §^s§.§?O§;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class §,J§ extends §3!'§
   {
      
      public static const §9"§:String = "LevelEndEagleState";
      
      private static const §&!@§:String = "ScoreLoopCountChannel";
       
      
      private var §"!0§:§`!-§;
      
      private var §,!>§:§8O§;
      
      public var mEagleScoreCounter:Number;
      
      private var §6o§:Number;
      
      private var §'! §:int;
      
      public function §,J§(param1:Boolean = false, param2:String = "LevelEndEagleState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §+!2§ = new §&"§(this);
         §+!2§.init(§?O§.§@!<§.Views.View_LevelEndEagle[0]);
         this.§6o§ = (§+!2§.getItemByName("MovieClip_EagleMeterFill") as §@D§).width;
         §^]§.§#r§(§&!@§,1,1);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§,!>§ = new §8O§(0,0,0,0);
         §+!2§.movieClip.addChildAt(this.§,!>§,§+!2§.movieClip.numChildren - 1);
         (§+!2§.getItemByName("MovieClip_EagleMeterEmpty") as §@D§).setVisibility(true);
         (§+!2§.getItemByName("MovieClip_EagleMeterFill") as §@D§).setVisibility(true);
         §^]§.§1g§("LevelCompletedTheme1");
         this.§,!>§.§'l§(0.7);
         var _loc1_:int = §]3§.controller.getEagleScore();
         this.§'! § = AngryBirdsFP11.sUserProgress.§4f§(§#!G§.§9C§);
         var _loc2_:* = _loc1_ > this.§'! §;
         if(_loc2_)
         {
            this.§!X§(_loc1_);
         }
         (§+!2§.getItemByName("TextField_EaglePercentage") as §&!H§).§#C§.text = _loc1_ + "%";
         §^]§.§1g§("Hiscore_Count",§&!@§,100);
         this.§"!0§ = §;q§.§9r§.§%!#§(this,{"mEagleScoreCounter":_loc1_},{"mEagleScoreCounter":0},_loc1_ / 100 * 4);
         this.§"!0§.onComplete = this.§;X§;
         this.§"!0§.play();
      }
      
      protected function §!X§(param1:Number) : void
      {
         AngryBirdsFP11.sUserProgress.§"s§(§#!G§.§9C§,param1);
      }
      
      protected function §;X§() : void
      {
         var _loc1_:GlowFilter = null;
         §^]§.§ _§(§&!@§);
         if(this.mEagleScoreCounter == 100)
         {
            §^]§.§1g§("Hiscore_Badge",§&!@§);
            _loc1_ = new GlowFilter(16777215,1,22,22,2.5,10);
            (§+!2§.getItemByName("MovieClip_EagleMeterEffect") as §@D§).setVisibility(true);
            (§+!2§.getItemByName("MovieClip_EagleMeterFill") as §@D§).mClip.filters = [_loc1_];
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §3!'§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(int(this.mEagleScoreCounter) > this.§'! §)
         {
            (§+!2§.getItemByName("TextField_EaglePercentage") as §&!H§).§#C§.text = int(this.mEagleScoreCounter) + "%";
            (§+!2§.getItemByName("TextField_EaglePercentageEffects") as §&!H§).§#C§.text = int(this.mEagleScoreCounter) + "%";
         }
         else
         {
            (§+!2§.getItemByName("TextField_EaglePercentage") as §&!H§).§#C§.text = int(this.§'! §) + "%";
            (§+!2§.getItemByName("TextField_EaglePercentageEffects") as §&!H§).§#C§.text = int(this.§'! §) + "%";
         }
         var _loc3_:Rectangle = new Rectangle(0,0,this.§6o§ * (this.mEagleScoreCounter / 100),(§+!2§.getItemByName("MovieClip_EagleMeterFill") as §@D§).height);
         (§+!2§.getItemByName("MovieClip_EagleMeterFill") as §@D§).mClip.scrollRect = _loc3_;
         (§+!2§.getItemByName("MovieClip_EagleMeterEffect") as §@D§).mClip.rotation = (§+!2§.getItemByName("MovieClip_EagleMeterEffect") as §@D§).mClip.rotation + param1 / 20;
         if(mNextState.length > 0)
         {
            §]3§.§;v§.clearLevel();
            return §3!'§.STATE_STATUS_COMPLETED;
         }
         return §3!'§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         if(this.§,!>§)
         {
            if(§+!2§.movieClip.contains(this.§,!>§))
            {
               §+!2§.movieClip.removeChild(this.§,!>§);
            }
            this.§,!>§.clean();
            this.§,!>§ = null;
         }
         §^]§.§ _§(§&!@§);
         this.mEagleScoreCounter = 0;
         if(this.§"!0§)
         {
            this.§"!0§.stop();
            this.§"!0§ = null;
         }
         (§+!2§.getItemByName("MovieClip_EagleMeterFill") as §@D§).mClip.filters = [];
         (§+!2§.getItemByName("MovieClip_EagleMeterEffect") as §@D§).setVisibility(false);
         (§+!2§.getItemByName("Button_Menu") as §;f§).setComponentVisualState(§+!5§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§+!2§.getItemByName("Button_Replay") as §;f§).setComponentVisualState(§+!5§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§+!2§.getItemByName("Button_NextLevel") as §;f§).setComponentVisualState(§+!5§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§"%§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
               § W§.§<m§();
               mNextState = StateCutScene.§9"§;
               break;
            case "REPLAY":
               § W§.§ =§();
               mNextState = § W§.§9"§;
               break;
            case "MENU":
               §^]§.§@n§();
               mNextState = §#u§.§9"§;
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§"h§.§>B§();
         }
      }
   }
}
