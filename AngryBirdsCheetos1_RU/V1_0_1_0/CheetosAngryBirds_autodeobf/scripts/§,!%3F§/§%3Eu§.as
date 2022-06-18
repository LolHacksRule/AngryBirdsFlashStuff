package §,!?§
{
   import §"!S§.§"_§;
   import §"4§.§<h§;
   import §-!O§.§7'§;
   import §>8§.§#%§;
   import §]!Y§.§4]§;
   import §]!Y§.§5W§;
   
   public class §>u§ extends §7'§
   {
      
      public static const §=!C§:int = 0;
      
      public static var §&F§:int = §=!C§;
      
      public static const LOAD_STATE_STEP_1:int = 1;
      
      public static const LOAD_STATE_STEP_2:int = 2;
      
      public static var §?!E§:Number = -1;
       
      
      private var §#+§:Number = 0;
      
      public function §>u§(param1:Boolean, param2:String)
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         this.§??§ = new §5W§(this);
         §??§.init(§4]§.§['§.Views.View_LevelLoad[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         if(§<h§.§%!]§)
         {
            §<h§.§%!]§.start();
         }
         §"_§.§+!^§.clearLevel();
         §&F§ = LOAD_STATE_STEP_1;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §7'§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(§&F§ == LOAD_STATE_STEP_1)
         {
            §"_§.§+!^§.clearLevel();
            this.initLevelLoad();
            §&F§ = LOAD_STATE_STEP_2;
         }
         else if(§&F§ == LOAD_STATE_STEP_2)
         {
            if(this.isReady())
            {
               this.onLevelLoadReady();
            }
         }
         if(mNextState.length > 0)
         {
            return §7'§.STATE_STATUS_COMPLETED;
         }
         return §7'§.STATE_STATUS_RUNNING;
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
      
      protected function §!_§(param1:§#%§) : void
      {
         §"_§.§7T§(param1);
      }
   }
}
