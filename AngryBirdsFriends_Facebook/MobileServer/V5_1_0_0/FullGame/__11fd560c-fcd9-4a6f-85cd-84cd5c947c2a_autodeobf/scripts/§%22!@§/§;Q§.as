package §"!@§
{
   import § %§.§0"8§;
   import § %§.§1Q§;
   import §5P§.§""C§;
   import §;#D§.§3#U§;
   import §;$3§.§8=§;
   import §;$3§.§>f§;
   
   public class §;Q§ extends §@"S§
   {
      
      public static const §5!Y§:Boolean = false;
      
      public static const §6!"§:int = 0;
      
      protected static var §^#,§:int = §6!"§;
      
      public static const LOAD_STATE_STEP_1:int = 1;
      
      public static const LOAD_STATE_STEP_2:int = 2;
      
      public static var §2-§:Number = -1;
       
      
      private var §@$5§:Number = 0;
      
      public function §;Q§(param1:§8=§, param2:§""C§, param3:Boolean, param4:String)
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         this.§8!q§();
      }
      
      protected function §8!q§() : void
      {
         this.§`!H§ = new §0"8§(this);
         §`!H§.init(§1Q§.§5T§.Views.View_LevelLoad[0]);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §^#,§ = LOAD_STATE_STEP_1;
         this.§2"V§();
      }
      
      protected function §2"V§() : void
      {
         if(mLevelManager.currentLevel != null)
         {
            §`!H§.setText("LOADING " + mLevelManager.currentLevel.replace("-"," - "),"TextField_LevelLoading");
         }
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         if(§^#,§ == LOAD_STATE_STEP_1)
         {
            §3#U§.§#$4§.clearLevel();
            this.initLevelLoad();
            §^#,§ = LOAD_STATE_STEP_2;
         }
         else if(§^#,§ == LOAD_STATE_STEP_2)
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
      
      protected function initLevelMain(param1:§>f§) : void
      {
         §3#U§.loadLevel(param1);
      }
   }
}
