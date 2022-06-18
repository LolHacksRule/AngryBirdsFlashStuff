package §'Q§
{
   import §;!X§.§7`§;
   import §=q§.§?X§;
   import §?!F§.§0!Y§;
   import §`B§.§ P§;
   import §`B§.§-Z§;
   import §`M§.§'C§;
   
   public class §&%§ extends §0!Y§
   {
      
      public static const §8u§:int = 0;
      
      public static var §08§:int = §8u§;
      
      public static const LOAD_STATE_STEP_1:int = 1;
      
      public static const LOAD_STATE_STEP_2:int = 2;
      
      public static var §6!=§:Number = -1;
       
      
      private var §]1§:Number = 0;
      
      public function §&%§(param1:Boolean, param2:String)
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         this.§2m§ = new §-Z§(this);
         §2m§.init(§ P§.§!A§.Views.View_LevelLoad[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         if(§'C§.§3b§)
         {
            §'C§.§3b§.start();
         }
         §7`§.§2'§.clearLevel();
         §08§ = LOAD_STATE_STEP_1;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §0!Y§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(§08§ == LOAD_STATE_STEP_1)
         {
            §7`§.§2'§.clearLevel();
            this.initLevelLoad();
            §08§ = LOAD_STATE_STEP_2;
         }
         else if(§08§ == LOAD_STATE_STEP_2)
         {
            if(this.isReady())
            {
               this.onLevelLoadReady();
            }
         }
         if(mNextState.length > 0)
         {
            return §0!Y§.STATE_STATUS_COMPLETED;
         }
         return §0!Y§.STATE_STATUS_RUNNING;
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
      
      protected function §?I§(param1:§?X§) : void
      {
         §7`§.§4b§(param1);
      }
   }
}
