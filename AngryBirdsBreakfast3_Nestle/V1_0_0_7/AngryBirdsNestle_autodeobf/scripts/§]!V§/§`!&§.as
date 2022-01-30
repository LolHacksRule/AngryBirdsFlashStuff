package §]!V§
{
   import §!P§.§5!1§;
   import §'!u§.§&S§;
   import §-b§.§"!d§;
   import §-b§.§4`§;
   import §7"1§.§@!9§;
   import §;s§.§%!c§;
   import §<!0§.§'!%§;
   import §<!0§.§3!W§;
   import §>P§.§%`§;
   import §>P§.§4!]§;
   import §>P§.§73§;
   import §^6§.§;!j§;
   import §^6§.§=!A§;
   import com.angrybirds.§#Z§;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class §`!&§ extends §>!9§
   {
      
      public static const §+a§:String = "LevelEndEagleState";
      
      private static const §?z§:String = "ScoreLoopCountChannel";
       
      
      private var §""$§:§4`§;
      
      private var §5!,§:§@!9§;
      
      public var mEagleScoreCounter:Number;
      
      private var §0!2§:Number;
      
      private var §-3§:int;
      
      public function §`!&§(param1:§5!1§, param2:§&S§, param3:Boolean = false, param4:String = "LevelEndEagleState")
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         §5+§ = new §;!j§(this);
         §5+§.init(§=!A§.§`O§.Views.View_LevelEndEagle[0]);
         this.§0!2§ = (§5+§.getItemByName("MovieClip_EagleMeterFill") as §4!]§).width;
         §%!c§.§"!u§(§?z§,1,1);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.§5!,§ = new §@!9§(0,0,0,0);
         §5+§.movieClip.addChildAt(this.§5!,§,§5+§.movieClip.numChildren - 1);
         (§5+§.getItemByName("MovieClip_EagleMeterEmpty") as §4!]§).setVisibility(true);
         (§5+§.getItemByName("MovieClip_EagleMeterFill") as §4!]§).setVisibility(true);
         §%!c§.§8" §("LevelCompletedTheme1");
         this.§5!,§.§;!$§(0.7);
         var _loc2_:int = §#Z§.controller.getEagleScore();
         this.§-3§ = §,!X§.§>!G§.§>!I§.userProgress.§+T§(§97§.currentLevel);
         var _loc3_:* = _loc2_ > this.§-3§;
         if(_loc3_)
         {
            this.§4=§(_loc2_);
         }
         (§5+§.getItemByName("TextField_EaglePercentage") as §%`§).§=!=§.text = _loc2_ + "%";
         §%!c§.§8" §("Hiscore_Count",§?z§,100);
         this.§""$§ = §"!d§.§>!P§.§7R§(this,{"mEagleScoreCounter":_loc2_},{"mEagleScoreCounter":0},_loc2_ / 100 * 4);
         this.§""$§.onComplete = this.§ q§;
         this.§""$§.play();
      }
      
      protected function §4=§(param1:Number) : void
      {
         §,!X§.§>!G§.§>!I§.userProgress.§;n§(§97§.currentLevel,param1);
      }
      
      protected function § q§() : void
      {
         var _loc1_:GlowFilter = null;
         §%!c§.§#!G§(§?z§);
         if(this.mEagleScoreCounter == 100)
         {
            §%!c§.§8" §("Hiscore_Badge",§?z§);
            _loc1_ = new GlowFilter(16777215,1,22,22,2.5,10);
            (§5+§.getItemByName("MovieClip_EagleMeterEffect") as §4!]§).setVisibility(true);
            (§5+§.getItemByName("MovieClip_EagleMeterFill") as §4!]§).mClip.filters = [_loc1_];
         }
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         if(int(this.mEagleScoreCounter) > this.§-3§)
         {
            (§5+§.getItemByName("TextField_EaglePercentage") as §%`§).§=!=§.text = int(this.mEagleScoreCounter) + "%";
            (§5+§.getItemByName("TextField_EaglePercentageEffects") as §%`§).§=!=§.text = int(this.mEagleScoreCounter) + "%";
         }
         else
         {
            (§5+§.getItemByName("TextField_EaglePercentage") as §%`§).§=!=§.text = int(this.§-3§) + "%";
            (§5+§.getItemByName("TextField_EaglePercentageEffects") as §%`§).§=!=§.text = int(this.§-3§) + "%";
         }
         var _loc2_:Rectangle = new Rectangle(0,0,this.§0!2§ * (this.mEagleScoreCounter / 100),(§5+§.getItemByName("MovieClip_EagleMeterFill") as §4!]§).height);
         (§5+§.getItemByName("MovieClip_EagleMeterFill") as §4!]§).mClip.scrollRect = _loc2_;
         (§5+§.getItemByName("MovieClip_EagleMeterEffect") as §4!]§).mClip.rotation = (§5+§.getItemByName("MovieClip_EagleMeterEffect") as §4!]§).mClip.rotation + param1 / 20;
         if(nextState.length > 0)
         {
            §#Z§.§'0§.clearLevel();
         }
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         if(this.§5!,§)
         {
            if(§5+§.movieClip.contains(this.§5!,§))
            {
               §5+§.movieClip.removeChild(this.§5!,§);
            }
            this.§5!,§.§^!%§();
            this.§5!,§ = null;
         }
         §%!c§.§#!G§(§?z§);
         this.mEagleScoreCounter = 0;
         if(this.§""$§)
         {
            this.§""$§.stop();
            this.§""$§ = null;
         }
         (§5+§.getItemByName("MovieClip_EagleMeterFill") as §4!]§).mClip.filters = [];
         (§5+§.getItemByName("MovieClip_EagleMeterEffect") as §4!]§).setVisibility(false);
         (§5+§.getItemByName("Button_Menu") as §73§).setComponentVisualState(§3!W§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§5+§.getItemByName("Button_Replay") as §73§).setComponentVisualState(§3!W§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§5+§.getItemByName("Button_NextLevel") as §73§).setComponentVisualState(§3!W§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§'!%§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
               §8!,§();
               §8!`§(StateCutScene.§+a§);
               break;
            case "REPLAY":
               §8!`§(§5!h§.§+a§);
               break;
            case "MENU":
               §%!c§.§0O§();
               §8!`§(§&g§.§+a§);
               break;
            case "FULLSCREEN_BUTTON":
               §,!X§.§>!G§.§4I§();
         }
      }
   }
}
