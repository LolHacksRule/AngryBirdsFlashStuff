package §;!§
{
   import §7!§.§#"0§;
   import §7!§.§2W§;
   import §8!K§.§5!0§;
   import §8!K§.§5!Y§;
   import §;0§.§6h§;
   import com.angrybirds.§&!"§;
   
   public class §?!A§ extends §;" §
   {
      
      public static const §=!§:Boolean = false;
      
      public static const §"c§:int = 0;
      
      protected static var §0@§:int = §"c§;
      
      public static const LOAD_STATE_STEP_1:int = 1;
      
      public static const LOAD_STATE_STEP_2:int = 2;
      
      public static var §0!"§:Number = -1;
       
      
      private var §@!0§:Number = 0;
      
      public function §?!A§(param1:§5!Y§, param2:§6h§, param3:Boolean, param4:String)
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         this.§8!k§();
      }
      
      protected function §8!k§() : void
      {
         this.§?P§ = new §2W§(this);
         §?P§.init(§#"0§.§+#§.Views.View_LevelLoad[0]);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §0@§ = LOAD_STATE_STEP_1;
         this.setLoadingText();
      }
      
      protected function setLoadingText() : void
      {
         if(§&" §.currentLevel != null)
         {
            §?P§.setText("LOADING " + §&" §.currentLevel.replace("-"," - "),"TextField_LevelLoading");
         }
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         if(§0@§ == LOAD_STATE_STEP_1)
         {
            §&!"§.§1!D§.clearLevel();
            this.initLevelLoad();
            §0@§ = LOAD_STATE_STEP_2;
         }
         else if(§0@§ == LOAD_STATE_STEP_2)
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
      
      protected function §5i§(param1:§5!0§) : void
      {
         §&!"§.loadLevel(param1);
      }
   }
}
