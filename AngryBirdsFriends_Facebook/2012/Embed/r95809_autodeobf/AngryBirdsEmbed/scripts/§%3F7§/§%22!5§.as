package §?7§
{
   import §"V§.§true§;
   import §-l§.§?'§;
   import §5Y§.§"!4§;
   import §5Y§.§1!$§;
   import §<!@§.§!P§;
   import §<!@§.§+!-§;
   
   public class §"!5§ extends §true§
   {
      
      public static const §>w§:Boolean = false;
      
      public static const §3!§:int = 0;
      
      public static var §86§:int = §3!§;
      
      public static const LOAD_STATE_STEP_1:int = 1;
      
      public static const LOAD_STATE_STEP_2:int = 2;
      
      public static var § k§:Number = -1;
       
      
      private var §!j§:Number = 0;
      
      public function §"!5§(param1:Boolean, param2:String)
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
         this.§6!$§ = new §"!4§(this);
         §6!$§.init(§1!$§.§7e§.Views.View_LevelLoad[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         §86§ = LOAD_STATE_STEP_1;
         this.setLoadingText();
      }
      
      protected function setLoadingText() : void
      {
         if(§!P§.§4R§ != null)
         {
            §6!$§.setText("LOADING " + §!P§.§4R§.replace("-"," - "),"TextField_LevelLoading");
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §true§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(§86§ == LOAD_STATE_STEP_1)
         {
            §?'§.§5!§.clearLevel();
            this.initLevelLoad();
            §86§ = LOAD_STATE_STEP_2;
         }
         else if(§86§ == LOAD_STATE_STEP_2)
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
            return §true§.STATE_STATUS_COMPLETED;
         }
         return §true§.STATE_STATUS_RUNNING;
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
      
      protected function initLevelMain(param1:§+!-§) : void
      {
         §?'§.§-7§(param1);
      }
   }
}
