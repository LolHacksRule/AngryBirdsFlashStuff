package §2";§
{
   import § !j§.§4#c§;
   import §%!-§.§5!z§;
   import §%!-§.§?l§;
   import §,"v§.§7!J§;
   import §,"v§.§;"n§;
   import §`#@§.§7n§;
   
   public class §5"$§ extends §7!z§
   {
      
      public static const § Y§:Boolean = false;
      
      public static const §1!&§:int = 0;
      
      protected static var §7"+§:int = §1!&§;
      
      public static const LOAD_STATE_STEP_1:int = 1;
      
      public static const LOAD_STATE_STEP_2:int = 2;
      
      public static var §7#B§:Number = -1;
       
      
      private var §&"r§:Number = 0;
      
      public function §5"$§(param1:§;"n§, param2:§4#c§, param3:Boolean, param4:String)
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         this.§%"Y§();
      }
      
      protected function §%"Y§() : void
      {
         this.§[$5§ = new §5!z§(this);
         §[$5§.init(§?l§.§3m§.Views.View_LevelLoad[0]);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §7"+§ = LOAD_STATE_STEP_1;
         this.§!!§();
      }
      
      protected function §!!§() : void
      {
         if(mLevelManager.currentLevel != null)
         {
            §[$5§.setText("LOADING " + mLevelManager.currentLevel.replace("-"," - "),"TextField_LevelLoading");
         }
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         if(§7"+§ == LOAD_STATE_STEP_1)
         {
            §7n§.§6#K§.clearLevel();
            this.initLevelLoad();
            §7"+§ = LOAD_STATE_STEP_2;
         }
         else if(§7"+§ == LOAD_STATE_STEP_2)
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
      
      protected function initLevelMain(param1:§7!J§) : void
      {
         §7n§.loadLevel(param1);
      }
   }
}
