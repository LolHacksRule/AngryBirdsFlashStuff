package §]!V§
{
   import §!P§.§2"4§;
   import §!P§.§5!1§;
   import §'!u§.§&S§;
   import §^6§.§;!j§;
   import §^6§.§=!A§;
   import com.angrybirds.§#Z§;
   
   public class §<l§ extends §>!9§
   {
      
      public static const §1w§:Boolean = false;
      
      public static const §3!S§:int = 0;
      
      protected static var §0b§:int = §3!S§;
      
      public static const LOAD_STATE_STEP_1:int = 1;
      
      public static const LOAD_STATE_STEP_2:int = 2;
      
      public static var §@8§:Number = -1;
       
      
      private var §8!9§:Number = 0;
      
      public function §<l§(param1:§5!1§, param2:§&S§, param3:Boolean, param4:String)
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         this.§6!&§();
      }
      
      protected function §6!&§() : void
      {
         this.§5+§ = new §;!j§(this);
         §5+§.init(§=!A§.§`O§.Views.View_LevelLoad[0]);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §0b§ = LOAD_STATE_STEP_1;
         this.setLoadingText();
      }
      
      protected function setLoadingText() : void
      {
         if(§97§.currentLevel != null)
         {
            §5+§.setText("LOADING " + §97§.currentLevel.replace("-"," - "),"TextField_LevelLoading");
         }
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         if(§0b§ == LOAD_STATE_STEP_1)
         {
            §#Z§.§'0§.clearLevel();
            this.initLevelLoad();
            §0b§ = LOAD_STATE_STEP_2;
         }
         else if(§0b§ == LOAD_STATE_STEP_2)
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
      
      protected function §1[§(param1:§2"4§) : void
      {
         §#Z§.loadLevel(param1);
      }
   }
}
