package §>Y§
{
   import §"^§.§9=§;
   import §3!%§.§-k§;
   import §5!<§.§@]§;
   import §5!<§.§^!$§;
   import §5f§.§=;§;
   import §5f§.§]_§;
   import §92§.§<'§;
   import §<!4§.§25§;
   import §=u§.§"x§;
   import §=u§.§1r§;
   import §=u§.§2"§;
   import §?!=§.§<!>§;
   import §?!C§.§6q§;
   import §?!C§.§[!-§;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class § u§ extends §<!>§
   {
      
      public static const §4!C§:String = "LevelEndEagleState";
      
      private static const §"!>§:String = "ScoreLoopCountChannel";
       
      
      private var §#!E§:§6q§;
      
      private var §0!G§:§<'§;
      
      public var mEagleScoreCounter:Number;
      
      protected var §&N§:Number;
      
      protected var §`!4§:int;
      
      public function § u§(param1:Boolean = false, param2:String = "LevelEndEagleState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §3g§ = new §@]§(this);
         §3g§.init(§^!$§.§"!9§.Views.View_LevelEndEagle[0]);
         this.§&N§ = (§3g§.getItemByName("MovieClip_EagleMeterFill") as §"x§).width;
         §25§.§5!G§(§"!>§,1,1);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§0!G§ = new §<'§(0,0,0,0);
         §3g§.movieClip.addChildAt(this.§0!G§,§3g§.movieClip.numChildren - 1);
         §3g§.getItemByName("MovieClip_EagleMeterEmpty").setVisibility(true);
         §3g§.getItemByName("MovieClip_EagleMeterFill").setVisibility(true);
         §25§.playSound("LevelCompletedTheme1");
         this.§0!G§.fadeToAlpha(0.7);
         var _loc1_:int = §9=§.controller.getEagleScore();
         this.§`!4§ = AngryBirdsFP11.§3!?§.§#J§(§-k§.§%D§);
         var _loc2_:* = _loc1_ > this.§`!4§;
         if(_loc2_)
         {
            this.§#!>§(_loc1_);
         }
         (§3g§.getItemByName("TextField_EaglePercentage") as §2"§).§^"§.text = _loc1_ + "%";
         §25§.playSound("Hiscore_Count",§"!>§,100);
         this.§#!E§ = §[!-§.§ set§.§6B§(this,{"mEagleScoreCounter":_loc1_},{"mEagleScoreCounter":0},_loc1_ / 100 * 4);
         this.§#!E§.onComplete = this.§=m§;
         this.§#!E§.play();
      }
      
      protected function §#!>§(param1:Number) : void
      {
         AngryBirdsFP11.§3!?§.§6!4§(§-k§.§%D§,param1);
      }
      
      protected function §=m§() : void
      {
         var _loc1_:GlowFilter = null;
         §25§.§0!5§(§"!>§);
         if(this.mEagleScoreCounter == 100)
         {
            §25§.playSound("Hiscore_Badge",§"!>§);
            _loc1_ = new GlowFilter(16777215,1,22,22,2.5,10);
            (§3g§.getItemByName("MovieClip_EagleMeterEffect") as §"x§).setVisibility(true);
            (§3g§.getItemByName("MovieClip_EagleMeterFill") as §"x§).mClip.filters = [_loc1_];
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §<!>§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(int(this.mEagleScoreCounter) > this.§`!4§)
         {
            (§3g§.getItemByName("TextField_EaglePercentage") as §2"§).§^"§.text = int(this.mEagleScoreCounter) + "%";
            (§3g§.getItemByName("TextField_EaglePercentageEffects") as §2"§).§^"§.text = int(this.mEagleScoreCounter) + "%";
         }
         else
         {
            (§3g§.getItemByName("TextField_EaglePercentage") as §2"§).§^"§.text = int(this.§`!4§) + "%";
            (§3g§.getItemByName("TextField_EaglePercentageEffects") as §2"§).§^"§.text = int(this.§`!4§) + "%";
         }
         var _loc3_:Rectangle = new Rectangle(0,0,this.§&N§ * (this.mEagleScoreCounter / 100),(§3g§.getItemByName("MovieClip_EagleMeterFill") as §"x§).height);
         (§3g§.getItemByName("MovieClip_EagleMeterFill") as §"x§).mClip.scrollRect = _loc3_;
         (§3g§.getItemByName("MovieClip_EagleMeterEffect") as §"x§).mClip.rotation = (§3g§.getItemByName("MovieClip_EagleMeterEffect") as §"x§).mClip.rotation + param1 / 20;
         if(mNextState.length > 0)
         {
            §9=§.§<!@§.clearLevel();
            return §<!>§.STATE_STATUS_COMPLETED;
         }
         return §<!>§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         if(this.§0!G§)
         {
            if(§3g§.movieClip.contains(this.§0!G§))
            {
               §3g§.movieClip.removeChild(this.§0!G§);
            }
            this.§0!G§.clean();
            this.§0!G§ = null;
         }
         §25§.§0!5§(§"!>§);
         this.mEagleScoreCounter = 0;
         if(this.§#!E§)
         {
            this.§#!E§.stop();
            this.§#!E§ = null;
         }
         (§3g§.getItemByName("MovieClip_EagleMeterFill") as §"x§).mClip.filters = [];
         (§3g§.getItemByName("MovieClip_EagleMeterEffect") as §"x§).setVisibility(false);
         (§3g§.getItemByName("Button_Menu") as §1r§).setComponentVisualState(§=;§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§3g§.getItemByName("Button_Replay") as §1r§).setComponentVisualState(§=;§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§3g§.getItemByName("Button_NextLevel") as §1r§).setComponentVisualState(§=;§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§]_§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
               §;O§.§ true§();
               mNextState = StateCutScene.§4!C§;
               break;
            case "REPLAY":
               §;O§.§%e§();
               mNextState = §;O§.§4!C§;
               break;
            case "MENU":
               §25§.§=!7§();
               mNextState = this.§9C§();
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§ j§.§@[§();
         }
      }
      
      public function §9C§() : String
      {
         return §8!F§.§4!C§;
      }
   }
}
