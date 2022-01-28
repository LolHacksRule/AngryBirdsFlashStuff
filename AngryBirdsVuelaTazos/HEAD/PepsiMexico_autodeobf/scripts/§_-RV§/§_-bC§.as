package §_-RV§
{
   import §_-7x§.§_-yE§;
   import §_-QG§.§_-t6§;
   import §_-Qn§.§_-O7§;
   import §_-Qn§.§_-bo§;
   import §_-pm§.§_-gb§;
   
   public class §_-bC§ extends §_-oI§
   {
      
      public static const §_-L4§:int = 0;
      
      public static var §_-uA§:int = §_-L4§;
      
      public static const LOAD_STATE_STEP_1:int = 1;
      
      public static const LOAD_STATE_STEP_2:int = 2;
      
      public static var §_-qQ§:Number = -1;
       
      
      private var §_-Lz§:Number = 0;
      
      public function §_-bC§(param1:Boolean, param2:String)
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         this.§_-MF§ = new §_-bo§(this);
         §_-MF§.init(§_-O7§.§_-jb§.Views.View_LevelLoad[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         §_-gb§.§_-ls§.§_-2L§(true);
         §_-uA§ = LOAD_STATE_STEP_1;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §_-t6§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(§_-uA§ == LOAD_STATE_STEP_1)
         {
            §_-gb§.§_-ls§.clearLevel();
            this.initLevelLoad();
            §_-uA§ = LOAD_STATE_STEP_2;
         }
         else if(§_-uA§ == LOAD_STATE_STEP_2)
         {
            if(this.isReady())
            {
               this.onLevelLoadReady();
            }
         }
         if(mNextState.length > 0)
         {
            return §_-t6§.STATE_STATUS_COMPLETED;
         }
         return §_-t6§.STATE_STATUS_RUNNING;
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
      
      protected function §_-Qe§(param1:§_-yE§) : void
      {
         §_-gb§.§_-bf§(param1);
      }
   }
}
