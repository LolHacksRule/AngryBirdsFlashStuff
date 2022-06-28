package §;m§
{
   import §+!?§.§"h§;
   import §0w§.§0#§;
   import §0w§.§06§;
   import §6H§.§>3§;
   import §=!B§.§59§;
   import §=!B§.§^!9§;
   
   public class §4#§ extends §>3§
   {
      
      public static const §&y§:Boolean = false;
      
      public static const §8Q§:int = 0;
      
      public static var §4P§:int = §8Q§;
      
      public static const LOAD_STATE_STEP_1:int = 1;
      
      public static const LOAD_STATE_STEP_2:int = 2;
      
      public static var §5_§:Number = -1;
       
      
      private var §8!H§:Number = 0;
      
      public function §4#§(param1:Boolean, param2:String)
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
         this.§-f§ = new §0#§(this);
         §-f§.init(§06§.§-`§.Views.View_LevelLoad[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         §4P§ = LOAD_STATE_STEP_1;
         this.setLoadingText();
      }
      
      protected function setLoadingText() : void
      {
         if(§59§.§%j§ != null)
         {
            §-f§.setText("LOADING " + §59§.§%j§.replace("-"," - "),"TextField_LevelLoading");
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §>3§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(§4P§ == LOAD_STATE_STEP_1)
         {
            §"h§.§1C§.clearLevel();
            this.initLevelLoad();
            §4P§ = LOAD_STATE_STEP_2;
         }
         else if(§4P§ == LOAD_STATE_STEP_2)
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
            return §>3§.STATE_STATUS_COMPLETED;
         }
         return §>3§.STATE_STATUS_RUNNING;
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
      
      protected function initLevelMain(param1:§^!9§) : void
      {
         §"h§.§6!9§(param1);
      }
   }
}
