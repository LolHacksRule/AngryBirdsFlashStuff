package §9!5§
{
   import §0!N§.§=+§;
   import §0!N§.LevelManager;
   import §2h§.§'!^§;
   import §2h§.§[!'§;
   import §<!>§.§?Y§;
   import §true§.§ _§;
   
   public class §[!k§ extends §?Y§
   {
      
      public static const §>^§:Boolean = false;
      
      public static const §9u§:int = 0;
      
      public static var §&!B§:int = §9u§;
      
      public static const LOAD_STATE_STEP_1:int = 1;
      
      public static const LOAD_STATE_STEP_2:int = 2;
      
      public static var §5!"§:Number = -1;
       
      
      private var §?!9§:Number = 0;
      
      public function §[!k§(param1:Boolean, param2:String)
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         this.§5^§();
      }
      
      protected function §5^§() : void
      {
         this.§5!P§ = new §'!^§(this);
         §5!P§.init(§[!'§.§+@§.Views.View_LevelLoad[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         §&!B§ = LOAD_STATE_STEP_1;
         this.§>g§();
      }
      
      protected function §>g§() : void
      {
         if(LevelManager.§4Y§ != null)
         {
            §5!P§.setText("LOADING " + LevelManager.§4Y§.replace("-"," - "),"TextField_LevelLoading");
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §?Y§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(§&!B§ == LOAD_STATE_STEP_1)
         {
            § _§.§!6§.clearLevel();
            this.initLevelLoad();
            §&!B§ = LOAD_STATE_STEP_2;
         }
         else if(§&!B§ == LOAD_STATE_STEP_2)
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
            return §?Y§.STATE_STATUS_COMPLETED;
         }
         return §?Y§.STATE_STATUS_RUNNING;
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
      
      protected function initLevelMain(param1:§=+§) : void
      {
         § _§.§1!+§(param1);
      }
   }
}
