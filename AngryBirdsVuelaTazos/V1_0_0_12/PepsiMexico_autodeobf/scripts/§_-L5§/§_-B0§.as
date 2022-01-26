package §_-L5§
{
   import §_-8J§.§_-1T§;
   import §_-8J§.§_-8s§;
   import §_-Hw§.§_-3C§;
   import §_-IC§.§_-Uw§;
   import §_-Su§.§_-8v§;
   import §_-Ts§.§_-pl§;
   import §_-UQ§.§_-QZ§;
   import §_-Ys§.§_-o-§;
   import §_-ZI§.§_-Vu§;
   import §_-am§.§_-XJ§;
   import §_-c7§.§_-m8§;
   import §_-of§.§_-3Q§;
   import §_-of§.§_-rt§;
   import §_-v3§.§_-G3§;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class §_-B0§ extends §_-1Y§
   {
      
      public static const §_-Mi§:String = "LevelEndEagleState";
       
      
      private var §_-3A§:§_-Vu§;
      
      private var §_-PI§:§_-Vu§;
      
      private var §_-PY§:§_-pl§;
      
      public var mEagleScoreCounter:Number;
      
      private var §_-xM§:Number;
      
      private var §_-CK§:Number;
      
      public function §_-B0§(param1:Boolean = false, param2:String = "LevelEndEagleState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §_-Bv§ = new §_-8s§(this);
         §_-Bv§.init(§_-1T§.§_-3G§.Views.View_LevelEndEagle[0]);
         this.§_-PY§ = new §_-pl§(0,0,0,0);
         §_-Bv§.mMovieClip.addChildAt(this.§_-PY§,§_-Bv§.mMovieClip.numChildren - 1);
         this.§_-xM§ = (§_-Bv§.getItemByName("MovieClip_EagleMeterFill") as §_-3Q§).width;
      }
      
      override public function activate() : void
      {
         super.activate();
         if(§_-G3§.§_-9S§)
         {
            §_-G3§.§_-9S§.start();
         }
         (§_-Bv§.getItemByName("MovieClip_EagleMeterEmpty") as §_-3Q§).setVisibility(true);
         (§_-Bv§.getItemByName("MovieClip_EagleMeterFill") as §_-3Q§).setVisibility(true);
         §_-XJ§.§_-aW§("LevelCompletedTheme1");
         this.§_-PY§.§_-BE§(0.7);
         var _loc1_:Number = §_-8v§.§_-NQ§(§_-8v§.§_-rq§).§_-hQ§;
         var _loc2_:Number = Math.min(100,Math.round(§_-3C§.§_-0A§.getScore() / _loc1_ * 100));
         this.§_-CK§ = §_-0Y§.§_-rb§.§_-F9§(§_-8v§.§_-rq§);
         var _loc3_:* = _loc2_ > this.§_-CK§;
         if(_loc3_)
         {
            §_-0Y§.§_-rb§.§_-ey§(§_-8v§.§_-rq§,_loc2_);
         }
         (§_-Bv§.getItemByName("TextField_EaglePercentage") as §_-rt§).§_-u7§.text = this.§_-CK§ + "%";
         this.§_-3A§ = §_-m8§.§_-Y8§(this,{"mEagleScoreCounter":_loc2_},{"mEagleScoreCounter":0},_loc2_ / 100 * 5);
         this.§_-3A§.addEventListener(§_-QZ§.COMPLETE,this.§_-lo§);
         this.§_-3A§.play();
      }
      
      private function §_-lo§(param1:§_-QZ§) : void
      {
         var _loc2_:GlowFilter = null;
         if(this.mEagleScoreCounter == 100)
         {
            this.§_-PI§ = §_-m8§.§_-Y8§((§_-Bv§.getItemByName("MovieClip_EagleMeterEffect") as §_-3Q§).mClip,{"rotation":360},{"rotation":0},6.5);
            this.§_-PI§.§_-QY§ = false;
            this.§_-PI§.play();
            _loc2_ = new GlowFilter(16777215,1,22,22,2.5,10);
            (§_-Bv§.getItemByName("MovieClip_EagleMeterEffect") as §_-3Q§).setVisibility(true);
            (§_-Bv§.getItemByName("MovieClip_EagleMeterFill") as §_-3Q§).mClip.filters = [_loc2_];
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §_-Uw§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(int(this.mEagleScoreCounter) > this.§_-CK§)
         {
            (§_-Bv§.getItemByName("TextField_EaglePercentage") as §_-rt§).§_-u7§.text = int(this.mEagleScoreCounter) + "%";
         }
         else
         {
            (§_-Bv§.getItemByName("TextField_EaglePercentage") as §_-rt§).§_-u7§.text = int(this.§_-CK§) + "%";
         }
         var _loc3_:Rectangle = new Rectangle(0,0,this.§_-xM§ * (this.mEagleScoreCounter / 100),(§_-Bv§.getItemByName("MovieClip_EagleMeterFill") as §_-3Q§).height);
         (§_-Bv§.getItemByName("MovieClip_EagleMeterFill") as §_-3Q§).mClip.scrollRect = _loc3_;
         if(mNextState.length > 0)
         {
            return §_-Uw§.STATE_STATUS_COMPLETED;
         }
         return §_-Uw§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         this.§_-3A§.removeEventListener(§_-QZ§.COMPLETE,this.§_-lo§);
         (§_-Bv§.getItemByName("MovieClip_EagleMeterFill") as §_-3Q§).mClip.filters = [];
         (§_-Bv§.getItemByName("MovieClip_EagleMeterEffect") as §_-3Q§).setVisibility(false);
         super.deActivate();
         this.§_-PY§.§_-Jw§(0);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§_-o-§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
               §_-0v§.§_-ky§();
               mNextState = StateCutScene.§_-Mi§;
               break;
            case "REPLAY":
               §_-0v§.§_-R3§();
               mNextState = §_-0v§.§_-Mi§;
               break;
            case "MENU":
               mNextState = §_-Tm§.§_-Mi§;
         }
      }
   }
}
