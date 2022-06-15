package §7"@§
{
   import §#!e§.§1"B§;
   import §#!e§.LevelManager;
   import §#^§.§ "A§;
   import §#^§.§7!A§;
   import §0!G§.§1-§;
   import §]!A§.;
   
   public class §@T§ extends §1-§
   {
      
      public static const §`!c§:Boolean = false;
      
      public static const §6n§:int = 0;
      
      public static var §;;§:int = §6n§;
      
      public static const LOAD_STATE_STEP_1:int = 1;
      
      public static const LOAD_STATE_STEP_2:int = 2;
      
      public static var §]N§:Number = -1;
       
      
      private var §!"1§:Number = 0;
      
      public function §@T§(param1:Boolean, param2:String)
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         this.§;!T§();
      }
      
      protected function §;!T§() : void
      {
         this.§6w§ = new §7!A§(this);
         §6w§.init(§ "A§.§4[§.Views.View_LevelLoad[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         §;;§ = LOAD_STATE_STEP_1;
         this.§?I§();
      }
      
      protected function §?I§() : void
      {
         if(LevelManager.§'!O§ != null && §6w§)
         {
            §6w§.setText("LOADING " + LevelManager.§'!O§.replace("-"," - "),"TextField_LevelLoading");
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §1-§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(§;;§ == LOAD_STATE_STEP_1)
         {
            §#6§.§6!z§.clearLevel();
            this.initLevelLoad();
            §;;§ = LOAD_STATE_STEP_2;
         }
         else if(§;;§ == LOAD_STATE_STEP_2)
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
            return §1-§.STATE_STATUS_COMPLETED;
         }
         return §1-§.STATE_STATUS_RUNNING;
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
      
      protected function initLevelMain(param1:§1"B§) : void
      {
         §#6§.§-!4§(param1);
      }
   }
}
