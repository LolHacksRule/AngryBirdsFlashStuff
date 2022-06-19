package §5G§
{
   import §"§.§%!$§;
   import §6;§.§%[§;
   import §>P§.§5!§;
   import §>P§.§>!;§;
   import §`![§.§!!K§;
   import §`h§.§@!Z§;
   
   public class §3#§ extends §%!$§
   {
      
      public static const §@!8§:int = 0;
      
      public static var §@!L§:int = §@!8§;
      
      public static const LOAD_STATE_STEP_1:int = 1;
      
      public static const LOAD_STATE_STEP_2:int = 2;
      
      public static var §@7§:Number = -1;
       
      
      private var §7,§:Number = 0;
      
      public function §3#§(param1:Boolean, param2:String)
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         this.§%!0§ = new §5!§(this);
         §%!0§.init(§>!;§.§ get§.Views.View_LevelLoad[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         if(§%[§.§`1§)
         {
            §%[§.§`1§.start();
         }
         §@!Z§.§;!,§.clearLevel();
         §@!L§ = LOAD_STATE_STEP_1;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §%!$§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(§@!L§ == LOAD_STATE_STEP_1)
         {
            §@!Z§.§;!,§.clearLevel();
            this.initLevelLoad();
            §@!L§ = LOAD_STATE_STEP_2;
         }
         else if(§@!L§ == LOAD_STATE_STEP_2)
         {
            if(this.isReady())
            {
               this.onLevelLoadReady();
            }
         }
         if(mNextState.length > 0)
         {
            return §%!$§.STATE_STATUS_COMPLETED;
         }
         return §%!$§.STATE_STATUS_RUNNING;
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
      
      protected function §8!a§(param1:§!!K§) : void
      {
         §@!Z§.§2Q§(param1);
      }
   }
}
