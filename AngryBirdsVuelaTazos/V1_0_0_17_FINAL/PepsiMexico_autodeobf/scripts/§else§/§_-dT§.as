package §else§
{
   import §_-Qx§.§_-Wv§;
   import §_-Ur§.§_-BN§;
   import §_-Ur§.§_-ru§;
   import §_-hU§.§_-MB§;
   import §_-y7§.§_-VA§;
   
   public class §_-dT§ extends §_-iL§
   {
      
      public static const §_-Cw§:int = 0;
      
      public static var §_-Ec§:int = §_-Cw§;
      
      public static const LOAD_STATE_STEP_1:int = 1;
      
      public static const LOAD_STATE_STEP_2:int = 2;
      
      public static var §_-XM§:Number = -1;
       
      
      private var §_-EX§:Number = 0;
      
      public function §_-dT§(param1:Boolean, param2:String)
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         this.§_-NY§ = new §_-ru§(this);
         §_-NY§.init(§_-BN§.native.Views.View_LevelLoad[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         §_-MB§.§_-A7§.§_-Gf§(true);
         §_-Ec§ = LOAD_STATE_STEP_1;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §_-VA§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(§_-Ec§ == LOAD_STATE_STEP_1)
         {
            §_-MB§.§_-A7§.clearLevel();
            this.initLevelLoad();
            §_-Ec§ = LOAD_STATE_STEP_2;
         }
         else if(§_-Ec§ == LOAD_STATE_STEP_2)
         {
            if(this.isReady())
            {
               this.onLevelLoadReady();
            }
         }
         if(mNextState.length > 0)
         {
            return §_-VA§.STATE_STATUS_COMPLETED;
         }
         return §_-VA§.STATE_STATUS_RUNNING;
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
      
      protected function §_-XZ§(param1:§_-Wv§) : void
      {
         §_-MB§.§_-JA§(param1);
      }
   }
}
