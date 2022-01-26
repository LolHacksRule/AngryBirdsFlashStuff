package §<!U§
{
   import §!J§.§[&§;
   import §#K§.§?I§;
   import §-M§.§+?§;
   import §-M§.§3!6§;
   import §4!H§.§[4§;
   import §7W§.§ !+§;
   
   public class §&v§ extends §[4§
   {
      
      public static const §%!U§:int = 0;
      
      public static var §@4§:int = §%!U§;
      
      public static const LOAD_STATE_STEP_1:int = 1;
      
      public static const LOAD_STATE_STEP_2:int = 2;
      
      public static var §51§:Number = -1;
       
      
      private var §7K§:Number = 0;
      
      public function §&v§(param1:Boolean, param2:String)
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         this.§"c§ = new §3!6§(this);
         §"c§.init(§+?§.§@]§.Views.View_LevelLoad[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         if(§ !+§.§ Z§)
         {
            § !+§.§ Z§.start();
         }
         §[&§.§&!'§.clearLevel();
         §@4§ = LOAD_STATE_STEP_1;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §[4§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(§@4§ == LOAD_STATE_STEP_1)
         {
            §[&§.§&!'§.clearLevel();
            this.initLevelLoad();
            §@4§ = LOAD_STATE_STEP_2;
         }
         else if(§@4§ == LOAD_STATE_STEP_2)
         {
            if(this.isReady())
            {
               this.onLevelLoadReady();
            }
         }
         if(mNextState.length > 0)
         {
            return §[4§.STATE_STATUS_COMPLETED;
         }
         return §[4§.STATE_STATUS_RUNNING;
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
      
      protected function §9!I§(param1:§?I§) : void
      {
         §[&§.§,s§(param1);
      }
   }
}
