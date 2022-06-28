package § !@§
{
   import §#P§.§ !=§;
   import §#P§.§@7§;
   import §#X§.§,!F§;
   import §%4§.§7-§;
   import §%4§.§9O§;
   import §%4§.§`a§;
   import §-!D§.§4!,§;
   import §-!D§.§5A§;
   import §0!#§.§-P§;
   import §0!#§.§0K§;
   import §0,§.§4V§;
   import §1!-§.§[4§;
   import §5!L§.§=w§;
   import §7g§.§1Q§;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class §&b§ extends §1Q§
   {
      
      public static const §>9§:String = "LevelEndEagleState";
      
      private static const §4]§:String = "ScoreLoopCountChannel";
       
      
      private var §%!?§:§ !=§;
      
      private var §+f§:§4V§;
      
      public var mEagleScoreCounter:Number;
      
      protected var §`M§:Number;
      
      protected var §"!G§:int;
      
      public function §&b§(param1:Boolean = false, param2:String = "LevelEndEagleState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §]F§ = new §4!,§(this);
         §]F§.init(§5A§.§;L§.Views.View_LevelEndEagle[0]);
         this.§`M§ = (§]F§.getItemByName("MovieClip_EagleMeterFill") as §9O§).width;
         §,!F§.§@o§(§4]§,1,1);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§+f§ = new §4V§(0,0,0,0);
         §]F§.movieClip.addChildAt(this.§+f§,§]F§.movieClip.numChildren - 1);
         §]F§.getItemByName("MovieClip_EagleMeterEmpty").setVisibility(true);
         §]F§.getItemByName("MovieClip_EagleMeterFill").setVisibility(true);
         §,!F§.§;v§("LevelCompletedTheme1");
         this.§+f§.§[!'§(0.7);
         var _loc1_:int = §=w§.controller.getEagleScore();
         this.§"!G§ = AngryBirdsFP11.sUserProgress.§3I§(§[4§.§"!>§);
         var _loc2_:* = _loc1_ > this.§"!G§;
         if(_loc2_)
         {
            this.§]!#§(_loc1_);
         }
         (§]F§.getItemByName("TextField_EaglePercentage") as §`a§).§@w§.text = _loc1_ + "%";
         §,!F§.§;v§("Hiscore_Count",§4]§,100);
         this.§%!?§ = §@7§.§@6§.§3!%§(this,{"mEagleScoreCounter":_loc1_},{"mEagleScoreCounter":0},_loc1_ / 100 * 4);
         this.§%!?§.onComplete = this.§?!1§;
         this.§%!?§.play();
      }
      
      protected function §]!#§(param1:Number) : void
      {
         AngryBirdsFP11.sUserProgress.§7z§(§[4§.§"!>§,param1);
      }
      
      protected function §?!1§() : void
      {
         var _loc1_:GlowFilter = null;
         §,!F§.§@!9§(§4]§);
         if(this.mEagleScoreCounter == 100)
         {
            §,!F§.§;v§("Hiscore_Badge",§4]§);
            _loc1_ = new GlowFilter(16777215,1,22,22,2.5,10);
            (§]F§.getItemByName("MovieClip_EagleMeterEffect") as §9O§).setVisibility(true);
            (§]F§.getItemByName("MovieClip_EagleMeterFill") as §9O§).mClip.filters = [_loc1_];
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §1Q§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(int(this.mEagleScoreCounter) > this.§"!G§)
         {
            (§]F§.getItemByName("TextField_EaglePercentage") as §`a§).§@w§.text = int(this.mEagleScoreCounter) + "%";
            (§]F§.getItemByName("TextField_EaglePercentageEffects") as §`a§).§@w§.text = int(this.mEagleScoreCounter) + "%";
         }
         else
         {
            (§]F§.getItemByName("TextField_EaglePercentage") as §`a§).§@w§.text = int(this.§"!G§) + "%";
            (§]F§.getItemByName("TextField_EaglePercentageEffects") as §`a§).§@w§.text = int(this.§"!G§) + "%";
         }
         var _loc3_:Rectangle = new Rectangle(0,0,this.§`M§ * (this.mEagleScoreCounter / 100),(§]F§.getItemByName("MovieClip_EagleMeterFill") as §9O§).height);
         (§]F§.getItemByName("MovieClip_EagleMeterFill") as §9O§).mClip.scrollRect = _loc3_;
         (§]F§.getItemByName("MovieClip_EagleMeterEffect") as §9O§).mClip.rotation = (§]F§.getItemByName("MovieClip_EagleMeterEffect") as §9O§).mClip.rotation + param1 / 20;
         if(mNextState.length > 0)
         {
            §=w§.§ o§.clearLevel();
            return §1Q§.STATE_STATUS_COMPLETED;
         }
         return §1Q§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         if(this.§+f§)
         {
            if(§]F§.movieClip.contains(this.§+f§))
            {
               §]F§.movieClip.removeChild(this.§+f§);
            }
            this.§+f§.clean();
            this.§+f§ = null;
         }
         §,!F§.§@!9§(§4]§);
         this.mEagleScoreCounter = 0;
         if(this.§%!?§)
         {
            this.§%!?§.stop();
            this.§%!?§ = null;
         }
         (§]F§.getItemByName("MovieClip_EagleMeterFill") as §9O§).mClip.filters = [];
         (§]F§.getItemByName("MovieClip_EagleMeterEffect") as §9O§).setVisibility(false);
         (§]F§.getItemByName("Button_Menu") as §7-§).setComponentVisualState(§0K§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§]F§.getItemByName("Button_Replay") as §7-§).setComponentVisualState(§0K§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§]F§.getItemByName("Button_NextLevel") as §7-§).setComponentVisualState(§0K§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§-P§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
               §^!K§.§+!4§();
               mNextState = StateCutScene.§>9§;
               break;
            case "REPLAY":
               §^!K§.§@!<§();
               mNextState = §^!K§.§>9§;
               break;
            case "MENU":
               §,!F§.§?X§();
               mNextState = this.§6!9§();
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§ y§.§-!$§();
         }
      }
      
      public function §6!9§() : String
      {
         return §6!@§.§>9§;
      }
   }
}
