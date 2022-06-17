package §3=§
{
   import §"$=§.§'![§;
   import §"$=§.§=$&§;
   import §%#v§.§0"j§;
   import §%#v§.§?!F§;
   import §3"G§.§16§;
   import §=!2§.§%"T§;
   
   public class §]#A§ extends §-"4§
   {
      
      public static const §1!!§:Boolean = false;
      
      public static const §2#k§:int = 0;
      
      protected static var §#"2§:int = §2#k§;
      
      public static const LOAD_STATE_STEP_1:int = 1;
      
      public static const LOAD_STATE_STEP_2:int = 2;
      
      public static var §=e§:Number = -1;
       
      
      private var §;"^§:Number = 0;
      
      public function §]#A§(param1:§'![§, param2:§16§, param3:Boolean, param4:String)
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         this.§2"F§();
      }
      
      protected function §2"F§() : void
      {
         this.§<"`§ = new §?!F§(this);
         §<"`§.init(§0"j§.§-i§.Views.View_LevelLoad[0]);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §#"2§ = LOAD_STATE_STEP_1;
         this.§;$9§();
      }
      
      protected function §;$9§() : void
      {
         if(mLevelManager.currentLevel != null)
         {
            §<"`§.setText("LOADING " + mLevelManager.currentLevel.replace("-"," - "),"TextField_LevelLoading");
         }
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         if(§#"2§ == LOAD_STATE_STEP_1)
         {
            §%"T§.§;`§.clearLevel();
            this.initLevelLoad();
            §#"2§ = LOAD_STATE_STEP_2;
         }
         else if(§#"2§ == LOAD_STATE_STEP_2)
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
      
      protected function initLevelMain(param1:§=$&§) : void
      {
         §%"T§.loadLevel(param1);
      }
   }
}
