package §_-Xz§
{
   import §_-5b§.§_-Vj§;
   import §_-EH§.§_-uz§;
   import §_-KM§.§_-0A§;
   import §_-TX§.§_-0X§;
   import §_-xL§.§_-1-§;
   import §_-xL§.§_-y9§;
   
   public class §_-tW§ extends §_-uz§
   {
      
      public static const §_-Of§:int = 0;
      
      public static var §_-003§:int = §_-Of§;
      
      public static const LOAD_STATE_STEP_1:int = 1;
      
      public static const LOAD_STATE_STEP_2:int = 2;
      
      public static var §_-Ps§:Number = -1;
       
      
      private var §_-3A§:Number = 0;
      
      public function §_-tW§(param1:Boolean, param2:String)
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         this.§_-nq§ = new §_-1-§(this);
         §_-nq§.init(§_-y9§.§_-HN§.Views.View_LevelLoad[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         if(§_-0A§.§_-bz§)
         {
            §_-0A§.§_-bz§.start();
         }
         §_-0X§.§_-O2§.clearLevel();
         §_-003§ = LOAD_STATE_STEP_1;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §_-uz§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(§_-003§ == LOAD_STATE_STEP_1)
         {
            §_-0X§.§_-O2§.clearLevel();
            this.initLevelLoad();
            §_-003§ = LOAD_STATE_STEP_2;
         }
         else if(§_-003§ == LOAD_STATE_STEP_2)
         {
            if(this.isReady())
            {
               this.onLevelLoadReady();
            }
         }
         if(mNextState.length > 0)
         {
            return §_-uz§.STATE_STATUS_COMPLETED;
         }
         return §_-uz§.STATE_STATUS_RUNNING;
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
      
      protected function §_-CC§(param1:§_-Vj§) : void
      {
         §_-0X§.§false§(param1);
      }
   }
}
