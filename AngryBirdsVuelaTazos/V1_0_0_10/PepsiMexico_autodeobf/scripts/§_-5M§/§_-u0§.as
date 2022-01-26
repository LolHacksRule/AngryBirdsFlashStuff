package §_-5M§
{
   import §_-3P§.§_-dN§;
   import §_-8A§.§_-Ip§;
   import §_-B2§.§_-H4§;
   import §_-E-§.§_-RT§;
   import §_-E-§.§_-mm§;
   import §_-I1§.§_-2N§;
   import §_-Je§.§_-RH§;
   import §_-Kj§.§_-8u§;
   import §_-PK§.§_-Jb§;
   import §_-Ux§.§_-2E§;
   import §_-Ux§.§_-wl§;
   import §_-XK§.§_-tC§;
   import §_-oZ§.§_-JH§;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   import §in §.§_-tX§;
   
   public class §_-u0§ extends §_-7C§
   {
      
      public static const §_-7J§:String = "LevelEndEagleState";
       
      
      private var §_-xR§:§_-8u§;
      
      private var §_-52§:§_-8u§;
      
      private var §_-9P§:§_-Ip§;
      
      public var mEagleScoreCounter:Number;
      
      private var §_-n9§:Number;
      
      private var §_-ce§:Number;
      
      public function §_-u0§(param1:Boolean = false, param2:String = "LevelEndEagleState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §_-wB§ = new §_-2E§(this);
         §_-wB§.init(§_-wl§.§_-rp§.Views.View_LevelEndEagle[0]);
         this.§_-9P§ = new §_-Ip§(0,0,0,0);
         §_-wB§.mMovieClip.addChildAt(this.§_-9P§,§_-wB§.mMovieClip.numChildren - 1);
         this.§_-n9§ = (§_-wB§.getItemByName("MovieClip_EagleMeterFill") as §_-RT§).width;
      }
      
      override public function activate() : void
      {
         super.activate();
         if(§_-H4§.§_-I9§)
         {
            §_-H4§.§_-I9§.start();
         }
         (§_-wB§.getItemByName("MovieClip_EagleMeterEmpty") as §_-RT§).setVisibility(true);
         (§_-wB§.getItemByName("MovieClip_EagleMeterFill") as §_-RT§).setVisibility(true);
         §_-JH§.§_-A3§("LevelCompletedTheme1");
         this.§_-9P§.§_-Do§(0.7);
         var _loc1_:Number = §_-dN§.§_-wm§(§_-dN§.§_-fy§).§_-ud§;
         var _loc2_:Number = Math.min(100,Math.round(§_-2N§.§_-gT§.getScore() / _loc1_ * 100));
         this.§_-ce§ = §_-5e§.§_-Yn§.§_-§(§_-dN§.§_-fy§);
         var _loc3_:* = _loc2_ > this.§_-ce§;
         if(_loc3_)
         {
            §_-5e§.§_-Yn§.§_-rx§(§_-dN§.§_-fy§,_loc2_);
         }
         (§_-wB§.getItemByName("TextField_EaglePercentage") as §_-mm§).§_-3U§.text = this.§_-ce§ + "%";
         this.§_-xR§ = §_-tX§.§finally§(this,{"mEagleScoreCounter":_loc2_},{"mEagleScoreCounter":0},_loc2_ / 100 * 5);
         this.§_-xR§.addEventListener(§_-tC§.COMPLETE,this.§_-WX§);
         this.§_-xR§.play();
      }
      
      private function §_-WX§(param1:§_-tC§) : void
      {
         var _loc2_:GlowFilter = null;
         if(this.mEagleScoreCounter == 100)
         {
            this.§_-52§ = §_-tX§.§finally§((§_-wB§.getItemByName("MovieClip_EagleMeterEffect") as §_-RT§).mClip,{"rotation":360},{"rotation":0},6.5);
            this.§_-52§.§_-xX§ = false;
            this.§_-52§.play();
            _loc2_ = new GlowFilter(16777215,1,22,22,2.5,10);
            (§_-wB§.getItemByName("MovieClip_EagleMeterEffect") as §_-RT§).setVisibility(true);
            (§_-wB§.getItemByName("MovieClip_EagleMeterFill") as §_-RT§).mClip.filters = [_loc2_];
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §_-RH§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(int(this.mEagleScoreCounter) > this.§_-ce§)
         {
            (§_-wB§.getItemByName("TextField_EaglePercentage") as §_-mm§).§_-3U§.text = int(this.mEagleScoreCounter) + "%";
         }
         else
         {
            (§_-wB§.getItemByName("TextField_EaglePercentage") as §_-mm§).§_-3U§.text = int(this.§_-ce§) + "%";
         }
         var _loc3_:Rectangle = new Rectangle(0,0,this.§_-n9§ * (this.mEagleScoreCounter / 100),(§_-wB§.getItemByName("MovieClip_EagleMeterFill") as §_-RT§).height);
         (§_-wB§.getItemByName("MovieClip_EagleMeterFill") as §_-RT§).mClip.scrollRect = _loc3_;
         if(mNextState.length > 0)
         {
            return §_-RH§.STATE_STATUS_COMPLETED;
         }
         return §_-RH§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         this.§_-xR§.removeEventListener(§_-tC§.COMPLETE,this.§_-WX§);
         (§_-wB§.getItemByName("MovieClip_EagleMeterFill") as §_-RT§).mClip.filters = [];
         (§_-wB§.getItemByName("MovieClip_EagleMeterEffect") as §_-RT§).setVisibility(false);
         super.deActivate();
         this.§_-9P§.§_-gv§(0);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§_-Jb§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
               §_-G§.§_-oz§();
               mNextState = StateCutScene.§_-7J§;
               break;
            case "REPLAY":
               §_-G§.§_-pN§();
               mNextState = §_-G§.§_-7J§;
               break;
            case "MENU":
               mNextState = §_-Vn§.§_-7J§;
         }
      }
   }
}
