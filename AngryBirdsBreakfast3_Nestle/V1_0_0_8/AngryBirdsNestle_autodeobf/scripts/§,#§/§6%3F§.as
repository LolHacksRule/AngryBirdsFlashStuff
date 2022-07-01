package §,#§
{
   import §"!G§.§3!f§;
   import §53§.§6!u§;
   import §53§.§["$§;
   import §5<§.§58§;
   import §5<§.§8!1§;
   import §8!e§.§3"&§;
   import §8q§.§]d§;
   import §;"+§.§"!I§;
   import §;"+§.§0?§;
   import §;"+§.§9!M§;
   import §=b§.§5!p§;
   import §>P§.§,3§;
   import §>P§.§-U§;
   import com.angrybirds.§4"6§;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class §6?§ extends §@!4§
   {
      
      public static const §'u§:String = "LevelEndEagleState";
      
      private static const §@!0§:String = "ScoreLoopCountChannel";
       
      
      private var §2^§:§["$§;
      
      private var § Y§:§5!p§;
      
      public var mEagleScoreCounter:Number;
      
      private var §4!b§:Number;
      
      private var §%!4§:int;
      
      public function §6?§(param1:§3"&§, param2:§3!f§, param3:Boolean = false, param4:String = "LevelEndEagleState")
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         §^!6§ = new §58§(this);
         §^!6§.init(§8!1§.§31§.Views.View_LevelEndEagle[0]);
         this.§4!b§ = (§^!6§.getItemByName("MovieClip_EagleMeterFill") as §0?§).width;
         §]d§.§[!$§(§@!0§,1,1);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.§ Y§ = new §5!p§(0,0,0,0);
         §^!6§.movieClip.addChildAt(this.§ Y§,§^!6§.movieClip.numChildren - 1);
         (§^!6§.getItemByName("MovieClip_EagleMeterEmpty") as §0?§).setVisibility(true);
         (§^!6§.getItemByName("MovieClip_EagleMeterFill") as §0?§).setVisibility(true);
         §]d§.§^!J§("LevelCompletedTheme1");
         this.§ Y§.§<!9§(0.7);
         var _loc2_:int = §4"6§.controller.getEagleScore();
         this.§%!4§ = §-O§.§5!1§.§]u§.userProgress.§8!w§(§!3§.currentLevel);
         var _loc3_:* = _loc2_ > this.§%!4§;
         if(_loc3_)
         {
            this.§5b§(_loc2_);
         }
         (§^!6§.getItemByName("TextField_EaglePercentage") as §"!I§).§6s§.text = _loc2_ + "%";
         §]d§.§^!J§("Hiscore_Count",§@!0§,100);
         this.§2^§ = §6!u§.§"e§.§0!O§(this,{"mEagleScoreCounter":_loc2_},{"mEagleScoreCounter":0},_loc2_ / 100 * 4);
         this.§2^§.onComplete = this.§&""§;
         this.§2^§.play();
      }
      
      protected function §5b§(param1:Number) : void
      {
         §-O§.§5!1§.§]u§.userProgress.§+E§(§!3§.currentLevel,param1);
      }
      
      protected function §&""§() : void
      {
         var _loc1_:GlowFilter = null;
         §]d§.§<"+§(§@!0§);
         if(this.mEagleScoreCounter == 100)
         {
            §]d§.§^!J§("Hiscore_Badge",§@!0§);
            _loc1_ = new GlowFilter(16777215,1,22,22,2.5,10);
            (§^!6§.getItemByName("MovieClip_EagleMeterEffect") as §0?§).setVisibility(true);
            (§^!6§.getItemByName("MovieClip_EagleMeterFill") as §0?§).mClip.filters = [_loc1_];
         }
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         if(int(this.mEagleScoreCounter) > this.§%!4§)
         {
            (§^!6§.getItemByName("TextField_EaglePercentage") as §"!I§).§6s§.text = int(this.mEagleScoreCounter) + "%";
            (§^!6§.getItemByName("TextField_EaglePercentageEffects") as §"!I§).§6s§.text = int(this.mEagleScoreCounter) + "%";
         }
         else
         {
            (§^!6§.getItemByName("TextField_EaglePercentage") as §"!I§).§6s§.text = int(this.§%!4§) + "%";
            (§^!6§.getItemByName("TextField_EaglePercentageEffects") as §"!I§).§6s§.text = int(this.§%!4§) + "%";
         }
         var _loc2_:Rectangle = new Rectangle(0,0,this.§4!b§ * (this.mEagleScoreCounter / 100),(§^!6§.getItemByName("MovieClip_EagleMeterFill") as §0?§).height);
         (§^!6§.getItemByName("MovieClip_EagleMeterFill") as §0?§).mClip.scrollRect = _loc2_;
         (§^!6§.getItemByName("MovieClip_EagleMeterEffect") as §0?§).mClip.rotation = (§^!6§.getItemByName("MovieClip_EagleMeterEffect") as §0?§).mClip.rotation + param1 / 20;
         if(nextState.length > 0)
         {
            §4"6§.§;!k§.clearLevel();
         }
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         if(this.§ Y§)
         {
            if(§^!6§.movieClip.contains(this.§ Y§))
            {
               §^!6§.movieClip.removeChild(this.§ Y§);
            }
            this.§ Y§.§6T§();
            this.§ Y§ = null;
         }
         §]d§.§<"+§(§@!0§);
         this.mEagleScoreCounter = 0;
         if(this.§2^§)
         {
            this.§2^§.stop();
            this.§2^§ = null;
         }
         (§^!6§.getItemByName("MovieClip_EagleMeterFill") as §0?§).mClip.filters = [];
         (§^!6§.getItemByName("MovieClip_EagleMeterEffect") as §0?§).setVisibility(false);
         (§^!6§.getItemByName("Button_Menu") as §9!M§).setComponentVisualState(§-U§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§^!6§.getItemByName("Button_Replay") as §9!M§).setComponentVisualState(§-U§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§^!6§.getItemByName("Button_NextLevel") as §9!M§).setComponentVisualState(§-U§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§,3§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
               §@$§();
               §'"6§(StateCutScene.§'u§);
               break;
            case "REPLAY":
               §'"6§(§ K§.§'u§);
               break;
            case "MENU":
               §]d§.§]!u§();
               §'"6§(§=%§.§'u§);
               break;
            case "FULLSCREEN_BUTTON":
               §-O§.§5!1§.§0`§();
         }
      }
   }
}
