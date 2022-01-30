package §,r§
{
   import §%!,§.§,v§;
   import §0E§.§#O§;
   import §0E§.§-!F§;
   import §7"1§.§%W§;
   import §@">§.§#! §;
   import §@">§.§%!u§;
   
   public class §1q§ extends §,v§
   {
      
      public static const §,!c§:Boolean = false;
      
      public static const §%#§:int = 0;
      
      public static var §"z§:int = §%#§;
      
      public static const LOAD_STATE_STEP_1:int = 1;
      
      public static const LOAD_STATE_STEP_2:int = 2;
      
      public static var §'!j§:Number = -1;
       
      
      private var §4!M§:Number = 0;
      
      public function §1q§(param1:Boolean, param2:String)
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
         this.§?F§ = new §%!u§(this);
         §?F§.init(§#! §.§5!;§.Views.View_LevelLoad[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         §"z§ = LOAD_STATE_STEP_1;
         this.§5k§();
      }
      
      protected function §5k§() : void
      {
         if(§-!F§.§"!L§ != null && §?F§)
         {
            §?F§.setText("LOADING " + §-!F§.§"!L§.replace("-"," - "),"TextField_LevelLoading");
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §,v§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(§"z§ == LOAD_STATE_STEP_1)
         {
            §%W§.§5"8§.clearLevel();
            this.initLevelLoad();
            §"z§ = LOAD_STATE_STEP_2;
         }
         else if(§"z§ == LOAD_STATE_STEP_2)
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
            return §,v§.STATE_STATUS_COMPLETED;
         }
         return §,v§.STATE_STATUS_RUNNING;
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
      
      protected function initLevelMain(param1:§#O§) : void
      {
         §%W§.loadLevel(param1);
      }
   }
}
