package § C§
{
   import §!Y§.§[o§;
   import §2!5§.§";§;
   import §2!5§.§?A§;
   import §2]§.§#H§;
   import §2]§.§set §;
   import §3"§.§0$§;
   import §3O§.§@6§;
   import §>-§.§6H§;
   import §[v§.§'4§;
   import §[v§.§=!=§;
   import §[v§.§^P§;
   import §]4§.§-§;
   import §`W§.§-[§;
   import §`W§.§<r§;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class §#y§ extends §-§
   {
      
      public static const §?B§:String = "LevelEndEagleState";
      
      private static const §-!5§:String = "ScoreLoopCountChannel";
       
      
      private var §%!2§:§?A§;
      
      private var §^!D§:§6H§;
      
      public var mEagleScoreCounter:Number;
      
      private var §-!+§:Number;
      
      private var §&X§:int;
      
      public function §#y§(param1:Boolean = false, param2:String = "LevelEndEagleState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §,R§ = new §#H§(this);
         §,R§.init(§set §.§&!1§.Views.View_LevelEndEagle[0]);
         this.§-!+§ = (§,R§.getItemByName("MovieClip_EagleMeterFill") as §=!=§).width;
         §@6§.§'!&§(§-!5§,1,1);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§^!D§ = new §6H§(0,0,0,0);
         §,R§.movieClip.addChildAt(this.§^!D§,§,R§.movieClip.numChildren - 1);
         (§,R§.getItemByName("MovieClip_EagleMeterEmpty") as §=!=§).setVisibility(true);
         (§,R§.getItemByName("MovieClip_EagleMeterFill") as §=!=§).setVisibility(true);
         §@6§.playSound("LevelCompletedTheme1");
         this.§^!D§.§@2§(0.7);
         var _loc1_:int = §[o§.controller.getEagleScore();
         this.§&X§ = AngryBirdsFP11.§64§.§!!@§(§0$§.§[C§);
         var _loc2_:* = _loc1_ > this.§&X§;
         if(_loc2_)
         {
            this.§;z§(_loc1_);
         }
         (§,R§.getItemByName("TextField_EaglePercentage") as §'4§).§8?§.text = _loc1_ + "%";
         §@6§.playSound("Hiscore_Count",§-!5§,100);
         this.§%!2§ = §";§.§[8§.§6!$§(this,{"mEagleScoreCounter":_loc1_},{"mEagleScoreCounter":0},_loc1_ / 100 * 4);
         this.§%!2§.onComplete = this.§-!3§;
         this.§%!2§.play();
      }
      
      protected function §;z§(param1:Number) : void
      {
         AngryBirdsFP11.§64§.§=+§(§0$§.§[C§,param1);
      }
      
      protected function §-!3§() : void
      {
         var _loc1_:GlowFilter = null;
         §@6§.§!>§(§-!5§);
         if(this.mEagleScoreCounter == 100)
         {
            §@6§.playSound("Hiscore_Badge",§-!5§);
            _loc1_ = new GlowFilter(16777215,1,22,22,2.5,10);
            (§,R§.getItemByName("MovieClip_EagleMeterEffect") as §=!=§).setVisibility(true);
            (§,R§.getItemByName("MovieClip_EagleMeterFill") as §=!=§).mClip.filters = [_loc1_];
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §-§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(int(this.mEagleScoreCounter) > this.§&X§)
         {
            (§,R§.getItemByName("TextField_EaglePercentage") as §'4§).§8?§.text = int(this.mEagleScoreCounter) + "%";
            (§,R§.getItemByName("TextField_EaglePercentageEffects") as §'4§).§8?§.text = int(this.mEagleScoreCounter) + "%";
         }
         else
         {
            (§,R§.getItemByName("TextField_EaglePercentage") as §'4§).§8?§.text = int(this.§&X§) + "%";
            (§,R§.getItemByName("TextField_EaglePercentageEffects") as §'4§).§8?§.text = int(this.§&X§) + "%";
         }
         var _loc3_:Rectangle = new Rectangle(0,0,this.§-!+§ * (this.mEagleScoreCounter / 100),(§,R§.getItemByName("MovieClip_EagleMeterFill") as §=!=§).height);
         (§,R§.getItemByName("MovieClip_EagleMeterFill") as §=!=§).mClip.scrollRect = _loc3_;
         (§,R§.getItemByName("MovieClip_EagleMeterEffect") as §=!=§).mClip.rotation = (§,R§.getItemByName("MovieClip_EagleMeterEffect") as §=!=§).mClip.rotation + param1 / 20;
         if(mNextState.length > 0)
         {
            §[o§.§='§.clearLevel();
            return §-§.STATE_STATUS_COMPLETED;
         }
         return §-§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         if(this.§^!D§)
         {
            if(§,R§.movieClip.contains(this.§^!D§))
            {
               §,R§.movieClip.removeChild(this.§^!D§);
            }
            this.§^!D§.clean();
            this.§^!D§ = null;
         }
         §@6§.§!>§(§-!5§);
         this.mEagleScoreCounter = 0;
         if(this.§%!2§)
         {
            this.§%!2§.stop();
            this.§%!2§ = null;
         }
         (§,R§.getItemByName("MovieClip_EagleMeterFill") as §=!=§).mClip.filters = [];
         (§,R§.getItemByName("MovieClip_EagleMeterEffect") as §=!=§).setVisibility(false);
         (§,R§.getItemByName("Button_Menu") as §^P§).setComponentVisualState(§<r§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§,R§.getItemByName("Button_Replay") as §^P§).setComponentVisualState(§<r§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§,R§.getItemByName("Button_NextLevel") as §^P§).setComponentVisualState(§<r§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§-[§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
               §7!6§.§2v§();
               mNextState = StateCutScene.§?B§;
               break;
            case "REPLAY":
               §7!6§.§<!G§();
               mNextState = §7!6§.§?B§;
               break;
            case "MENU":
               §@6§.§&t§();
               mNextState = §4t§.§?B§;
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§?L§.§,!!§();
         }
      }
   }
}
