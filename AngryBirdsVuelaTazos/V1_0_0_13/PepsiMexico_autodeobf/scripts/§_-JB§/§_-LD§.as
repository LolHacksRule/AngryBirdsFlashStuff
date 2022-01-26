package §_-JB§
{
   import § get§.§_-pD§;
   import §_-1p§.§_-K9§;
   import §_-1p§.§_-uW§;
   import §_-58§.§_-Bu§;
   import §_-58§.§_-sg§;
   import §_-7§.§_-ph§;
   import §_-He§.§_-05§;
   import §_-J-§.§_-ZG§;
   import §_-JR§.§_-yh§;
   import §_-LP§.§_-PH§;
   import §_-NB§.§_-mj§;
   import §_-PS§.§_-Xz§;
   import §_-bj§.§_-l§;
   import §_-cu§.§_-UO§;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class §_-LD§ extends §_-bH§
   {
      
      public static const §_-1h§:String = "LevelEndEagleState";
       
      
      private var §_-Mv§:§_-PH§;
      
      private var §_-vo§:§_-PH§;
      
      private var §_-gk§:§_-l§;
      
      public var mEagleScoreCounter:Number;
      
      private var §_-IR§:Number;
      
      private var §_-E-§:Number;
      
      public function §_-LD§(param1:Boolean = false, param2:String = "LevelEndEagleState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §_-kl§ = new §_-K9§(this);
         §_-kl§.init(§_-uW§.§_-Cs§.Views.View_LevelEndEagle[0]);
         this.§_-gk§ = new §_-l§(0,0,0,0);
         §_-kl§.mMovieClip.addChildAt(this.§_-gk§,§_-kl§.mMovieClip.numChildren - 1);
         this.§_-IR§ = (§_-kl§.getItemByName("MovieClip_EagleMeterFill") as §_-Bu§).width;
      }
      
      override public function activate() : void
      {
         super.activate();
         if(§_-yh§.§_-1o§)
         {
            §_-yh§.§_-1o§.start();
         }
         (§_-kl§.getItemByName("MovieClip_EagleMeterEmpty") as §_-Bu§).setVisibility(true);
         (§_-kl§.getItemByName("MovieClip_EagleMeterFill") as §_-Bu§).setVisibility(true);
         §_-pD§.playSound("LevelCompletedTheme1");
         this.§_-gk§.§_-OT§(0.7);
         var _loc1_:Number = §_-Xz§.§_-BH§(§_-Xz§.§_-AP§).§_-e6§;
         var _loc2_:Number = Math.min(100,Math.round(§_-ph§.§_-eR§.getScore() / _loc1_ * 100));
         this.§_-E-§ = §_-2U§.§_-T1§.§_-PQ§(§_-Xz§.§_-AP§);
         var _loc3_:* = _loc2_ > this.§_-E-§;
         if(_loc3_)
         {
            §_-2U§.§_-T1§.§extends§(§_-Xz§.§_-AP§,_loc2_);
         }
         (§_-kl§.getItemByName("TextField_EaglePercentage") as §_-sg§).§_-Ak§.text = this.§_-E-§ + "%";
         this.§_-Mv§ = §_-05§.§_-Yr§(this,{"mEagleScoreCounter":_loc2_},{"mEagleScoreCounter":0},_loc2_ / 100 * 5);
         this.§_-Mv§.addEventListener(§_-mj§.COMPLETE,this.§_-3b§);
         this.§_-Mv§.play();
      }
      
      private function §_-3b§(param1:§_-mj§) : void
      {
         var _loc2_:GlowFilter = null;
         if(this.mEagleScoreCounter == 100)
         {
            this.§_-vo§ = §_-05§.§_-Yr§((§_-kl§.getItemByName("MovieClip_EagleMeterEffect") as §_-Bu§).mClip,{"rotation":360},{"rotation":0},6.5);
            this.§_-vo§.§_-8y§ = false;
            this.§_-vo§.play();
            _loc2_ = new GlowFilter(16777215,1,22,22,2.5,10);
            (§_-kl§.getItemByName("MovieClip_EagleMeterEffect") as §_-Bu§).setVisibility(true);
            (§_-kl§.getItemByName("MovieClip_EagleMeterFill") as §_-Bu§).mClip.filters = [_loc2_];
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §_-UO§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(int(this.mEagleScoreCounter) > this.§_-E-§)
         {
            (§_-kl§.getItemByName("TextField_EaglePercentage") as §_-sg§).§_-Ak§.text = int(this.mEagleScoreCounter) + "%";
         }
         else
         {
            (§_-kl§.getItemByName("TextField_EaglePercentage") as §_-sg§).§_-Ak§.text = int(this.§_-E-§) + "%";
         }
         var _loc3_:Rectangle = new Rectangle(0,0,this.§_-IR§ * (this.mEagleScoreCounter / 100),(§_-kl§.getItemByName("MovieClip_EagleMeterFill") as §_-Bu§).height);
         (§_-kl§.getItemByName("MovieClip_EagleMeterFill") as §_-Bu§).mClip.scrollRect = _loc3_;
         if(mNextState.length > 0)
         {
            return §_-UO§.STATE_STATUS_COMPLETED;
         }
         return §_-UO§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         this.§_-Mv§.removeEventListener(§_-mj§.COMPLETE,this.§_-3b§);
         (§_-kl§.getItemByName("MovieClip_EagleMeterFill") as §_-Bu§).mClip.filters = [];
         (§_-kl§.getItemByName("MovieClip_EagleMeterEffect") as §_-Bu§).setVisibility(false);
         super.deActivate();
         this.§_-gk§.§_-Om§(0);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§_-ZG§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
               §_-gc§.§_-e7§();
               mNextState = StateCutScene.§_-1h§;
               break;
            case "REPLAY":
               §_-gc§.§_-hG§();
               mNextState = §_-gc§.§_-1h§;
               break;
            case "MENU":
               mNextState = §_-Sp§.§_-1h§;
         }
      }
   }
}
