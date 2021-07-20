package § !@§
{
   import §-!D§.§4!,§;
   import §-!D§.§5A§;
   import §1!-§.§@Z§;
   import §1!-§.§[4§;
   import §5!L§.§=w§;
   import §7g§.§1Q§;
   
   public class §<v§ extends §1Q§
   {
      
      public static const §@!=§:Boolean = false;
      
      public static const §`!2§:int = 0;
      
      public static var §+?§:int = §`!2§;
      
      public static const LOAD_STATE_STEP_1:int = 1;
      
      public static const LOAD_STATE_STEP_2:int = 2;
      
      public static var §0J§:Number = -1;
       
      
      private var §6§:Number = 0;
      
      public function §<v§(param1:Boolean, param2:String)
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
         this.§]F§ = new §4!,§(this);
         §]F§.init(§5A§.§;L§.Views.View_LevelLoad[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         §+?§ = LOAD_STATE_STEP_1;
         this.setLoadingText();
      }
      
      protected function setLoadingText() : void
      {
         if(§[4§.§"!>§ != null && §]F§)
         {
            §]F§.setText("LOADING " + §[4§.§"!>§.replace("-"," - "),"TextField_LevelLoading");
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §1Q§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(§+?§ == LOAD_STATE_STEP_1)
         {
            §=w§.§ o§.clearLevel();
            this.initLevelLoad();
            §+?§ = LOAD_STATE_STEP_2;
         }
         else if(§+?§ == LOAD_STATE_STEP_2)
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
            return §1Q§.STATE_STATUS_COMPLETED;
         }
         return §1Q§.STATE_STATUS_RUNNING;
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
      
      protected function initLevelMain(param1:§@Z§) : void
      {
         §=w§.§]a§(param1);
      }
   }
}
