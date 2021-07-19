package §^U§
{
   import §&!<§.§>!V§;
   import §&!<§.§]!M§;
   import §,P§.§'_§;
   import §;<§.§'B§;
   import §<i§.§'!e§;
   import §<i§.§`!r§;
   
   public class § get§ extends §'B§
   {
      
      public static const §`!Z§:Boolean = false;
      
      public static const §>!k§:int = 0;
      
      public static var §`!w§:int = §>!k§;
      
      public static const LOAD_STATE_STEP_1:int = 1;
      
      public static const LOAD_STATE_STEP_2:int = 2;
      
      public static var §"! §:Number = -1;
       
      
      private var §>v§:Number = 0;
      
      public function § get§(param1:Boolean, param2:String)
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
         this.§`!v§ = new §>!V§(this);
         §`!v§.init(§]!M§.§"!V§.Views.View_LevelLoad[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         §`!w§ = LOAD_STATE_STEP_1;
         this.§42§();
      }
      
      protected function §42§() : void
      {
         if(§`!r§.§0B§ != null && §`!v§)
         {
            §`!v§.setText("LOADING " + §`!r§.§0B§.replace("-"," - "),"TextField_LevelLoading");
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §'B§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(§`!w§ == LOAD_STATE_STEP_1)
         {
            §'_§.§=M§.clearLevel();
            this.initLevelLoad();
            §`!w§ = LOAD_STATE_STEP_2;
         }
         else if(§`!w§ == LOAD_STATE_STEP_2)
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
            return §'B§.STATE_STATUS_COMPLETED;
         }
         return §'B§.STATE_STATUS_RUNNING;
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
      
      protected function initLevelMain(param1:§'!e§) : void
      {
         §'_§.loadLevel(param1);
      }
   }
}
