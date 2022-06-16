package § true§
{
   import §<!A§.§,!?§;
   import §>!O§.§[+§;
   import §?j§.§9?§;
   import §?j§.§`R§;
   import §@a§.§'p§;
   import §@a§.§8H§;
   
   public class §%P§ extends §,!?§
   {
      
      public static const §7!C§:Boolean = false;
      
      public static const §,§:int = 0;
      
      public static var §;!?§:int = §,§;
      
      public static const LOAD_STATE_STEP_1:int = 1;
      
      public static const LOAD_STATE_STEP_2:int = 2;
      
      public static var § +§:Number = -1;
       
      
      private var §&U§:Number = 0;
      
      public function §%P§(param1:Boolean, param2:String)
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
         this.§while§ = new §8H§(this);
         §while§.init(§'p§.§ ,§.Views.View_LevelLoad[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         §;!?§ = LOAD_STATE_STEP_1;
         this.setLoadingText();
      }
      
      protected function setLoadingText() : void
      {
         if(§`R§.§7S§ != null && §while§)
         {
            §while§.setText("LOADING " + §`R§.§7S§.replace("-"," - "),"TextField_LevelLoading");
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §,!?§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(§;!?§ == LOAD_STATE_STEP_1)
         {
            §[+§.§,!&§.clearLevel();
            this.initLevelLoad();
            §;!?§ = LOAD_STATE_STEP_2;
         }
         else if(§;!?§ == LOAD_STATE_STEP_2)
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
            return §,!?§.STATE_STATUS_COMPLETED;
         }
         return §,!?§.STATE_STATUS_RUNNING;
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
      
      protected function initLevelMain(param1:§9?§) : void
      {
         §[+§.§true §(param1);
      }
   }
}
