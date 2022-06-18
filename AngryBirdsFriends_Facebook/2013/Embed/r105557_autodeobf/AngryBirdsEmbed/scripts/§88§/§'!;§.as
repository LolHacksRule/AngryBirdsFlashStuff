package §88§
{
   import § if§.§2q§;
   import §"!K§.§,U§;
   import §"!K§.§while§;
   import §"?§.§]A§;
   import §#]§.§'5§;
   import §&U§.§ 3§;
   import §&U§.§!X§;
   import §&U§.§^!@§;
   import §1t§.§-!M§;
   import §1t§.§`!B§;
   import §8T§.§@o§;
   import §<!M§.§[i§;
   import §@q§.§+!B§;
   import §@q§.§6;§;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class §'!;§ extends §2q§
   {
      
      public static const §&! §:String = "LevelEndEagleState";
      
      private static const §!!§:String = "ScoreLoopCountChannel";
       
      
      private var §;g§:§+!B§;
      
      private var §@v§:§]A§;
      
      public var mEagleScoreCounter:Number;
      
      protected var §>!L§:Number;
      
      protected var §;q§:int;
      
      public function §'!;§(param1:Boolean = false, param2:String = "LevelEndEagleState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §=V§ = new §,U§(this);
         §=V§.init(§while§.§ v§.Views.View_LevelEndEagle[0]);
         this.§>!L§ = (§=V§.getItemByName("MovieClip_EagleMeterFill") as §!X§).width;
         §@o§.§1+§(§!!§,1,1);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§@v§ = new §]A§(0,0,0,0);
         §=V§.movieClip.addChildAt(this.§@v§,§=V§.movieClip.numChildren - 1);
         §=V§.getItemByName("MovieClip_EagleMeterEmpty").setVisibility(true);
         §=V§.getItemByName("MovieClip_EagleMeterFill").setVisibility(true);
         §@o§.playSound("LevelCompletedTheme1");
         this.§@v§.§%H§(0.7);
         var _loc1_:int = §'5§.controller.getEagleScore();
         this.§;q§ = AngryBirdsFP11.sUserProgress.§&H§(§[i§.§0A§);
         var _loc2_:* = _loc1_ > this.§;q§;
         if(_loc2_)
         {
            this.§>b§(_loc1_);
         }
         (§=V§.getItemByName("TextField_EaglePercentage") as § 3§).set.text = _loc1_ + "%";
         §@o§.playSound("Hiscore_Count",§!!§,100);
         this.§;g§ = §6;§.§&e§.§42§(this,{"mEagleScoreCounter":_loc1_},{"mEagleScoreCounter":0},_loc1_ / 100 * 4);
         this.§;g§.onComplete = this.§+Z§;
         this.§;g§.play();
      }
      
      protected function §>b§(param1:Number) : void
      {
         AngryBirdsFP11.sUserProgress.§+!A§(§[i§.§0A§,param1);
      }
      
      protected function §+Z§() : void
      {
         var _loc1_:GlowFilter = null;
         §@o§.§>!9§(§!!§);
         if(this.mEagleScoreCounter == 100)
         {
            §@o§.playSound("Hiscore_Badge",§!!§);
            _loc1_ = new GlowFilter(16777215,1,22,22,2.5,10);
            (§=V§.getItemByName("MovieClip_EagleMeterEffect") as §!X§).setVisibility(true);
            (§=V§.getItemByName("MovieClip_EagleMeterFill") as §!X§).mClip.filters = [_loc1_];
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §2q§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(int(this.mEagleScoreCounter) > this.§;q§)
         {
            (§=V§.getItemByName("TextField_EaglePercentage") as § 3§).set.text = int(this.mEagleScoreCounter) + "%";
            (§=V§.getItemByName("TextField_EaglePercentageEffects") as § 3§).set.text = int(this.mEagleScoreCounter) + "%";
         }
         else
         {
            (§=V§.getItemByName("TextField_EaglePercentage") as § 3§).set.text = int(this.§;q§) + "%";
            (§=V§.getItemByName("TextField_EaglePercentageEffects") as § 3§).set.text = int(this.§;q§) + "%";
         }
         var _loc3_:Rectangle = new Rectangle(0,0,this.§>!L§ * (this.mEagleScoreCounter / 100),(§=V§.getItemByName("MovieClip_EagleMeterFill") as §!X§).height);
         (§=V§.getItemByName("MovieClip_EagleMeterFill") as §!X§).mClip.scrollRect = _loc3_;
         (§=V§.getItemByName("MovieClip_EagleMeterEffect") as §!X§).mClip.rotation = (§=V§.getItemByName("MovieClip_EagleMeterEffect") as §!X§).mClip.rotation + param1 / 20;
         if(mNextState.length > 0)
         {
            §'5§.§^;§.clearLevel();
            return §2q§.STATE_STATUS_COMPLETED;
         }
         return §2q§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         if(this.§@v§)
         {
            if(§=V§.movieClip.contains(this.§@v§))
            {
               §=V§.movieClip.removeChild(this.§@v§);
            }
            this.§@v§.clean();
            this.§@v§ = null;
         }
         §@o§.§>!9§(§!!§);
         this.mEagleScoreCounter = 0;
         if(this.§;g§)
         {
            this.§;g§.stop();
            this.§;g§ = null;
         }
         (§=V§.getItemByName("MovieClip_EagleMeterFill") as §!X§).mClip.filters = [];
         (§=V§.getItemByName("MovieClip_EagleMeterEffect") as §!X§).setVisibility(false);
         (§=V§.getItemByName("Button_Menu") as §^!@§).setComponentVisualState(§-!M§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§=V§.getItemByName("Button_Replay") as §^!@§).setComponentVisualState(§-!M§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§=V§.getItemByName("Button_NextLevel") as §^!@§).setComponentVisualState(§-!M§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§`!B§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
               §`!J§.§[[§();
               mNextState = StateCutScene.§&! §;
               break;
            case "REPLAY":
               §`!J§.§@J§();
               mNextState = §`!J§.§&! §;
               break;
            case "MENU":
               §@o§.§#!;§();
               mNextState = this.§#§();
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§^!<§.§;3§();
         }
      }
      
      public function §#§() : String
      {
         return §!G§.§&! §;
      }
   }
}
