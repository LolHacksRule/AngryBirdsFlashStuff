package §=!0§
{
   import §6!L§.§#!M§;
   import §6!L§.§&u§;
   import §=z§.§0!E§;
   import §>!7§.§"Q§;
   import §>!7§.§`d§;
   import §^w§.§-!,§;
   
   public class §8!8§ extends §-!,§
   {
      
      public static const §2!&§:Boolean = false;
      
      public static const §]!7§:int = 0;
      
      public static var §#3§:int = §]!7§;
      
      public static const LOAD_STATE_STEP_1:int = 1;
      
      public static const LOAD_STATE_STEP_2:int = 2;
      
      public static var §!!N§:Number = -1;
       
      
      private var §0L§:Number = 0;
      
      public function §8!8§(param1:Boolean, param2:String)
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         this.initLoadingView();
      }
      
      protected function initLoadingView() : void
      {
         this.§;I§ = new §"Q§(this);
         §;I§.init(§`d§.§8?§.Views.View_LevelLoad[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         §#3§ = LOAD_STATE_STEP_1;
         this.setLoadingText();
      }
      
      protected function setLoadingText() : void
      {
         if(§&u§.§ !+§ != null)
         {
            §;I§.setText("LOADING " + §&u§.§ !+§.replace("-"," - "),"TextField_LevelLoading");
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §-!,§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(§#3§ == LOAD_STATE_STEP_1)
         {
            §0!E§.§9!B§.clearLevel();
            this.initLevelLoad();
            §#3§ = LOAD_STATE_STEP_2;
         }
         else if(§#3§ == LOAD_STATE_STEP_2)
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
            return §-!,§.STATE_STATUS_COMPLETED;
         }
         return §-!,§.STATE_STATUS_RUNNING;
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
      
      protected function initLevelMain(param1:§#!M§) : void
      {
         §0!E§.§8v§(param1);
      }
   }
}
