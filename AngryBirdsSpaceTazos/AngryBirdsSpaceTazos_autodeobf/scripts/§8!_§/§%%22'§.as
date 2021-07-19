package §8!_§
{
   import §%!r§.§3!'§;
   import §,"&§.§9q§;
   import §^=§.§-G§;
   import §^=§.§1"F§;
   import §`!j§.§#b§;
   import §`!j§.§9"!§;
   
   public class §%"'§ extends §5!&§
   {
      
      public static const §>"4§:Boolean = false;
      
      public static const §," §:int = 0;
      
      protected static var §@'§:int = §," §;
      
      public static const LOAD_STATE_STEP_1:int = 1;
      
      public static const LOAD_STATE_STEP_2:int = 2;
      
      public static var § D§:Number = -1;
       
      
      private var §,!!§:Number = 0;
      
      public function §%"'§(param1:§9"!§, param2:§3!'§, param3:Boolean, param4:String)
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         this.§5[§();
      }
      
      protected function §5[§() : void
      {
         this.§8!A§ = new §1"F§(this);
         §8!A§.init(§-G§.§4+§.Views.View_LevelLoad[0]);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §@'§ = LOAD_STATE_STEP_1;
         this.setLoadingText();
      }
      
      protected function setLoadingText() : void
      {
         if(§6u§.currentLevel != null)
         {
            §8!A§.setText("LOADING " + §6u§.currentLevel.replace("-"," - "),"TextField_LevelLoading");
         }
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         if(§@'§ == LOAD_STATE_STEP_1)
         {
            §9q§.§>!L§.clearLevel();
            this.initLevelLoad();
            §@'§ = LOAD_STATE_STEP_2;
         }
         else if(§@'§ == LOAD_STATE_STEP_2)
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
      
      protected function §"Z§(param1:§#b§) : void
      {
         §9q§.loadLevel(param1);
      }
   }
}
