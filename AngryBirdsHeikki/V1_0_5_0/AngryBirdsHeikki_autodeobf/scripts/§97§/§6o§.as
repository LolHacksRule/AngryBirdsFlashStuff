package §97§
{
   import § !Y§.§7§;
   import § !Y§.§if§;
   import §2H§.§>!^§;
   import §3-§.§1L§;
   import §=X§.§"!6§;
   
   public class §6o§ extends §62§
   {
      
      public static const §2@§:int = 0;
      
      public static var §0!b§:int = §2@§;
      
      public static const LOAD_STATE_STEP_1:int = 1;
      
      public static const LOAD_STATE_STEP_2:int = 2;
      
      public static var §2x§:Number = -1;
       
      
      private var §,!Q§:Number = 0;
      
      public function §6o§(param1:Boolean, param2:String)
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         this.§?P§ = new §if§(this);
         §?P§.init(§7§.§5!@§.Views.View_LevelLoad[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         §0!b§ = LOAD_STATE_STEP_1;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §>!^§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(§0!b§ == LOAD_STATE_STEP_1)
         {
            §1L§.§"f§.clearLevel();
            this.initLevelLoad();
            §0!b§ = LOAD_STATE_STEP_2;
         }
         else if(§0!b§ == LOAD_STATE_STEP_2)
         {
            if(this.isReady())
            {
               this.onLevelLoadReady();
            }
         }
         if(mNextState.length > 0)
         {
            return §>!^§.STATE_STATUS_COMPLETED;
         }
         return §>!^§.STATE_STATUS_RUNNING;
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
      
      protected function §0N§(param1:§"!6§) : void
      {
         §1L§.§^!>§(param1);
      }
   }
}
