package §@1§
{
   import §"!@§.§&;§;
   import §"A§.§?3§;
   import §"A§.§`!N§;
   import §'!S§.§,!%§;
   import §7!U§.§2!7§;
   import §<!P§.§>l§;
   
   public class §-r§ extends §>l§
   {
      
      public static const §,%§:int = 0;
      
      public static var §@!Z§:int = §,%§;
      
      public static const LOAD_STATE_STEP_1:int = 1;
      
      public static const LOAD_STATE_STEP_2:int = 2;
      
      public static var §^,§:Number = -1;
       
      
      private var §8=§:Number = 0;
      
      public function §-r§(param1:Boolean, param2:String)
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         this.§[B§ = new §?3§(this);
         §[B§.init(§`!N§.§,!T§.Views.View_LevelLoad[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         if(§,!%§.§]!C§)
         {
            §,!%§.§]!C§.start();
         }
         §2!7§.§5G§.clearLevel();
         §@!Z§ = LOAD_STATE_STEP_1;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §>l§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(§@!Z§ == LOAD_STATE_STEP_1)
         {
            §2!7§.§5G§.clearLevel();
            this.initLevelLoad();
            §@!Z§ = LOAD_STATE_STEP_2;
         }
         else if(§@!Z§ == LOAD_STATE_STEP_2)
         {
            if(this.isReady())
            {
               this.onLevelLoadReady();
            }
         }
         if(mNextState.length > 0)
         {
            return §>l§.STATE_STATUS_COMPLETED;
         }
         return §>l§.STATE_STATUS_RUNNING;
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
      
      protected function §+!H§(param1:§&;§) : void
      {
         §2!7§.§'!D§(param1);
      }
   }
}
