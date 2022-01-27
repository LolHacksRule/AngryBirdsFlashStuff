package §+!9§
{
   import §,J§.§74§;
   import §4;§.§,h§;
   import §7!X§.§%!=§;
   import §7!X§.§7g§;
   import §?!P§.§@@§;
   
   public class §=B§ extends §3!!§
   {
      
      public static const §1!H§:int = 0;
      
      public static var §]!W§:int = §1!H§;
      
      public static const LOAD_STATE_STEP_1:int = 1;
      
      public static const LOAD_STATE_STEP_2:int = 2;
      
      public static var §;!4§:Number = -1;
       
      
      private var §7?§:Number = 0;
      
      public function §=B§(param1:Boolean, param2:String)
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         this.§2!M§ = new §7g§(this);
         §2!M§.init(§%!=§.§ #§.Views.View_LevelLoad[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         §]!W§ = LOAD_STATE_STEP_1;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §,h§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(§]!W§ == LOAD_STATE_STEP_1)
         {
            §@@§.§ !8§.clearLevel();
            this.initLevelLoad();
            §]!W§ = LOAD_STATE_STEP_2;
         }
         else if(§]!W§ == LOAD_STATE_STEP_2)
         {
            if(this.isReady())
            {
               this.onLevelLoadReady();
            }
         }
         if(mNextState.length > 0)
         {
            return §,h§.STATE_STATUS_COMPLETED;
         }
         return §,h§.STATE_STATUS_RUNNING;
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
      
      protected function §@s§(param1:§74§) : void
      {
         §@@§.§get §(param1);
      }
   }
}
