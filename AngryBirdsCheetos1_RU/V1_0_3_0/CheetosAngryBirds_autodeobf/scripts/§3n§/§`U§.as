package §3n§
{
   import §+!^§.§'Y§;
   import §1Y§.§+$§;
   import §8v§.§#Z§;
   import §8v§.include;
   import §>N§.§"u§;
   import §^9§.§3A§;
   
   public class §`U§ extends §+$§
   {
      
      public static const §[!?§:int = 0;
      
      public static var §]!A§:int = §[!?§;
      
      public static const LOAD_STATE_STEP_1:int = 1;
      
      public static const LOAD_STATE_STEP_2:int = 2;
      
      public static var §#]§:Number = -1;
       
      
      private var §36§:Number = 0;
      
      public function §`U§(param1:Boolean, param2:String)
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         this.§2!J§ = new §#Z§(this);
         §2!J§.init(include.§%!I§.Views.View_LevelLoad[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         if(§"u§.§-2§)
         {
            §"u§.§-2§.start();
         }
         §'Y§.§@j§.clearLevel();
         §]!A§ = LOAD_STATE_STEP_1;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §+$§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(§]!A§ == LOAD_STATE_STEP_1)
         {
            §'Y§.§@j§.clearLevel();
            this.initLevelLoad();
            §]!A§ = LOAD_STATE_STEP_2;
         }
         else if(§]!A§ == LOAD_STATE_STEP_2)
         {
            if(this.isReady())
            {
               this.onLevelLoadReady();
            }
         }
         if(mNextState.length > 0)
         {
            return §+$§.STATE_STATUS_COMPLETED;
         }
         return §+$§.STATE_STATUS_RUNNING;
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
      
      protected function §,&§(param1:§3A§) : void
      {
         §'Y§.§"!Y§(param1);
      }
   }
}
