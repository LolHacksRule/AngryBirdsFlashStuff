package §1!c§
{
   import §%!B§.§0![§;
   import §%!B§.§5L§;
   import §,M§.§+f§;
   import §0!m§.§@!S§;
   import §1`§.§7I§;
   import §1`§.§9%§;
   
   public class §,!d§ extends §7X§
   {
      
      public static const §8!m§:Boolean = false;
      
      public static const §8y§:int = 0;
      
      protected static var §2!x§:int = §8y§;
      
      public static const LOAD_STATE_STEP_1:int = 1;
      
      public static const LOAD_STATE_STEP_2:int = 2;
      
      public static var §+!'§:Number = -1;
       
      
      private var §[!x§:Number = 0;
      
      public function §,!d§(param1:§0![§, param2:§+f§, param3:Boolean, param4:String)
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         this.§2d§();
      }
      
      protected function §2d§() : void
      {
         this.§^!T§ = new §9%§(this);
         §^!T§.init(§7I§.§7!%§.Views.View_LevelLoad[0]);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §2!x§ = LOAD_STATE_STEP_1;
         this.setLoadingText();
      }
      
      protected function setLoadingText() : void
      {
         if(§4a§.currentLevel != null)
         {
            §^!T§.setText("LOADING " + §4a§.currentLevel.replace("-"," - "),"TextField_LevelLoading");
         }
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         if(§2!x§ == LOAD_STATE_STEP_1)
         {
            §@!S§.§2A§.clearLevel();
            this.initLevelLoad();
            §2!x§ = LOAD_STATE_STEP_2;
         }
         else if(§2!x§ == LOAD_STATE_STEP_2)
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
      
      protected function §[!'§(param1:§5L§) : void
      {
         §@!S§.loadLevel(param1);
      }
   }
}
