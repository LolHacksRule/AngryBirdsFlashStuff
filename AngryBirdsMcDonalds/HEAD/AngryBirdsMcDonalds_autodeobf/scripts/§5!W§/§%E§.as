package §5!W§
{
   import §,!H§.§ for§;
   import §,4§.§0B§;
   import §5!q§.HighscoreSidebar;
   import §7F§.§2M§;
   import §7p§.§%g§;
   import §7p§.§>!m§;
   
   public class §%E§ extends §`X§
   {
      
      public static const §0!'§:int = 0;
      
      public static var §-_§:int = §0!'§;
      
      public static const LOAD_STATE_STEP_1:int = 1;
      
      public static const LOAD_STATE_STEP_2:int = 2;
      
      public static var §'X§:Number = -1;
       
      
      private var §9!&§:Number = 0;
      
      public function §%E§(param1:Boolean, param2:String)
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         this.mUIView = new §%g§(this);
         mUIView.init(§>!m§.§9c§.Views.View_LevelLoad[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         §-_§ = LOAD_STATE_STEP_1;
         sHighscoreSidebar.changeState(HighscoreSidebar.§]!g§);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != § for§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(§-_§ == LOAD_STATE_STEP_1)
         {
            §2M§.§1?§.clearLevel();
            this.initLevelLoad();
            §-_§ = LOAD_STATE_STEP_2;
         }
         else if(§-_§ == LOAD_STATE_STEP_2)
         {
            if(this.isReady())
            {
               this.onLevelLoadReady();
            }
         }
         if(mNextState.length > 0)
         {
            return § for§.STATE_STATUS_COMPLETED;
         }
         return § for§.STATE_STATUS_RUNNING;
      }
      
      public function initLevelLoad() : void
      {
      }
      
      public function isReady() : Boolean
      {
         return false;
      }
      
      public function onLevelLoadReady() : void
      {
      }
      
      protected function §!P§(param1:§0B§) : void
      {
         §2M§.§;!M§(param1);
      }
   }
}
