package §<"c§
{
   import §7!$§.§&$§;
   import §7!$§.§]#[§;
   import §>@§.§5"H§;
   import §?m§.§+"2§;
   import §?m§.§8!B§;
   import com.angrybirds.§,!q§;
   
   public class §9#O§ extends §]"_§
   {
      
      public static const §!X§:Boolean = false;
      
      public static const §1#0§:int = 0;
      
      protected static var §;#2§:int = §1#0§;
      
      public static const LOAD_STATE_STEP_1:int = 1;
      
      public static const LOAD_STATE_STEP_2:int = 2;
      
      public static var §2!M§:Number = -1;
       
      
      private var §%"J§:Number = 0;
      
      public function §9#O§(param1:§+"2§, param2:§5"H§, param3:Boolean, param4:String)
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         this.§7!c§();
      }
      
      protected function §7!c§() : void
      {
         this.§@;§ = new §]#[§(this);
         §@;§.init(§&$§.§@8§.Views.View_LevelLoad[0]);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §;#2§ = LOAD_STATE_STEP_1;
         this.setLoadingText();
      }
      
      protected function setLoadingText() : void
      {
         if(§+!b§.currentLevel != null)
         {
            §@;§.setText("LOADING " + §+!b§.currentLevel.replace("-"," - "),"TextField_LevelLoading");
         }
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         if(§;#2§ == LOAD_STATE_STEP_1)
         {
            §,!q§.§9!,§.clearLevel();
            this.initLevelLoad();
            §;#2§ = LOAD_STATE_STEP_2;
         }
         else if(§;#2§ == LOAD_STATE_STEP_2)
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
      
      protected function §]h§(param1:§8!B§) : void
      {
         §,!q§.loadLevel(param1);
      }
   }
}
