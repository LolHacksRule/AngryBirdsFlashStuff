package §^1§
{
   import § #_§.§?!>§;
   import §+!n§.§+!p§;
   import §?o§.§ ^§;
   import §?o§.§4#?§;
   import §[#A§.§&n§;
   import §[#A§.§+#<§;
   
   public class §@#f§ extends §';§
   {
      
      public static const §#O§:Boolean = false;
      
      public static const §3"i§:int = 0;
      
      protected static var §[j§:int = §3"i§;
      
      public static const LOAD_STATE_STEP_1:int = 1;
      
      public static const LOAD_STATE_STEP_2:int = 2;
      
      public static var §1#c§:Number = -1;
       
      
      private var §>$C§:Number = 0;
      
      public function §@#f§(param1:§4#?§, param2:§?!>§, param3:Boolean, param4:String)
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         this.§]F§();
      }
      
      protected function §]F§() : void
      {
         this.§@!D§ = new §+#<§(this);
         §@!D§.init(§&n§.§7a§.Views.View_LevelLoad[0]);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §[j§ = LOAD_STATE_STEP_1;
         this.§`#N§();
      }
      
      protected function §`#N§() : void
      {
         if(mLevelManager.currentLevel != null)
         {
            §@!D§.setText("LOADING " + mLevelManager.currentLevel.replace("-"," - "),"TextField_LevelLoading");
         }
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         if(§[j§ == LOAD_STATE_STEP_1)
         {
            §+!p§.§`?§.clearLevel();
            this.initLevelLoad();
            §[j§ = LOAD_STATE_STEP_2;
         }
         else if(§[j§ == LOAD_STATE_STEP_2)
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
      
      protected function initLevelMain(param1:§ ^§) : void
      {
         §+!p§.loadLevel(param1);
      }
   }
}
