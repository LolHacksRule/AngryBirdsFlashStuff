package §else§
{
   import §_-20§.§_-j5§;
   import §_-6r§.§_-7P§;
   import §_-6v§.§_-In§;
   import §_-F1§.§_-V1§;
   import §_-F1§.§_-lq§;
   import §_-Qx§.§_-Sf§;
   import §_-Ur§.§_-BN§;
   import §_-Ur§.§_-ru§;
   import §_-hU§.§_-MB§;
   import §_-mD§.§_-29§;
   import §_-rQ§.§_-Ou§;
   import §_-sT§.§_-Da§;
   import §_-y7§.§_-VA§;
   import flash.filters.GlowFilter;
   import flash.geom.Rectangle;
   
   public class §_-D4§ extends §_-iL§
   {
      
      public static const §_-Az§:String = "LevelEndEagleState";
       
      
      private var §_-zD§:§_-j5§;
      
      private var §_-gM§:§_-j5§;
      
      private var §_-4W§:§_-Da§;
      
      public var mEagleScoreCounter:Number;
      
      private var §_-Kk§:Number;
      
      private var §_-Q-§:Number;
      
      public function §_-D4§(param1:Boolean = false, param2:String = "LevelEndEagleState")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §_-NY§ = new §_-ru§(this);
         §_-NY§.init(§_-BN§.native.Views.View_LevelEndEagle[0]);
         this.§_-4W§ = new §_-Da§(0,0,0,0);
         §_-NY§.mMovieClip.addChildAt(this.§_-4W§,§_-NY§.mMovieClip.numChildren - 1);
         this.§_-Kk§ = (§_-NY§.getItemByName("MovieClip_EagleMeterFill") as §_-lq§).width;
      }
      
      override public function activate() : void
      {
         super.activate();
         §_-MB§.§_-A7§.§_-Gf§(true);
         (§_-NY§.getItemByName("MovieClip_EagleMeterEmpty") as §_-lq§).setVisibility(true);
         (§_-NY§.getItemByName("MovieClip_EagleMeterFill") as §_-lq§).setVisibility(true);
         §_-Ou§.playSound("LevelCompletedTheme1");
         this.§_-4W§.§_-Mv§(0.7);
         var _loc1_:Number = §_-Sf§.§_-L0§(§_-Sf§.§_-vj§).§_-7R§;
         var _loc2_:Number = Math.min(100,Math.round(§_-MB§.§_-Gk§.getScore() / _loc1_ * 100));
         this.§_-Q-§ = §_-Qu§.§_-di§.§_-Qi§(§_-Sf§.§_-vj§);
         var _loc3_:* = _loc2_ > this.§_-Q-§;
         if(_loc3_)
         {
            §_-Qu§.§_-di§.§_-Li§(§_-Sf§.§_-vj§,_loc2_);
         }
         (§_-NY§.getItemByName("TextField_EaglePercentage") as §_-V1§).§_-hJ§.text = this.§_-Q-§ + "%";
         this.§_-zD§ = §_-29§.§_-NW§(this,{"mEagleScoreCounter":_loc2_},{"mEagleScoreCounter":0},_loc2_ / 100 * 5);
         this.§_-zD§.addEventListener(§_-In§.COMPLETE,this.§_-nn§);
         this.§_-zD§.play();
      }
      
      private function §_-nn§(param1:§_-In§) : void
      {
         var _loc2_:GlowFilter = null;
         if(this.mEagleScoreCounter == 100)
         {
            this.§_-gM§ = §_-29§.§_-NW§((§_-NY§.getItemByName("MovieClip_EagleMeterEffect") as §_-lq§).mClip,{"rotation":360},{"rotation":0},6.5);
            this.§_-gM§.§_-Yc§ = false;
            this.§_-gM§.play();
            _loc2_ = new GlowFilter(16777215,1,22,22,2.5,10);
            (§_-NY§.getItemByName("MovieClip_EagleMeterEffect") as §_-lq§).setVisibility(true);
            (§_-NY§.getItemByName("MovieClip_EagleMeterFill") as §_-lq§).mClip.filters = [_loc2_];
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §_-VA§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(int(this.mEagleScoreCounter) > this.§_-Q-§)
         {
            (§_-NY§.getItemByName("TextField_EaglePercentage") as §_-V1§).§_-hJ§.text = int(this.mEagleScoreCounter) + "%";
         }
         else
         {
            (§_-NY§.getItemByName("TextField_EaglePercentage") as §_-V1§).§_-hJ§.text = int(this.§_-Q-§) + "%";
         }
         var _loc3_:Rectangle = new Rectangle(0,0,this.§_-Kk§ * (this.mEagleScoreCounter / 100),(§_-NY§.getItemByName("MovieClip_EagleMeterFill") as §_-lq§).height);
         (§_-NY§.getItemByName("MovieClip_EagleMeterFill") as §_-lq§).mClip.scrollRect = _loc3_;
         if(mNextState.length > 0)
         {
            return §_-VA§.STATE_STATUS_COMPLETED;
         }
         return §_-VA§.STATE_STATUS_RUNNING;
      }
      
      override public function deActivate() : void
      {
         this.§_-zD§.removeEventListener(§_-In§.COMPLETE,this.§_-nn§);
         (§_-NY§.getItemByName("MovieClip_EagleMeterFill") as §_-lq§).mClip.filters = [];
         (§_-NY§.getItemByName("MovieClip_EagleMeterEffect") as §_-lq§).setVisibility(false);
         super.deActivate();
         this.§_-4W§.§_-wk§(0);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§_-7P§) : void
      {
         switch(param2)
         {
            case "NEXT_LEVEL":
               §_-Jw§.§_-GL§();
               mNextState = StateCutScene.§_-Az§;
               break;
            case "REPLAY":
               §_-Jw§.§_-h5§();
               mNextState = §_-Jw§.§_-Az§;
               break;
            case "MENU":
               mNextState = §_-pX§.§_-Az§;
         }
      }
   }
}
