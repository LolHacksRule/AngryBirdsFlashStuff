package §;H§
{
   import §#!H§.§^I§;
   import §+0§.§,!E§;
   import §1!E§.§1!=§;
   import §1!E§.§==§;
   import §1!E§.§?!x§;
   import §2!H§.§!q§;
   import §2!H§.§-!,§;
   import §3!G§.LevelManager;
   import §5!c§.§9'§;
   import §>! §.§^!c§;
   import §>7§.§,!c§;
   import §>7§.§4+§;
   import §[!+§.§ !I§;
   import §[!+§.§4`§;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class §#!G§ extends §,!E§
   {
      
      public static const §"!s§:String = "LevelEndEagleState";
      
      private static const §[!m§:String = "ScoreLoopCountChannel";
       
      
      private var §6v§:§!q§;
      
      private var §4!E§:§^I§;
      
      public var mEagleScoreCounter:Number;
      
      protected var §6! §:Number;
      
      protected var §,!b§:int;
      
      public function §#!G§(param1:Boolean = false, param2:String = "LevelEndEagleState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §&!m§ = new §4`§(this);
         §&!m§.init(§ !I§.§3!a§.Views.View_LevelEndEagle[0]);
         this.§6! § = (§&!m§.getItemByName("MovieClip_EagleMeterFill") as §1!=§).width;
         §9'§.§+!S§(§[!m§,1,1);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§4!E§ = new §^I§(0,0,0,0);
         §&!m§.movieClip.addChildAt(this.§4!E§,§&!m§.movieClip.numChildren - 1);
         §&!m§.getItemByName("MovieClip_EagleMeterEmpty").setVisibility(true);
         §&!m§.getItemByName("MovieClip_EagleMeterFill").setVisibility(true);
         §9'§.playSound("LevelCompletedTheme1");
         this.§4!E§.§;'§(0.7);
         var _loc1_:int = §^!c§.§-U§.getEagleScore();
         this.§,!b§ = AngryBirdsFP11.sUserProgress.getEagleScoreForLevel(LevelManager.§%n§);
         var _loc2_:* = _loc1_ > this.§,!b§;
         if(_loc2_)
         {
            this.§3!X§(_loc1_);
         }
         (§&!m§.getItemByName("TextField_EaglePercentage") as §?!x§).§,!F§.text = _loc1_ + "%";
         §9'§.playSound("Hiscore_Count",§[!m§,100);
         this.§6v§ = §-!,§.§7!j§.§,!`§(this,{"mEagleScoreCounter":_loc1_},{"mEagleScoreCounter":0},_loc1_ / 100 * 4);
         this.§6v§.onComplete = this.§#!b§;
         this.§6v§.play();
      }
      
      protected function §3!X§(param1:Number) : void
      {
         AngryBirdsFP11.sUserProgress.§-!N§(LevelManager.§%n§,param1);
      }
      
      protected function §#!b§() : void
      {
         var _loc1_:GlowFilter = null;
         §9'§.§7!,§(§[!m§);
         if(this.mEagleScoreCounter == 100)
         {
            §9'§.playSound("Hiscore_Badge",§[!m§);
            _loc1_ = new GlowFilter(16777215,1,22,22,2.5,10);
            (§&!m§.getItemByName("MovieClip_EagleMeterEffect") as §1!=§).setVisibility(true);
            (§&!m§.getItemByName("MovieClip_EagleMeterFill") as §1!=§).mClip.filters = [_loc1_];
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §,!E§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(int(this.mEagleScoreCounter) > this.§,!b§)
         {
            (§&!m§.getItemByName("TextField_EaglePercentage") as §?!x§).§,!F§.text = int(this.mEagleScoreCounter) + "%";
            (§&!m§.getItemByName("TextField_EaglePercentageEffects") as §?!x§).§,!F§.text = int(this.mEagleScoreCounter) + "%";
         }
         else
         {
            (§&!m§.getItemByName("TextField_EaglePercentage") as §?!x§).§,!F§.text = int(this.§,!b§) + "%";
            (§&!m§.getItemByName("TextField_EaglePercentageEffects") as §?!x§).§,!F§.text = int(this.§,!b§) + "%";
         }
         var _loc3_:Rectangle = new Rectangle(0,0,this.§6! § * (this.mEagleScoreCounter / 100),(§&!m§.getItemByName("MovieClip_EagleMeterFill") as §1!=§).height);
         (§&!m§.getItemByName("MovieClip_EagleMeterFill") as §1!=§).mClip.scrollRect = _loc3_;
         (§&!m§.getItemByName("MovieClip_EagleMeterEffect") as §1!=§).mClip.rotation = (§&!m§.getItemByName("MovieClip_EagleMeterEffect") as §1!=§).mClip.rotation + param1 / 20;
         if(mNextState.length > 0)
         {
            §^!c§.§5!Y§.clearLevel();
            return §,!E§.STATE_STATUS_COMPLETED;
         }
         return §,!E§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         if(this.§4!E§)
         {
            if(§&!m§.movieClip.contains(this.§4!E§))
            {
               §&!m§.movieClip.removeChild(this.§4!E§);
            }
            this.§4!E§.clean();
            this.§4!E§ = null;
         }
         §9'§.§7!,§(§[!m§);
         this.mEagleScoreCounter = 0;
         if(this.§6v§)
         {
            this.§6v§.stop();
            this.§6v§ = null;
         }
         (§&!m§.getItemByName("MovieClip_EagleMeterFill") as §1!=§).mClip.filters = [];
         (§&!m§.getItemByName("MovieClip_EagleMeterEffect") as §1!=§).setVisibility(false);
         (§&!m§.getItemByName("Button_Menu") as §==§).setComponentVisualState(§4+§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§&!m§.getItemByName("Button_Replay") as §==§).setComponentVisualState(§4+§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§&!m§.getItemByName("Button_NextLevel") as §==§).setComponentVisualState(§4+§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§,!c§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
               §;W§.§&p§();
               mNextState = StateCutScene.§"!s§;
               break;
            case "REPLAY":
               §;W§.§&!5§();
               mNextState = §;W§.§"!s§;
               break;
            case "MENU":
               §9'§.§0D§();
               mNextState = this.§<!m§();
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§3l§.§1T§();
         }
      }
      
      public function §<!m§() : String
      {
         return §!y§.§"!s§;
      }
   }
}
