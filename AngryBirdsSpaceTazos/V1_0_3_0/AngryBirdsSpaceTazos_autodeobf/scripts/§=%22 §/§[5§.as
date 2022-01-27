package §=" §
{
   import §+k§.§0"4§;
   import §+k§.§7x§;
   import §4",§.§,!j§;
   import §4",§.§3v§;
   import §7!C§.§8!w§;
   import §71§.§;l§;
   
   public class §[5§ extends §[!B§
   {
      
      public static const §+!F§:Boolean = false;
      
      public static const §0!u§:int = 0;
      
      protected static var §8R§:int = §0!u§;
      
      public static const LOAD_STATE_STEP_1:int = 1;
      
      public static const LOAD_STATE_STEP_2:int = 2;
      
      public static var §"!R§:Number = -1;
       
      
      private var §<!J§:Number = 0;
      
      public function §[5§(param1:§,!j§, param2:§;l§, param3:Boolean, param4:String)
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         this.§7D§();
      }
      
      protected function §7D§() : void
      {
         this.§6!J§ = new §0"4§(this);
         §6!J§.init(§7x§.§+2§.Views.View_LevelLoad[0]);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §8R§ = LOAD_STATE_STEP_1;
         this.setLoadingText();
      }
      
      protected function setLoadingText() : void
      {
         if(§]m§.currentLevel != null)
         {
            §6!J§.setText("LOADING " + §]m§.currentLevel.replace("-"," - "),"TextField_LevelLoading");
         }
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         if(§8R§ == LOAD_STATE_STEP_1)
         {
            §8!w§.§5!V§.clearLevel();
            this.initLevelLoad();
            §8R§ = LOAD_STATE_STEP_2;
         }
         else if(§8R§ == LOAD_STATE_STEP_2)
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
      
      protected function §4!F§(param1:§3v§) : void
      {
         §8!w§.loadLevel(param1);
      }
   }
}
