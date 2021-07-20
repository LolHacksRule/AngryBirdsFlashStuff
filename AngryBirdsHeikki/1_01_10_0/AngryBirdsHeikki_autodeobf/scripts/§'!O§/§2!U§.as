package §'!O§
{
   import §-!"§.§=p§;
   import §9b§.§"!S§;
   import §<u§.§;A§;
   import §<u§.§]!Q§;
   import §^!5§.§&!E§;
   
   public class §2!U§ extends §=j§
   {
      
      public static const §4f§:int = 0;
      
      public static var §9q§:int = §4f§;
      
      public static const LOAD_STATE_STEP_1:int = 1;
      
      public static const LOAD_STATE_STEP_2:int = 2;
      
      public static var §3!6§:Number = -1;
       
      
      private var §8R§:Number = 0;
      
      public function §2!U§(param1:Boolean, param2:String)
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         this.§]!9§ = new §]!Q§(this);
         §]!9§.init(§;A§.§=I§.Views.View_LevelLoad[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         §9q§ = LOAD_STATE_STEP_1;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §=p§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(§9q§ == LOAD_STATE_STEP_1)
         {
            §"!S§.§-!7§.clearLevel();
            this.initLevelLoad();
            §9q§ = LOAD_STATE_STEP_2;
         }
         else if(§9q§ == LOAD_STATE_STEP_2)
         {
            if(this.isReady())
            {
               this.onLevelLoadReady();
            }
         }
         if(mNextState.length > 0)
         {
            return §=p§.STATE_STATUS_COMPLETED;
         }
         return §=p§.STATE_STATUS_RUNNING;
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
      
      protected function §8!@§(param1:§&!E§) : void
      {
         §"!S§.§&O§(param1);
      }
   }
}
