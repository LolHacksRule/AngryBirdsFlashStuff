package §_-8§
{
   import §_-M0§.§_-u4§;
   import §_-Yh§.§_-BS§;
   import §_-Yh§.§_-fA§;
   import §_-qT§.§_-O5§;
   import §_-uh§.§_-US§;
   
   public class §_-Zq§ extends §_-1f§
   {
      
      public static const §_-hX§:int = 0;
      
      public static var §_-Hv§:int = §_-hX§;
      
      public static const LOAD_STATE_STEP_1:int = 1;
      
      public static const LOAD_STATE_STEP_2:int = 2;
      
      public static var §_-KP§:Number = -1;
       
      
      private var §_-bT§:Number = 0;
      
      public function §_-Zq§(param1:Boolean, param2:String)
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         this.§_-Ih§ = new §_-fA§(this);
         §_-Ih§.init(§_-BS§.§_-tc§.Views.View_LevelLoad[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         §_-u4§.§_-40§.§_-AB§(true);
         §_-Hv§ = LOAD_STATE_STEP_1;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §_-O5§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(§_-Hv§ == LOAD_STATE_STEP_1)
         {
            §_-u4§.§_-40§.clearLevel();
            this.initLevelLoad();
            §_-Hv§ = LOAD_STATE_STEP_2;
         }
         else if(§_-Hv§ == LOAD_STATE_STEP_2)
         {
            if(this.isReady())
            {
               this.onLevelLoadReady();
            }
         }
         if(mNextState.length > 0)
         {
            return §_-O5§.STATE_STATUS_COMPLETED;
         }
         return §_-O5§.STATE_STATUS_RUNNING;
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
      
      protected function §_-Jf§(param1:§_-US§) : void
      {
         §_-u4§.§_-8e§(param1);
      }
   }
}
