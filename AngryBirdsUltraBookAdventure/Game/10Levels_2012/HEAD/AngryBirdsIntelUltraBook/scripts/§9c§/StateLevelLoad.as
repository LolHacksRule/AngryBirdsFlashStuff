package §9c§
{
   import §#!X§.LevelManager;
   import §#!X§.LevelModel;
   import §-!>§.§4!T§;
   import §@!H§.§-!H§;
   import §@!H§.§3!5§;
   import §[!>§.StateBase;
   
   public class StateLevelLoad extends StateBase
   {
      
      public static const USE_ONLY_LOCAL_LEVELS:Boolean = false;
      
      public static const LOAD_STATE_NONE:int = 0;
      
      public static var smLoadStateStep:int = LOAD_STATE_NONE;
      
      public static const LOAD_STATE_STEP_1:int = 1;
      
      public static const LOAD_STATE_STEP_2:int = 2;
      
      public static var smLevelIndex:Number = -1;
       
      
      private var §'!O§:Number = 0;
      
      public function StateLevelLoad(initState:Boolean, name:String)
      {
         super(initState,name);
      }
      
      override public function init() : void
      {
         super.init();
         this.§1G§();
      }
      
      protected function §1G§() : void
      {
         this.§^,§ = new §-!H§(this);
         §^,§.init(§3!5§.§4@§.Views.View_LevelLoad[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         smLoadStateStep = LOAD_STATE_STEP_1;
         this.§%G§();
      }
      
      protected function §%G§() : void
      {
         if(LevelManager.§!=§ != null)
         {
            §^,§.setText("LOADING " + LevelManager.§!=§.replace("-"," - "),"TextField_LevelLoading");
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
            §4!T§.§1t§.clearLevel();
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
         §4!T§.§%<§(levelData);
      }
   }
}
