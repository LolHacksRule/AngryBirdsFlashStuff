package §6!5§
{
   import § !T§.§ q§;
   import § !T§.§7@§;
   import § ,§.§>u§;
   import §^!`§.§#p§;
   import §^!`§.§-"5§;
   import com.angrybirds.§6!E§;
   
   public class §;!X§ extends §3!3§
   {
      
      public static const §>!b§:Boolean = false;
      
      public static const §%'§:int = 0;
      
      protected static var §4C§:int = §%'§;
      
      public static const LOAD_STATE_STEP_1:int = 1;
      
      public static const LOAD_STATE_STEP_2:int = 2;
      
      public static var §9d§:Number = -1;
       
      
      private var §6!X§:Number = 0;
      
      public function §;!X§(param1:§ q§, param2:§>u§, param3:Boolean, param4:String)
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         this.§-!1§();
      }
      
      protected function §-!1§() : void
      {
         this.§ !z§ = new §-"5§(this);
         § !z§.init(§#p§.§'"0§.Views.View_LevelLoad[0]);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §4C§ = LOAD_STATE_STEP_1;
         this.setLoadingText();
      }
      
      protected function setLoadingText() : void
      {
         if(§="4§.currentLevel != null)
         {
            § !z§.setText("LOADING " + §="4§.currentLevel.replace("-"," - "),"TextField_LevelLoading");
         }
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         if(§4C§ == LOAD_STATE_STEP_1)
         {
            §6!E§.§7I§.clearLevel();
            this.initLevelLoad();
            §4C§ = LOAD_STATE_STEP_2;
         }
         else if(§4C§ == LOAD_STATE_STEP_2)
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
      
      protected function §2"1§(param1:§7@§) : void
      {
         §6!E§.loadLevel(param1);
      }
   }
}
