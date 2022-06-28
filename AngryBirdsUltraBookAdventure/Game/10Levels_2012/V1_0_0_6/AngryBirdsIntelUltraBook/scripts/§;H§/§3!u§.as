package §;H§
{
   import §+0§.§,!E§;
   import §3!G§.§ y§;
   import §3!G§.LevelManager;
   import §>! §.§^!c§;
   import §[!+§.§ !I§;
   import §[!+§.§4`§;
   
   public class §3!u§ extends §,!E§
   {
      
      public static const §1!#§:Boolean = false;
      
      public static const §5!@§:int = 0;
      
      public static var §"!?§:int = §5!@§;
      
      public static const LOAD_STATE_STEP_1:int = 1;
      
      public static const LOAD_STATE_STEP_2:int = 2;
      
      public static var §^!%§:Number = -1;
       
      
      private var §7! §:Number = 0;
      
      public function §3!u§(param1:Boolean, param2:String)
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         this.§-w§();
      }
      
      protected function §-w§() : void
      {
         this.§&!m§ = new §4`§(this);
         §&!m§.init(§ !I§.§3!a§.Views.View_LevelLoad[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         §"!?§ = LOAD_STATE_STEP_1;
         this.§'!,§();
      }
      
      protected function §'!,§() : void
      {
         if(LevelManager.§%n§ != null)
         {
            §&!m§.setText("LOADING " + LevelManager.§%n§.replace("-"," - "),"TextField_LevelLoading");
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §,!E§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(§"!?§ == LOAD_STATE_STEP_1)
         {
            §^!c§.§5!Y§.clearLevel();
            this.initLevelLoad();
            §"!?§ = LOAD_STATE_STEP_2;
         }
         else if(§"!?§ == LOAD_STATE_STEP_2)
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
            return §,!E§.STATE_STATUS_COMPLETED;
         }
         return §,!E§.STATE_STATUS_RUNNING;
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
      
      protected function initLevelMain(param1:§ y§) : void
      {
         §^!c§.§@3§(param1);
      }
   }
}
