package §;u§
{
   import §%i§.§4"9§;
   import §%i§.§7"0§;
   import §%i§.§^n§;
   import §1!t§.§!!G§;
   import §1!t§.§""B§;
   import §2"'§.§0W§;
   import §2"'§.§6!K§;
   import §8";§.§+d§;
   import §8m§.§@"M§;
   import §9!n§.LevelManager;
   import §>0§.§3"K§;
   import §@!"§.§?l§;
   import §`"%§.§ "<§;
   import §`"%§.§`_§;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class §>!w§ extends §+d§
   {
      
      public static const STATE_NAME:String = "LevelEndEagleState";
      
      private static const §>!V§:String = "ScoreLoopCountChannel";
       
      
      private var §7!'§:§6!K§;
      
      private var §;!@§:§3"K§;
      
      public var mEagleScoreCounter:Number;
      
      protected var §^N§:Number;
      
      protected var §!"1§:int;
      
      public function §>!w§(param1:Boolean = false, param2:String = "LevelEndEagleState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §2"@§ = new §`_§(this);
         §2"@§.init(§ "<§.§%I§.Views.View_LevelEndEagle[0]);
         this.§^N§ = (§2"@§.getItemByName("MovieClip_EagleMeterFill") as §^n§).width;
         §@"M§.§set §(§>!V§,1,1);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§;!@§ = new §3"K§(0,0,0,0);
         §2"@§.movieClip.addChildAt(this.§;!@§,§2"@§.movieClip.numChildren - 1);
         §2"@§.getItemByName("MovieClip_EagleMeterEmpty").setVisibility(true);
         §2"@§.getItemByName("MovieClip_EagleMeterFill").setVisibility(true);
         §@"M§.§3"C§("LevelCompletedTheme1");
         this.§;!@§.§!!4§(0.7);
         var _loc1_:int = §?l§.§5-§.getEagleScore();
         this.§!"1§ = AngryBirdsFP11.sUserProgress.getEagleScoreForLevel(LevelManager.§ T§);
         var _loc2_:* = _loc1_ > this.§!"1§;
         if(_loc2_)
         {
            this.saveNewHighScore(_loc1_);
         }
         (§2"@§.getItemByName("TextField_EaglePercentage") as §4"9§).§-" §.text = _loc1_ + "%";
         §@"M§.§3"C§("Hiscore_Count",§>!V§,100);
         this.§7!'§ = §0W§.§&"5§.§]!r§(this,{"mEagleScoreCounter":_loc1_},{"mEagleScoreCounter":0},_loc1_ / 100 * 4);
         this.§7!'§.onComplete = this.onCountComplete;
         this.§7!'§.play();
      }
      
      protected function saveNewHighScore(param1:Number) : void
      {
         AngryBirdsFP11.sUserProgress.§3!Z§(LevelManager.§ T§,param1);
      }
      
      protected function onCountComplete() : void
      {
         var _loc1_:GlowFilter = null;
         §@"M§.§]!n§(§>!V§);
         if(this.mEagleScoreCounter == 100)
         {
            §@"M§.§3"C§("Hiscore_Badge",§>!V§);
            _loc1_ = new GlowFilter(16777215,1,22,22,2.5,10);
            (§2"@§.getItemByName("MovieClip_EagleMeterEffect") as §^n§).setVisibility(true);
            (§2"@§.getItemByName("MovieClip_EagleMeterFill") as §^n§).mClip.filters = [_loc1_];
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §+d§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(int(this.mEagleScoreCounter) > this.§!"1§)
         {
            (§2"@§.getItemByName("TextField_EaglePercentage") as §4"9§).§-" §.text = int(this.mEagleScoreCounter) + "%";
            (§2"@§.getItemByName("TextField_EaglePercentageEffects") as §4"9§).§-" §.text = int(this.mEagleScoreCounter) + "%";
         }
         else
         {
            (§2"@§.getItemByName("TextField_EaglePercentage") as §4"9§).§-" §.text = int(this.§!"1§) + "%";
            (§2"@§.getItemByName("TextField_EaglePercentageEffects") as §4"9§).§-" §.text = int(this.§!"1§) + "%";
         }
         var _loc3_:Rectangle = new Rectangle(0,0,this.§^N§ * (this.mEagleScoreCounter / 100),(§2"@§.getItemByName("MovieClip_EagleMeterFill") as §^n§).height);
         (§2"@§.getItemByName("MovieClip_EagleMeterFill") as §^n§).mClip.scrollRect = _loc3_;
         (§2"@§.getItemByName("MovieClip_EagleMeterEffect") as §^n§).mClip.rotation = (§2"@§.getItemByName("MovieClip_EagleMeterEffect") as §^n§).mClip.rotation + param1 / 20;
         if(mNextState.length > 0)
         {
            §?l§.§'h§.clearLevel();
            return §+d§.STATE_STATUS_COMPLETED;
         }
         return §+d§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         if(this.§;!@§)
         {
            if(§2"@§.movieClip.contains(this.§;!@§))
            {
               §2"@§.movieClip.removeChild(this.§;!@§);
            }
            this.§;!@§.clean();
            this.§;!@§ = null;
         }
         §@"M§.§]!n§(§>!V§);
         this.mEagleScoreCounter = 0;
         if(this.§7!'§)
         {
            this.§7!'§.stop();
            this.§7!'§ = null;
         }
         (§2"@§.getItemByName("MovieClip_EagleMeterFill") as §^n§).mClip.filters = [];
         (§2"@§.getItemByName("MovieClip_EagleMeterEffect") as §^n§).setVisibility(false);
         (§2"@§.getItemByName("Button_Menu") as §7"0§).setComponentVisualState(§!!G§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§2"@§.getItemByName("Button_Replay") as §7"0§).setComponentVisualState(§!!G§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§2"@§.getItemByName("Button_NextLevel") as §7"0§).setComponentVisualState(§!!G§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§""B§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
               §-!v§.§>"@§();
               mNextState = StateCutScene.STATE_NAME;
               break;
            case "REPLAY":
               §-!v§.§^!$§();
               mNextState = §-!v§.STATE_NAME;
               break;
            case "MENU":
               §@"M§.§3!s§();
               mNextState = this.getMenuButtonTargetState();
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§>m§.§=-§();
         }
      }
      
      public function getMenuButtonTargetState() : String
      {
         return §9"@§.STATE_NAME;
      }
   }
}
