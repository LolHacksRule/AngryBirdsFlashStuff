package §?'§
{
   import §87§.§2-§;
   import §87§.§]T§;
   import §;f§.§&#§;
   import §;f§.§^o§;
   import §;j§.§8[§;
   import §`<§.§,!6§;
   
   public class §?Z§ extends §,!6§
   {
      
      public static const §[L§:Boolean = false;
      
      public static const §9u§:int = 0;
      
      public static var §;!,§:int = §9u§;
      
      public static const LOAD_STATE_STEP_1:int = 1;
      
      public static const LOAD_STATE_STEP_2:int = 2;
      
      public static var §&!0§:Number = -1;
       
      
      private var §[!+§:Number = 0;
      
      public function §?Z§(param1:Boolean, param2:String)
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
         this.§<o§ = new §]T§(this);
         §<o§.init(§2-§.§+J§.Views.View_LevelLoad[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         §;!,§ = LOAD_STATE_STEP_1;
         this.setLoadingText();
      }
      
      protected function setLoadingText() : void
      {
         if(§&#§.§<Y§ != null)
         {
            §<o§.setText("LOADING " + §&#§.§<Y§.replace("-"," - "),"TextField_LevelLoading");
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §,!6§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(§;!,§ == LOAD_STATE_STEP_1)
         {
            §8[§.§import§.clearLevel();
            this.initLevelLoad();
            §;!,§ = LOAD_STATE_STEP_2;
         }
         else if(§;!,§ == LOAD_STATE_STEP_2)
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
            return §,!6§.STATE_STATUS_COMPLETED;
         }
         return §,!6§.STATE_STATUS_RUNNING;
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
      
      protected function initLevelMain(param1:§^o§) : void
      {
         §8[§.§9,§(param1);
      }
   }
}
