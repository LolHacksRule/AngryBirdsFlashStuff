package §_-ad§
{
   import §_-Ga§.LevelManager;
   import §_-Ga§.§_-bm§;
   import §_-Yl§.§_-5q§;
   import §_-Yl§.§_-vB§;
   import §_-qO§.§ in§;
   import §_-x8§.§_-nG§;
   
   public class §_-gC§ extends §_-nG§
   {
      
      public static const §_-09Z§:Boolean = false;
      
      public static const §_-z0§:int = 0;
      
      public static var §_-lc§:int = §_-z0§;
      
      public static const LOAD_STATE_STEP_1:int = 1;
      
      public static const LOAD_STATE_STEP_2:int = 2;
      
      public static var §_-0F5§:Number = -1;
       
      
      private var §_-ha§:Number = 0;
      
      public function §_-gC§(param1:Boolean, param2:String)
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         this.§_-mR§();
      }
      
      protected function §_-mR§() : void
      {
         this.§_-s0§ = new §_-5q§(this);
         §_-s0§.init(§_-vB§.§_-ky§.Views.View_LevelLoad[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         §_-lc§ = LOAD_STATE_STEP_1;
         this.§_-yc§();
      }
      
      protected function §_-yc§() : void
      {
         if(LevelManager.§_-HM§ != null)
         {
            §_-s0§.setText("LOADING " + LevelManager.§_-HM§.replace("-"," - "),"TextField_LevelLoading");
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §_-nG§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(§_-lc§ == LOAD_STATE_STEP_1)
         {
            § in§.§_-Dc§.clearLevel();
            this.initLevelLoad();
            §_-lc§ = LOAD_STATE_STEP_2;
         }
         else if(§_-lc§ == LOAD_STATE_STEP_2)
         {
            if(this.isReady())
            {
               this.onLevelLoadReady();
            }
            else if(this.hasError())
            {
               this.onLevelLoadError();
            }
         }
         if(mNextState.length > 0)
         {
            return §_-nG§.STATE_STATUS_COMPLETED;
         }
         return §_-nG§.STATE_STATUS_RUNNING;
      }
      
      protected function initLevelLoad() : void
      {
      }
      
      public function isReady() : Boolean
      {
         return false;
      }
      
      public function hasError() : Boolean
      {
         return false;
      }
      
      public function onLevelLoadReady() : void
      {
      }
      
      public function onLevelLoadError() : void
      {
      }
      
      protected function initLevelMain(param1:§_-bm§) : void
      {
         § in§.§_-s8§(param1);
      }
   }
}
