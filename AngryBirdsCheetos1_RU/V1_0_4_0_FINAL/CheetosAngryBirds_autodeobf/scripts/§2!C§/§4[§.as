package §2!C§
{
   import §&h§.§+Y§;
   import §39§.§=R§;
   import §94§.§&!7§;
   import §>!D§.§3Q§;
   import §>!D§.§;,§;
   import §^Q§.§,^§;
   
   public class §4[§ extends §+Y§
   {
      
      public static const §4§:int = 0;
      
      public static var §8!-§:int = §4§;
      
      public static const LOAD_STATE_STEP_1:int = 1;
      
      public static const LOAD_STATE_STEP_2:int = 2;
      
      public static var §`!]§:Number = -1;
       
      
      private var §=!5§:Number = 0;
      
      public function §4[§(param1:Boolean, param2:String)
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         this.§?!?§ = new §;,§(this);
         §?!?§.init(§3Q§.§?6§.Views.View_LevelLoad[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         if(§&!7§.§>!M§)
         {
            §&!7§.§>!M§.start();
         }
         §,^§.§0K§.clearLevel();
         §8!-§ = LOAD_STATE_STEP_1;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §+Y§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(§8!-§ == LOAD_STATE_STEP_1)
         {
            §,^§.§0K§.clearLevel();
            this.initLevelLoad();
            §8!-§ = LOAD_STATE_STEP_2;
         }
         else if(§8!-§ == LOAD_STATE_STEP_2)
         {
            if(this.isReady())
            {
               this.onLevelLoadReady();
            }
         }
         if(mNextState.length > 0)
         {
            return §+Y§.STATE_STATUS_COMPLETED;
         }
         return §+Y§.STATE_STATUS_RUNNING;
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
      
      protected function §=K§(param1:§=R§) : void
      {
         §,^§.§#N§(param1);
      }
   }
}
