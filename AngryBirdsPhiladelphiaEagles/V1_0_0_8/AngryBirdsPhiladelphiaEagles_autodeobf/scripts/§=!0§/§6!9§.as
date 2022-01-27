package §=!0§
{
   import §!t§.§5b§;
   import §!t§.§>B§;
   import §!t§.§?g§;
   import §#@§.§,k§;
   import §,!1§.§]e§;
   import §5F§.§+!O§;
   import §5F§.§3^§;
   import §6!L§.§&u§;
   import §=z§.§0!E§;
   import §>!7§.§"Q§;
   import §>!7§.§`d§;
   import §@!M§.§!l§;
   import §@!M§.§5!&§;
   import §^w§.§-!,§;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class §6!9§ extends §-!,§
   {
      
      public static const §@§:String = "LevelEndEagleState";
      
      private static const §<!O§:String = "ScoreLoopCountChannel";
       
      
      private var §`V§:§!l§;
      
      private var §9!L§:§,k§;
      
      public var mEagleScoreCounter:Number;
      
      protected var §8!P§:Number;
      
      protected var §%v§:int;
      
      public function §6!9§(param1:Boolean = false, param2:String = "LevelEndEagleState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §;I§ = new §"Q§(this);
         §;I§.init(§`d§.§8?§.Views.View_LevelEndEagle[0]);
         this.§8!P§ = (§;I§.getItemByName("MovieClip_EagleMeterFill") as §?g§).width;
         §]e§.§#x§(§<!O§,1,1);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§9!L§ = new §,k§(0,0,0,0);
         §;I§.movieClip.addChildAt(this.§9!L§,§;I§.movieClip.numChildren - 1);
         §;I§.getItemByName("MovieClip_EagleMeterEmpty").setVisibility(true);
         §;I§.getItemByName("MovieClip_EagleMeterFill").setVisibility(true);
         §]e§.playSound("LevelCompletedTheme1");
         this.§9!L§.fadeToAlpha(0.7);
         var _loc1_:int = §0!E§.controller.getEagleScore();
         this.§%v§ = AngryBirdsFP11.§5@§.§!W§(§&u§.§ !+§);
         var _loc2_:* = _loc1_ > this.§%v§;
         if(_loc2_)
         {
            this.§&!@§(_loc1_);
         }
         (§;I§.getItemByName("TextField_EaglePercentage") as §>B§).§ !$§.text = _loc1_ + "%";
         §]e§.playSound("Hiscore_Count",§<!O§,100);
         this.§`V§ = §5!&§.§@!&§.§9!4§(this,{"mEagleScoreCounter":_loc1_},{"mEagleScoreCounter":0},_loc1_ / 100 * 4);
         this.§`V§.onComplete = this.§1R§;
         this.§`V§.play();
      }
      
      protected function §&!@§(param1:Number) : void
      {
         AngryBirdsFP11.§5@§.§2,§(§&u§.§ !+§,param1);
      }
      
      protected function §1R§() : void
      {
         var _loc1_:GlowFilter = null;
         §]e§.§7&§(§<!O§);
         if(this.mEagleScoreCounter == 100)
         {
            §]e§.playSound("Hiscore_Badge",§<!O§);
            _loc1_ = new GlowFilter(16777215,1,22,22,2.5,10);
            (§;I§.getItemByName("MovieClip_EagleMeterEffect") as §?g§).setVisibility(true);
            (§;I§.getItemByName("MovieClip_EagleMeterFill") as §?g§).mClip.filters = [_loc1_];
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §-!,§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(int(this.mEagleScoreCounter) > this.§%v§)
         {
            (§;I§.getItemByName("TextField_EaglePercentage") as §>B§).§ !$§.text = int(this.mEagleScoreCounter) + "%";
            (§;I§.getItemByName("TextField_EaglePercentageEffects") as §>B§).§ !$§.text = int(this.mEagleScoreCounter) + "%";
         }
         else
         {
            (§;I§.getItemByName("TextField_EaglePercentage") as §>B§).§ !$§.text = int(this.§%v§) + "%";
            (§;I§.getItemByName("TextField_EaglePercentageEffects") as §>B§).§ !$§.text = int(this.§%v§) + "%";
         }
         var _loc3_:Rectangle = new Rectangle(0,0,this.§8!P§ * (this.mEagleScoreCounter / 100),(§;I§.getItemByName("MovieClip_EagleMeterFill") as §?g§).height);
         (§;I§.getItemByName("MovieClip_EagleMeterFill") as §?g§).mClip.scrollRect = _loc3_;
         (§;I§.getItemByName("MovieClip_EagleMeterEffect") as §?g§).mClip.rotation = (§;I§.getItemByName("MovieClip_EagleMeterEffect") as §?g§).mClip.rotation + param1 / 20;
         if(mNextState.length > 0)
         {
            §0!E§.§9!B§.clearLevel();
            return §-!,§.STATE_STATUS_COMPLETED;
         }
         return §-!,§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         if(this.§9!L§)
         {
            if(§;I§.movieClip.contains(this.§9!L§))
            {
               §;I§.movieClip.removeChild(this.§9!L§);
            }
            this.§9!L§.clean();
            this.§9!L§ = null;
         }
         §]e§.§7&§(§<!O§);
         this.mEagleScoreCounter = 0;
         if(this.§`V§)
         {
            this.§`V§.stop();
            this.§`V§ = null;
         }
         (§;I§.getItemByName("MovieClip_EagleMeterFill") as §?g§).mClip.filters = [];
         (§;I§.getItemByName("MovieClip_EagleMeterEffect") as §?g§).setVisibility(false);
         (§;I§.getItemByName("Button_Menu") as §5b§).setComponentVisualState(§3^§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§;I§.getItemByName("Button_Replay") as §5b§).setComponentVisualState(§3^§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§;I§.getItemByName("Button_NextLevel") as §5b§).setComponentVisualState(§3^§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§+!O§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
               §1!F§.§!<§();
               mNextState = StateCutScene.§@§;
               break;
            case "REPLAY":
               §1!F§.§4W§();
               mNextState = §1!F§.§@§;
               break;
            case "MENU":
               §]e§.§>$§();
               mNextState = this.§#!D§();
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§;!@§.§8N§();
         }
      }
      
      public function §#!D§() : String
      {
         return §?!G§.§@§;
      }
   }
}
