package §%n§
{
   import §%!G§.§ !G§;
   import §%!G§.§-h§;
   import §-X§.§5!F§;
   import §-v§.§,!1§;
   import §6!@§.§ !!§;
   
   public class §+!W§ extends §91§
   {
      
      public static const §`!'§:int = 0;
      
      public static var §8!6§:int = §`!'§;
      
      public static const LOAD_STATE_STEP_1:int = 1;
      
      public static const LOAD_STATE_STEP_2:int = 2;
      
      public static var §56§:Number = -1;
       
      
      private var §57§:Number = 0;
      
      public function §+!W§(param1:Boolean, param2:String)
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         this.§5!R§ = new § !G§(this);
         §5!R§.init(§-h§.§#z§.Views.View_LevelLoad[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         §'! §.enableHelpButton(false);
         §'! §.enableCreditsButton(false);
         §,!1§.§2T§.§=!H§(true);
         §8!6§ = LOAD_STATE_STEP_1;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != § !!§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(§8!6§ == LOAD_STATE_STEP_1)
         {
            §,!1§.§2T§.clearLevel();
            this.initLevelLoad();
            §8!6§ = LOAD_STATE_STEP_2;
         }
         else if(§8!6§ == LOAD_STATE_STEP_2)
         {
            if(this.isReady())
            {
               this.onLevelLoadReady();
            }
         }
         if(mNextState.length > 0)
         {
            return § !!§.STATE_STATUS_COMPLETED;
         }
         return § !!§.STATE_STATUS_RUNNING;
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
      
      protected function §<]§(param1:§5!F§) : void
      {
         §,!1§.§do §(param1);
      }
   }
}
