package §_-ad§
{
   import §_-0AB§.§_-cx§;
   import §_-0AB§.§_-dd§;
   import §_-0Ar§.§_-0AO§;
   import §_-4g§.§_-pX§;
   import §_-6C§.§_-0Eo§;
   import §_-6C§.§_-Mu§;
   import §_-6C§.§_-k6§;
   import §_-Ga§.LevelManager;
   import §_-MN§.§_-rR§;
   import §_-MN§.§_-wU§;
   import §_-Yl§.§_-5q§;
   import §_-Yl§.§_-vB§;
   import §_-qO§.§ in§;
   import §_-x8§.§_-nG§;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class §_-iz§ extends §_-nG§
   {
      
      public static const §_-pk§:String = "LevelEndEagleState";
      
      private static const §_-07E§:String = "ScoreLoopCountChannel";
       
      
      private var §_-P3§:§_-dd§;
      
      private var §_-ny§:§_-0AO§;
      
      public var mEagleScoreCounter:Number;
      
      protected var §_-08s§:Number;
      
      protected var §_-0EO§:int;
      
      public function §_-iz§(param1:Boolean = false, param2:String = "LevelEndEagleState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §_-s0§ = new §_-5q§(this);
         §_-s0§.init(§_-vB§.§_-ky§.Views.View_LevelEndEagle[0]);
         this.§_-08s§ = (§_-s0§.getItemByName("MovieClip_EagleMeterFill") as §_-k6§).width;
         §_-pX§.§_-UJ§(§_-07E§,1,1);
      }
      
      override public function activate() : void
      {
         super.activate();
         this.§_-ny§ = new §_-0AO§(0,0,0,0);
         §_-s0§.movieClip.addChildAt(this.§_-ny§,§_-s0§.movieClip.numChildren - 1);
         §_-s0§.getItemByName("MovieClip_EagleMeterEmpty").setVisibility(true);
         §_-s0§.getItemByName("MovieClip_EagleMeterFill").setVisibility(true);
         §_-pX§.playSound("LevelCompletedTheme1");
         this.§_-ny§.§_-Zs§(0.7);
         var _loc1_:int = § in§.§_-03s§.getEagleScore();
         this.§_-0EO§ = AngryBirdsFP11.sUserProgress.getEagleScoreForLevel(LevelManager.§_-HM§);
         var _loc2_:* = _loc1_ > this.§_-0EO§;
         if(_loc2_)
         {
            this.§_-0Bv§(_loc1_);
         }
         (§_-s0§.getItemByName("TextField_EaglePercentage") as §_-0Eo§).§_-ab§.text = _loc1_ + "%";
         §_-pX§.playSound("Hiscore_Count",§_-07E§,100);
         this.§_-P3§ = §_-cx§.§_-3S§.§_-Wf§(this,{"mEagleScoreCounter":_loc1_},{"mEagleScoreCounter":0},_loc1_ / 100 * 4);
         this.§_-P3§.onComplete = this.§_-Dm§;
         this.§_-P3§.play();
      }
      
      protected function §_-0Bv§(param1:Number) : void
      {
         AngryBirdsFP11.sUserProgress.§_-09c§(LevelManager.§_-HM§,param1);
      }
      
      protected function §_-Dm§() : void
      {
         var _loc1_:GlowFilter = null;
         §_-pX§.§_-0B7§(§_-07E§);
         if(this.mEagleScoreCounter == 100)
         {
            §_-pX§.playSound("Hiscore_Badge",§_-07E§);
            _loc1_ = new GlowFilter(16777215,1,22,22,2.5,10);
            (§_-s0§.getItemByName("MovieClip_EagleMeterEffect") as §_-k6§).setVisibility(true);
            (§_-s0§.getItemByName("MovieClip_EagleMeterFill") as §_-k6§).mClip.filters = [_loc1_];
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §_-nG§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(int(this.mEagleScoreCounter) > this.§_-0EO§)
         {
            (§_-s0§.getItemByName("TextField_EaglePercentage") as §_-0Eo§).§_-ab§.text = int(this.mEagleScoreCounter) + "%";
            (§_-s0§.getItemByName("TextField_EaglePercentageEffects") as §_-0Eo§).§_-ab§.text = int(this.mEagleScoreCounter) + "%";
         }
         else
         {
            (§_-s0§.getItemByName("TextField_EaglePercentage") as §_-0Eo§).§_-ab§.text = int(this.§_-0EO§) + "%";
            (§_-s0§.getItemByName("TextField_EaglePercentageEffects") as §_-0Eo§).§_-ab§.text = int(this.§_-0EO§) + "%";
         }
         var _loc3_:Rectangle = new Rectangle(0,0,this.§_-08s§ * (this.mEagleScoreCounter / 100),(§_-s0§.getItemByName("MovieClip_EagleMeterFill") as §_-k6§).height);
         (§_-s0§.getItemByName("MovieClip_EagleMeterFill") as §_-k6§).mClip.scrollRect = _loc3_;
         (§_-s0§.getItemByName("MovieClip_EagleMeterEffect") as §_-k6§).mClip.rotation = (§_-s0§.getItemByName("MovieClip_EagleMeterEffect") as §_-k6§).mClip.rotation + param1 / 20;
         if(mNextState.length > 0)
         {
            § in§.§_-Dc§.clearLevel();
            return §_-nG§.STATE_STATUS_COMPLETED;
         }
         return §_-nG§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         if(this.§_-ny§)
         {
            if(§_-s0§.movieClip.contains(this.§_-ny§))
            {
               §_-s0§.movieClip.removeChild(this.§_-ny§);
            }
            this.§_-ny§.clean();
            this.§_-ny§ = null;
         }
         §_-pX§.§_-0B7§(§_-07E§);
         this.mEagleScoreCounter = 0;
         if(this.§_-P3§)
         {
            this.§_-P3§.stop();
            this.§_-P3§ = null;
         }
         (§_-s0§.getItemByName("MovieClip_EagleMeterFill") as §_-k6§).mClip.filters = [];
         (§_-s0§.getItemByName("MovieClip_EagleMeterEffect") as §_-k6§).setVisibility(false);
         (§_-s0§.getItemByName("Button_Menu") as §_-Mu§).setComponentVisualState(§_-rR§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§_-s0§.getItemByName("Button_Replay") as §_-Mu§).setComponentVisualState(§_-rR§.COMPONENT_STATE_ACTIVE_DEFAULT);
         (§_-s0§.getItemByName("Button_NextLevel") as §_-Mu§).setComponentVisualState(§_-rR§.COMPONENT_STATE_ACTIVE_DEFAULT);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§_-wU§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
               §_-MG§.§_-4t§();
               mNextState = StateCutScene.§_-pk§;
               break;
            case "REPLAY":
               §_-MG§.§_-0Eg§();
               mNextState = §_-MG§.§_-pk§;
               break;
            case "MENU":
               §_-pX§.§_-j4§();
               mNextState = §_-UO§.§_-pk§;
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsFP11.§_-07§.§_-0De§();
         }
      }
   }
}
