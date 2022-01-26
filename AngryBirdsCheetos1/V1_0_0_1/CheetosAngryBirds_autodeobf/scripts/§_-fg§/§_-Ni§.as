package §_-fg§
{
   import §_-Py§.§_-eK§;
   import §_-T8§.§_-GI§;
   import §_-gC§.§_-XR§;
   import §_-q6§.§_-Iy§;
   import §_-q6§.§_-ZW§;
   import §_-vB§.§_-Kk§;
   
   public class §_-Ni§ extends §_-eK§
   {
      
      public static const §_-wi§:int = 0;
      
      public static var §_-B1§:int = §_-wi§;
      
      public static const LOAD_STATE_STEP_1:int = 1;
      
      public static const LOAD_STATE_STEP_2:int = 2;
      
      public static var §_-pi§:Number = -1;
       
      
      private var §_-3U§:Number = 0;
      
      public function §_-Ni§(param1:Boolean, param2:String)
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         this.§_-Lb§ = new §_-ZW§(this);
         §_-Lb§.init(§_-Iy§.§_-y-§.Views.View_LevelLoad[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         if(§_-Kk§.§_-NR§)
         {
            §_-Kk§.§_-NR§.start();
         }
         §_-XR§.§_-Xv§.clearLevel();
         §_-B1§ = LOAD_STATE_STEP_1;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §_-eK§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(§_-B1§ == LOAD_STATE_STEP_1)
         {
            §_-XR§.§_-Xv§.clearLevel();
            this.initLevelLoad();
            §_-B1§ = LOAD_STATE_STEP_2;
         }
         else if(§_-B1§ == LOAD_STATE_STEP_2)
         {
            if(this.isReady())
            {
               this.onLevelLoadReady();
            }
         }
         if(mNextState.length > 0)
         {
            return §_-eK§.STATE_STATUS_COMPLETED;
         }
         return §_-eK§.STATE_STATUS_RUNNING;
      }
      
      public function initLevelLoad() : void
      {
      }
      
      public function isReady() : Boolean
      {
         return false;
      }
      
      public function onLevelLoadReady() : void
      {
      }
      
      protected function §_-x0§(param1:§_-GI§) : void
      {
         §_-XR§.§_-wW§(param1);
      }
   }
}
