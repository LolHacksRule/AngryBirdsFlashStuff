package §2!U§
{
   import §"!i§.LevelManager;
   import §2y§.§54§;
   import §2y§.§7!p§;
   import §2y§.§[!i§;
   import §8!H§.§9![§;
   import §;!y§.§,!s§;
   import §>!q§.§!^§;
   import §>f§.§&!G§;
   import §>f§.§2!z§;
   import §@!&§.§'!o§;
   import §@!&§.§-0§;
   import §[!b§.§-!Q§;
   import §]F§.§^v§;
   import §]F§.§`!G§;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class §0!>§ extends §9![§
   {
      
      public static const §'!q§:String = "LevelEndEagleState";
      
      private static const §[!<§:String = "ScoreLoopCountChannel";
       
      
      private var §3!]§:§^v§;
      
      private var §`!%§:§!^§;
      
      public var mEagleScoreCounter:Number;
      
      protected var §-!N§:Number;
      
      protected var §=!G§:int;
      
      public function §0!>§(param1:Boolean = false, param2:String = "LevelEndEagleState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §'!Q§ = new §&!G§(this);
         §'!Q§.init(§2!z§.§ _§.Views.View_LevelEndEagle[0]);
         this.§-!N§ = (§'!Q§.getItemByName("MovieClip_EagleMeterFill") as §7!p§).width;
         §-!Q§.§"3§(§[!<§,1,1);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§`!%§ = new §!^§(0,0,0,0);
         §'!Q§.movieClip.addChildAt(this.§`!%§,§'!Q§.movieClip.numChildren - 1);
         §'!Q§.getItemByName("MovieClip_EagleMeterEmpty").setVisibility(true);
         §'!Q§.getItemByName("MovieClip_EagleMeterFill").setVisibility(true);
         §-!Q§.§#3§("LevelCompletedTheme1");
         this.§`!%§.§^p§(0.7);
         var _loc1_:int = §,!s§.§ Q§.getEagleScore();
         this.§=!G§ = AngryBirdsFP11.sUserProgress.getEagleScoreForLevel(LevelManager.§"L§);
         var _loc2_:* = _loc1_ > this.§=!G§;
         if(_loc2_)
         {
            this.§5!O§(_loc1_);
         }
         (§'!Q§.getItemByName("TextField_EaglePercentage") as §54§).§5!B§.text = _loc1_ + "%";
         §-!Q§.§#3§("Hiscore_Count",§[!<§,100);
         this.§3!]§ = §`!G§.§[U§.§-]§(this,{"mEagleScoreCounter":_loc1_},{"mEagleScoreCounter":0},_loc1_ / 100 * 4);
         this.§3!]§.onComplete = this.§-!T§;
         this.§3!]§.play();
      }
      
      protected function §5!O§(param1:Number) : void
      {
         AngryBirdsFP11.sUserProgress.§3!L§(LevelManager.§"L§,param1);
      }
      
      protected function §-!T§() : void
      {
         var _loc1_:GlowFilter = null;
         §-!Q§.§^B§(§[!<§);
         if(this.mEagleScoreCounter == 100)
         {
            §-!Q§.§#3§("Hiscore_Badge",§[!<§);
            _loc1_ = new GlowFilter(16777215,1,22,22,2.5,10);
            (§'!Q§.getItemByName("MovieClip_EagleMeterEffect") as §7!p§).setVisibility(true);
            (§'!Q§.getItemByName("MovieClip_EagleMeterFill") as §7!p§).mClip.filters = [_loc1_];
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §9![§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(int(this.mEagleScoreCounter) > this.§=!G§)
         {
            (§'!Q§.getItemByName("TextField_EaglePercentage") as §54§).§5!B§.text = int(this.mEagleScoreCounter) + "%";
            (§'!Q§.getItemByName("TextField_EaglePercentageEffects") as §54§).§5!B§.text = int(this.mEagleScoreCounter) + "%";
         }
         else
         {
            (§'!Q§.getItemByName("TextField_EaglePercentage") as §54§).§5!B§.text = int(this.§=!G§) + "%";
            (§'!Q§.getItemByName("TextField_EaglePercentageEffects") as §54§).§5!B§.text = int(this.§=!G§) + "%";
         }
         var _loc3_:Rectangle = new Rectangle(0,0,this.§-!N§ * (this.mEagleScoreCounter / 100),(§'!Q§.getItemByName("MovieClip_EagleMeterFill") as §7!p§).height);
         (§'!Q§.getItemByName("MovieClip_EagleMeterFill") as §7!p§).mClip.scrollRect = _loc3_;
         (§'!Q§.getItemByName("MovieClip_EagleMeterEffect") as §7!p§).mClip.rotation = (§'!Q§.getItemByName("MovieClip_EagleMeterEffect") as §7!p§).mClip.rotation + param1 / 20;
         if(mNextState.length > 0)
         {
            §,!s§.§=!I§.clearLevel();
            return §9![§.STATE_STATUS_COMPLETED;
         }
         return §9![§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         if(this.§`!%§)
         {
            if(§'!Q§.movieClip.contains(this.§`!%§))
            {
               §'!Q§.movieClip.removeChild(this.§`!%§);
            }
            this.§`!%§.clean();
            this.§`!%§ = null;
         }
         §-!Q§.§^B§(§[!<§);
         this.mEagleScoreCounter = 0;
         if(this.§3!]§)
         {
            this.§3!]§.stop();
            this.§3!]§ = null;
         }
         (§'!Q§.getItemByName("MovieClip_EagleMeterFill") as §7!p§).mClip.filters = [];
         (§'!Q§.getItemByName("MovieClip_EagleMeterEffect") as §7!p§).setVisibility(false);
         (§'!Q§.getItemByName("Button_Menu") as §[!i§).setComponentVisualState(§-0§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§'!Q§.getItemByName("Button_Replay") as §[!i§).setComponentVisualState(§-0§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§'!Q§.getItemByName("Button_NextLevel") as §[!i§).setComponentVisualState(§-0§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§'!o§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
               §3!;§.§9!G§();
               mNextState = StateCutScene.§'!q§;
               break;
            case "REPLAY":
               §3!;§.§0!1§();
               mNextState = §3!;§.§'!q§;
               break;
            case "MENU":
               §-!Q§.§4!$§();
               mNextState = this.§1!H§();
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§'!g§.§]8§();
         }
      }
      
      public function §1!H§() : String
      {
         return §2!=§.§'!q§;
      }
   }
}
