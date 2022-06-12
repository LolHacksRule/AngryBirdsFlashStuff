package §2x§
{
   import §0!C§.§,!h§;
   import §0!C§.§=!]§;
   import §0s§.§8!z§;
   import §0s§.§];§;
   import §=!<§.§5!U§;
   import §>!5§.§>!T§;
   
   public class §@q§ extends §>!T§
   {
      
      public static const §0M§:Boolean = false;
      
      public static const §1!C§:int = 0;
      
      public static var §8f§:int = §1!C§;
      
      public static const LOAD_STATE_STEP_1:int = 1;
      
      public static const LOAD_STATE_STEP_2:int = 2;
      
      public static var §[!`§:Number = -1;
       
      
      private var §0=§:Number = 0;
      
      public function §@q§(param1:Boolean, param2:String)
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
         this.§3?§ = new §=!]§(this);
         §3?§.init(§,!h§.§`C§.Views.View_LevelLoad[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         §8f§ = LOAD_STATE_STEP_1;
         this.§^!;§();
      }
      
      protected function §^!;§() : void
      {
         if(§8!z§.§>!&§ != null && §3?§)
         {
            §3?§.setText("LOADING " + §8!z§.§>!&§.replace("-"," - "),"TextField_LevelLoading");
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §>!T§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(§8f§ == LOAD_STATE_STEP_1)
         {
            §5!U§.§,!E§.clearLevel();
            this.initLevelLoad();
            §8f§ = LOAD_STATE_STEP_2;
         }
         else if(§8f§ == LOAD_STATE_STEP_2)
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
            return §>!T§.STATE_STATUS_COMPLETED;
         }
         return §>!T§.STATE_STATUS_RUNNING;
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
      
      protected function initLevelMain(param1:§];§) : void
      {
         §5!U§.loadLevel(param1);
      }
   }
}
