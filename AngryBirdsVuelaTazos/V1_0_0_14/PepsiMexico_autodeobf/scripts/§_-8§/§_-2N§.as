package §_-8§
{
   import §_-12§.§_-7l§;
   import §_-3P§.§_-os§;
   import §_-6n§.§_-5z§;
   import §_-Jx§.§_-Ao§;
   import §_-M0§.§_-u4§;
   import §_-PZ§.§_-3L§;
   import §_-Qn§.§_-AG§;
   import §_-Yh§.§_-BS§;
   import §_-Yh§.§_-fA§;
   import §_-hf§.§_-0J§;
   import §_-hf§.§_-Nx§;
   import §_-qT§.§_-O5§;
   import §_-uh§.§_-HB§;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class §_-2N§ extends §_-1f§
   {
      
      public static const §_-7m§:String = "LevelEndEagleState";
       
      
      private var §_-Dg§:§_-7l§;
      
      private var §_-8W§:§_-7l§;
      
      private var §_-NZ§:§_-3L§;
      
      public var mEagleScoreCounter:Number;
      
      private var §_-YH§:Number;
      
      private var §_-Bm§:Number;
      
      public function §_-2N§(param1:Boolean = false, param2:String = "LevelEndEagleState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §_-Ih§ = new §_-fA§(this);
         §_-Ih§.init(§_-BS§.§_-tc§.Views.View_LevelEndEagle[0]);
         this.§_-NZ§ = new §_-3L§(0,0,0,0);
         §_-Ih§.mMovieClip.addChildAt(this.§_-NZ§,§_-Ih§.mMovieClip.numChildren - 1);
         this.§_-YH§ = (§_-Ih§.getItemByName("MovieClip_EagleMeterFill") as §_-Nx§).width;
      }
      
      override public function activate() : void
      {
         super.activate();
         §_-u4§.§_-40§.§_-AB§(true);
         (§_-Ih§.getItemByName("MovieClip_EagleMeterEmpty") as §_-Nx§).setVisibility(true);
         (§_-Ih§.getItemByName("MovieClip_EagleMeterFill") as §_-Nx§).setVisibility(true);
         §_-5z§.§_-rp§("LevelCompletedTheme1");
         this.§_-NZ§.§_-xX§(0.7);
         var _loc1_:Number = §_-HB§.§_-ap§(§_-HB§.§_-Z-§).§_-mq§;
         var _loc2_:Number = Math.min(100,Math.round(§_-u4§.§_-FQ§.getScore() / _loc1_ * 100));
         this.§_-Bm§ = §_-Tj§.§_-7q§.§_-fO§(§_-HB§.§_-Z-§);
         var _loc3_:* = _loc2_ > this.§_-Bm§;
         if(_loc3_)
         {
            §_-Tj§.§_-7q§.§_-xG§(§_-HB§.§_-Z-§,_loc2_);
         }
         (§_-Ih§.getItemByName("TextField_EaglePercentage") as §_-0J§).§_-Ho§.text = this.§_-Bm§ + "%";
         this.§_-Dg§ = §_-AG§.§_-aI§(this,{"mEagleScoreCounter":_loc2_},{"mEagleScoreCounter":0},_loc2_ / 100 * 5);
         this.§_-Dg§.addEventListener(§_-os§.COMPLETE,this.§_-jb§);
         this.§_-Dg§.play();
      }
      
      private function §_-jb§(param1:§_-os§) : void
      {
         var _loc2_:GlowFilter = null;
         if(this.mEagleScoreCounter == 100)
         {
            this.§_-8W§ = §_-AG§.§_-aI§((§_-Ih§.getItemByName("MovieClip_EagleMeterEffect") as §_-Nx§).mClip,{"rotation":360},{"rotation":0},6.5);
            this.§_-8W§.§_-SA§ = false;
            this.§_-8W§.play();
            _loc2_ = new GlowFilter(16777215,1,22,22,2.5,10);
            (§_-Ih§.getItemByName("MovieClip_EagleMeterEffect") as §_-Nx§).setVisibility(true);
            (§_-Ih§.getItemByName("MovieClip_EagleMeterFill") as §_-Nx§).mClip.filters = [_loc2_];
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §_-O5§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(int(this.mEagleScoreCounter) > this.§_-Bm§)
         {
            (§_-Ih§.getItemByName("TextField_EaglePercentage") as §_-0J§).§_-Ho§.text = int(this.mEagleScoreCounter) + "%";
         }
         else
         {
            (§_-Ih§.getItemByName("TextField_EaglePercentage") as §_-0J§).§_-Ho§.text = int(this.§_-Bm§) + "%";
         }
         var _loc3_:Rectangle = new Rectangle(0,0,this.§_-YH§ * (this.mEagleScoreCounter / 100),(§_-Ih§.getItemByName("MovieClip_EagleMeterFill") as §_-Nx§).height);
         (§_-Ih§.getItemByName("MovieClip_EagleMeterFill") as §_-Nx§).mClip.scrollRect = _loc3_;
         if(mNextState.length > 0)
         {
            return §_-O5§.STATE_STATUS_COMPLETED;
         }
         return §_-O5§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         this.§_-Dg§.removeEventListener(§_-os§.COMPLETE,this.§_-jb§);
         (§_-Ih§.getItemByName("MovieClip_EagleMeterFill") as §_-Nx§).mClip.filters = [];
         (§_-Ih§.getItemByName("MovieClip_EagleMeterEffect") as §_-Nx§).setVisibility(false);
         super.deActivate();
         this.§_-NZ§.§_-7P§(0);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§_-Ao§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
               §_-OU§.§_-U1§();
               mNextState = StateCutScene.§_-7m§;
               break;
            case "REPLAY":
               §_-OU§.§for §();
               mNextState = §_-OU§.§_-7m§;
               break;
            case "MENU":
               mNextState = §_-VD§.§_-7m§;
         }
      }
   }
}
