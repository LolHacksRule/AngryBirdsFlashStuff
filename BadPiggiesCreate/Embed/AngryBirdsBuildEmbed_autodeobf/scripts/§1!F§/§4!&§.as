package §1!F§
{
   import §!y§.§2U§;
   import §!y§.§=!Z§;
   import §-!0§.§1^§;
   import §-!0§.§2! §;
   import §=!3§.§;!!§;
   import §?!-§.§'!V§;
   
   public class §4!&§ extends §;!!§
   {
      
      public static const §1!h§:Boolean = false;
      
      public static const §8-§:int = 0;
      
      public static var §>V§:int = §8-§;
      
      public static const LOAD_STATE_STEP_1:int = 1;
      
      public static const LOAD_STATE_STEP_2:int = 2;
      
      public static var §-!;§:Number = -1;
       
      
      private var §3!-§:Number = 0;
      
      public function §4!&§(param1:Boolean, param2:String)
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
         this.§+!$§ = new §2U§(this);
         §+!$§.init(§=!Z§.§;K§.Views.View_LevelLoad[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         §>V§ = LOAD_STATE_STEP_1;
         this.setLoadingText();
      }
      
      protected function setLoadingText() : void
      {
         if(§1^§.§ ]§ != null)
         {
            §+!$§.setText("LOADING " + §1^§.§ ]§.replace("-"," - "),"TextField_LevelLoading");
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §;!!§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(§>V§ == LOAD_STATE_STEP_1)
         {
            §'!V§.§1!2§.clearLevel();
            this.initLevelLoad();
            §>V§ = LOAD_STATE_STEP_2;
         }
         else if(§>V§ == LOAD_STATE_STEP_2)
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
            return §;!!§.STATE_STATUS_COMPLETED;
         }
         return §;!!§.STATE_STATUS_RUNNING;
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
      
      protected function initLevelMain(param1:§2! §) : void
      {
         §'!V§.loadLevel(param1);
      }
   }
}
