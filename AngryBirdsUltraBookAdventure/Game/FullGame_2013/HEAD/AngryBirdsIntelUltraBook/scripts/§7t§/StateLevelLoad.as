package §7t§
{
   import §1N§.StateBase;
   import §=!5§.§+q§;
   import §=!5§.§`X§;
   import §>!_§.LevelManager;
   import §>!_§.LevelModel;
   import §?!Y§.§`S§;
   
   public class StateLevelLoad extends StateBase
   {
      
      public static const USE_ONLY_LOCAL_LEVELS:Boolean = false;
      
      public static const LOAD_STATE_NONE:int = 0;
      
      public static var smLoadStateStep:int = LOAD_STATE_NONE;
      
      public static const LOAD_STATE_STEP_1:int = 1;
      
      public static const LOAD_STATE_STEP_2:int = 2;
      
      public static var smLevelIndex:Number = -1;
       
      
      private var §7!5§:Number = 0;
      
      public function StateLevelLoad(initState:Boolean, name:String)
      {
         super(initState,name);
      }
      
      override public function init() : void
      {
         super.init();
         this.§"P§();
      }
      
      protected function §"P§() : void
      {
         this.§`=§ = new §`X§(this);
         §`=§.init(§+q§.§%M§.Views.View_LevelLoad[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         smLoadStateStep = LOAD_STATE_STEP_1;
         this.§?!F§();
      }
      
      protected function §?!F§() : void
      {
         if(LevelManager.§1m§ != null)
         {
            §`=§.setText("LOADING " + LevelManager.§1m§.replace("-"," - "),"TextField_LevelLoading");
         }
      }
      
      override public function run(deltaTime:Number) : int
      {
         var superReturn:int = super.run(deltaTime);
         if(superReturn != StateBase.STATE_STATUS_RUNNING)
         {
            return superReturn;
         }
         if(smLoadStateStep == LOAD_STATE_STEP_1)
         {
            §`S§.§[o§.clearLevel();
            this.initLevelLoad();
            smLoadStateStep = LOAD_STATE_STEP_2;
         }
         else if(smLoadStateStep == LOAD_STATE_STEP_2)
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
            return StateBase.STATE_STATUS_COMPLETED;
         }
         return StateBase.STATE_STATUS_RUNNING;
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
      
      protected function initLevelMain(levelData:LevelModel) : void
      {
         §`S§.§?h§(levelData);
      }
   }
}
