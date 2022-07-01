package §#!]§
{
   import §!R§.§#!L§;
   import §!R§.§-!T§;
   import §+!2§.§%!-§;
   import §+!2§.§0!%§;
   import §+T§.§1!7§;
   import §3!0§.§`i§;
   import §4Y§.§ `§;
   import §4Y§.§&0§;
   import §4Y§.§7`§;
   import §7"6§.§^!_§;
   import §;X§.§4!@§;
   import §@!0§.§%"!§;
   import §@!0§.§^!T§;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class §=A§ extends §3_§
   {
      
      public static const §]!y§:String = "LevelEndEagleState";
      
      private static const §"D§:String = "ScoreLoopCountChannel";
       
      
      private var §const§:§^!T§;
      
      private var §4!?§:§1!7§;
      
      public var mEagleScoreCounter:Number;
      
      private var §2H§:Number;
      
      private var §1!b§:int;
      
      public function §=A§(param1:§-g§, param2:§^!_§, param3:Boolean = false, param4:String = "LevelEndEagleState")
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         §4!q§ = new §0!%§(this);
         §4!q§.init(§%!-§.§#t§.Views.View_LevelEndEagle[0]);
         this.§2H§ = (§4!q§.getItemByName("MovieClip_EagleMeterFill") as §7`§).width;
         §4!@§.§=x§(§"D§,1,1);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.§4!?§ = new §1!7§(0,0,0,0);
         §4!q§.movieClip.addChildAt(this.§4!?§,§4!q§.movieClip.numChildren - 1);
         (§4!q§.getItemByName("MovieClip_EagleMeterEmpty") as §7`§).setVisibility(true);
         (§4!q§.getItemByName("MovieClip_EagleMeterFill") as §7`§).setVisibility(true);
         §4!@§.§`!w§("LevelCompletedTheme1");
         this.§4!?§.§2u§(0.7);
         var _loc2_:int = §`i§.controller.getEagleScore();
         this.§1!b§ = §-!2§.§7O§.§ !n§.userProgress.§4F§(§#n§.currentLevel);
         var _loc3_:* = _loc2_ > this.§1!b§;
         if(_loc3_)
         {
            this.§<r§(_loc2_);
         }
         (§4!q§.getItemByName("TextField_EaglePercentage") as §&0§).§"S§.text = _loc2_ + "%";
         §4!@§.§`!w§("Hiscore_Count",§"D§,100);
         this.§const§ = §%"!§.§&!;§.§"!]§(this,{"mEagleScoreCounter":_loc2_},{"mEagleScoreCounter":0},_loc2_ / 100 * 4);
         this.§const§.onComplete = this.§]d§;
         this.§const§.play();
      }
      
      protected function §<r§(param1:Number) : void
      {
         §-!2§.§7O§.§ !n§.userProgress.§]!7§(§#n§.currentLevel,param1);
      }
      
      protected function §]d§() : void
      {
         var _loc1_:GlowFilter = null;
         §4!@§.§`[§(§"D§);
         if(this.mEagleScoreCounter == 100)
         {
            §4!@§.§`!w§("Hiscore_Badge",§"D§);
            _loc1_ = new GlowFilter(16777215,1,22,22,2.5,10);
            (§4!q§.getItemByName("MovieClip_EagleMeterEffect") as §7`§).setVisibility(true);
            (§4!q§.getItemByName("MovieClip_EagleMeterFill") as §7`§).mClip.filters = [_loc1_];
         }
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         if(int(this.mEagleScoreCounter) > this.§1!b§)
         {
            (§4!q§.getItemByName("TextField_EaglePercentage") as §&0§).§"S§.text = int(this.mEagleScoreCounter) + "%";
            (§4!q§.getItemByName("TextField_EaglePercentageEffects") as §&0§).§"S§.text = int(this.mEagleScoreCounter) + "%";
         }
         else
         {
            (§4!q§.getItemByName("TextField_EaglePercentage") as §&0§).§"S§.text = int(this.§1!b§) + "%";
            (§4!q§.getItemByName("TextField_EaglePercentageEffects") as §&0§).§"S§.text = int(this.§1!b§) + "%";
         }
         var _loc2_:Rectangle = new Rectangle(0,0,this.§2H§ * (this.mEagleScoreCounter / 100),(§4!q§.getItemByName("MovieClip_EagleMeterFill") as §7`§).height);
         (§4!q§.getItemByName("MovieClip_EagleMeterFill") as §7`§).mClip.scrollRect = _loc2_;
         (§4!q§.getItemByName("MovieClip_EagleMeterEffect") as §7`§).mClip.rotation = (§4!q§.getItemByName("MovieClip_EagleMeterEffect") as §7`§).mClip.rotation + param1 / 20;
         if(nextState.length > 0)
         {
            §`i§.§&!L§.clearLevel();
         }
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         if(this.§4!?§)
         {
            if(§4!q§.movieClip.contains(this.§4!?§))
            {
               §4!q§.movieClip.removeChild(this.§4!?§);
            }
            this.§4!?§.§6!h§();
            this.§4!?§ = null;
         }
         §4!@§.§`[§(§"D§);
         this.mEagleScoreCounter = 0;
         if(this.§const§)
         {
            this.§const§.stop();
            this.§const§ = null;
         }
         (§4!q§.getItemByName("MovieClip_EagleMeterFill") as §7`§).mClip.filters = [];
         (§4!q§.getItemByName("MovieClip_EagleMeterEffect") as §7`§).setVisibility(false);
         (§4!q§.getItemByName("Button_Menu") as § `§).setComponentVisualState(§-!T§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§4!q§.getItemByName("Button_Replay") as § `§).setComponentVisualState(§-!T§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§4!q§.getItemByName("Button_NextLevel") as § `§).setComponentVisualState(§-!T§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§#!L§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
               §4o§();
               §]a§(StateCutScene.§]!y§);
               break;
            case "REPLAY":
               §]a§(§6U§.§]!y§);
               break;
            case "MENU":
               §4!@§.§ true§();
               §]a§(§^!m§.§]!y§);
               break;
            case "FULLSCREEN_BUTTON":
               §-!2§.§7O§.§#!p§();
         }
      }
   }
}
