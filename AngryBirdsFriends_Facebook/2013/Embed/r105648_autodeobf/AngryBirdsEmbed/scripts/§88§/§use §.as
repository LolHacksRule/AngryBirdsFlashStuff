package §88§
{
   import § if§.§2q§;
   import §"!K§.§,U§;
   import §"!K§.§while§;
   import §#]§.§'5§;
   import §<!M§.§1!&§;
   import §<!M§.§[i§;
   
   public class §use § extends §2q§
   {
      
      public static const §!!A§:Boolean = false;
      
      public static const §#0§:int = 0;
      
      public static var §;B§:int = §#0§;
      
      public static const LOAD_STATE_STEP_1:int = 1;
      
      public static const LOAD_STATE_STEP_2:int = 2;
      
      public static var §1A§:Number = -1;
       
      
      private var §do§:Number = 0;
      
      public function §use §(param1:Boolean, param2:String)
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
         this.§=V§ = new §,U§(this);
         §=V§.init(§while§.§ v§.Views.View_LevelLoad[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         §;B§ = LOAD_STATE_STEP_1;
         this.setLoadingText();
      }
      
      protected function setLoadingText() : void
      {
         if(§[i§.§0A§ != null && §=V§)
         {
            §=V§.setText("LOADING " + §[i§.§0A§.replace("-"," - "),"TextField_LevelLoading");
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §2q§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(§;B§ == LOAD_STATE_STEP_1)
         {
            §'5§.§^;§.clearLevel();
            this.initLevelLoad();
            §;B§ = LOAD_STATE_STEP_2;
         }
         else if(§;B§ == LOAD_STATE_STEP_2)
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
            return §2q§.STATE_STATUS_COMPLETED;
         }
         return §2q§.STATE_STATUS_RUNNING;
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
      
      protected function initLevelMain(param1:§1!&§) : void
      {
         §'5§.§#!#§(param1);
      }
   }
}
