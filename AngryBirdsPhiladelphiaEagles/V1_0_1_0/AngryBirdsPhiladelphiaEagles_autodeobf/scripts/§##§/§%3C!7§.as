package §##§
{
   import §,!<§.§6!M§;
   import §5=§.§8G§;
   import §5=§.§^n§;
   import §@w§.§2G§;
   import §]!O§.§+[§;
   import §]!O§.§;Q§;
   
   public class §<!7§ extends §6!M§
   {
      
      public static const §@!7§:Boolean = false;
      
      public static const §extends§:int = 0;
      
      public static var §>!#§:int = §extends§;
      
      public static const LOAD_STATE_STEP_1:int = 1;
      
      public static const LOAD_STATE_STEP_2:int = 2;
      
      public static var §7!B§:Number = -1;
       
      
      private var §4!1§:Number = 0;
      
      public function §<!7§(param1:Boolean, param2:String)
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
         this.§ § = new §+[§(this);
         § §.init(§;Q§.static.Views.View_LevelLoad[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         §>!#§ = LOAD_STATE_STEP_1;
         this.setLoadingText();
      }
      
      protected function setLoadingText() : void
      {
         if(§^n§.§-7§ != null)
         {
            § §.setText("LOADING " + §^n§.§-7§.replace("-"," - "),"TextField_LevelLoading");
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §6!M§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(§>!#§ == LOAD_STATE_STEP_1)
         {
            §2G§.§7!,§.clearLevel();
            this.initLevelLoad();
            §>!#§ = LOAD_STATE_STEP_2;
         }
         else if(§>!#§ == LOAD_STATE_STEP_2)
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
            return §6!M§.STATE_STATUS_COMPLETED;
         }
         return §6!M§.STATE_STATUS_RUNNING;
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
      
      protected function initLevelMain(param1:§8G§) : void
      {
         §2G§.§4S§(param1);
      }
   }
}
