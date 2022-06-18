package §94§
{
   import §&$!§.§+#!§;
   import §6"r§.§!#A§;
   import §8#D§.§#E§;
   import §8#D§.§=>§;
   import §@#§.§]#B§;
   import §@#§.§^#Q§;
   
   public class §?"D§ extends §`"z§
   {
      
      public static const §?"_§:Boolean = false;
      
      public static const §-]§:int = 0;
      
      protected static var §6$7§:int = §-]§;
      
      public static const LOAD_STATE_STEP_1:int = 1;
      
      public static const LOAD_STATE_STEP_2:int = 2;
      
      public static var §>"w§:Number = -1;
       
      
      private var §9^§:Number = 0;
      
      public function §?"D§(param1:§^#Q§, param2:§+#!§, param3:Boolean, param4:String)
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
         this.§?Q§ = new §#E§(this);
         §?Q§.init(§=>§.§%" §.Views.View_LevelLoad[0]);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §6$7§ = LOAD_STATE_STEP_1;
         this.§`#D§();
      }
      
      protected function §`#D§() : void
      {
         if(mLevelManager.currentLevel != null)
         {
            §?Q§.setText("LOADING " + mLevelManager.currentLevel.replace("-"," - "),"TextField_LevelLoading");
         }
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         if(§6$7§ == LOAD_STATE_STEP_1)
         {
            §!#A§.§#F§.clearLevel();
            this.initLevelLoad();
            §6$7§ = LOAD_STATE_STEP_2;
         }
         else if(§6$7§ == LOAD_STATE_STEP_2)
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
      
      protected function initLevelMain(param1:§]#B§) : void
      {
         §!#A§.loadLevel(param1);
      }
   }
}
