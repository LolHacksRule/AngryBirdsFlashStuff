package §,!"§
{
   import § !B§.§-#§;
   import §"U§.§!o§;
   import §"U§.§@4§;
   import §"U§.§^'§;
   import §&^§.§[!7§;
   import §'!O§.§'!#§;
   import §'K§.§3C§;
   import §'K§.§[!9§;
   import §6v§.§@V§;
   import §6v§.§`M§;
   import §8!B§.§#! §;
   import §]!-§.§`Z§;
   import §]!-§.§`o§;
   import §^]§.§`!K§;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class § true§ extends §'!#§
   {
      
      public static const §-A§:String = "LevelEndEagleState";
      
      private static const §%8§:String = "ScoreLoopCountChannel";
       
      
      private var §3=§:§[!9§;
      
      private var §!>§:§-#§;
      
      public var mEagleScoreCounter:Number;
      
      protected var §=!I§:Number;
      
      protected var §&!1§:int;
      
      public function § true§(param1:Boolean = false, param2:String = "LevelEndEagleState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §0q§ = new §`o§(this);
         §0q§.init(§`Z§.§5c§.Views.View_LevelEndEagle[0]);
         this.§=!I§ = (§0q§.getItemByName("MovieClip_EagleMeterFill") as §!o§).width;
         §[!7§.§'<§(§%8§,1,1);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§!>§ = new §-#§(0,0,0,0);
         §0q§.movieClip.addChildAt(this.§!>§,§0q§.movieClip.numChildren - 1);
         §0q§.getItemByName("MovieClip_EagleMeterEmpty").setVisibility(true);
         §0q§.getItemByName("MovieClip_EagleMeterFill").setVisibility(true);
         §[!7§.playSound("LevelCompletedTheme1");
         this.§!>§.fadeToAlpha(0.7);
         var _loc1_:int = §#! §.controller.getEagleScore();
         this.§&!1§ = AngryBirdsFP11.§`I§.§`!C§(§`!K§.§5g§);
         var _loc2_:* = _loc1_ > this.§&!1§;
         if(_loc2_)
         {
            this.§ !@§(_loc1_);
         }
         (§0q§.getItemByName("TextField_EaglePercentage") as §@4§).§!!@§.text = _loc1_ + "%";
         §[!7§.playSound("Hiscore_Count",§%8§,100);
         this.§3=§ = §3C§.§>o§.§<t§(this,{"mEagleScoreCounter":_loc1_},{"mEagleScoreCounter":0},_loc1_ / 100 * 4);
         this.§3=§.onComplete = this.§7'§;
         this.§3=§.play();
      }
      
      protected function § !@§(param1:Number) : void
      {
         AngryBirdsFP11.§`I§.§6y§(§`!K§.§5g§,param1);
      }
      
      protected function §7'§() : void
      {
         var _loc1_:GlowFilter = null;
         §[!7§.§9!K§(§%8§);
         if(this.mEagleScoreCounter == 100)
         {
            §[!7§.playSound("Hiscore_Badge",§%8§);
            _loc1_ = new GlowFilter(16777215,1,22,22,2.5,10);
            (§0q§.getItemByName("MovieClip_EagleMeterEffect") as §!o§).setVisibility(true);
            (§0q§.getItemByName("MovieClip_EagleMeterFill") as §!o§).mClip.filters = [_loc1_];
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §'!#§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(int(this.mEagleScoreCounter) > this.§&!1§)
         {
            (§0q§.getItemByName("TextField_EaglePercentage") as §@4§).§!!@§.text = int(this.mEagleScoreCounter) + "%";
            (§0q§.getItemByName("TextField_EaglePercentageEffects") as §@4§).§!!@§.text = int(this.mEagleScoreCounter) + "%";
         }
         else
         {
            (§0q§.getItemByName("TextField_EaglePercentage") as §@4§).§!!@§.text = int(this.§&!1§) + "%";
            (§0q§.getItemByName("TextField_EaglePercentageEffects") as §@4§).§!!@§.text = int(this.§&!1§) + "%";
         }
         var _loc3_:Rectangle = new Rectangle(0,0,this.§=!I§ * (this.mEagleScoreCounter / 100),(§0q§.getItemByName("MovieClip_EagleMeterFill") as §!o§).height);
         (§0q§.getItemByName("MovieClip_EagleMeterFill") as §!o§).mClip.scrollRect = _loc3_;
         (§0q§.getItemByName("MovieClip_EagleMeterEffect") as §!o§).mClip.rotation = (§0q§.getItemByName("MovieClip_EagleMeterEffect") as §!o§).mClip.rotation + param1 / 20;
         if(mNextState.length > 0)
         {
            §#! §.§`'§.clearLevel();
            return §'!#§.STATE_STATUS_COMPLETED;
         }
         return §'!#§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         if(this.§!>§)
         {
            if(§0q§.movieClip.contains(this.§!>§))
            {
               §0q§.movieClip.removeChild(this.§!>§);
            }
            this.§!>§.clean();
            this.§!>§ = null;
         }
         §[!7§.§9!K§(§%8§);
         this.mEagleScoreCounter = 0;
         if(this.§3=§)
         {
            this.§3=§.stop();
            this.§3=§ = null;
         }
         (§0q§.getItemByName("MovieClip_EagleMeterFill") as §!o§).mClip.filters = [];
         (§0q§.getItemByName("MovieClip_EagleMeterEffect") as §!o§).setVisibility(false);
         (§0q§.getItemByName("Button_Menu") as §^'§).setComponentVisualState(§@V§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§0q§.getItemByName("Button_Replay") as §^'§).setComponentVisualState(§@V§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§0q§.getItemByName("Button_NextLevel") as §^'§).setComponentVisualState(§@V§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§`M§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
               §-O§.§ b§();
               mNextState = StateCutScene.§-A§;
               break;
            case "REPLAY":
               §-O§.§8!5§();
               mNextState = §-O§.§-A§;
               break;
            case "MENU":
               §[!7§.§=0§();
               mNextState = this.§2V§();
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§`y§.§,,§();
         }
      }
      
      public function §2V§() : String
      {
         return §0!5§.§-A§;
      }
   }
}
