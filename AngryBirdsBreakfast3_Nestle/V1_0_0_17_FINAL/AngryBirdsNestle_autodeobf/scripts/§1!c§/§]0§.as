package §1!c§
{
   import §%!B§.§0![§;
   import §'"!§.§+§;
   import §'"!§.§-!g§;
   import §,M§.§+f§;
   import §0!m§.§@!S§;
   import §1'§.§?>§;
   import §1`§.§7I§;
   import §1`§.§9%§;
   import §2u§.§7!&§;
   import §2u§.§7!m§;
   import §2u§.§]"%§;
   import §;g§.§0!o§;
   import §;g§.§]W§;
   import §[!Z§.§>D§;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class §]0§ extends §7X§
   {
      
      public static const §8"%§:String = "LevelEndEagleState";
      
      private static const §0K§:String = "ScoreLoopCountChannel";
       
      
      private var §?""§:§]W§;
      
      private var §]!b§:§?>§;
      
      public var mEagleScoreCounter:Number;
      
      private var § "#§:Number;
      
      private var §1R§:int;
      
      public function §]0§(param1:§0![§, param2:§+f§, param3:Boolean = false, param4:String = "LevelEndEagleState")
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         §^!T§ = new §9%§(this);
         §^!T§.init(§7I§.§7!%§.Views.View_LevelEndEagle[0]);
         this.§ "#§ = (§^!T§.getItemByName("MovieClip_EagleMeterFill") as §7!m§).width;
         §>D§.§0"6§(§0K§,1,1);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.§]!b§ = new §?>§(0,0,0,0);
         §^!T§.movieClip.addChildAt(this.§]!b§,§^!T§.movieClip.numChildren - 1);
         (§^!T§.getItemByName("MovieClip_EagleMeterEmpty") as §7!m§).setVisibility(true);
         (§^!T§.getItemByName("MovieClip_EagleMeterFill") as §7!m§).setVisibility(true);
         §>D§.§9!q§("LevelCompletedTheme1");
         this.§]!b§.§!!p§(0.7);
         var _loc2_:int = §@!S§.controller.getEagleScore();
         this.§1R§ = § !4§.§%"7§.§@D§.userProgress.§+!]§(§4a§.currentLevel);
         var _loc3_:* = _loc2_ > this.§1R§;
         if(_loc3_)
         {
            this.§!!s§(_loc2_);
         }
         (§^!T§.getItemByName("TextField_EaglePercentage") as §7!&§).§'!"§.text = _loc2_ + "%";
         §>D§.§9!q§("Hiscore_Count",§0K§,100);
         this.§?""§ = §0!o§.§,2§.§4!t§(this,{"mEagleScoreCounter":_loc2_},{"mEagleScoreCounter":0},_loc2_ / 100 * 4);
         this.§?""§.onComplete = this.§%L§;
         this.§?""§.play();
      }
      
      protected function §!!s§(param1:Number) : void
      {
         § !4§.§%"7§.§@D§.userProgress.§&!1§(§4a§.currentLevel,param1);
      }
      
      protected function §%L§() : void
      {
         var _loc1_:GlowFilter = null;
         §>D§.§6A§(§0K§);
         if(this.mEagleScoreCounter == 100)
         {
            §>D§.§9!q§("Hiscore_Badge",§0K§);
            _loc1_ = new GlowFilter(16777215,1,22,22,2.5,10);
            (§^!T§.getItemByName("MovieClip_EagleMeterEffect") as §7!m§).setVisibility(true);
            (§^!T§.getItemByName("MovieClip_EagleMeterFill") as §7!m§).mClip.filters = [_loc1_];
         }
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         if(int(this.mEagleScoreCounter) > this.§1R§)
         {
            (§^!T§.getItemByName("TextField_EaglePercentage") as §7!&§).§'!"§.text = int(this.mEagleScoreCounter) + "%";
            (§^!T§.getItemByName("TextField_EaglePercentageEffects") as §7!&§).§'!"§.text = int(this.mEagleScoreCounter) + "%";
         }
         else
         {
            (§^!T§.getItemByName("TextField_EaglePercentage") as §7!&§).§'!"§.text = int(this.§1R§) + "%";
            (§^!T§.getItemByName("TextField_EaglePercentageEffects") as §7!&§).§'!"§.text = int(this.§1R§) + "%";
         }
         var _loc2_:Rectangle = new Rectangle(0,0,this.§ "#§ * (this.mEagleScoreCounter / 100),(§^!T§.getItemByName("MovieClip_EagleMeterFill") as §7!m§).height);
         (§^!T§.getItemByName("MovieClip_EagleMeterFill") as §7!m§).mClip.scrollRect = _loc2_;
         (§^!T§.getItemByName("MovieClip_EagleMeterEffect") as §7!m§).mClip.rotation = (§^!T§.getItemByName("MovieClip_EagleMeterEffect") as §7!m§).mClip.rotation + param1 / 20;
         if(nextState.length > 0)
         {
            §@!S§.§2A§.clearLevel();
         }
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         if(this.§]!b§)
         {
            if(§^!T§.movieClip.contains(this.§]!b§))
            {
               §^!T§.movieClip.removeChild(this.§]!b§);
            }
            this.§]!b§.§,!#§();
            this.§]!b§ = null;
         }
         §>D§.§6A§(§0K§);
         this.mEagleScoreCounter = 0;
         if(this.§?""§)
         {
            this.§?""§.stop();
            this.§?""§ = null;
         }
         (§^!T§.getItemByName("MovieClip_EagleMeterFill") as §7!m§).mClip.filters = [];
         (§^!T§.getItemByName("MovieClip_EagleMeterEffect") as §7!m§).setVisibility(false);
         (§^!T§.getItemByName("Button_Menu") as §]"%§).setComponentVisualState(§-!g§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§^!T§.getItemByName("Button_Replay") as §]"%§).setComponentVisualState(§-!g§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§^!T§.getItemByName("Button_NextLevel") as §]"%§).setComponentVisualState(§-!g§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§+§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
               §2G§();
               §7"6§(StateCutScene.§8"%§);
               break;
            case "REPLAY":
               §7"6§(§'8§.§8"%§);
               break;
            case "MENU":
               §>D§.§>!%§();
               §7"6§(§^j§.§8"%§);
               break;
            case "FULLSCREEN_BUTTON":
               § !4§.§%"7§.§]!;§();
         }
      }
   }
}
