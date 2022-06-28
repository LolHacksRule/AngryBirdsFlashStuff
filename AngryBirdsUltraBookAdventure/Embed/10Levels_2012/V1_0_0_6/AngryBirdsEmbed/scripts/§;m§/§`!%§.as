package §;m§
{
   import §#h§.§ !H§;
   import §'o§.§`K§;
   import §+!?§.§"h§;
   import §0w§.§0#§;
   import §0w§.§06§;
   import §4C§.§"m§;
   import §4C§.§6<§;
   import §4C§.§<k§;
   import §6H§.§>3§;
   import §=!B§.§59§;
   import §?!+§.§,!G§;
   import §?!+§.§3_§;
   import §`!0§.§"?§;
   import §`!0§.§[4§;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class §`!%§ extends §>3§
   {
      
      public static const §-!A§:String = "LevelEndEagleState";
      
      private static const §+!$§:String = "ScoreLoopCountChannel";
       
      
      private var §!p§:§3_§;
      
      private var §=@§:§`K§;
      
      public var mEagleScoreCounter:Number;
      
      protected var §6G§:Number;
      
      protected var §0!A§:int;
      
      public function §`!%§(param1:Boolean = false, param2:String = "LevelEndEagleState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §-f§ = new §0#§(this);
         §-f§.init(§06§.§-`§.Views.View_LevelEndEagle[0]);
         this.§6G§ = (§-f§.getItemByName("MovieClip_EagleMeterFill") as §"m§).width;
         § !H§.§+z§(§+!$§,1,1);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§=@§ = new §`K§(0,0,0,0);
         §-f§.movieClip.addChildAt(this.§=@§,§-f§.movieClip.numChildren - 1);
         §-f§.getItemByName("MovieClip_EagleMeterEmpty").setVisibility(true);
         §-f§.getItemByName("MovieClip_EagleMeterFill").setVisibility(true);
         § !H§.§ !%§("LevelCompletedTheme1");
         this.§=@§.§?`§(0.7);
         var _loc1_:int = §"h§.controller.getEagleScore();
         this.§0!A§ = AngryBirdsFP11.sUserProgress.§4a§(§59§.§%j§);
         var _loc2_:* = _loc1_ > this.§0!A§;
         if(_loc2_)
         {
            this.§@&§(_loc1_);
         }
         (§-f§.getItemByName("TextField_EaglePercentage") as §<k§).§5+§.text = _loc1_ + "%";
         § !H§.§ !%§("Hiscore_Count",§+!$§,100);
         this.§!p§ = §,!G§.§@j§.§47§(this,{"mEagleScoreCounter":_loc1_},{"mEagleScoreCounter":0},_loc1_ / 100 * 4);
         this.§!p§.onComplete = this.§ !D§;
         this.§!p§.play();
      }
      
      protected function §@&§(param1:Number) : void
      {
         AngryBirdsFP11.sUserProgress.§9!3§(§59§.§%j§,param1);
      }
      
      protected function § !D§() : void
      {
         var _loc1_:GlowFilter = null;
         § !H§.§]%§(§+!$§);
         if(this.mEagleScoreCounter == 100)
         {
            § !H§.§ !%§("Hiscore_Badge",§+!$§);
            _loc1_ = new GlowFilter(16777215,1,22,22,2.5,10);
            (§-f§.getItemByName("MovieClip_EagleMeterEffect") as §"m§).setVisibility(true);
            (§-f§.getItemByName("MovieClip_EagleMeterFill") as §"m§).mClip.filters = [_loc1_];
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §>3§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(int(this.mEagleScoreCounter) > this.§0!A§)
         {
            (§-f§.getItemByName("TextField_EaglePercentage") as §<k§).§5+§.text = int(this.mEagleScoreCounter) + "%";
            (§-f§.getItemByName("TextField_EaglePercentageEffects") as §<k§).§5+§.text = int(this.mEagleScoreCounter) + "%";
         }
         else
         {
            (§-f§.getItemByName("TextField_EaglePercentage") as §<k§).§5+§.text = int(this.§0!A§) + "%";
            (§-f§.getItemByName("TextField_EaglePercentageEffects") as §<k§).§5+§.text = int(this.§0!A§) + "%";
         }
         var _loc3_:Rectangle = new Rectangle(0,0,this.§6G§ * (this.mEagleScoreCounter / 100),(§-f§.getItemByName("MovieClip_EagleMeterFill") as §"m§).height);
         (§-f§.getItemByName("MovieClip_EagleMeterFill") as §"m§).mClip.scrollRect = _loc3_;
         (§-f§.getItemByName("MovieClip_EagleMeterEffect") as §"m§).mClip.rotation = (§-f§.getItemByName("MovieClip_EagleMeterEffect") as §"m§).mClip.rotation + param1 / 20;
         if(mNextState.length > 0)
         {
            §"h§.§1C§.clearLevel();
            return §>3§.STATE_STATUS_COMPLETED;
         }
         return §>3§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         if(this.§=@§)
         {
            if(§-f§.movieClip.contains(this.§=@§))
            {
               §-f§.movieClip.removeChild(this.§=@§);
            }
            this.§=@§.clean();
            this.§=@§ = null;
         }
         § !H§.§]%§(§+!$§);
         this.mEagleScoreCounter = 0;
         if(this.§!p§)
         {
            this.§!p§.stop();
            this.§!p§ = null;
         }
         (§-f§.getItemByName("MovieClip_EagleMeterFill") as §"m§).mClip.filters = [];
         (§-f§.getItemByName("MovieClip_EagleMeterEffect") as §"m§).setVisibility(false);
         (§-f§.getItemByName("Button_Menu") as §6<§).setComponentVisualState(§[4§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§-f§.getItemByName("Button_Replay") as §6<§).setComponentVisualState(§[4§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§-f§.getItemByName("Button_NextLevel") as §6<§).setComponentVisualState(§[4§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§"?§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
               §3'§.§+^§();
               mNextState = StateCutScene.§-!A§;
               break;
            case "REPLAY":
               §3'§.§;3§();
               mNextState = §3'§.§-!A§;
               break;
            case "MENU":
               § !H§.§[!<§();
               mNextState = this.§52§();
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§0P§.§<h§();
         }
      }
      
      public function §52§() : String
      {
         return §>!B§.§-!A§;
      }
   }
}
