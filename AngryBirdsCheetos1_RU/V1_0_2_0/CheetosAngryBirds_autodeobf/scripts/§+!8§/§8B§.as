package §+!8§
{
   import §"I§.§-x§;
   import §#b§.§85§;
   import §&8§.§8h§;
   import §&8§.§<O§;
   import §2!P§.§6=§;
   import §@!W§.§8!W§;
   
   public class §8B§ extends §-x§
   {
      
      public static const §%!5§:int = 0;
      
      public static var §^!L§:int = §%!5§;
      
      public static const LOAD_STATE_STEP_1:int = 1;
      
      public static const LOAD_STATE_STEP_2:int = 2;
      
      public static var §8!Q§:Number = -1;
       
      
      private var §=!!§:Number = 0;
      
      public function §8B§(param1:Boolean, param2:String)
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         this.§&X§ = new §<O§(this);
         §&X§.init(§8h§.§9!>§.Views.View_LevelLoad[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         if(§6=§.§4!8§)
         {
            §6=§.§4!8§.start();
         }
         §8!W§.§=X§.clearLevel();
         §^!L§ = LOAD_STATE_STEP_1;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §-x§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(§^!L§ == LOAD_STATE_STEP_1)
         {
            §8!W§.§=X§.clearLevel();
            this.initLevelLoad();
            §^!L§ = LOAD_STATE_STEP_2;
         }
         else if(§^!L§ == LOAD_STATE_STEP_2)
         {
            if(this.isReady())
            {
               this.onLevelLoadReady();
            }
         }
         if(mNextState.length > 0)
         {
            return §-x§.STATE_STATUS_COMPLETED;
         }
         return §-x§.STATE_STATUS_RUNNING;
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
      
      protected function §>!5§(param1:§85§) : void
      {
         §8!W§.§6F§(param1);
      }
   }
}
