package §2!U§
{
   import §"!i§.§"!'§;
   import §"!i§.LevelManager;
   import §8!H§.§9![§;
   import §;!y§.§,!s§;
   import §>f§.§&!G§;
   import §>f§.§2!z§;
   
   public class §]W§ extends §9![§
   {
      
      public static const §>!Q§:Boolean = false;
      
      public static const §#O§:int = 0;
      
      public static var §77§:int = §#O§;
      
      public static const LOAD_STATE_STEP_1:int = 1;
      
      public static const LOAD_STATE_STEP_2:int = 2;
      
      public static var §>a§:Number = -1;
       
      
      private var §-!H§:Number = 0;
      
      public function §]W§(param1:Boolean, param2:String)
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         this.§!q§();
      }
      
      protected function §!q§() : void
      {
         this.§'!Q§ = new §&!G§(this);
         §'!Q§.init(§2!z§.§ _§.Views.View_LevelLoad[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         §77§ = LOAD_STATE_STEP_1;
         this.§6b§();
      }
      
      protected function §6b§() : void
      {
         if(LevelManager.§"L§ != null && §'!Q§)
         {
            §'!Q§.setText("LOADING " + LevelManager.§"L§.replace("-"," - "),"TextField_LevelLoading");
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §9![§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(§77§ == LOAD_STATE_STEP_1)
         {
            §,!s§.§=!I§.clearLevel();
            this.initLevelLoad();
            §77§ = LOAD_STATE_STEP_2;
         }
         else if(§77§ == LOAD_STATE_STEP_2)
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
            return §9![§.STATE_STATUS_COMPLETED;
         }
         return §9![§.STATE_STATUS_RUNNING;
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
      
      protected function initLevelMain(param1:§"!'§) : void
      {
         §,!s§.§`!O§(param1);
      }
   }
}
