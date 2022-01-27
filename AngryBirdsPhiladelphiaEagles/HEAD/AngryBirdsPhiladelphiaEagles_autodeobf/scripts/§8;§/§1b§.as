package §8;§
{
   import §%!;§.§!L§;
   import §2S§.§,!;§;
   import §2S§.§<!K§;
   import §<!F§.§5!+§;
   import §?!;§.§6H§;
   import §?!;§.§;!,§;
   
   public class §1b§ extends §!L§
   {
      
      public static const §#M§:Boolean = false;
      
      public static const § !+§:int = 0;
      
      public static var §#!>§:int = § !+§;
      
      public static const LOAD_STATE_STEP_1:int = 1;
      
      public static const LOAD_STATE_STEP_2:int = 2;
      
      public static var §8!2§:Number = -1;
       
      
      private var §;!3§:Number = 0;
      
      public function §1b§(param1:Boolean, param2:String)
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
         this.§>2§ = new §<!K§(this);
         §>2§.init(§,!;§.§2o§.Views.View_LevelLoad[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         §#!>§ = LOAD_STATE_STEP_1;
         this.setLoadingText();
      }
      
      protected function setLoadingText() : void
      {
         if(§6H§.§"Q§ != null)
         {
            §>2§.setText("LOADING " + §6H§.§"Q§.replace("-"," - "),"TextField_LevelLoading");
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §!L§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(§#!>§ == LOAD_STATE_STEP_1)
         {
            §5!+§.§6!§.clearLevel();
            this.initLevelLoad();
            §#!>§ = LOAD_STATE_STEP_2;
         }
         else if(§#!>§ == LOAD_STATE_STEP_2)
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
            return §!L§.STATE_STATUS_COMPLETED;
         }
         return §!L§.STATE_STATUS_RUNNING;
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
      
      protected function initLevelMain(param1:§;!,§) : void
      {
         §5!+§.§#L§(param1);
      }
   }
}
