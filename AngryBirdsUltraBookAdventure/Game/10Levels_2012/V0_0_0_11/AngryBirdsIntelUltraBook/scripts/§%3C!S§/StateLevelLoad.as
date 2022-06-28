package §<!S§
{
   import § D§.§]!B§;
   import §"L§.LevelManager;
   import §"L§.LevelModel;
   import §4!9§.§6"§;
   import §4!9§.§>!^§;
   import §4H§.StateBase;
   
   public class StateLevelLoad extends StateBase
   {
      
      public static const USE_ONLY_LOCAL_LEVELS:Boolean = false;
      
      public static const LOAD_STATE_NONE:int = 0;
      
      public static var smLoadStateStep:int = LOAD_STATE_NONE;
      
      public static const LOAD_STATE_STEP_1:int = 1;
      
      public static const LOAD_STATE_STEP_2:int = 2;
      
      public static var smLevelIndex:Number = -1;
       
      
      private var §#!3§:Number = 0;
      
      public function StateLevelLoad(initState:Boolean, name:String)
      {
         super(initState,name);
      }
      
      override public function init() : void
      {
         super.init();
         this.§-,§();
      }
      
      protected function §-,§() : void
      {
         this.§5!M§ = new §6"§(this);
         §5!M§.init(§>!^§.§8'§.Views.View_LevelLoad[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         smLoadStateStep = LOAD_STATE_STEP_1;
         this.§2t§();
      }
      
      protected function §2t§() : void
      {
         if(LevelManager.§var§ != null)
         {
            §5!M§.setText("LOADING " + LevelManager.§var§.replace("-"," - "),"TextField_LevelLoading");
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
            §]!B§.§>F§.clearLevel();
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
         §]!B§.§]!R§(levelData);
      }
   }
}
