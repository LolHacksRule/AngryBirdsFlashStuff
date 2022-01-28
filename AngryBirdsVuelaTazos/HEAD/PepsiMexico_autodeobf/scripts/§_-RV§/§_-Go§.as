package §_-RV§
{
   import §_-3c§.§_-5S§;
   import §_-4K§.§_-Av§;
   import §_-7V§.§_-Gs§;
   import §_-7x§.§_-4O§;
   import §_-Ll§.§_-JL§;
   import §_-Ll§.§_-iE§;
   import §_-QG§.§_-t6§;
   import §_-Qn§.§_-O7§;
   import §_-Qn§.§_-bo§;
   import §_-cJ§.§_-WM§;
   import §_-cJ§.§_-xx§;
   import §_-pm§.§_-gb§;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class §_-Go§ extends §_-oI§
   {
      
      public static const §_-8r§:String = "LevelEndEagleState";
       
      
      private var §_-fy§:§_-WM§;
      
      private var §_-90§:§_-WM§;
      
      private var §_-C8§:§_-5S§;
      
      public var mEagleScoreCounter:Number;
      
      private var §_-55§:Number;
      
      private var §_-aF§:int;
      
      public function §_-Go§(param1:Boolean = false, param2:String = "LevelEndEagleState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §_-MF§ = new §_-bo§(this);
         §_-MF§.init(§_-O7§.§_-jb§.Views.View_LevelEndEagle[0]);
         this.§_-C8§ = new §_-5S§(0,0,0,0);
         §_-MF§.mMovieClip.addChildAt(this.§_-C8§,§_-MF§.mMovieClip.numChildren - 1);
         this.§_-55§ = (§_-MF§.getItemByName("MovieClip_EagleMeterFill") as §_-iE§).width;
      }
      
      override public function activate() : void
      {
         super.activate();
         §_-gb§.§_-ls§.§_-2L§(true);
         (§_-MF§.getItemByName("MovieClip_EagleMeterEmpty") as §_-iE§).setVisibility(true);
         (§_-MF§.getItemByName("MovieClip_EagleMeterFill") as §_-iE§).setVisibility(true);
         §_-Av§.§_-so§("LevelCompletedTheme1");
         this.§_-C8§.§_-AV§(0.7);
         var _loc1_:int = §_-gb§.§_-6j§.getEagleScore();
         this.§_-aF§ = §_-q0§.§_-AI§.§_-Lt§(§_-4O§.§_-FH§);
         var _loc2_:* = _loc1_ > this.§_-aF§;
         if(_loc2_)
         {
            §_-q0§.§_-AI§.§_-mn§(§_-4O§.§_-FH§,_loc1_);
         }
         (§_-MF§.getItemByName("TextField_EaglePercentage") as §_-JL§).§_-ML§.text = this.§_-aF§ + "%";
         this.§_-fy§ = §_-xx§.§_-uP§.§_-Vb§(this,{"mEagleScoreCounter":_loc1_},{"mEagleScoreCounter":0},_loc1_ / 100 * 5);
         this.§_-fy§.onComplete = this.§_-MS§;
         this.§_-fy§.play();
      }
      
      private function §_-MS§() : void
      {
         var _loc1_:GlowFilter = null;
         if(this.mEagleScoreCounter == 100)
         {
            this.§_-90§ = §_-xx§.§_-uP§.§_-Vb§((§_-MF§.getItemByName("MovieClip_EagleMeterEffect") as §_-iE§).mClip,{"rotation":360},{"rotation":0},6.5);
            this.§_-90§.§_-j0§ = false;
            this.§_-90§.play();
            _loc1_ = new GlowFilter(16777215,1,22,22,2.5,10);
            (§_-MF§.getItemByName("MovieClip_EagleMeterEffect") as §_-iE§).setVisibility(true);
            (§_-MF§.getItemByName("MovieClip_EagleMeterFill") as §_-iE§).mClip.filters = [_loc1_];
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §_-t6§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(int(this.mEagleScoreCounter) > this.§_-aF§)
         {
            (§_-MF§.getItemByName("TextField_EaglePercentage") as §_-JL§).§_-ML§.text = int(this.mEagleScoreCounter) + "%";
         }
         else
         {
            (§_-MF§.getItemByName("TextField_EaglePercentage") as §_-JL§).§_-ML§.text = int(this.§_-aF§) + "%";
         }
         var _loc3_:Rectangle = new Rectangle(0,0,this.§_-55§ * (this.mEagleScoreCounter / 100),(§_-MF§.getItemByName("MovieClip_EagleMeterFill") as §_-iE§).height);
         (§_-MF§.getItemByName("MovieClip_EagleMeterFill") as §_-iE§).mClip.scrollRect = _loc3_;
         if(mNextState.length > 0)
         {
            return §_-t6§.STATE_STATUS_COMPLETED;
         }
         return §_-t6§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         (§_-MF§.getItemByName("MovieClip_EagleMeterFill") as §_-iE§).mClip.filters = [];
         (§_-MF§.getItemByName("MovieClip_EagleMeterEffect") as §_-iE§).setVisibility(false);
         super.deActivate();
         this.§_-C8§.§_-fr§(0);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§_-Gs§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
               §_-Py§.§_-op§();
               mNextState = StateCutScene.§_-8r§;
               break;
            case "REPLAY":
               §_-Py§.§_-vF§();
               mNextState = §_-Py§.§_-8r§;
               break;
            case "MENU":
               mNextState = §_-V9§.§_-8r§;
         }
      }
   }
}
