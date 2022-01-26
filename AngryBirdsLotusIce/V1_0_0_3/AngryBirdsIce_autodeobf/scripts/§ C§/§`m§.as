package § C§
{
   import §!Y§.§[o§;
   import §2]§.§#H§;
   import §2]§.§set §;
   import §3"§.§0$§;
   import §3"§.§8+§;
   import §]4§.§-§;
   
   public class §`m§ extends §-§
   {
      
      public static const §5z§:Boolean = false;
      
      public static const §+E§:int = 0;
      
      public static var §"E§:int = §+E§;
      
      public static const LOAD_STATE_STEP_1:int = 1;
      
      public static const LOAD_STATE_STEP_2:int = 2;
      
      public static var §8Z§:Number = -1;
       
      
      private var §<=§:Number = 0;
      
      public function §`m§(param1:Boolean, param2:String)
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
         this.§,R§ = new §#H§(this);
         §,R§.init(§set §.§&!1§.Views.View_LevelLoad[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         §"E§ = LOAD_STATE_STEP_1;
         this.setLoadingText();
      }
      
      protected function setLoadingText() : void
      {
         if(§0$§.§[C§ != null)
         {
            §,R§.setText("LOADING " + §0$§.§[C§.replace("-"," - "),"TextField_LevelLoading");
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §-§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(§"E§ == LOAD_STATE_STEP_1)
         {
            §[o§.§='§.clearLevel();
            this.initLevelLoad();
            §"E§ = LOAD_STATE_STEP_2;
         }
         else if(§"E§ == LOAD_STATE_STEP_2)
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
            return §-§.STATE_STATUS_COMPLETED;
         }
         return §-§.STATE_STATUS_RUNNING;
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
      
      protected function initLevelMain(param1:§8+§) : void
      {
         §[o§.§;4§(param1);
      }
   }
}
