package §0![§
{
   import §"v§.§3!w§;
   import §"v§.§9"§;
   import §%c§.§=!X§;
   import §1"2§.§'s§;
   import §1"2§.§`7§;
   import §5"-§.§5y§;
   
   public class §0",§ extends §5y§
   {
      
      public static const §&!U§:Boolean = false;
      
      public static const §#!F§:int = 0;
      
      public static var §7""§:int = §#!F§;
      
      public static const LOAD_STATE_STEP_1:int = 1;
      
      public static const LOAD_STATE_STEP_2:int = 2;
      
      public static var §`!j§:Number = -1;
       
      
      private var §<^§:Number = 0;
      
      public function §0",§(param1:Boolean, param2:String)
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
         this.§?E§ = new §'s§(this);
         §?E§.init(§`7§.§>"?§.Views.View_LevelLoad[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         §7""§ = LOAD_STATE_STEP_1;
         this.§'d§();
      }
      
      protected function §'d§() : void
      {
         if(§3!w§.§%n§ != null && §?E§)
         {
            §?E§.setText("LOADING " + §3!w§.§%n§.replace("-"," - "),"TextField_LevelLoading");
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §5y§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(§7""§ == LOAD_STATE_STEP_1)
         {
            §=!X§.§!'§.clearLevel();
            this.initLevelLoad();
            §7""§ = LOAD_STATE_STEP_2;
         }
         else if(§7""§ == LOAD_STATE_STEP_2)
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
            return §5y§.STATE_STATUS_COMPLETED;
         }
         return §5y§.STATE_STATUS_RUNNING;
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
      
      protected function initLevelMain(param1:§9"§) : void
      {
         §=!X§.loadLevel(param1);
      }
   }
}
