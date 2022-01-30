package §9!#§
{
   import §"h§.§<"+§;
   import §&!&§.§+!A§;
   import §&!&§.§7!8§;
   import §0Q§.§]`§;
   import §3!S§.§%s§;
   import §6!&§.§1!c§;
   import §6p§.§'!B§;
   import §<!I§.§&5§;
   import §<!I§.§7!N§;
   import §<!I§.§="5§;
   import §<Z§.§"!f§;
   import §<Z§.§7!!§;
   import §>!J§.§"g§;
   import §>!J§.§^!#§;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class §"" § extends §<"+§
   {
      
      public static const §8G§:String = "LevelEndEagleState";
      
      private static const §;1§:String = "ScoreLoopCountChannel";
       
      
      private var §]F§:§^!#§;
      
      private var §#h§:§]`§;
      
      public var mEagleScoreCounter:Number;
      
      protected var §-!U§:Number;
      
      protected var §'!Y§:int;
      
      public function §"" §(param1:Boolean = false, param2:String = "LevelEndEagleState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §;i§ = new §7!!§(this);
         §;i§.init(§"!f§.§%!1§.Views.View_LevelEndEagle[0]);
         this.§-!U§ = (§;i§.getItemByName("MovieClip_EagleMeterFill") as §&5§).width;
         §'!B§.§#3§(§;1§,1,1);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§#h§ = new §]`§(0,0,0,0);
         §;i§.movieClip.addChildAt(this.§#h§,§;i§.movieClip.numChildren - 1);
         §;i§.getItemByName("MovieClip_EagleMeterEmpty").setVisibility(true);
         §;i§.getItemByName("MovieClip_EagleMeterFill").setVisibility(true);
         §'!B§.playSound("LevelCompletedTheme1");
         this.§#h§.§8!%§(0.7);
         var _loc1_:int = §%s§.§]x§.getEagleScore();
         this.§'!Y§ = AngryBirdsFP11.§5!c§.§,!z§(§1!c§.§'Z§);
         var _loc2_:* = _loc1_ > this.§'!Y§;
         if(_loc2_)
         {
            this.§!!&§(_loc1_);
         }
         (§;i§.getItemByName("TextField_EaglePercentage") as §7!N§).§"!_§.text = _loc1_ + "%";
         §'!B§.playSound("Hiscore_Count",§;1§,100);
         this.§]F§ = §"g§.§'!o§.§while§(this,{"mEagleScoreCounter":_loc1_},{"mEagleScoreCounter":0},_loc1_ / 100 * 4);
         this.§]F§.onComplete = this.§0'§;
         this.§]F§.play();
      }
      
      protected function §!!&§(param1:Number) : void
      {
         AngryBirdsFP11.§5!c§.§"!=§(§1!c§.§'Z§,param1);
      }
      
      protected function §0'§() : void
      {
         var _loc1_:GlowFilter = null;
         §'!B§.§&!r§(§;1§);
         if(this.mEagleScoreCounter == 100)
         {
            §'!B§.playSound("Hiscore_Badge",§;1§);
            _loc1_ = new GlowFilter(16777215,1,22,22,2.5,10);
            (§;i§.getItemByName("MovieClip_EagleMeterEffect") as §&5§).setVisibility(true);
            (§;i§.getItemByName("MovieClip_EagleMeterFill") as §&5§).mClip.filters = [_loc1_];
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §<"+§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(int(this.mEagleScoreCounter) > this.§'!Y§)
         {
            (§;i§.getItemByName("TextField_EaglePercentage") as §7!N§).§"!_§.text = int(this.mEagleScoreCounter) + "%";
            (§;i§.getItemByName("TextField_EaglePercentageEffects") as §7!N§).§"!_§.text = int(this.mEagleScoreCounter) + "%";
         }
         else
         {
            (§;i§.getItemByName("TextField_EaglePercentage") as §7!N§).§"!_§.text = int(this.§'!Y§) + "%";
            (§;i§.getItemByName("TextField_EaglePercentageEffects") as §7!N§).§"!_§.text = int(this.§'!Y§) + "%";
         }
         var _loc3_:Rectangle = new Rectangle(0,0,this.§-!U§ * (this.mEagleScoreCounter / 100),(§;i§.getItemByName("MovieClip_EagleMeterFill") as §&5§).height);
         (§;i§.getItemByName("MovieClip_EagleMeterFill") as §&5§).mClip.scrollRect = _loc3_;
         (§;i§.getItemByName("MovieClip_EagleMeterEffect") as §&5§).mClip.rotation = (§;i§.getItemByName("MovieClip_EagleMeterEffect") as §&5§).mClip.rotation + param1 / 20;
         if(mNextState.length > 0)
         {
            §%s§.§`!f§.clearLevel();
            return §<"+§.STATE_STATUS_COMPLETED;
         }
         return §<"+§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         if(this.§#h§)
         {
            if(§;i§.movieClip.contains(this.§#h§))
            {
               §;i§.movieClip.removeChild(this.§#h§);
            }
            this.§#h§.clean();
            this.§#h§ = null;
         }
         §'!B§.§&!r§(§;1§);
         this.mEagleScoreCounter = 0;
         if(this.§]F§)
         {
            this.§]F§.stop();
            this.§]F§ = null;
         }
         (§;i§.getItemByName("MovieClip_EagleMeterFill") as §&5§).mClip.filters = [];
         (§;i§.getItemByName("MovieClip_EagleMeterEffect") as §&5§).setVisibility(false);
         (§;i§.getItemByName("Button_Menu") as §="5§).setComponentVisualState(§+!A§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§;i§.getItemByName("Button_Replay") as §="5§).setComponentVisualState(§+!A§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§;i§.getItemByName("Button_NextLevel") as §="5§).setComponentVisualState(§+!A§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§7!8§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
               §+0§.§!i§();
               mNextState = StateCutScene.§8G§;
               break;
            case "REPLAY":
               §+0§.§2!2§();
               mNextState = §+0§.§8G§;
               break;
            case "MENU":
               §'!B§.§>T§();
               mNextState = this.§,!N§();
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§?!-§.§>=§();
         }
      }
      
      public function §,!N§() : String
      {
         return §#B§.§8G§;
      }
   }
}
