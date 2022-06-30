package §function§
{
   import §#Q§.§8#§;
   import §#Q§.§8Y§;
   import §&!6§.§5r§;
   import §8! §.§1_§;
   import §>!F§.§9!Z§;
   
   public class § S§ extends §1!@§
   {
      
      public static const §9I§:int = 0;
      
      public static var §>9§:int = §9I§;
      
      public static const LOAD_STATE_STEP_1:int = 1;
      
      public static const LOAD_STATE_STEP_2:int = 2;
      
      public static var §2!e§:Number = -1;
       
      
      private var §9!1§:Number = 0;
      
      public function § S§(param1:Boolean, param2:String)
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         this.§@K§ = new §8Y§(this);
         §@K§.init(§8#§.§6K§.Views.View_LevelLoad[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         §>9§ = LOAD_STATE_STEP_1;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §5r§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(§>9§ == LOAD_STATE_STEP_1)
         {
            §9!Z§.§5!$§.clearLevel();
            this.initLevelLoad();
            §>9§ = LOAD_STATE_STEP_2;
         }
         else if(§>9§ == LOAD_STATE_STEP_2)
         {
            if(this.isReady())
            {
               this.onLevelLoadReady();
            }
         }
         if(mNextState.length > 0)
         {
            return §5r§.STATE_STATUS_COMPLETED;
         }
         return §5r§.STATE_STATUS_RUNNING;
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
      
      protected function §>z§(param1:§1_§) : void
      {
         §9!Z§.§[6§(param1);
      }
   }
}
