package §+B§
{
   import §-!f§.§ else§;
   import §-!f§.§=T§;
   import §7e§.§8!P§;
   import §8O§.§&#§;
   import §>!G§.§6!9§;
   
   public class §?!L§ extends §-2§
   {
      
      public static const §&U§:int = 0;
      
      public static var §5g§:int = §&U§;
      
      public static const LOAD_STATE_STEP_1:int = 1;
      
      public static const LOAD_STATE_STEP_2:int = 2;
      
      public static var §0H§:Number = -1;
       
      
      private var § in§:Number = 0;
      
      public function §?!L§(param1:Boolean, param2:String)
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         this.§ ,§ = new § else§(this);
         § ,§.init(§=T§.§2,§.Views.View_LevelLoad[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         §5g§ = LOAD_STATE_STEP_1;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §6!9§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(§5g§ == LOAD_STATE_STEP_1)
         {
            §&#§.§3!D§.clearLevel();
            this.initLevelLoad();
            §5g§ = LOAD_STATE_STEP_2;
         }
         else if(§5g§ == LOAD_STATE_STEP_2)
         {
            if(this.isReady())
            {
               this.onLevelLoadReady();
            }
         }
         if(mNextState.length > 0)
         {
            return §6!9§.STATE_STATUS_COMPLETED;
         }
         return §6!9§.STATE_STATUS_RUNNING;
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
      
      protected function §&!N§(param1:§8!P§) : void
      {
         §&#§.§8>§(param1);
      }
   }
}
