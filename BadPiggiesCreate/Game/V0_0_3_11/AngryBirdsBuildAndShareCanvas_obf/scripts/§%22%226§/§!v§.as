package §""6§
{
   import §'x§.§?z§;
   import §+%§.§+"%§;
   import §+%§.§5!F§;
   import §2!O§.§,w§;
   import §;"$§.§8!O§;
   import §;"$§.§`5§;
   
   public class §!v§ extends §,w§
   {
      
      public static const §]!R§:Boolean = false;
      
      public static const §=2§:int = 0;
      
      public static var §+"'§:int = §=2§;
      
      public static const LOAD_STATE_STEP_1:int = 1;
      
      public static const LOAD_STATE_STEP_2:int = 2;
      
      public static var §8!a§:Number = -1;
       
      
      private var §<9§:Number = 0;
      
      public function §!v§(param1:Boolean, param2:String)
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
         this.§%""§ = new §`5§(this);
         §%""§.init(§8!O§.§'!J§.Views.View_LevelLoad[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         §+"'§ = LOAD_STATE_STEP_1;
         this.§]L§();
      }
      
      protected function §]L§() : void
      {
         if(§+"%§.§9!'§ != null && §%""§)
         {
            §%""§.setText("LOADING " + §+"%§.§9!'§.replace("-"," - "),"TextField_LevelLoading");
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §,w§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(§+"'§ == LOAD_STATE_STEP_1)
         {
            §?z§.§=7§.clearLevel();
            this.initLevelLoad();
            §+"'§ = LOAD_STATE_STEP_2;
         }
         else if(§+"'§ == LOAD_STATE_STEP_2)
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
            return §,w§.STATE_STATUS_COMPLETED;
         }
         return §,w§.STATE_STATUS_RUNNING;
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
      
      protected function initLevelMain(param1:§5!F§) : void
      {
         §?z§.loadLevel(param1);
      }
   }
}
