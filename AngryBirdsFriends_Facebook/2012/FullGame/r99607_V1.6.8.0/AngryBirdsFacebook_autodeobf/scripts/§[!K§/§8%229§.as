package §[!K§
{
   import §!!t§.§,-§;
   import §+I§.§9!%§;
   import §[!z§.§!"=§;
   import §[!z§.LevelManager;
   import §]!F§.§"!j§;
   import §]!F§.§1"-§;
   
   public class §8"9§ extends §,-§
   {
      
      public static const §"$§:Boolean = false;
      
      public static const §1!V§:int = 0;
      
      public static var §%P§:int = §1!V§;
      
      public static const LOAD_STATE_STEP_1:int = 1;
      
      public static const LOAD_STATE_STEP_2:int = 2;
      
      public static var §5",§:Number = -1;
       
      
      private var §<!%§:Number = 0;
      
      public function §8"9§(param1:Boolean, param2:String)
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         this.§?"4§();
      }
      
      protected function §?"4§() : void
      {
         this.§2"-§ = new §"!j§(this);
         §2"-§.init(§1"-§.§ !>§.Views.View_LevelLoad[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         §%P§ = LOAD_STATE_STEP_1;
         this.§5"<§();
      }
      
      protected function §5"<§() : void
      {
         if(LevelManager.§[!<§ != null && §2"-§)
         {
            §2"-§.setText("LOADING " + LevelManager.§[!<§.replace("-"," - "),"TextField_LevelLoading");
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §,-§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(§%P§ == LOAD_STATE_STEP_1)
         {
            §9!%§.§!!M§.clearLevel();
            this.initLevelLoad();
            §%P§ = LOAD_STATE_STEP_2;
         }
         else if(§%P§ == LOAD_STATE_STEP_2)
         {
            if(this.isReady())
            {
               this.onLevelLoadReady();
            }
            else if(this.hasError())
            {
               this.onLevelLoadError();
            }
         }
         if(mNextState.length > 0)
         {
            return §,-§.STATE_STATUS_COMPLETED;
         }
         return §,-§.STATE_STATUS_RUNNING;
      }
      
      protected function initLevelLoad() : void
      {
      }
      
      public function isReady() : Boolean
      {
         return false;
      }
      
      public function hasError() : Boolean
      {
         return false;
      }
      
      public function onLevelLoadReady() : void
      {
      }
      
      public function onLevelLoadError() : void
      {
      }
      
      protected function initLevelMain(param1:§!"=§) : void
      {
         §9!%§.§'!"§(param1);
      }
   }
}
