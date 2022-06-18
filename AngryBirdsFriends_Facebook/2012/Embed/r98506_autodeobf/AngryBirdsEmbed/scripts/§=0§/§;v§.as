package §=0§
{
   import §+n§.§3P§;
   import §+n§.§^!%§;
   import §1G§.§`U§;
   import §3!A§.§9!0§;
   import §3'§.§5I§;
   import §3'§.§6k§;
   import §3'§.§?-§;
   import §74§.§1!C§;
   import §8!G§.§-Z§;
   import §;=§.§7I§;
   import §;=§.§>!2§;
   import §[R§.§3!@§;
   import §[R§.§5h§;
   import §`t§.§^?§;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class §;v§ extends §`U§
   {
      
      public static const §?1§:String = "LevelEndEagleState";
      
      private static const §?K§:String = "ScoreLoopCountChannel";
       
      
      private var §@!#§:§7I§;
      
      private var §-t§:§1!C§;
      
      public var mEagleScoreCounter:Number;
      
      protected var §8[§:Number;
      
      protected var §4!A§:int;
      
      public function §;v§(param1:Boolean = false, param2:String = "LevelEndEagleState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §4G§ = new §5h§(this);
         §4G§.init(§3!@§.§`Z§.Views.View_LevelEndEagle[0]);
         this.§8[§ = (§4G§.getItemByName("MovieClip_EagleMeterFill") as §?-§).width;
         §9!0§.§;U§(§?K§,1,1);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§-t§ = new §1!C§(0,0,0,0);
         §4G§.movieClip.addChildAt(this.§-t§,§4G§.movieClip.numChildren - 1);
         §4G§.getItemByName("MovieClip_EagleMeterEmpty").setVisibility(true);
         §4G§.getItemByName("MovieClip_EagleMeterFill").setVisibility(true);
         §9!0§.§-! §("LevelCompletedTheme1");
         this.§-t§.§>w§(0.7);
         var _loc1_:int = §^?§.controller.getEagleScore();
         this.§4!A§ = AngryBirdsFP11.sUserProgress.§"w§(§-Z§.§%s§);
         var _loc2_:* = _loc1_ > this.§4!A§;
         if(_loc2_)
         {
            this.§ p§(_loc1_);
         }
         (§4G§.getItemByName("TextField_EaglePercentage") as §6k§).§#Y§.text = _loc1_ + "%";
         §9!0§.§-! §("Hiscore_Count",§?K§,100);
         this.§@!#§ = §>!2§.§72§.§-z§(this,{"mEagleScoreCounter":_loc1_},{"mEagleScoreCounter":0},_loc1_ / 100 * 4);
         this.§@!#§.onComplete = this.§7c§;
         this.§@!#§.play();
      }
      
      protected function § p§(param1:Number) : void
      {
         AngryBirdsFP11.sUserProgress.§7+§(§-Z§.§%s§,param1);
      }
      
      protected function §7c§() : void
      {
         var _loc1_:GlowFilter = null;
         §9!0§.§5!'§(§?K§);
         if(this.mEagleScoreCounter == 100)
         {
            §9!0§.§-! §("Hiscore_Badge",§?K§);
            _loc1_ = new GlowFilter(16777215,1,22,22,2.5,10);
            (§4G§.getItemByName("MovieClip_EagleMeterEffect") as §?-§).setVisibility(true);
            (§4G§.getItemByName("MovieClip_EagleMeterFill") as §?-§).mClip.filters = [_loc1_];
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §`U§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(int(this.mEagleScoreCounter) > this.§4!A§)
         {
            (§4G§.getItemByName("TextField_EaglePercentage") as §6k§).§#Y§.text = int(this.mEagleScoreCounter) + "%";
            (§4G§.getItemByName("TextField_EaglePercentageEffects") as §6k§).§#Y§.text = int(this.mEagleScoreCounter) + "%";
         }
         else
         {
            (§4G§.getItemByName("TextField_EaglePercentage") as §6k§).§#Y§.text = int(this.§4!A§) + "%";
            (§4G§.getItemByName("TextField_EaglePercentageEffects") as §6k§).§#Y§.text = int(this.§4!A§) + "%";
         }
         var _loc3_:Rectangle = new Rectangle(0,0,this.§8[§ * (this.mEagleScoreCounter / 100),(§4G§.getItemByName("MovieClip_EagleMeterFill") as §?-§).height);
         (§4G§.getItemByName("MovieClip_EagleMeterFill") as §?-§).mClip.scrollRect = _loc3_;
         (§4G§.getItemByName("MovieClip_EagleMeterEffect") as §?-§).mClip.rotation = (§4G§.getItemByName("MovieClip_EagleMeterEffect") as §?-§).mClip.rotation + param1 / 20;
         if(mNextState.length > 0)
         {
            §^?§.§]!%§.clearLevel();
            return §`U§.STATE_STATUS_COMPLETED;
         }
         return §`U§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         if(this.§-t§)
         {
            if(§4G§.movieClip.contains(this.§-t§))
            {
               §4G§.movieClip.removeChild(this.§-t§);
            }
            this.§-t§.clean();
            this.§-t§ = null;
         }
         §9!0§.§5!'§(§?K§);
         this.mEagleScoreCounter = 0;
         if(this.§@!#§)
         {
            this.§@!#§.stop();
            this.§@!#§ = null;
         }
         (§4G§.getItemByName("MovieClip_EagleMeterFill") as §?-§).mClip.filters = [];
         (§4G§.getItemByName("MovieClip_EagleMeterEffect") as §?-§).setVisibility(false);
         (§4G§.getItemByName("Button_Menu") as §5I§).setComponentVisualState(§3P§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§4G§.getItemByName("Button_Replay") as §5I§).setComponentVisualState(§3P§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§4G§.getItemByName("Button_NextLevel") as §5I§).setComponentVisualState(§3P§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§^!%§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
               § !2§.§62§();
               mNextState = StateCutScene.§?1§;
               break;
            case "REPLAY":
               § !2§.§-9§();
               mNextState = § !2§.§?1§;
               break;
            case "MENU":
               §9!0§.§"P§();
               mNextState = this.§2!J§();
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§5W§.§^!@§();
         }
      }
      
      public function §2!J§() : String
      {
         return §33§.§?1§;
      }
   }
}
