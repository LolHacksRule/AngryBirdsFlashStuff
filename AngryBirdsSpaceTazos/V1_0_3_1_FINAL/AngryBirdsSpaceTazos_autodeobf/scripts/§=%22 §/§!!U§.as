package §=" §
{
   import §+k§.§0"4§;
   import §+k§.§7x§;
   import §,!7§.§%!J§;
   import §,!7§.§2a§;
   import §,!7§.§8,§;
   import §4",§.§,!j§;
   import §6B§.§5![§;
   import §6B§.§?"2§;
   import §7!C§.§8!w§;
   import §71§.§;l§;
   import §9!L§.§8u§;
   import §9!U§.§15§;
   import §9!U§.§@F§;
   import §>"!§.§@!9§;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class §!!U§ extends §[!B§
   {
      
      public static const STATE_NAME:String = "LevelEndEagleState";
      
      private static const §6"=§:String = "ScoreLoopCountChannel";
       
      
      private var §0S§:§15§;
      
      private var §`!5§:§8u§;
      
      public var mEagleScoreCounter:Number;
      
      private var §&!H§:Number;
      
      private var §2L§:int;
      
      public function §!!U§(param1:§,!j§, param2:§;l§, param3:Boolean = false, param4:String = "LevelEndEagleState")
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         §6!J§ = new §0"4§(this);
         §6!J§.init(§7x§.§+2§.Views.View_LevelEndEagle[0]);
         this.§&!H§ = (§6!J§.getItemByName("MovieClip_EagleMeterFill") as §8,§).width;
         §@!9§.§#!-§(§6"=§,1,1);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.§`!5§ = new §8u§(0,0,0,0);
         §6!J§.movieClip.addChildAt(this.§`!5§,§6!J§.movieClip.numChildren - 1);
         (§6!J§.getItemByName("MovieClip_EagleMeterEmpty") as §8,§).setVisibility(true);
         (§6!J§.getItemByName("MovieClip_EagleMeterFill") as §8,§).setVisibility(true);
         §@!9§.playSound("LevelCompletedTheme1");
         this.§`!5§.§<"&§(0.7);
         var _loc2_:int = §8!w§.§79§.getEagleScore();
         this.§2L§ = §&"<§.§<!7§.§,!9§.userProgress.§%!O§(§]m§.currentLevel);
         var _loc3_:* = _loc2_ > this.§2L§;
         if(_loc3_)
         {
            this.§ !$§(_loc2_);
         }
         (§6!J§.getItemByName("TextField_EaglePercentage") as §2a§).§%!%§.text = _loc2_ + "%";
         §@!9§.playSound("Hiscore_Count",§6"=§,100);
         this.§0S§ = §@F§.§8!J§.§&6§(this,{"mEagleScoreCounter":_loc2_},{"mEagleScoreCounter":0},_loc2_ / 100 * 4);
         this.§0S§.onComplete = this.§-"+§;
         this.§0S§.play();
      }
      
      protected function § !$§(param1:Number) : void
      {
         §&"<§.§<!7§.§,!9§.userProgress.§ ""§(§]m§.currentLevel,param1);
      }
      
      protected function §-"+§() : void
      {
         var _loc1_:GlowFilter = null;
         §@!9§.§"!y§(§6"=§);
         if(this.mEagleScoreCounter == 100)
         {
            §@!9§.playSound("Hiscore_Badge",§6"=§);
            _loc1_ = new GlowFilter(16777215,1,22,22,2.5,10);
            (§6!J§.getItemByName("MovieClip_EagleMeterEffect") as §8,§).setVisibility(true);
            (§6!J§.getItemByName("MovieClip_EagleMeterFill") as §8,§).mClip.filters = [_loc1_];
         }
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         if(int(this.mEagleScoreCounter) > this.§2L§)
         {
            (§6!J§.getItemByName("TextField_EaglePercentage") as §2a§).§%!%§.text = int(this.mEagleScoreCounter) + "%";
            (§6!J§.getItemByName("TextField_EaglePercentageEffects") as §2a§).§%!%§.text = int(this.mEagleScoreCounter) + "%";
         }
         else
         {
            (§6!J§.getItemByName("TextField_EaglePercentage") as §2a§).§%!%§.text = int(this.§2L§) + "%";
            (§6!J§.getItemByName("TextField_EaglePercentageEffects") as §2a§).§%!%§.text = int(this.§2L§) + "%";
         }
         var _loc2_:Rectangle = new Rectangle(0,0,this.§&!H§ * (this.mEagleScoreCounter / 100),(§6!J§.getItemByName("MovieClip_EagleMeterFill") as §8,§).height);
         (§6!J§.getItemByName("MovieClip_EagleMeterFill") as §8,§).mClip.scrollRect = _loc2_;
         (§6!J§.getItemByName("MovieClip_EagleMeterEffect") as §8,§).mClip.rotation = (§6!J§.getItemByName("MovieClip_EagleMeterEffect") as §8,§).mClip.rotation + param1 / 20;
         if(nextState.length > 0)
         {
            §8!w§.§5!V§.clearLevel();
         }
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         if(this.§`!5§)
         {
            if(§6!J§.movieClip.contains(this.§`!5§))
            {
               §6!J§.movieClip.removeChild(this.§`!5§);
            }
            this.§`!5§.§&!§();
            this.§`!5§ = null;
         }
         §@!9§.§"!y§(§6"=§);
         this.mEagleScoreCounter = 0;
         if(this.§0S§)
         {
            this.§0S§.stop();
            this.§0S§ = null;
         }
         (§6!J§.getItemByName("MovieClip_EagleMeterFill") as §8,§).mClip.filters = [];
         (§6!J§.getItemByName("MovieClip_EagleMeterEffect") as §8,§).setVisibility(false);
         (§6!J§.getItemByName("Button_Menu") as §%!J§).setComponentVisualState(§5![§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§6!J§.getItemByName("Button_Replay") as §%!J§).setComponentVisualState(§5![§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§6!J§.getItemByName("Button_NextLevel") as §%!J§).setComponentVisualState(§5![§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§?"2§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
               §5u§();
               §'Q§(StateCutScene.STATE_NAME);
               break;
            case "REPLAY":
               §'Q§(§ Q§.STATE_NAME);
               break;
            case "MENU":
               §@!9§.§["6§();
               §'Q§(§]!"§.STATE_NAME);
               break;
            case "FULLSCREEN_BUTTON":
               §&"<§.§<!7§.§7!H§();
         }
      }
   }
}
