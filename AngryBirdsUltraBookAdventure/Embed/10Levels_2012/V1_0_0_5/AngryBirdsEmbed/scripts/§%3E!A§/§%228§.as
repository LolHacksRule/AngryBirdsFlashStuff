package §>!A§
{
   import §"!&§.§#!,§;
   import §-!F§.§^h§;
   import §-!F§.§`!&§;
   import §5H§.§[k§;
   import §6J§.§5j§;
   import §87§.§<8§;
   import §<!G§.§!I§;
   import §<!G§.§^3§;
   import §@D§.§6I§;
   import §`F§.§,B§;
   import §`F§.§?!3§;
   import §class§.§3D§;
   import §class§.§?q§;
   import §class§.§`!6§;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class §"8§ extends §#!,§
   {
      
      public static const §?x§:String = "LevelEndEagleState";
      
      private static const §6'§:String = "ScoreLoopCountChannel";
       
      
      private var §3b§:§?!3§;
      
      private var §<!4§:§<8§;
      
      public var mEagleScoreCounter:Number;
      
      protected var §9l§:Number;
      
      protected var §]q§:int;
      
      public function §"8§(param1:Boolean = false, param2:String = "LevelEndEagleState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §[=§ = new §^3§(this);
         §[=§.init(§!I§.§7y§.Views.View_LevelEndEagle[0]);
         this.§9l§ = (§[=§.getItemByName("MovieClip_EagleMeterFill") as §`!6§).width;
         §6I§.§"!'§(§6'§,1,1);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§<!4§ = new §<8§(0,0,0,0);
         §[=§.movieClip.addChildAt(this.§<!4§,§[=§.movieClip.numChildren - 1);
         §[=§.getItemByName("MovieClip_EagleMeterEmpty").setVisibility(true);
         §[=§.getItemByName("MovieClip_EagleMeterFill").setVisibility(true);
         §6I§.§ ;§("LevelCompletedTheme1");
         this.§<!4§.§4J§(0.7);
         var _loc1_:int = §[k§.controller.getEagleScore();
         this.§]q§ = AngryBirdsFP11.sUserProgress.§ !&§(§5j§.§%V§);
         var _loc2_:* = _loc1_ > this.§]q§;
         if(_loc2_)
         {
            this.§8s§(_loc1_);
         }
         (§[=§.getItemByName("TextField_EaglePercentage") as §3D§).§7=§.text = _loc1_ + "%";
         §6I§.§ ;§("Hiscore_Count",§6'§,100);
         this.§3b§ = §,B§.§^n§.§2E§(this,{"mEagleScoreCounter":_loc1_},{"mEagleScoreCounter":0},_loc1_ / 100 * 4);
         this.§3b§.onComplete = this.§8v§;
         this.§3b§.play();
      }
      
      protected function §8s§(param1:Number) : void
      {
         AngryBirdsFP11.sUserProgress.§]!'§(§5j§.§%V§,param1);
      }
      
      protected function §8v§() : void
      {
         var _loc1_:GlowFilter = null;
         §6I§.§9w§(§6'§);
         if(this.mEagleScoreCounter == 100)
         {
            §6I§.§ ;§("Hiscore_Badge",§6'§);
            _loc1_ = new GlowFilter(16777215,1,22,22,2.5,10);
            (§[=§.getItemByName("MovieClip_EagleMeterEffect") as §`!6§).setVisibility(true);
            (§[=§.getItemByName("MovieClip_EagleMeterFill") as §`!6§).mClip.filters = [_loc1_];
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §#!,§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(int(this.mEagleScoreCounter) > this.§]q§)
         {
            (§[=§.getItemByName("TextField_EaglePercentage") as §3D§).§7=§.text = int(this.mEagleScoreCounter) + "%";
            (§[=§.getItemByName("TextField_EaglePercentageEffects") as §3D§).§7=§.text = int(this.mEagleScoreCounter) + "%";
         }
         else
         {
            (§[=§.getItemByName("TextField_EaglePercentage") as §3D§).§7=§.text = int(this.§]q§) + "%";
            (§[=§.getItemByName("TextField_EaglePercentageEffects") as §3D§).§7=§.text = int(this.§]q§) + "%";
         }
         var _loc3_:Rectangle = new Rectangle(0,0,this.§9l§ * (this.mEagleScoreCounter / 100),(§[=§.getItemByName("MovieClip_EagleMeterFill") as §`!6§).height);
         (§[=§.getItemByName("MovieClip_EagleMeterFill") as §`!6§).mClip.scrollRect = _loc3_;
         (§[=§.getItemByName("MovieClip_EagleMeterEffect") as §`!6§).mClip.rotation = (§[=§.getItemByName("MovieClip_EagleMeterEffect") as §`!6§).mClip.rotation + param1 / 20;
         if(mNextState.length > 0)
         {
            §[k§.§&@§.clearLevel();
            return §#!,§.STATE_STATUS_COMPLETED;
         }
         return §#!,§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         if(this.§<!4§)
         {
            if(§[=§.movieClip.contains(this.§<!4§))
            {
               §[=§.movieClip.removeChild(this.§<!4§);
            }
            this.§<!4§.clean();
            this.§<!4§ = null;
         }
         §6I§.§9w§(§6'§);
         this.mEagleScoreCounter = 0;
         if(this.§3b§)
         {
            this.§3b§.stop();
            this.§3b§ = null;
         }
         (§[=§.getItemByName("MovieClip_EagleMeterFill") as §`!6§).mClip.filters = [];
         (§[=§.getItemByName("MovieClip_EagleMeterEffect") as §`!6§).setVisibility(false);
         (§[=§.getItemByName("Button_Menu") as §?q§).setComponentVisualState(§`!&§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§[=§.getItemByName("Button_Replay") as §?q§).setComponentVisualState(§`!&§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§[=§.getItemByName("Button_NextLevel") as §?q§).setComponentVisualState(§`!&§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§^h§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
               §,w§.§^^§();
               mNextState = StateCutScene.§?x§;
               break;
            case "REPLAY":
               §,w§.§9!D§();
               mNextState = §,w§.§?x§;
               break;
            case "MENU":
               §6I§.§%,§();
               mNextState = §5O§.§?x§;
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§,s§.§8!1§();
         }
      }
   }
}
