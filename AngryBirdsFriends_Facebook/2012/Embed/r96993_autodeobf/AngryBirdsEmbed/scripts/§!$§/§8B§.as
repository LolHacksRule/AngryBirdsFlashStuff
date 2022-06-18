package §!$§
{
   import §-!C§.§#!G§;
   import §-!C§.§3!H§;
   import §>%§.§]3§;
   import §[A§.§3!'§;
   import §^s§.§&"§;
   import §^s§.§?O§;
   
   public class §8B§ extends §3!'§
   {
      
      public static const §@!#§:Boolean = false;
      
      public static const §@!1§:int = 0;
      
      public static var §3!F§:int = §@!1§;
      
      public static const LOAD_STATE_STEP_1:int = 1;
      
      public static const LOAD_STATE_STEP_2:int = 2;
      
      public static var §var§:Number = -1;
       
      
      private var §`!3§:Number = 0;
      
      public function §8B§(param1:Boolean, param2:String)
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
         this.§+!2§ = new §&"§(this);
         §+!2§.init(§?O§.§@!<§.Views.View_LevelLoad[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         §3!F§ = LOAD_STATE_STEP_1;
         this.setLoadingText();
      }
      
      protected function setLoadingText() : void
      {
         if(§#!G§.§9C§ != null)
         {
            §+!2§.setText("LOADING " + §#!G§.§9C§.replace("-"," - "),"TextField_LevelLoading");
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §3!'§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(§3!F§ == LOAD_STATE_STEP_1)
         {
            §]3§.§;v§.clearLevel();
            this.initLevelLoad();
            §3!F§ = LOAD_STATE_STEP_2;
         }
         else if(§3!F§ == LOAD_STATE_STEP_2)
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
            return §3!'§.STATE_STATUS_COMPLETED;
         }
         return §3!'§.STATE_STATUS_RUNNING;
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
      
      protected function initLevelMain(param1:§3!H§) : void
      {
         §]3§.§=I§(param1);
      }
   }
}
