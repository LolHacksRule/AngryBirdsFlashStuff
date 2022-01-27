package §##§
{
   import §'!N§.§%!E§;
   import §'!N§.§>p§;
   import §,!<§.§6!M§;
   import §1!#§.§<t§;
   import §1!#§.§]H§;
   import §3p§.§4;§;
   import §5=§.§^n§;
   import §=8§.§&H§;
   import §=8§.§,!%§;
   import §=8§.dynamic;
   import §@w§.§2G§;
   import §[N§.§9k§;
   import §]!O§.§+[§;
   import §]!O§.§;Q§;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class § !E§ extends §6!M§
   {
      
      public static const §=,§:String = "LevelEndEagleState";
      
      private static const §"Q§:String = "ScoreLoopCountChannel";
       
      
      private var §&2§:§]H§;
      
      private var §3!6§:§4;§;
      
      public var mEagleScoreCounter:Number;
      
      protected var §9!A§:Number;
      
      protected var §!n§:int;
      
      public function § !E§(param1:Boolean = false, param2:String = "LevelEndEagleState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         § § = new §+[§(this);
         § §.init(§;Q§.static.Views.View_LevelEndEagle[0]);
         this.§9!A§ = (§ §.getItemByName("MovieClip_EagleMeterFill") as §,!%§).width;
         §9k§.§?!F§(§"Q§,1,1);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§3!6§ = new §4;§(0,0,0,0);
         § §.movieClip.addChildAt(this.§3!6§,§ §.movieClip.numChildren - 1);
         § §.getItemByName("MovieClip_EagleMeterEmpty").setVisibility(true);
         § §.getItemByName("MovieClip_EagleMeterFill").setVisibility(true);
         §9k§.playSound("LevelCompletedTheme1");
         this.§3!6§.fadeToAlpha(0.7);
         var _loc1_:int = §2G§.controller.getEagleScore();
         this.§!n§ = AngryBirdsFP11.§ ;§.§4m§(§^n§.§-7§);
         var _loc2_:* = _loc1_ > this.§!n§;
         if(_loc2_)
         {
            this.§"!=§(_loc1_);
         }
         (§ §.getItemByName("TextField_EaglePercentage") as §&H§).§%!"§.text = _loc1_ + "%";
         §9k§.playSound("Hiscore_Count",§"Q§,100);
         this.§&2§ = §<t§.§4J§.§#q§(this,{"mEagleScoreCounter":_loc1_},{"mEagleScoreCounter":0},_loc1_ / 100 * 4);
         this.§&2§.onComplete = this.§0L§;
         this.§&2§.play();
      }
      
      protected function §"!=§(param1:Number) : void
      {
         AngryBirdsFP11.§ ;§.§'Z§(§^n§.§-7§,param1);
      }
      
      protected function §0L§() : void
      {
         var _loc1_:GlowFilter = null;
         §9k§.§3n§(§"Q§);
         if(this.mEagleScoreCounter == 100)
         {
            §9k§.playSound("Hiscore_Badge",§"Q§);
            _loc1_ = new GlowFilter(16777215,1,22,22,2.5,10);
            (§ §.getItemByName("MovieClip_EagleMeterEffect") as §,!%§).setVisibility(true);
            (§ §.getItemByName("MovieClip_EagleMeterFill") as §,!%§).mClip.filters = [_loc1_];
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §6!M§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(int(this.mEagleScoreCounter) > this.§!n§)
         {
            (§ §.getItemByName("TextField_EaglePercentage") as §&H§).§%!"§.text = int(this.mEagleScoreCounter) + "%";
            (§ §.getItemByName("TextField_EaglePercentageEffects") as §&H§).§%!"§.text = int(this.mEagleScoreCounter) + "%";
         }
         else
         {
            (§ §.getItemByName("TextField_EaglePercentage") as §&H§).§%!"§.text = int(this.§!n§) + "%";
            (§ §.getItemByName("TextField_EaglePercentageEffects") as §&H§).§%!"§.text = int(this.§!n§) + "%";
         }
         var _loc3_:Rectangle = new Rectangle(0,0,this.§9!A§ * (this.mEagleScoreCounter / 100),(§ §.getItemByName("MovieClip_EagleMeterFill") as §,!%§).height);
         (§ §.getItemByName("MovieClip_EagleMeterFill") as §,!%§).mClip.scrollRect = _loc3_;
         (§ §.getItemByName("MovieClip_EagleMeterEffect") as §,!%§).mClip.rotation = (§ §.getItemByName("MovieClip_EagleMeterEffect") as §,!%§).mClip.rotation + param1 / 20;
         if(mNextState.length > 0)
         {
            §2G§.§7!,§.clearLevel();
            return §6!M§.STATE_STATUS_COMPLETED;
         }
         return §6!M§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         if(this.§3!6§)
         {
            if(§ §.movieClip.contains(this.§3!6§))
            {
               § §.movieClip.removeChild(this.§3!6§);
            }
            this.§3!6§.clean();
            this.§3!6§ = null;
         }
         §9k§.§3n§(§"Q§);
         this.mEagleScoreCounter = 0;
         if(this.§&2§)
         {
            this.§&2§.stop();
            this.§&2§ = null;
         }
         (§ §.getItemByName("MovieClip_EagleMeterFill") as §,!%§).mClip.filters = [];
         (§ §.getItemByName("MovieClip_EagleMeterEffect") as §,!%§).setVisibility(false);
         (§ §.getItemByName("Button_Menu") as dynamic).setComponentVisualState(§>p§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§ §.getItemByName("Button_Replay") as dynamic).setComponentVisualState(§>p§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§ §.getItemByName("Button_NextLevel") as dynamic).setComponentVisualState(§>p§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§%!E§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
               §6l§.§'! §();
               mNextState = StateCutScene.§=,§;
               break;
            case "REPLAY":
               §6l§.§"w§();
               mNextState = §6l§.§=,§;
               break;
            case "MENU":
               §9k§.§return§();
               mNextState = this.§,d§();
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§<2§.§ !J§();
         }
      }
      
      public function §,d§() : String
      {
         return §5!E§.§=,§;
      }
   }
}
