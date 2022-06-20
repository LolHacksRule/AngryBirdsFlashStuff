package §[!K§
{
   import §!!t§.§,-§;
   import §"",§.§"Z§;
   import §"",§.§+§;
   import §"",§.§<?§;
   import §#""§.§+!J§;
   import §+I§.§9!%§;
   import §0r§.§-!F§;
   import §0r§.§7!b§;
   import §1"2§.§ F§;
   import §1"2§.§,!]§;
   import §1k§.§%4§;
   import §[!z§.LevelManager;
   import §]!F§.§"!j§;
   import §]!F§.§1"-§;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class §2"§ extends §,-§
   {
      
      public static const STATE_NAME:String = "LevelEndEagleState";
      
      private static const §^A§:String = "ScoreLoopCountChannel";
       
      
      private var §0"'§:§-!F§;
      
      private var §#!i§:§+!J§;
      
      public var mEagleScoreCounter:Number;
      
      protected var §3O§:Number;
      
      protected var §1!W§:int;
      
      public function §2"§(param1:Boolean = false, param2:String = "LevelEndEagleState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §2"-§ = new §"!j§(this);
         §2"-§.init(§1"-§.§ !>§.Views.View_LevelEndEagle[0]);
         this.§3O§ = (§2"-§.getItemByName("MovieClip_EagleMeterFill") as §"Z§).width;
         §%4§.§>$§(§^A§,1,1);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§#!i§ = new §+!J§(0,0,0,0);
         §2"-§.movieClip.addChildAt(this.§#!i§,§2"-§.movieClip.numChildren - 1);
         §2"-§.getItemByName("MovieClip_EagleMeterEmpty").setVisibility(true);
         §2"-§.getItemByName("MovieClip_EagleMeterFill").setVisibility(true);
         §%4§.§>f§("LevelCompletedTheme1");
         this.§#!i§.§ !2§(0.7);
         var _loc1_:int = §9!%§.§&N§.getEagleScore();
         this.§1!W§ = AngryBirdsFP11.sUserProgress.getEagleScoreForLevel(LevelManager.§[!<§);
         var _loc2_:* = _loc1_ > this.§1!W§;
         if(_loc2_)
         {
            this.saveNewHighScore(_loc1_);
         }
         (§2"-§.getItemByName("TextField_EaglePercentage") as §+§).§"<§.text = _loc1_ + "%";
         §%4§.§>f§("Hiscore_Count",§^A§,100);
         this.§0"'§ = §7!b§.§8c§.§4&§(this,{"mEagleScoreCounter":_loc1_},{"mEagleScoreCounter":0},_loc1_ / 100 * 4);
         this.§0"'§.onComplete = this.onCountComplete;
         this.§0"'§.play();
      }
      
      protected function saveNewHighScore(param1:Number) : void
      {
         AngryBirdsFP11.sUserProgress.§[y§(LevelManager.§[!<§,param1);
      }
      
      protected function onCountComplete() : void
      {
         var _loc1_:GlowFilter = null;
         §%4§.§&"@§(§^A§);
         if(this.mEagleScoreCounter == 100)
         {
            §%4§.§>f§("Hiscore_Badge",§^A§);
            _loc1_ = new GlowFilter(16777215,1,22,22,2.5,10);
            (§2"-§.getItemByName("MovieClip_EagleMeterEffect") as §"Z§).setVisibility(true);
            (§2"-§.getItemByName("MovieClip_EagleMeterFill") as §"Z§).mClip.filters = [_loc1_];
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §,-§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(int(this.mEagleScoreCounter) > this.§1!W§)
         {
            (§2"-§.getItemByName("TextField_EaglePercentage") as §+§).§"<§.text = int(this.mEagleScoreCounter) + "%";
            (§2"-§.getItemByName("TextField_EaglePercentageEffects") as §+§).§"<§.text = int(this.mEagleScoreCounter) + "%";
         }
         else
         {
            (§2"-§.getItemByName("TextField_EaglePercentage") as §+§).§"<§.text = int(this.§1!W§) + "%";
            (§2"-§.getItemByName("TextField_EaglePercentageEffects") as §+§).§"<§.text = int(this.§1!W§) + "%";
         }
         var _loc3_:Rectangle = new Rectangle(0,0,this.§3O§ * (this.mEagleScoreCounter / 100),(§2"-§.getItemByName("MovieClip_EagleMeterFill") as §"Z§).height);
         (§2"-§.getItemByName("MovieClip_EagleMeterFill") as §"Z§).mClip.scrollRect = _loc3_;
         (§2"-§.getItemByName("MovieClip_EagleMeterEffect") as §"Z§).mClip.rotation = (§2"-§.getItemByName("MovieClip_EagleMeterEffect") as §"Z§).mClip.rotation + param1 / 20;
         if(mNextState.length > 0)
         {
            §9!%§.§!!M§.clearLevel();
            return §,-§.STATE_STATUS_COMPLETED;
         }
         return §,-§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         if(this.§#!i§)
         {
            if(§2"-§.movieClip.contains(this.§#!i§))
            {
               §2"-§.movieClip.removeChild(this.§#!i§);
            }
            this.§#!i§.clean();
            this.§#!i§ = null;
         }
         §%4§.§&"@§(§^A§);
         this.mEagleScoreCounter = 0;
         if(this.§0"'§)
         {
            this.§0"'§.stop();
            this.§0"'§ = null;
         }
         (§2"-§.getItemByName("MovieClip_EagleMeterFill") as §"Z§).mClip.filters = [];
         (§2"-§.getItemByName("MovieClip_EagleMeterEffect") as §"Z§).setVisibility(false);
         (§2"-§.getItemByName("Button_Menu") as §<?§).setComponentVisualState(§ F§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§2"-§.getItemByName("Button_Replay") as §<?§).setComponentVisualState(§ F§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§2"-§.getItemByName("Button_NextLevel") as §<?§).setComponentVisualState(§ F§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§,!]§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
               §"c§.§^!8§();
               mNextState = StateCutScene.STATE_NAME;
               break;
            case "REPLAY":
               §"c§.§@!z§();
               mNextState = §"c§.STATE_NAME;
               break;
            case "MENU":
               §%4§.§9!0§();
               mNextState = this.getMenuButtonTargetState();
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§`"B§.§>!-§();
         }
      }
      
      public function getMenuButtonTargetState() : String
      {
         return §=B§.STATE_NAME;
      }
   }
}
