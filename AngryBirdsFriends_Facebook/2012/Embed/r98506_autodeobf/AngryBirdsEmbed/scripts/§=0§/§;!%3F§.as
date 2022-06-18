package §=0§
{
   import §1G§.§`U§;
   import §8!G§.§-Z§;
   import §8!G§.§1w§;
   import §[R§.§3!@§;
   import §[R§.§5h§;
   import §`t§.§^?§;
   
   public class §;!?§ extends §`U§
   {
      
      public static const §@!A§:Boolean = false;
      
      public static const §"!D§:int = 0;
      
      public static var §18§:int = §"!D§;
      
      public static const LOAD_STATE_STEP_1:int = 1;
      
      public static const LOAD_STATE_STEP_2:int = 2;
      
      public static var §^L§:Number = -1;
       
      
      private var § q§:Number = 0;
      
      public function §;!?§(param1:Boolean, param2:String)
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
         this.§4G§ = new §5h§(this);
         §4G§.init(§3!@§.§`Z§.Views.View_LevelLoad[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         §18§ = LOAD_STATE_STEP_1;
         this.setLoadingText();
      }
      
      protected function setLoadingText() : void
      {
         if(§-Z§.§%s§ != null)
         {
            §4G§.setText("LOADING " + §-Z§.§%s§.replace("-"," - "),"TextField_LevelLoading");
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §`U§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(§18§ == LOAD_STATE_STEP_1)
         {
            §^?§.§]!%§.clearLevel();
            this.initLevelLoad();
            §18§ = LOAD_STATE_STEP_2;
         }
         else if(§18§ == LOAD_STATE_STEP_2)
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
            return §`U§.STATE_STATUS_COMPLETED;
         }
         return §`U§.STATE_STATUS_RUNNING;
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
      
      protected function initLevelMain(param1:§1w§) : void
      {
         §^?§.§;k§(param1);
      }
   }
}
