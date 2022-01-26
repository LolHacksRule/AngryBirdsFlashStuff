package §%w§
{
   import §-H§.§&c§;
   import §0F§.§'j§;
   import §0F§.§0p§;
   import §?m§.§7?§;
   import §]!F§.§&!]§;
   import §`C§.§9!'§;
   
   public class §package§ extends §&c§
   {
      
      public static const §1!7§:int = 0;
      
      public static var §?6§:int = §1!7§;
      
      public static const LOAD_STATE_STEP_1:int = 1;
      
      public static const LOAD_STATE_STEP_2:int = 2;
      
      public static var §8!D§:Number = -1;
       
      
      private var §@R§:Number = 0;
      
      public function §package§(param1:Boolean, param2:String)
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         this.§3t§ = new §'j§(this);
         §3t§.init(§0p§.§'! §.Views.View_LevelLoad[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         if(§9!'§.§7!Z§)
         {
            §9!'§.§7!Z§.start();
         }
         §7?§.§4!H§.clearLevel();
         §?6§ = LOAD_STATE_STEP_1;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §&c§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(§?6§ == LOAD_STATE_STEP_1)
         {
            §7?§.§4!H§.clearLevel();
            this.initLevelLoad();
            §?6§ = LOAD_STATE_STEP_2;
         }
         else if(§?6§ == LOAD_STATE_STEP_2)
         {
            if(this.isReady())
            {
               this.onLevelLoadReady();
            }
         }
         if(mNextState.length > 0)
         {
            return §&c§.STATE_STATUS_COMPLETED;
         }
         return §&c§.STATE_STATUS_RUNNING;
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
      
      protected function §!9§(param1:§&!]§) : void
      {
         §7?§.§!!@§(param1);
      }
   }
}
