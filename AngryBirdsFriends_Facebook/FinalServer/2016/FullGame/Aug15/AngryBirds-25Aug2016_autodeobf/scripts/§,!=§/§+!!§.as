package §,!=§
{
   import §#v§.§#!?§;
   import §#v§.§-"R§;
   import §'U§.§]#[§;
   import §<!O§.§'k§;
   import §<!O§.§@#`§;
   import §?§.§>"$§;
   
   public class §+!!§ extends §7"S§
   {
      
      public static const §]$'§:Boolean = false;
      
      public static const §<"Z§:int = 0;
      
      protected static var § @§:int = §<"Z§;
      
      public static const LOAD_STATE_STEP_1:int = 1;
      
      public static const LOAD_STATE_STEP_2:int = 2;
      
      public static var §&!g§:Number = -1;
       
      
      private var §;$3§:Number = 0;
      
      public function §+!!§(param1:§#!?§, param2:§]#[§, param3:Boolean, param4:String)
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         this.initLoadingView();
      }
      
      protected function initLoadingView() : void
      {
         this.§!$§ = new §'k§(this);
         §!$§.init(§@#`§.§#!c§.Views.View_LevelLoad[0]);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         § @§ = LOAD_STATE_STEP_1;
         this.§+"N§();
      }
      
      protected function §+"N§() : void
      {
         if(mLevelManager.currentLevel != null)
         {
            §!$§.setText("LOADING " + mLevelManager.currentLevel.replace("-"," - "),"TextField_LevelLoading");
         }
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         if(§ @§ == LOAD_STATE_STEP_1)
         {
            §>"$§.§3#'§.clearLevel();
            this.initLevelLoad();
            § @§ = LOAD_STATE_STEP_2;
         }
         else if(§ @§ == LOAD_STATE_STEP_2)
         {
            if(this.isLoadingReady())
            {
               this.onLevelLoadReady();
            }
            else if(this.hasError())
            {
               this.onLevelLoadError();
            }
         }
      }
      
      protected function initLevelLoad() : void
      {
      }
      
      public function isLoadingReady() : Boolean
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
      
      protected function initLevelMain(param1:§-"R§) : void
      {
         §>"$§.loadLevel(param1);
      }
   }
}
