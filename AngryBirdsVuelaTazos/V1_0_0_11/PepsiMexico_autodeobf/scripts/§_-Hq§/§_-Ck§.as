package §_-Hq§
{
   import §_-5x§.§_-8p§;
   import §_-Ah§.§_-b§;
   import §_-QM§.§_-GC§;
   import §_-QM§.§_-Ns§;
   import §_-TE§.§_-PN§;
   import §_-TW§.§_-2x§;
   import §_-TW§.§_-iD§;
   import §_-Y-§.§_-A5§;
   import §_-bg§.§_-xF§;
   import §_-d5§.§_-6Y§;
   import §_-rb§.§_-2Q§;
   import §_-uz§.§_-wX§;
   import §_-xN§.§_-pB§;
   import dynamic.§_-8-§;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class §_-Ck§ extends §_-UR§
   {
      
      public static const §_-dh§:String = "LevelEndEagleState";
       
      
      private var §_-mD§:§_-wX§;
      
      private var §_-7N§:§_-wX§;
      
      private var §_-qc§:§_-8-§;
      
      public var mEagleScoreCounter:Number;
      
      private var §_-RN§:Number;
      
      private var §_-5K§:Number;
      
      public function §_-Ck§(param1:Boolean = false, param2:String = "LevelEndEagleState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §_-qE§ = new §_-Ns§(this);
         §_-qE§.init(§_-GC§.§_-jz§.Views.View_LevelEndEagle[0]);
         this.§_-qc§ = new §_-8-§(0,0,0,0);
         §_-qE§.mMovieClip.addChildAt(this.§_-qc§,§_-qE§.mMovieClip.numChildren - 1);
         this.§_-RN§ = (§_-qE§.getItemByName("MovieClip_EagleMeterFill") as §_-2x§).width;
      }
      
      override public function activate() : void
      {
         super.activate();
         if(§_-6Y§.§true§)
         {
            §_-6Y§.§true§.start();
         }
         (§_-qE§.getItemByName("MovieClip_EagleMeterEmpty") as §_-2x§).setVisibility(true);
         (§_-qE§.getItemByName("MovieClip_EagleMeterFill") as §_-2x§).setVisibility(true);
         §_-8p§.§_-rD§("LevelCompletedTheme1");
         this.§_-qc§.§_-Ai§(0.7);
         var _loc1_:Number = §_-A5§.§_-6O§(§_-A5§.§_-KH§).§_-VU§;
         var _loc2_:Number = Math.min(100,Math.round(§_-b§.§_-V7§.getScore() / _loc1_ * 100));
         this.§_-5K§ = §_-I8§.§_-Gn§.§_-Zf§(§_-A5§.§_-KH§);
         var _loc3_:* = _loc2_ > this.§_-5K§;
         if(_loc3_)
         {
            §_-I8§.§_-Gn§.§_-A2§(§_-A5§.§_-KH§,_loc2_);
         }
         (§_-qE§.getItemByName("TextField_EaglePercentage") as §_-iD§).§_-3n§.text = this.§_-5K§ + "%";
         this.§_-mD§ = §_-xF§.§_-JE§(this,{"mEagleScoreCounter":_loc2_},{"mEagleScoreCounter":0},_loc2_ / 100 * 5);
         this.§_-mD§.addEventListener(§_-2Q§.COMPLETE,this.§_-vI§);
         this.§_-mD§.play();
      }
      
      private function §_-vI§(param1:§_-2Q§) : void
      {
         var _loc2_:GlowFilter = null;
         if(this.mEagleScoreCounter == 100)
         {
            this.§_-7N§ = §_-xF§.§_-JE§((§_-qE§.getItemByName("MovieClip_EagleMeterEffect") as §_-2x§).mClip,{"rotation":360},{"rotation":0},6.5);
            this.§_-7N§.§_-BL§ = false;
            this.§_-7N§.play();
            _loc2_ = new GlowFilter(16777215,1,22,22,2.5,10);
            (§_-qE§.getItemByName("MovieClip_EagleMeterEffect") as §_-2x§).setVisibility(true);
            (§_-qE§.getItemByName("MovieClip_EagleMeterFill") as §_-2x§).mClip.filters = [_loc2_];
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §_-PN§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(int(this.mEagleScoreCounter) > this.§_-5K§)
         {
            (§_-qE§.getItemByName("TextField_EaglePercentage") as §_-iD§).§_-3n§.text = int(this.mEagleScoreCounter) + "%";
         }
         else
         {
            (§_-qE§.getItemByName("TextField_EaglePercentage") as §_-iD§).§_-3n§.text = int(this.§_-5K§) + "%";
         }
         var _loc3_:Rectangle = new Rectangle(0,0,this.§_-RN§ * (this.mEagleScoreCounter / 100),(§_-qE§.getItemByName("MovieClip_EagleMeterFill") as §_-2x§).height);
         (§_-qE§.getItemByName("MovieClip_EagleMeterFill") as §_-2x§).mClip.scrollRect = _loc3_;
         if(mNextState.length > 0)
         {
            return §_-PN§.STATE_STATUS_COMPLETED;
         }
         return §_-PN§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         this.§_-mD§.removeEventListener(§_-2Q§.COMPLETE,this.§_-vI§);
         (§_-qE§.getItemByName("MovieClip_EagleMeterFill") as §_-2x§).mClip.filters = [];
         (§_-qE§.getItemByName("MovieClip_EagleMeterEffect") as §_-2x§).setVisibility(false);
         super.deActivate();
         this.§_-qc§.§_-2G§(0);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§_-pB§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
               §_-mF§.§_-YZ§();
               mNextState = StateCutScene.§_-dh§;
               break;
            case "REPLAY":
               §_-mF§.§_-4C§();
               mNextState = §_-mF§.§_-dh§;
               break;
            case "MENU":
               mNextState = §_-fR§.§_-dh§;
         }
      }
   }
}
