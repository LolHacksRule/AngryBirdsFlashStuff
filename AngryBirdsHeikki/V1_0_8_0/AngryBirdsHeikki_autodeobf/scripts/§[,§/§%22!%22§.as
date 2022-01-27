package §[,§
{
   import §!a§.§&6§;
   import §#!+§.§"$§;
   import §#!+§.§?V§;
   import §#!T§.§&2§;
   import §0!&§.§!'§;
   
   public class §"!"§ extends §<!Y§
   {
      
      public static const §<! §:int = 0;
      
      public static var §,!a§:int = §<! §;
      
      public static const LOAD_STATE_STEP_1:int = 1;
      
      public static const LOAD_STATE_STEP_2:int = 2;
      
      public static var §!!4§:Number = -1;
       
      
      private var §[W§:Number = 0;
      
      public function §"!"§(param1:Boolean, param2:String)
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         this.§[L§ = new §"$§(this);
         §[L§.init(§?V§.§-2§.Views.View_LevelLoad[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         §,!a§ = LOAD_STATE_STEP_1;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §&6§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(§,!a§ == LOAD_STATE_STEP_1)
         {
            §&2§.§4!1§.clearLevel();
            this.initLevelLoad();
            §,!a§ = LOAD_STATE_STEP_2;
         }
         else if(§,!a§ == LOAD_STATE_STEP_2)
         {
            if(this.isReady())
            {
               this.onLevelLoadReady();
            }
         }
         if(mNextState.length > 0)
         {
            return §&6§.STATE_STATUS_COMPLETED;
         }
         return §&6§.STATE_STATUS_RUNNING;
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
      
      protected function §2!b§(param1:§!'§) : void
      {
         §&2§.§-!Q§(param1);
      }
   }
}
