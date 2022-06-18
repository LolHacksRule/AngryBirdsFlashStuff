package §@!%§
{
   import § "§.§8!3§;
   import §"!F§.§^$§;
   import §0m§.§1!,§;
   import §0u§.§"`§;
   import §0u§.§&]§;
   import §1!?§.§7_§;
   import §10§.§#!4§;
   import §4-§.§%+§;
   import §4-§.§;g§;
   import §4-§.§>Z§;
   import §6!,§.§1W§;
   import §6!,§.§[H§;
   import §]5§.§,G§;
   import §]5§.§1^§;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class §0&§ extends §1!,§
   {
      
      public static const §5%§:String = "LevelEndEagleState";
      
      private static const §+c§:String = "ScoreLoopCountChannel";
       
      
      private var §3!E§:§1^§;
      
      private var §2!C§:§^$§;
      
      public var mEagleScoreCounter:Number;
      
      private var §=o§:Number;
      
      private var §4[§:int;
      
      public function §0&§(param1:Boolean = false, param2:String = "LevelEndEagleState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §`k§ = new §[H§(this);
         §`k§.init(§1W§.§&!G§.Views.View_LevelEndEagle[0]);
         this.§=o§ = (§`k§.getItemByName("MovieClip_EagleMeterFill") as §;g§).width;
         §7_§.§#I§(§+c§,1,1);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§2!C§ = new §^$§(0,0,0,0);
         §`k§.mMovieClip.addChildAt(this.§2!C§,§`k§.mMovieClip.numChildren - 1);
         (§`k§.getItemByName("MovieClip_EagleMeterEmpty") as §;g§).setVisibility(true);
         (§`k§.getItemByName("MovieClip_EagleMeterFill") as §;g§).setVisibility(true);
         §7_§.§4!5§("LevelCompletedTheme1");
         this.§2!C§.§3t§(0.7);
         var _loc1_:int = §#!4§.controller.getEagleScore();
         this.§4[§ = AngryBirdsFP11.sUserProgress.§-@§(§8!3§.§-[§);
         var _loc2_:* = _loc1_ > this.§4[§;
         if(_loc2_)
         {
            this.§;Q§(_loc1_);
         }
         (§`k§.getItemByName("TextField_EaglePercentage") as §>Z§).§23§.text = _loc1_ + "%";
         §7_§.§4!5§("Hiscore_Count",§+c§,100);
         this.§3!E§ = §,G§.§+S§.§1u§(this,{"mEagleScoreCounter":_loc1_},{"mEagleScoreCounter":0},_loc1_ / 100 * 4);
         this.§3!E§.onComplete = this.§?X§;
         this.§3!E§.play();
      }
      
      protected function §;Q§(param1:Number) : void
      {
         AngryBirdsFP11.sUserProgress.§+!@§(§8!3§.§-[§,param1);
      }
      
      protected function §?X§() : void
      {
         var _loc1_:GlowFilter = null;
         §7_§.§!4§(§+c§);
         if(this.mEagleScoreCounter == 100)
         {
            §7_§.§4!5§("Hiscore_Badge",§+c§);
            _loc1_ = new GlowFilter(16777215,1,22,22,2.5,10);
            (§`k§.getItemByName("MovieClip_EagleMeterEffect") as §;g§).setVisibility(true);
            (§`k§.getItemByName("MovieClip_EagleMeterFill") as §;g§).mClip.filters = [_loc1_];
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §1!,§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(int(this.mEagleScoreCounter) > this.§4[§)
         {
            (§`k§.getItemByName("TextField_EaglePercentage") as §>Z§).§23§.text = int(this.mEagleScoreCounter) + "%";
            (§`k§.getItemByName("TextField_EaglePercentageEffects") as §>Z§).§23§.text = int(this.mEagleScoreCounter) + "%";
         }
         else
         {
            (§`k§.getItemByName("TextField_EaglePercentage") as §>Z§).§23§.text = int(this.§4[§) + "%";
            (§`k§.getItemByName("TextField_EaglePercentageEffects") as §>Z§).§23§.text = int(this.§4[§) + "%";
         }
         var _loc3_:Rectangle = new Rectangle(0,0,this.§=o§ * (this.mEagleScoreCounter / 100),(§`k§.getItemByName("MovieClip_EagleMeterFill") as §;g§).height);
         (§`k§.getItemByName("MovieClip_EagleMeterFill") as §;g§).mClip.scrollRect = _loc3_;
         (§`k§.getItemByName("MovieClip_EagleMeterEffect") as §;g§).mClip.rotation = (§`k§.getItemByName("MovieClip_EagleMeterEffect") as §;g§).mClip.rotation + param1 / 20;
         if(mNextState.length > 0)
         {
            §#!4§.§^Y§.clearLevel();
            return §1!,§.STATE_STATUS_COMPLETED;
         }
         return §1!,§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         if(this.§2!C§)
         {
            if(§`k§.mMovieClip.contains(this.§2!C§))
            {
               §`k§.mMovieClip.removeChild(this.§2!C§);
            }
            this.§2!C§.clean();
            this.§2!C§ = null;
         }
         §7_§.§!4§(§+c§);
         this.mEagleScoreCounter = 0;
         if(this.§3!E§)
         {
            this.§3!E§.stop();
            this.§3!E§ = null;
         }
         (§`k§.getItemByName("MovieClip_EagleMeterFill") as §;g§).mClip.filters = [];
         (§`k§.getItemByName("MovieClip_EagleMeterEffect") as §;g§).setVisibility(false);
         (§`k§.getItemByName("Button_Menu") as §%+§).setComponentVisualState(§"`§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§`k§.getItemByName("Button_Replay") as §%+§).setComponentVisualState(§"`§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§`k§.getItemByName("Button_NextLevel") as §%+§).setComponentVisualState(§"`§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§&]§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
               §2!"§.§6!9§();
               mNextState = StateCutScene.§5%§;
               break;
            case "REPLAY":
               §2!"§.§`!B§();
               mNextState = §2!"§.§5%§;
               break;
            case "MENU":
               §7_§.§@l§();
               mNextState = §]V§.§5%§;
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§?,§.§do§();
         }
      }
   }
}
