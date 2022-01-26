package §_-JB§
{
   import §_-1p§.§_-K9§;
   import §_-1p§.§_-uW§;
   import §_-7§.§_-ph§;
   import §_-JR§.§_-yh§;
   import §_-PS§.§_-sq§;
   import §_-cu§.§_-UO§;
   
   public class §_-y§ extends §_-bH§
   {
      
      public static const §_-BC§:int = 0;
      
      public static var §_-hZ§:int = §_-BC§;
      
      public static const LOAD_STATE_STEP_1:int = 1;
      
      public static const LOAD_STATE_STEP_2:int = 2;
      
      public static var §_-U-§:Number = -1;
       
      
      private var §_-99§:Number = 0;
      
      public function §_-y§(param1:Boolean, param2:String)
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         this.§_-kl§ = new §_-K9§(this);
         §_-kl§.init(§_-uW§.§_-Cs§.Views.View_LevelLoad[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         if(§_-yh§.§_-1o§)
         {
            §_-yh§.§_-1o§.start();
         }
         §_-hZ§ = LOAD_STATE_STEP_1;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §_-UO§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(§_-hZ§ == LOAD_STATE_STEP_1)
         {
            §_-ph§.§_-Tw§.clearLevel();
            this.initLevelLoad();
            §_-hZ§ = LOAD_STATE_STEP_2;
         }
         else if(§_-hZ§ == LOAD_STATE_STEP_2)
         {
            if(this.isReady())
            {
               this.onLevelLoadReady();
            }
         }
         if(mNextState.length > 0)
         {
            return §_-UO§.STATE_STATUS_COMPLETED;
         }
         return §_-UO§.STATE_STATUS_RUNNING;
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
      
      protected function §_-lc§(param1:§_-sq§) : void
      {
         §_-ph§.§_-9v§(param1);
      }
   }
}
