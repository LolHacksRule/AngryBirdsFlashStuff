package §@!P§
{
   import §!!L§.§&!R§;
   import §!!a§.§8=§;
   import §=F§.§"n§;
   import §>!8§.§4!0§;
   import §>!8§.§71§;
   
   public class §%=§ extends §3!%§
   {
      
      public static const §>!`§:int = 0;
      
      public static var §&d§:int = §>!`§;
      
      public static const LOAD_STATE_STEP_1:int = 1;
      
      public static const LOAD_STATE_STEP_2:int = 2;
      
      public static var §,!B§:Number = -1;
       
      
      private var §%O§:Number = 0;
      
      public function §%=§(param1:Boolean, param2:String)
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         this.§+!`§ = new §4!0§(this);
         §+!`§.init(§71§.§#X§.Views.View_LevelLoad[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         §@<§.enableHelpButton(false);
         §@<§.enableCreditsButton(false);
         §"n§.§[b§.§+!U§(true);
         §&d§ = LOAD_STATE_STEP_1;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §&!R§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(§&d§ == LOAD_STATE_STEP_1)
         {
            §"n§.§[b§.clearLevel();
            this.initLevelLoad();
            §&d§ = LOAD_STATE_STEP_2;
         }
         else if(§&d§ == LOAD_STATE_STEP_2)
         {
            if(this.isReady())
            {
               this.onLevelLoadReady();
            }
         }
         if(mNextState.length > 0)
         {
            return §&!R§.STATE_STATUS_COMPLETED;
         }
         return §&!R§.STATE_STATUS_RUNNING;
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
      
      protected function §1!0§(param1:§8=§) : void
      {
         §"n§.§%^§(param1);
      }
   }
}
