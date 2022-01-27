package §>Y§
{
   import §"^§.§9=§;
   import §3!%§.§#!K§;
   import §3!%§.§-k§;
   import §5!<§.§@]§;
   import §5!<§.§^!$§;
   import §?!=§.§<!>§;
   
   public class §^!@§ extends §<!>§
   {
      
      public static const §4!J§:Boolean = false;
      
      public static const §"B§:int = 0;
      
      public static var § r§:int = §"B§;
      
      public static const LOAD_STATE_STEP_1:int = 1;
      
      public static const LOAD_STATE_STEP_2:int = 2;
      
      public static var § !#§:Number = -1;
       
      
      private var §+!B§:Number = 0;
      
      public function §^!@§(param1:Boolean, param2:String)
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
         this.§3g§ = new §@]§(this);
         §3g§.init(§^!$§.§"!9§.Views.View_LevelLoad[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         § r§ = LOAD_STATE_STEP_1;
         this.setLoadingText();
      }
      
      protected function setLoadingText() : void
      {
         if(§-k§.§%D§ != null)
         {
            §3g§.setText("LOADING " + §-k§.§%D§.replace("-"," - "),"TextField_LevelLoading");
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §<!>§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(§ r§ == LOAD_STATE_STEP_1)
         {
            §9=§.§<!@§.clearLevel();
            this.initLevelLoad();
            § r§ = LOAD_STATE_STEP_2;
         }
         else if(§ r§ == LOAD_STATE_STEP_2)
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
            return §<!>§.STATE_STATUS_COMPLETED;
         }
         return §<!>§.STATE_STATUS_RUNNING;
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
      
      protected function initLevelMain(param1:§#!K§) : void
      {
         §9=§.§+p§(param1);
      }
   }
}
