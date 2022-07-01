package §?!E§
{
   import §'<§.§;r§;
   import §'<§.§=!o§;
   import §02§.§+!b§;
   import §02§.§`%§;
   import §;!b§.§%>§;
   import com.angrybirds.§6U§;
   
   public class §[!l§ extends §5"#§
   {
      
      public static const §+`§:Boolean = false;
      
      public static const §+s§:int = 0;
      
      protected static var §,8§:int = §+s§;
      
      public static const LOAD_STATE_STEP_1:int = 1;
      
      public static const LOAD_STATE_STEP_2:int = 2;
      
      public static var §@!o§:Number = -1;
       
      
      private var §]"&§:Number = 0;
      
      public function §[!l§(param1:§=!o§, param2:§%>§, param3:Boolean, param4:String)
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         this.§[!%§();
      }
      
      protected function §[!%§() : void
      {
         this.§#2§ = new §`%§(this);
         §#2§.init(§+!b§.§#!P§.Views.View_LevelLoad[0]);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §,8§ = LOAD_STATE_STEP_1;
         this.setLoadingText();
      }
      
      protected function setLoadingText() : void
      {
         if(§+o§.currentLevel != null)
         {
            §#2§.setText("LOADING " + §+o§.currentLevel.replace("-"," - "),"TextField_LevelLoading");
         }
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         if(§,8§ == LOAD_STATE_STEP_1)
         {
            §6U§.§+_§.clearLevel();
            this.initLevelLoad();
            §,8§ = LOAD_STATE_STEP_2;
         }
         else if(§,8§ == LOAD_STATE_STEP_2)
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
      
      protected function §[!<§(param1:§;r§) : void
      {
         §6U§.loadLevel(param1);
      }
   }
}
