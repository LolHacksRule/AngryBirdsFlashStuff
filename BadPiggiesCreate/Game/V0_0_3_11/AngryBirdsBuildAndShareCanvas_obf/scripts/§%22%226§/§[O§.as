package §""6§
{
   import §'x§.§?z§;
   import §+!d§.§"r§;
   import §+!d§.§6=§;
   import §+%§.§+"%§;
   import §2!O§.§,w§;
   import §;!A§.§ !F§;
   import §;!A§.§%!`§;
   import §;!A§.§2v§;
   import §;"$§.§8!O§;
   import §;"$§.§`5§;
   import §<!k§.§!!g§;
   import §?!k§.§0!t§;
   import §?h§.§%!Z§;
   import §?h§.§8!K§;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class §[O§ extends §,w§
   {
      
      public static const §^z§:String = "LevelEndEagleState";
      
      private static const §^!q§:String = "ScoreLoopCountChannel";
       
      
      private var §1!S§:§8!K§;
      
      private var §;v§:§!!g§;
      
      public var mEagleScoreCounter:Number;
      
      protected var §%n§:Number;
      
      protected var §6"5§:int;
      
      public function §[O§(param1:Boolean = false, param2:String = "LevelEndEagleState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §%""§ = new §`5§(this);
         §%""§.init(§8!O§.§'!J§.Views.View_LevelEndEagle[0]);
         this.§%n§ = (§%""§.getItemByName("MovieClip_EagleMeterFill") as §%!`§).width;
         §0!t§.§2Q§(§^!q§,1,1);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§;v§ = new §!!g§(0,0,0,0);
         §%""§.movieClip.addChildAt(this.§;v§,§%""§.movieClip.numChildren - 1);
         §%""§.getItemByName("MovieClip_EagleMeterEmpty").setVisibility(true);
         §%""§.getItemByName("MovieClip_EagleMeterFill").setVisibility(true);
         §0!t§.playSound("LevelCompletedTheme1");
         this.§;v§.§6"+§(0.7);
         var _loc1_:int = §?z§.§6!#§.getEagleScore();
         this.§6"5§ = AngryBirdsFP11.§8!I§.§>"&§(§+"%§.§9!'§);
         var _loc2_:* = _loc1_ > this.§6"5§;
         if(_loc2_)
         {
            this.§%!H§(_loc1_);
         }
         (§%""§.getItemByName("TextField_EaglePercentage") as § !F§).§1!k§.text = _loc1_ + "%";
         §0!t§.playSound("Hiscore_Count",§^!q§,100);
         this.§1!S§ = §%!Z§.§if §.§"<§(this,{"mEagleScoreCounter":_loc1_},{"mEagleScoreCounter":0},_loc1_ / 100 * 4);
         this.§1!S§.onComplete = this.§2!Y§;
         this.§1!S§.play();
      }
      
      protected function §%!H§(param1:Number) : void
      {
         AngryBirdsFP11.§8!I§.§#P§(§+"%§.§9!'§,param1);
      }
      
      protected function §2!Y§() : void
      {
         var _loc1_:GlowFilter = null;
         §0!t§.§?!u§(§^!q§);
         if(this.mEagleScoreCounter == 100)
         {
            §0!t§.playSound("Hiscore_Badge",§^!q§);
            _loc1_ = new GlowFilter(16777215,1,22,22,2.5,10);
            (§%""§.getItemByName("MovieClip_EagleMeterEffect") as §%!`§).setVisibility(true);
            (§%""§.getItemByName("MovieClip_EagleMeterFill") as §%!`§).mClip.filters = [_loc1_];
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §,w§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(int(this.mEagleScoreCounter) > this.§6"5§)
         {
            (§%""§.getItemByName("TextField_EaglePercentage") as § !F§).§1!k§.text = int(this.mEagleScoreCounter) + "%";
            (§%""§.getItemByName("TextField_EaglePercentageEffects") as § !F§).§1!k§.text = int(this.mEagleScoreCounter) + "%";
         }
         else
         {
            (§%""§.getItemByName("TextField_EaglePercentage") as § !F§).§1!k§.text = int(this.§6"5§) + "%";
            (§%""§.getItemByName("TextField_EaglePercentageEffects") as § !F§).§1!k§.text = int(this.§6"5§) + "%";
         }
         var _loc3_:Rectangle = new Rectangle(0,0,this.§%n§ * (this.mEagleScoreCounter / 100),(§%""§.getItemByName("MovieClip_EagleMeterFill") as §%!`§).height);
         (§%""§.getItemByName("MovieClip_EagleMeterFill") as §%!`§).mClip.scrollRect = _loc3_;
         (§%""§.getItemByName("MovieClip_EagleMeterEffect") as §%!`§).mClip.rotation = (§%""§.getItemByName("MovieClip_EagleMeterEffect") as §%!`§).mClip.rotation + param1 / 20;
         if(mNextState.length > 0)
         {
            §?z§.§=7§.clearLevel();
            return §,w§.STATE_STATUS_COMPLETED;
         }
         return §,w§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         if(this.§;v§)
         {
            if(§%""§.movieClip.contains(this.§;v§))
            {
               §%""§.movieClip.removeChild(this.§;v§);
            }
            this.§;v§.clean();
            this.§;v§ = null;
         }
         §0!t§.§?!u§(§^!q§);
         this.mEagleScoreCounter = 0;
         if(this.§1!S§)
         {
            this.§1!S§.stop();
            this.§1!S§ = null;
         }
         (§%""§.getItemByName("MovieClip_EagleMeterFill") as §%!`§).mClip.filters = [];
         (§%""§.getItemByName("MovieClip_EagleMeterEffect") as §%!`§).setVisibility(false);
         (§%""§.getItemByName("Button_Menu") as §2v§).setComponentVisualState(§"r§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§%""§.getItemByName("Button_Replay") as §2v§).setComponentVisualState(§"r§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§%""§.getItemByName("Button_NextLevel") as §2v§).setComponentVisualState(§"r§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§6=§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
               §!Z§.§0""§();
               mNextState = StateCutScene.§^z§;
               break;
            case "REPLAY":
               §!Z§.§0!f§();
               mNextState = §!Z§.§^z§;
               break;
            case "MENU":
               §0!t§.§,!S§();
               mNextState = this.§,!R§();
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§@!N§.§2!1§();
         }
      }
      
      public function §,!R§() : String
      {
         return §`!%§.§^z§;
      }
   }
}
