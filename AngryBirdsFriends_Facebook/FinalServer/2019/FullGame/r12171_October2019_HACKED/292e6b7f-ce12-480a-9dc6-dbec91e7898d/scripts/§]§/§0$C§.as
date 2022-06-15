package §]§
{
   import §";§.§%"X§;
   import §";§.§false§;
   import §+`§.§%"q§;
   import §7#$§.§?# §;
   import §7#$§.§]#q§;
   import §?#z§.§]$?§;
   
   public class §0$C§ extends §1$?§
   {
      
      public static const §3#Z§:Boolean = false;
      
      public static const §<#=§:int = 0;
      
      protected static var §[#<§:int = §<#=§;
      
      public static const LOAD_STATE_STEP_1:int = 1;
      
      public static const LOAD_STATE_STEP_2:int = 2;
      
      public static var §7#4§:Number = -1;
       
      
      private var §]#E§:Number = 0;
      
      public function §0$C§(param1:§]#q§, param2:§%"q§, param3:Boolean, param4:String)
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         this.§0#H§();
      }
      
      protected function §0#H§() : void
      {
         this.§;!w§ = new §%"X§(this);
         §;!w§.init(§false§.§4#;§.Views.View_LevelLoad[0]);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §[#<§ = LOAD_STATE_STEP_1;
         this.§7$+§();
      }
      
      protected function §7$+§() : void
      {
         if(mLevelManager.currentLevel != null)
         {
            §;!w§.setText("LOADING " + mLevelManager.currentLevel.replace("-"," - "),"TextField_LevelLoading");
         }
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         if(§[#<§ == LOAD_STATE_STEP_1)
         {
            §]$?§.§2#§.clearLevel();
            this.initLevelLoad();
            §[#<§ = LOAD_STATE_STEP_2;
         }
         else if(§[#<§ == LOAD_STATE_STEP_2)
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
      
      protected function initLevelMain(param1:§?# §) : void
      {
         §]$?§.loadLevel(param1);
      }
   }
}
