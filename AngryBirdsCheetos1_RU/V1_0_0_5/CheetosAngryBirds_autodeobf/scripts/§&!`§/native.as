package §&!`§
{
   import § =§.§ x§;
   import §'Y§.§"!J§;
   import §'Y§.§;J§;
   import §'d§.§3>§;
   import §0C§.§;!Q§;
   import §]_§.§!F§;
   
   public class native extends § x§
   {
      
      public static const §[!$§:int = 0;
      
      public static var §-! §:int = §[!$§;
      
      public static const LOAD_STATE_STEP_1:int = 1;
      
      public static const LOAD_STATE_STEP_2:int = 2;
      
      public static var §&;§:Number = -1;
       
      
      private var §,#§:Number = 0;
      
      public function native(param1:Boolean, param2:String)
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         this.§^!]§ = new §;J§(this);
         §^!]§.init(§"!J§.§1!P§.Views.View_LevelLoad[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         if(§!F§.§[M§)
         {
            §!F§.§[M§.start();
         }
         §3>§.§8!$§.clearLevel();
         §-! § = LOAD_STATE_STEP_1;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != § x§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(§-! § == LOAD_STATE_STEP_1)
         {
            §3>§.§8!$§.clearLevel();
            this.initLevelLoad();
            §-! § = LOAD_STATE_STEP_2;
         }
         else if(§-! § == LOAD_STATE_STEP_2)
         {
            if(this.isReady())
            {
               this.onLevelLoadReady();
            }
         }
         if(mNextState.length > 0)
         {
            return § x§.STATE_STATUS_COMPLETED;
         }
         return § x§.STATE_STATUS_RUNNING;
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
      
      protected function §,C§(param1:§;!Q§) : void
      {
         §3>§.§"!3§(param1);
      }
   }
}
