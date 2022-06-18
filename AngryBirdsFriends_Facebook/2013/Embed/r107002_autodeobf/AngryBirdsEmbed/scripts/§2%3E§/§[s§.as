package §2>§
{
   import §%q§.§'!A§;
   import §%q§.§9;§;
   import §'0§.§]!2§;
   import §+3§.§8O§;
   import §2T§.§2H§;
   import §2T§.§5@§;
   import §2T§.§[l§;
   import §6Z§.§'?§;
   import §6h§.§[!4§;
   import §7=§.§9Y§;
   import §7J§.§<!?§;
   import §7J§.§=U§;
   import §?H§.§+!B§;
   import §?H§.§-!K§;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class §[s§ extends §9Y§
   {
      
      public static const §]! §:String = "LevelEndEagleState";
      
      private static const §5y§:String = "ScoreLoopCountChannel";
       
      
      private var §+!F§:§9;§;
      
      private var §22§:§8O§;
      
      public var mEagleScoreCounter:Number;
      
      protected var §!&§:Number;
      
      protected var §#!$§:int;
      
      public function §[s§(param1:Boolean = false, param2:String = "LevelEndEagleState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §!s§ = new §+!B§(this);
         §!s§.init(§-!K§.§"!G§.Views.View_LevelEndEagle[0]);
         this.§!&§ = (§!s§.getItemByName("MovieClip_EagleMeterFill") as §[l§).width;
         §]!2§.§+B§(§5y§,1,1);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§22§ = new §8O§(0,0,0,0);
         §!s§.movieClip.addChildAt(this.§22§,§!s§.movieClip.numChildren - 1);
         §!s§.getItemByName("MovieClip_EagleMeterEmpty").setVisibility(true);
         §!s§.getItemByName("MovieClip_EagleMeterFill").setVisibility(true);
         §]!2§.playSound("LevelCompletedTheme1");
         this.§22§.§&<§(0.7);
         var _loc1_:int = §[!4§.controller.getEagleScore();
         this.§#!$§ = AngryBirdsFP11.sUserProgress.§%!E§(§'?§.§"t§);
         var _loc2_:* = _loc1_ > this.§#!$§;
         if(_loc2_)
         {
            this.§#6§(_loc1_);
         }
         (§!s§.getItemByName("TextField_EaglePercentage") as §5@§).§[!J§.text = _loc1_ + "%";
         §]!2§.playSound("Hiscore_Count",§5y§,100);
         this.§+!F§ = §'!A§.§5+§.§;h§(this,{"mEagleScoreCounter":_loc1_},{"mEagleScoreCounter":0},_loc1_ / 100 * 4);
         this.§+!F§.onComplete = this.§,t§;
         this.§+!F§.play();
      }
      
      protected function §#6§(param1:Number) : void
      {
         AngryBirdsFP11.sUserProgress.§^!,§(§'?§.§"t§,param1);
      }
      
      protected function §,t§() : void
      {
         var _loc1_:GlowFilter = null;
         §]!2§.§<!7§(§5y§);
         if(this.mEagleScoreCounter == 100)
         {
            §]!2§.playSound("Hiscore_Badge",§5y§);
            _loc1_ = new GlowFilter(16777215,1,22,22,2.5,10);
            (§!s§.getItemByName("MovieClip_EagleMeterEffect") as §[l§).setVisibility(true);
            (§!s§.getItemByName("MovieClip_EagleMeterFill") as §[l§).mClip.filters = [_loc1_];
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §9Y§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(int(this.mEagleScoreCounter) > this.§#!$§)
         {
            (§!s§.getItemByName("TextField_EaglePercentage") as §5@§).§[!J§.text = int(this.mEagleScoreCounter) + "%";
            (§!s§.getItemByName("TextField_EaglePercentageEffects") as §5@§).§[!J§.text = int(this.mEagleScoreCounter) + "%";
         }
         else
         {
            (§!s§.getItemByName("TextField_EaglePercentage") as §5@§).§[!J§.text = int(this.§#!$§) + "%";
            (§!s§.getItemByName("TextField_EaglePercentageEffects") as §5@§).§[!J§.text = int(this.§#!$§) + "%";
         }
         var _loc3_:Rectangle = new Rectangle(0,0,this.§!&§ * (this.mEagleScoreCounter / 100),(§!s§.getItemByName("MovieClip_EagleMeterFill") as §[l§).height);
         (§!s§.getItemByName("MovieClip_EagleMeterFill") as §[l§).mClip.scrollRect = _loc3_;
         (§!s§.getItemByName("MovieClip_EagleMeterEffect") as §[l§).mClip.rotation = (§!s§.getItemByName("MovieClip_EagleMeterEffect") as §[l§).mClip.rotation + param1 / 20;
         if(mNextState.length > 0)
         {
            §[!4§.§continue§.clearLevel();
            return §9Y§.STATE_STATUS_COMPLETED;
         }
         return §9Y§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         if(this.§22§)
         {
            if(§!s§.movieClip.contains(this.§22§))
            {
               §!s§.movieClip.removeChild(this.§22§);
            }
            this.§22§.clean();
            this.§22§ = null;
         }
         §]!2§.§<!7§(§5y§);
         this.mEagleScoreCounter = 0;
         if(this.§+!F§)
         {
            this.§+!F§.stop();
            this.§+!F§ = null;
         }
         (§!s§.getItemByName("MovieClip_EagleMeterFill") as §[l§).mClip.filters = [];
         (§!s§.getItemByName("MovieClip_EagleMeterEffect") as §[l§).setVisibility(false);
         (§!s§.getItemByName("Button_Menu") as §2H§).setComponentVisualState(§=U§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§!s§.getItemByName("Button_Replay") as §2H§).setComponentVisualState(§=U§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§!s§.getItemByName("Button_NextLevel") as §2H§).setComponentVisualState(§=U§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§<!?§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
               §9$§.§`a§();
               mNextState = StateCutScene.§]! §;
               break;
            case "REPLAY":
               §9$§.§9g§();
               mNextState = §9$§.§]! §;
               break;
            case "MENU":
               §]!2§.§^F§();
               mNextState = this.§30§();
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§6C§.§`d§();
         }
      }
      
      public function §30§() : String
      {
         return §0!O§.§]! §;
      }
   }
}
