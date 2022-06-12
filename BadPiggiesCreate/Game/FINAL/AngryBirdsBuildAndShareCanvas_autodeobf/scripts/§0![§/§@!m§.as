package §0![§
{
   import §"v§.§3!w§;
   import §%c§.§=!X§;
   import §&"'§.§3^§;
   import §&"'§.§7!E§;
   import §'!A§.§-!S§;
   import §'!A§.§9!!§;
   import §'p§.§%+§;
   import §'p§.§="#§;
   import §'p§.§`!<§;
   import §-!n§.§5!U§;
   import §1"2§.§'s§;
   import §1"2§.§`7§;
   import §5"-§.§5y§;
   import §[!w§.§4!i§;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class §@!m§ extends §5y§
   {
      
      public static const §'=§:String = "LevelEndEagleState";
      
      private static const §2!_§:String = "ScoreLoopCountChannel";
       
      
      private var §?!=§:§3^§;
      
      private var §?!+§:§4!i§;
      
      public var mEagleScoreCounter:Number;
      
      protected var §'!8§:Number;
      
      protected var §?Q§:int;
      
      public function §@!m§(param1:Boolean = false, param2:String = "LevelEndEagleState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §?E§ = new §'s§(this);
         §?E§.init(§`7§.§>"?§.Views.View_LevelEndEagle[0]);
         this.§'!8§ = (§?E§.getItemByName("MovieClip_EagleMeterFill") as §%+§).width;
         §5!U§.§2R§(§2!_§,1,1);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§?!+§ = new §4!i§(0,0,0,0);
         §?E§.movieClip.addChildAt(this.§?!+§,§?E§.movieClip.numChildren - 1);
         §?E§.getItemByName("MovieClip_EagleMeterEmpty").setVisibility(true);
         §?E§.getItemByName("MovieClip_EagleMeterFill").setVisibility(true);
         §5!U§.playSound("LevelCompletedTheme1");
         this.§?!+§.§>=§(0.7);
         var _loc1_:int = §=!X§.§#H§.getEagleScore();
         this.§?Q§ = AngryBirdsFP11.§>" §.§2?§(§3!w§.§%n§);
         var _loc2_:* = _loc1_ > this.§?Q§;
         if(_loc2_)
         {
            this.§5I§(_loc1_);
         }
         (§?E§.getItemByName("TextField_EaglePercentage") as §`!<§).§&!w§.text = _loc1_ + "%";
         §5!U§.playSound("Hiscore_Count",§2!_§,100);
         this.§?!=§ = §7!E§.§2=§.§<!C§(this,{"mEagleScoreCounter":_loc1_},{"mEagleScoreCounter":0},_loc1_ / 100 * 4);
         this.§?!=§.onComplete = this.§[!R§;
         this.§?!=§.play();
      }
      
      protected function §5I§(param1:Number) : void
      {
         AngryBirdsFP11.§>" §.each(§3!w§.§%n§,param1);
      }
      
      protected function §[!R§() : void
      {
         var _loc1_:GlowFilter = null;
         §5!U§.§+!7§(§2!_§);
         if(this.mEagleScoreCounter == 100)
         {
            §5!U§.playSound("Hiscore_Badge",§2!_§);
            _loc1_ = new GlowFilter(16777215,1,22,22,2.5,10);
            (§?E§.getItemByName("MovieClip_EagleMeterEffect") as §%+§).setVisibility(true);
            (§?E§.getItemByName("MovieClip_EagleMeterFill") as §%+§).mClip.filters = [_loc1_];
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §5y§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(int(this.mEagleScoreCounter) > this.§?Q§)
         {
            (§?E§.getItemByName("TextField_EaglePercentage") as §`!<§).§&!w§.text = int(this.mEagleScoreCounter) + "%";
            (§?E§.getItemByName("TextField_EaglePercentageEffects") as §`!<§).§&!w§.text = int(this.mEagleScoreCounter) + "%";
         }
         else
         {
            (§?E§.getItemByName("TextField_EaglePercentage") as §`!<§).§&!w§.text = int(this.§?Q§) + "%";
            (§?E§.getItemByName("TextField_EaglePercentageEffects") as §`!<§).§&!w§.text = int(this.§?Q§) + "%";
         }
         var _loc3_:Rectangle = new Rectangle(0,0,this.§'!8§ * (this.mEagleScoreCounter / 100),(§?E§.getItemByName("MovieClip_EagleMeterFill") as §%+§).height);
         (§?E§.getItemByName("MovieClip_EagleMeterFill") as §%+§).mClip.scrollRect = _loc3_;
         (§?E§.getItemByName("MovieClip_EagleMeterEffect") as §%+§).mClip.rotation = (§?E§.getItemByName("MovieClip_EagleMeterEffect") as §%+§).mClip.rotation + param1 / 20;
         if(mNextState.length > 0)
         {
            §=!X§.§!'§.clearLevel();
            return §5y§.STATE_STATUS_COMPLETED;
         }
         return §5y§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         if(this.§?!+§)
         {
            if(§?E§.movieClip.contains(this.§?!+§))
            {
               §?E§.movieClip.removeChild(this.§?!+§);
            }
            this.§?!+§.clean();
            this.§?!+§ = null;
         }
         §5!U§.§+!7§(§2!_§);
         this.mEagleScoreCounter = 0;
         if(this.§?!=§)
         {
            this.§?!=§.stop();
            this.§?!=§ = null;
         }
         (§?E§.getItemByName("MovieClip_EagleMeterFill") as §%+§).mClip.filters = [];
         (§?E§.getItemByName("MovieClip_EagleMeterEffect") as §%+§).setVisibility(false);
         (§?E§.getItemByName("Button_Menu") as §="#§).setComponentVisualState(§9!!§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§?E§.getItemByName("Button_Replay") as §="#§).setComponentVisualState(§9!!§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§?E§.getItemByName("Button_NextLevel") as §="#§).setComponentVisualState(§9!!§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§-!S§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
               §0!v§.§`" §();
               mNextState = StateCutScene.§'=§;
               break;
            case "REPLAY":
               §0!v§.§4[§();
               mNextState = §0!v§.§'=§;
               break;
            case "MENU":
               §5!U§.§9&§();
               mNextState = this.§0!c§();
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§%d§.§9+§();
         }
      }
      
      public function §0!c§() : String
      {
         return §7B§.§'=§;
      }
   }
}
