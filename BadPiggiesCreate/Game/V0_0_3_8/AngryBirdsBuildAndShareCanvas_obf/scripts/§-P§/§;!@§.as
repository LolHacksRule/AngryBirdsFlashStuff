package §-P§
{
   import §'!O§.§@!l§;
   import §'!O§.§[!m§;
   import §>w§.§4E§;
   import §?!V§.§ T§;
   import §?!V§.§"a§;
   import §`%§.§8!0§;
   
   public class §;!@§ extends §4E§
   {
      
      public static const §>!>§:Boolean = false;
      
      public static const §0=§:int = 0;
      
      public static var §@x§:int = §0=§;
      
      public static const LOAD_STATE_STEP_1:int = 1;
      
      public static const LOAD_STATE_STEP_2:int = 2;
      
      public static var §!N§:Number = -1;
       
      
      private var §%S§:Number = 0;
      
      public function §;!@§(param1:Boolean, param2:String)
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
         this.§1!j§ = new § T§(this);
         §1!j§.init(§"a§.§-!g§.Views.View_LevelLoad[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         §@x§ = LOAD_STATE_STEP_1;
         this.§=!r§();
      }
      
      protected function §=!r§() : void
      {
         if(§[!m§.§<!D§ != null && §1!j§)
         {
            §1!j§.setText("LOADING " + §[!m§.§<!D§.replace("-"," - "),"TextField_LevelLoading");
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §4E§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(§@x§ == LOAD_STATE_STEP_1)
         {
            §8!0§.§?2§.clearLevel();
            this.initLevelLoad();
            §@x§ = LOAD_STATE_STEP_2;
         }
         else if(§@x§ == LOAD_STATE_STEP_2)
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
            return §4E§.STATE_STATUS_COMPLETED;
         }
         return §4E§.STATE_STATUS_RUNNING;
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
      
      protected function initLevelMain(param1:§@!l§) : void
      {
         §8!0§.loadLevel(param1);
      }
   }
}
