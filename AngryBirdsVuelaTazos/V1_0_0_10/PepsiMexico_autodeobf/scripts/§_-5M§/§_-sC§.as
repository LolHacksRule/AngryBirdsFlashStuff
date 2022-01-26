package §_-5M§
{
   import §_-3P§.§_-ry§;
   import §_-B2§.§_-H4§;
   import §_-I1§.§_-2N§;
   import §_-Je§.§_-RH§;
   import §_-Ux§.§_-2E§;
   import §_-Ux§.§_-wl§;
   
   public class §_-sC§ extends §_-7C§
   {
      
      public static const §_-Fv§:int = 0;
      
      public static var §_-2d§:int = §_-Fv§;
      
      public static const LOAD_STATE_STEP_1:int = 1;
      
      public static const LOAD_STATE_STEP_2:int = 2;
      
      public static var §_-kK§:Number = -1;
       
      
      private var §_-eJ§:Number = 0;
      
      public function §_-sC§(param1:Boolean, param2:String)
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         this.§_-wB§ = new §_-2E§(this);
         §_-wB§.init(§_-wl§.§_-rp§.Views.View_LevelLoad[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         if(§_-H4§.§_-I9§)
         {
            §_-H4§.§_-I9§.start();
         }
         §_-2d§ = LOAD_STATE_STEP_1;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §_-RH§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(§_-2d§ == LOAD_STATE_STEP_1)
         {
            §_-2N§.§_-iP§.clearLevel();
            this.initLevelLoad();
            §_-2d§ = LOAD_STATE_STEP_2;
         }
         else if(§_-2d§ == LOAD_STATE_STEP_2)
         {
            if(this.isReady())
            {
               this.onLevelLoadReady();
            }
         }
         if(mNextState.length > 0)
         {
            return §_-RH§.STATE_STATUS_COMPLETED;
         }
         return §_-RH§.STATE_STATUS_RUNNING;
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
      
      protected function §_-Mq§(param1:§_-ry§) : void
      {
         §_-2N§.§_-Zx§(param1);
      }
   }
}
