package §^U§
{
   import §#";§.§0"#§;
   import §&!<§.§>!V§;
   import §&!<§.§]!M§;
   import §'V§.§7I§;
   import §'V§.§=!r§;
   import §,P§.§'_§;
   import §;<§.§'B§;
   import §<!]§.§]!v§;
   import §<i§.§`!r§;
   import §=!7§.§!!]§;
   import §=!7§.§9"8§;
   import §=!7§.§@u§;
   import §@y§.§0=§;
   import §@y§.§>!D§;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class §+"!§ extends §'B§
   {
      
      public static const §%!Q§:String = "LevelEndEagleState";
      
      private static const §]!9§:String = "ScoreLoopCountChannel";
       
      
      private var §&!i§:§=!r§;
      
      private var §<E§:§]!v§;
      
      public var mEagleScoreCounter:Number;
      
      protected var §#!P§:Number;
      
      protected var §=!$§:int;
      
      public function §+"!§(param1:Boolean = false, param2:String = "LevelEndEagleState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §`!v§ = new §>!V§(this);
         §`!v§.init(§]!M§.§"!V§.Views.View_LevelEndEagle[0]);
         this.§#!P§ = (§`!v§.getItemByName("MovieClip_EagleMeterFill") as §@u§).width;
         §0"#§.§4!m§(§]!9§,1,1);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§<E§ = new §]!v§(0,0,0,0);
         §`!v§.movieClip.addChildAt(this.§<E§,§`!v§.movieClip.numChildren - 1);
         §`!v§.getItemByName("MovieClip_EagleMeterEmpty").setVisibility(true);
         §`!v§.getItemByName("MovieClip_EagleMeterFill").setVisibility(true);
         §0"#§.§9"2§("LevelCompletedTheme1");
         this.§<E§.§[!r§(0.7);
         var _loc1_:int = §'_§.§=R§.getEagleScore();
         this.§=!$§ = AngryBirdsFP11.§>!7§.§6!G§(§`!r§.§0B§);
         var _loc2_:* = _loc1_ > this.§=!$§;
         if(_loc2_)
         {
            this.§["'§(_loc1_);
         }
         (§`!v§.getItemByName("TextField_EaglePercentage") as §!!]§).§<!g§.text = _loc1_ + "%";
         §0"#§.§9"2§("Hiscore_Count",§]!9§,100);
         this.§&!i§ = §7I§.§[E§.§ ";§(this,{"mEagleScoreCounter":_loc1_},{"mEagleScoreCounter":0},_loc1_ / 100 * 4);
         this.§&!i§.onComplete = this.§1!y§;
         this.§&!i§.play();
      }
      
      protected function §["'§(param1:Number) : void
      {
         AngryBirdsFP11.§>!7§.§;"6§(§`!r§.§0B§,param1);
      }
      
      protected function §1!y§() : void
      {
         var _loc1_:GlowFilter = null;
         §0"#§.§<"0§(§]!9§);
         if(this.mEagleScoreCounter == 100)
         {
            §0"#§.§9"2§("Hiscore_Badge",§]!9§);
            _loc1_ = new GlowFilter(16777215,1,22,22,2.5,10);
            (§`!v§.getItemByName("MovieClip_EagleMeterEffect") as §@u§).setVisibility(true);
            (§`!v§.getItemByName("MovieClip_EagleMeterFill") as §@u§).mClip.filters = [_loc1_];
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §'B§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(int(this.mEagleScoreCounter) > this.§=!$§)
         {
            (§`!v§.getItemByName("TextField_EaglePercentage") as §!!]§).§<!g§.text = int(this.mEagleScoreCounter) + "%";
            (§`!v§.getItemByName("TextField_EaglePercentageEffects") as §!!]§).§<!g§.text = int(this.mEagleScoreCounter) + "%";
         }
         else
         {
            (§`!v§.getItemByName("TextField_EaglePercentage") as §!!]§).§<!g§.text = int(this.§=!$§) + "%";
            (§`!v§.getItemByName("TextField_EaglePercentageEffects") as §!!]§).§<!g§.text = int(this.§=!$§) + "%";
         }
         var _loc3_:Rectangle = new Rectangle(0,0,this.§#!P§ * (this.mEagleScoreCounter / 100),(§`!v§.getItemByName("MovieClip_EagleMeterFill") as §@u§).height);
         (§`!v§.getItemByName("MovieClip_EagleMeterFill") as §@u§).mClip.scrollRect = _loc3_;
         (§`!v§.getItemByName("MovieClip_EagleMeterEffect") as §@u§).mClip.rotation = (§`!v§.getItemByName("MovieClip_EagleMeterEffect") as §@u§).mClip.rotation + param1 / 20;
         if(mNextState.length > 0)
         {
            §'_§.§=M§.clearLevel();
            return §'B§.STATE_STATUS_COMPLETED;
         }
         return §'B§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         if(this.§<E§)
         {
            if(§`!v§.movieClip.contains(this.§<E§))
            {
               §`!v§.movieClip.removeChild(this.§<E§);
            }
            this.§<E§.clean();
            this.§<E§ = null;
         }
         §0"#§.§<"0§(§]!9§);
         this.mEagleScoreCounter = 0;
         if(this.§&!i§)
         {
            this.§&!i§.stop();
            this.§&!i§ = null;
         }
         (§`!v§.getItemByName("MovieClip_EagleMeterFill") as §@u§).mClip.filters = [];
         (§`!v§.getItemByName("MovieClip_EagleMeterEffect") as §@u§).setVisibility(false);
         (§`!v§.getItemByName("Button_Menu") as §9"8§).setComponentVisualState(§>!D§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§`!v§.getItemByName("Button_Replay") as §9"8§).setComponentVisualState(§>!D§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§`!v§.getItemByName("Button_NextLevel") as §9"8§).setComponentVisualState(§>!D§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§0=§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
               §`!;§.§;c§();
               mNextState = StateCutScene.§%!Q§;
               break;
            case "REPLAY":
               §`!;§.§%P§();
               mNextState = §`!;§.§%!Q§;
               break;
            case "MENU":
               §0"#§.§4"#§();
               mNextState = this.§6!u§();
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§@"7§.§>!5§();
         }
      }
      
      public function §6!u§() : String
      {
         return §1!i§.§%!Q§;
      }
   }
}
