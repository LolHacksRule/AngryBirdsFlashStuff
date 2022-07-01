package §?!E§
{
   import §&!>§.§3!k§;
   import §'<§.§=!o§;
   import §02§.§+!b§;
   import §02§.§`%§;
   import §;!b§.§%>§;
   import §><§.§0!M§;
   import §><§.§4!N§;
   import §@#§.§4!O§;
   import §@#§.§5!"§;
   import §@#§.§>L§;
   import §[!b§.§'!R§;
   import §[!b§.§]"-§;
   import §`!_§.§[!q§;
   import com.angrybirds.§6U§;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class §2j§ extends §5"#§
   {
      
      public static const §+B§:String = "LevelEndEagleState";
      
      private static const §=" §:String = "ScoreLoopCountChannel";
       
      
      private var §'7§:§4!N§;
      
      private var §[""§:§[!q§;
      
      public var mEagleScoreCounter:Number;
      
      private var §-!!§:Number;
      
      private var §]n§:int;
      
      public function §2j§(param1:§=!o§, param2:§%>§, param3:Boolean = false, param4:String = "LevelEndEagleState")
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         §#2§ = new §`%§(this);
         §#2§.init(§+!b§.§#!P§.Views.View_LevelEndEagle[0]);
         this.§-!!§ = (§#2§.getItemByName("MovieClip_EagleMeterFill") as §5!"§).width;
         §3!k§.§[y§(§=" §,1,1);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.§[""§ = new §[!q§(0,0,0,0);
         §#2§.movieClip.addChildAt(this.§[""§,§#2§.movieClip.numChildren - 1);
         (§#2§.getItemByName("MovieClip_EagleMeterEmpty") as §5!"§).setVisibility(true);
         (§#2§.getItemByName("MovieClip_EagleMeterFill") as §5!"§).setVisibility(true);
         §3!k§.§]"4§("LevelCompletedTheme1");
         this.§[""§.§,>§(0.7);
         var _loc2_:int = §6U§.controller.getEagleScore();
         this.§]n§ = §-!l§.§"x§.§?"&§.userProgress.§#!1§(§+o§.currentLevel);
         var _loc3_:* = _loc2_ > this.§]n§;
         if(_loc3_)
         {
            this.§ k§(_loc2_);
         }
         (§#2§.getItemByName("TextField_EaglePercentage") as §>L§).§<!=§.text = _loc2_ + "%";
         §3!k§.§]"4§("Hiscore_Count",§=" §,100);
         this.§'7§ = §0!M§.§?!+§.§3d§(this,{"mEagleScoreCounter":_loc2_},{"mEagleScoreCounter":0},_loc2_ / 100 * 4);
         this.§'7§.onComplete = this.§3!v§;
         this.§'7§.play();
      }
      
      protected function § k§(param1:Number) : void
      {
         §-!l§.§"x§.§?"&§.userProgress.§"?§(§+o§.currentLevel,param1);
      }
      
      protected function §3!v§() : void
      {
         var _loc1_:GlowFilter = null;
         §3!k§.§4[§(§=" §);
         if(this.mEagleScoreCounter == 100)
         {
            §3!k§.§]"4§("Hiscore_Badge",§=" §);
            _loc1_ = new GlowFilter(16777215,1,22,22,2.5,10);
            (§#2§.getItemByName("MovieClip_EagleMeterEffect") as §5!"§).setVisibility(true);
            (§#2§.getItemByName("MovieClip_EagleMeterFill") as §5!"§).mClip.filters = [_loc1_];
         }
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         if(int(this.mEagleScoreCounter) > this.§]n§)
         {
            (§#2§.getItemByName("TextField_EaglePercentage") as §>L§).§<!=§.text = int(this.mEagleScoreCounter) + "%";
            (§#2§.getItemByName("TextField_EaglePercentageEffects") as §>L§).§<!=§.text = int(this.mEagleScoreCounter) + "%";
         }
         else
         {
            (§#2§.getItemByName("TextField_EaglePercentage") as §>L§).§<!=§.text = int(this.§]n§) + "%";
            (§#2§.getItemByName("TextField_EaglePercentageEffects") as §>L§).§<!=§.text = int(this.§]n§) + "%";
         }
         var _loc2_:Rectangle = new Rectangle(0,0,this.§-!!§ * (this.mEagleScoreCounter / 100),(§#2§.getItemByName("MovieClip_EagleMeterFill") as §5!"§).height);
         (§#2§.getItemByName("MovieClip_EagleMeterFill") as §5!"§).mClip.scrollRect = _loc2_;
         (§#2§.getItemByName("MovieClip_EagleMeterEffect") as §5!"§).mClip.rotation = (§#2§.getItemByName("MovieClip_EagleMeterEffect") as §5!"§).mClip.rotation + param1 / 20;
         if(nextState.length > 0)
         {
            §6U§.§+_§.clearLevel();
         }
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         if(this.§[""§)
         {
            if(§#2§.movieClip.contains(this.§[""§))
            {
               §#2§.movieClip.removeChild(this.§[""§);
            }
            this.§[""§.§=!I§();
            this.§[""§ = null;
         }
         §3!k§.§4[§(§=" §);
         this.mEagleScoreCounter = 0;
         if(this.§'7§)
         {
            this.§'7§.stop();
            this.§'7§ = null;
         }
         (§#2§.getItemByName("MovieClip_EagleMeterFill") as §5!"§).mClip.filters = [];
         (§#2§.getItemByName("MovieClip_EagleMeterEffect") as §5!"§).setVisibility(false);
         (§#2§.getItemByName("Button_Menu") as §4!O§).setComponentVisualState(§]"-§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§#2§.getItemByName("Button_Replay") as §4!O§).setComponentVisualState(§]"-§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§#2§.getItemByName("Button_NextLevel") as §4!O§).setComponentVisualState(§]"-§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§'!R§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
               §6!p§();
               §0!w§(StateCutScene.§+B§);
               break;
            case "REPLAY":
               §0!w§(§62§.§+B§);
               break;
            case "MENU":
               §3!k§.§#!3§();
               §0!w§(§]l§.§+B§);
               break;
            case "FULLSCREEN_BUTTON":
               §-!l§.§"x§.§3l§();
         }
      }
   }
}
