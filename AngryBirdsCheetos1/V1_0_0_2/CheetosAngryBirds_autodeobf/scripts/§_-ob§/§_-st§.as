package §_-ob§
{
   import §_-94§.§_-si§;
   import §_-MP§.§_-BI§;
   import §_-Ye§.§_-cP§;
   import §_-sj§.§_-qs§;
   import §_-w8§.§_-Jg§;
   import §_-w8§.§_-S6§;
   
   public class §_-st§ extends §_-qs§
   {
      
      public static const §_-Vt§:int = 0;
      
      public static var §_-SW§:int = §_-Vt§;
      
      public static const LOAD_STATE_STEP_1:int = 1;
      
      public static const LOAD_STATE_STEP_2:int = 2;
      
      public static var §_-Qa§:Number = -1;
       
      
      private var §_-JP§:Number = 0;
      
      public function §_-st§(param1:Boolean, param2:String)
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         this.§_-x2§ = new §_-S6§(this);
         §_-x2§.init(§_-Jg§.§_-E§.Views.View_LevelLoad[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         if(§_-cP§.§_-004§)
         {
            §_-cP§.§_-004§.start();
         }
         §_-si§.§_-HI§.clearLevel();
         §_-SW§ = LOAD_STATE_STEP_1;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §_-qs§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(§_-SW§ == LOAD_STATE_STEP_1)
         {
            §_-si§.§_-HI§.clearLevel();
            this.initLevelLoad();
            §_-SW§ = LOAD_STATE_STEP_2;
         }
         else if(§_-SW§ == LOAD_STATE_STEP_2)
         {
            if(this.isReady())
            {
               this.onLevelLoadReady();
            }
         }
         if(mNextState.length > 0)
         {
            return §_-qs§.STATE_STATUS_COMPLETED;
         }
         return §_-qs§.STATE_STATUS_RUNNING;
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
      
      protected function §_-DL§(param1:§_-BI§) : void
      {
         §_-si§.§_-PC§(param1);
      }
   }
}
