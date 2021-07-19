package §;u§
{
   import §8";§.§+d§;
   import §9!n§.§0"T§;
   import §9!n§.LevelManager;
   import §@!"§.§?l§;
   import §`"%§.§ "<§;
   import §`"%§.§`_§;
   
   public class §4"2§ extends §+d§
   {
      
      public static const §-X§:Boolean = false;
      
      public static const §4!I§:int = 0;
      
      public static var §,"K§:int = §4!I§;
      
      public static const LOAD_STATE_STEP_1:int = 1;
      
      public static const LOAD_STATE_STEP_2:int = 2;
      
      public static var §7!I§:Number = -1;
       
      
      private var §,!3§:Number = 0;
      
      public function §4"2§(param1:Boolean, param2:String)
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         this.initLoadingView();
      }
      
      protected function initLoadingView() : void
      {
         this.§2"@§ = new §`_§(this);
         §2"@§.init(§ "<§.§%I§.Views.View_LevelLoad[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         §,"K§ = LOAD_STATE_STEP_1;
         this.§1"W§();
      }
      
      protected function §1"W§() : void
      {
         if(LevelManager.§ T§ != null && §2"@§)
         {
            §2"@§.setText("LOADING " + LevelManager.§ T§.replace("-"," - "),"TextField_LevelLoading");
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §+d§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(§,"K§ == LOAD_STATE_STEP_1)
         {
            §?l§.§'h§.clearLevel();
            this.initLevelLoad();
            §,"K§ = LOAD_STATE_STEP_2;
         }
         else if(§,"K§ == LOAD_STATE_STEP_2)
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
            return §+d§.STATE_STATUS_COMPLETED;
         }
         return §+d§.STATE_STATUS_RUNNING;
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
      
      protected function initLevelMain(param1:§0"T§) : void
      {
         §?l§.§,!m§(param1);
      }
   }
}
