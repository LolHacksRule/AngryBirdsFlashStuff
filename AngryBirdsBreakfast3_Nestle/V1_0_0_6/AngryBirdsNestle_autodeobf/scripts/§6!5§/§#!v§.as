package §6!5§
{
   import § !T§.§ q§;
   import § ,§.§>u§;
   import §&<§.§@j§;
   import §&<§.§^!#§;
   import §+!5§.§2O§;
   import §6t§.§3`§;
   import §6t§.§<!'§;
   import §@!6§.§3!5§;
   import §[!F§.§1c§;
   import §[!F§.§>""§;
   import §[!F§.§^!g§;
   import §^!`§.§#p§;
   import §^!`§.§-"5§;
   import com.angrybirds.§6!E§;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class §#!v§ extends §3!3§
   {
      
      public static const §7w§:String = "LevelEndEagleState";
      
      private static const §%H§:String = "ScoreLoopCountChannel";
       
      
      private var § !Y§:§<!'§;
      
      private var §0!M§:§2O§;
      
      public var mEagleScoreCounter:Number;
      
      private var §;,§:Number;
      
      private var § !,§:int;
      
      public function §#!v§(param1:§ q§, param2:§>u§, param3:Boolean = false, param4:String = "LevelEndEagleState")
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         § !z§ = new §-"5§(this);
         § !z§.init(§#p§.§'"0§.Views.View_LevelEndEagle[0]);
         this.§;,§ = (§ !z§.getItemByName("MovieClip_EagleMeterFill") as §>""§).width;
         §3!5§.§`Z§(§%H§,1,1);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.§0!M§ = new §2O§(0,0,0,0);
         § !z§.movieClip.addChildAt(this.§0!M§,§ !z§.movieClip.numChildren - 1);
         (§ !z§.getItemByName("MovieClip_EagleMeterEmpty") as §>""§).setVisibility(true);
         (§ !z§.getItemByName("MovieClip_EagleMeterFill") as §>""§).setVisibility(true);
         §3!5§.§<!9§("LevelCompletedTheme1");
         this.§0!M§.§5!F§(0.7);
         var _loc2_:int = §6!E§.controller.getEagleScore();
         this.§ !,§ = §-!I§.§[f§.§?4§.userProgress.§^!y§(§="4§.currentLevel);
         var _loc3_:* = _loc2_ > this.§ !,§;
         if(_loc3_)
         {
            this.§31§(_loc2_);
         }
         (§ !z§.getItemByName("TextField_EaglePercentage") as §1c§).§ e§.text = _loc2_ + "%";
         §3!5§.§<!9§("Hiscore_Count",§%H§,100);
         this.§ !Y§ = §3`§.§<"5§.§^g§(this,{"mEagleScoreCounter":_loc2_},{"mEagleScoreCounter":0},_loc2_ / 100 * 4);
         this.§ !Y§.onComplete = this.§@`§;
         this.§ !Y§.play();
      }
      
      protected function §31§(param1:Number) : void
      {
         §-!I§.§[f§.§?4§.userProgress.§>!-§(§="4§.currentLevel,param1);
      }
      
      protected function §@`§() : void
      {
         var _loc1_:GlowFilter = null;
         §3!5§.§55§(§%H§);
         if(this.mEagleScoreCounter == 100)
         {
            §3!5§.§<!9§("Hiscore_Badge",§%H§);
            _loc1_ = new GlowFilter(16777215,1,22,22,2.5,10);
            (§ !z§.getItemByName("MovieClip_EagleMeterEffect") as §>""§).setVisibility(true);
            (§ !z§.getItemByName("MovieClip_EagleMeterFill") as §>""§).mClip.filters = [_loc1_];
         }
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         if(int(this.mEagleScoreCounter) > this.§ !,§)
         {
            (§ !z§.getItemByName("TextField_EaglePercentage") as §1c§).§ e§.text = int(this.mEagleScoreCounter) + "%";
            (§ !z§.getItemByName("TextField_EaglePercentageEffects") as §1c§).§ e§.text = int(this.mEagleScoreCounter) + "%";
         }
         else
         {
            (§ !z§.getItemByName("TextField_EaglePercentage") as §1c§).§ e§.text = int(this.§ !,§) + "%";
            (§ !z§.getItemByName("TextField_EaglePercentageEffects") as §1c§).§ e§.text = int(this.§ !,§) + "%";
         }
         var _loc2_:Rectangle = new Rectangle(0,0,this.§;,§ * (this.mEagleScoreCounter / 100),(§ !z§.getItemByName("MovieClip_EagleMeterFill") as §>""§).height);
         (§ !z§.getItemByName("MovieClip_EagleMeterFill") as §>""§).mClip.scrollRect = _loc2_;
         (§ !z§.getItemByName("MovieClip_EagleMeterEffect") as §>""§).mClip.rotation = (§ !z§.getItemByName("MovieClip_EagleMeterEffect") as §>""§).mClip.rotation + param1 / 20;
         if(nextState.length > 0)
         {
            §6!E§.§7I§.clearLevel();
         }
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         if(this.§0!M§)
         {
            if(§ !z§.movieClip.contains(this.§0!M§))
            {
               § !z§.movieClip.removeChild(this.§0!M§);
            }
            this.§0!M§.§[!R§();
            this.§0!M§ = null;
         }
         §3!5§.§55§(§%H§);
         this.mEagleScoreCounter = 0;
         if(this.§ !Y§)
         {
            this.§ !Y§.stop();
            this.§ !Y§ = null;
         }
         (§ !z§.getItemByName("MovieClip_EagleMeterFill") as §>""§).mClip.filters = [];
         (§ !z§.getItemByName("MovieClip_EagleMeterEffect") as §>""§).setVisibility(false);
         (§ !z§.getItemByName("Button_Menu") as §^!g§).setComponentVisualState(§@j§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§ !z§.getItemByName("Button_Replay") as §^!g§).setComponentVisualState(§@j§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§ !z§.getItemByName("Button_NextLevel") as §^!g§).setComponentVisualState(§@j§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§^!#§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
               § for§();
               §?n§(StateCutScene.§7w§);
               break;
            case "REPLAY":
               §?n§(§4!R§.§7w§);
               break;
            case "MENU":
               §3!5§.§,!8§();
               §?n§(§^!+§.§7w§);
               break;
            case "FULLSCREEN_BUTTON":
               §-!I§.§[f§.§?U§();
         }
      }
   }
}
