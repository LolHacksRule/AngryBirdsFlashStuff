package §_-L5§
{
   import §_-8J§.§_-1T§;
   import §_-8J§.§_-8s§;
   import §_-Hw§.§_-3C§;
   import §_-IC§.§_-Uw§;
   import §_-Su§.§_-Xk§;
   import §_-v3§.§_-G3§;
   
   public class §_-4h§ extends §_-1Y§
   {
      
      public static const §_-7j§:int = 0;
      
      public static var §_-4F§:int = §_-7j§;
      
      public static const LOAD_STATE_STEP_1:int = 1;
      
      public static const LOAD_STATE_STEP_2:int = 2;
      
      public static var §_-xB§:Number = -1;
       
      
      private var §_-YH§:Number = 0;
      
      public function §_-4h§(param1:Boolean, param2:String)
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         this.§_-Bv§ = new §_-8s§(this);
         §_-Bv§.init(§_-1T§.§_-3G§.Views.View_LevelLoad[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         if(§_-G3§.§_-9S§)
         {
            §_-G3§.§_-9S§.start();
         }
         §_-4F§ = LOAD_STATE_STEP_1;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §_-Uw§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(§_-4F§ == LOAD_STATE_STEP_1)
         {
            §_-3C§.§_-bz§.clearLevel();
            this.initLevelLoad();
            §_-4F§ = LOAD_STATE_STEP_2;
         }
         else if(§_-4F§ == LOAD_STATE_STEP_2)
         {
            if(this.isReady())
            {
               this.onLevelLoadReady();
            }
         }
         if(mNextState.length > 0)
         {
            return §_-Uw§.STATE_STATUS_COMPLETED;
         }
         return §_-Uw§.STATE_STATUS_RUNNING;
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
      
      protected function §_-wJ§(param1:§_-Xk§) : void
      {
         §_-3C§.static(param1);
      }
   }
}
