package §2x§
{
   import § true§.§%!7§;
   import § true§.§8K§;
   import § true§.§<"-§;
   import §&k§.§3l§;
   import §0!C§.§,!h§;
   import §0!C§.§=!]§;
   import §0s§.§8!z§;
   import §4!j§.§""3§;
   import §4!j§.§0p§;
   import §=!<§.§5!U§;
   import §>!5§.§>!T§;
   import §>Z§.§5;§;
   import §catch§.§"L§;
   import §catch§.§-!m§;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class §""<§ extends §>!T§
   {
      
      public static const §>H§:String = "LevelEndEagleState";
      
      private static const §^j§:String = "ScoreLoopCountChannel";
       
      
      private var §7!4§:§-!m§;
      
      private var §!<§:§3l§;
      
      public var mEagleScoreCounter:Number;
      
      protected var §]!Z§:Number;
      
      protected var §2!M§:int;
      
      public function §""<§(param1:Boolean = false, param2:String = "LevelEndEagleState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §3?§ = new §=!]§(this);
         §3?§.init(§,!h§.§`C§.Views.View_LevelEndEagle[0]);
         this.§]!Z§ = (§3?§.getItemByName("MovieClip_EagleMeterFill") as §%!7§).width;
         §5;§.§9L§(§^j§,1,1);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§!<§ = new §3l§(0,0,0,0);
         §3?§.movieClip.addChildAt(this.§!<§,§3?§.movieClip.numChildren - 1);
         §3?§.getItemByName("MovieClip_EagleMeterEmpty").setVisibility(true);
         §3?§.getItemByName("MovieClip_EagleMeterFill").setVisibility(true);
         §5;§.playSound("LevelCompletedTheme1");
         this.§!<§.§[5§(0.7);
         var _loc1_:int = §5!U§.§ !t§.getEagleScore();
         this.§2!M§ = AngryBirdsFP11.§"!c§.§7C§(§8!z§.§>!&§);
         var _loc2_:* = _loc1_ > this.§2!M§;
         if(_loc2_)
         {
            this.§`i§(_loc1_);
         }
         (§3?§.getItemByName("TextField_EaglePercentage") as §<"-§).§7!n§.text = _loc1_ + "%";
         §5;§.playSound("Hiscore_Count",§^j§,100);
         this.§7!4§ = §"L§.§7!?§.§4!P§(this,{"mEagleScoreCounter":_loc1_},{"mEagleScoreCounter":0},_loc1_ / 100 * 4);
         this.§7!4§.onComplete = this.§&5§;
         this.§7!4§.play();
      }
      
      protected function §`i§(param1:Number) : void
      {
         AngryBirdsFP11.§"!c§.§+K§(§8!z§.§>!&§,param1);
      }
      
      protected function §&5§() : void
      {
         var _loc1_:GlowFilter = null;
         §5;§.§@g§(§^j§);
         if(this.mEagleScoreCounter == 100)
         {
            §5;§.playSound("Hiscore_Badge",§^j§);
            _loc1_ = new GlowFilter(16777215,1,22,22,2.5,10);
            (§3?§.getItemByName("MovieClip_EagleMeterEffect") as §%!7§).setVisibility(true);
            (§3?§.getItemByName("MovieClip_EagleMeterFill") as §%!7§).mClip.filters = [_loc1_];
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §>!T§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(int(this.mEagleScoreCounter) > this.§2!M§)
         {
            (§3?§.getItemByName("TextField_EaglePercentage") as §<"-§).§7!n§.text = int(this.mEagleScoreCounter) + "%";
            (§3?§.getItemByName("TextField_EaglePercentageEffects") as §<"-§).§7!n§.text = int(this.mEagleScoreCounter) + "%";
         }
         else
         {
            (§3?§.getItemByName("TextField_EaglePercentage") as §<"-§).§7!n§.text = int(this.§2!M§) + "%";
            (§3?§.getItemByName("TextField_EaglePercentageEffects") as §<"-§).§7!n§.text = int(this.§2!M§) + "%";
         }
         var _loc3_:Rectangle = new Rectangle(0,0,this.§]!Z§ * (this.mEagleScoreCounter / 100),(§3?§.getItemByName("MovieClip_EagleMeterFill") as §%!7§).height);
         (§3?§.getItemByName("MovieClip_EagleMeterFill") as §%!7§).mClip.scrollRect = _loc3_;
         (§3?§.getItemByName("MovieClip_EagleMeterEffect") as §%!7§).mClip.rotation = (§3?§.getItemByName("MovieClip_EagleMeterEffect") as §%!7§).mClip.rotation + param1 / 20;
         if(mNextState.length > 0)
         {
            §5!U§.§,!E§.clearLevel();
            return §>!T§.STATE_STATUS_COMPLETED;
         }
         return §>!T§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         if(this.§!<§)
         {
            if(§3?§.movieClip.contains(this.§!<§))
            {
               §3?§.movieClip.removeChild(this.§!<§);
            }
            this.§!<§.clean();
            this.§!<§ = null;
         }
         §5;§.§@g§(§^j§);
         this.mEagleScoreCounter = 0;
         if(this.§7!4§)
         {
            this.§7!4§.stop();
            this.§7!4§ = null;
         }
         (§3?§.getItemByName("MovieClip_EagleMeterFill") as §%!7§).mClip.filters = [];
         (§3?§.getItemByName("MovieClip_EagleMeterEffect") as §%!7§).setVisibility(false);
         (§3?§.getItemByName("Button_Menu") as §8K§).setComponentVisualState(§""3§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§3?§.getItemByName("Button_Replay") as §8K§).setComponentVisualState(§""3§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§3?§.getItemByName("Button_NextLevel") as §8K§).setComponentVisualState(§""3§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§0p§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
               §8D§.§@P§();
               mNextState = StateCutScene.§>H§;
               break;
            case "REPLAY":
               §8D§.§+!u§();
               mNextState = §8D§.§>H§;
               break;
            case "MENU":
               §5;§.§8X§();
               mNextState = this.§<""§();
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§2p§.§`W§();
         }
      }
      
      public function §<""§() : String
      {
         return §8";§.§>H§;
      }
   }
}
