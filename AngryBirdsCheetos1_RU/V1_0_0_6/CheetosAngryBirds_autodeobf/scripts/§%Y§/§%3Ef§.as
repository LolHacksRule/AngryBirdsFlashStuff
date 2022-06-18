package §%Y§
{
   import §-!§.§-§;
   import §0H§.§0!&§;
   import §1!§.§@!Q§;
   import §;!K§.§+!4§;
   import §;!K§.§9T§;
   import §]m§.§-D§;
   
   public class §>f§ extends §-D§
   {
      
      public static const §>'§:int = 0;
      
      public static var §>o§:int = §>'§;
      
      public static const LOAD_STATE_STEP_1:int = 1;
      
      public static const LOAD_STATE_STEP_2:int = 2;
      
      public static var §%!Y§:Number = -1;
       
      
      private var §^!;§:Number = 0;
      
      public function §>f§(param1:Boolean, param2:String)
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         this.§>#§ = new §+!4§(this);
         §>#§.init(§9T§.§>!`§.Views.View_LevelLoad[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         if(§-§.§-G§)
         {
            §-§.§-G§.start();
         }
         §@!Q§.§7l§.clearLevel();
         §>o§ = LOAD_STATE_STEP_1;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §-D§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(§>o§ == LOAD_STATE_STEP_1)
         {
            §@!Q§.§7l§.clearLevel();
            this.initLevelLoad();
            §>o§ = LOAD_STATE_STEP_2;
         }
         else if(§>o§ == LOAD_STATE_STEP_2)
         {
            if(this.isReady())
            {
               this.onLevelLoadReady();
            }
         }
         if(mNextState.length > 0)
         {
            return §-D§.STATE_STATUS_COMPLETED;
         }
         return §-D§.STATE_STATUS_RUNNING;
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
      
      protected function § <§(param1:§0!&§) : void
      {
         §@!Q§.§"1§(param1);
      }
   }
}
