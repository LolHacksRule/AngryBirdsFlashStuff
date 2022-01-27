package §!X§
{
   import §'+§.§="B§;
   import §,#+§.§7!m§;
   import §,#+§.§<U§;
   import §^!`§.§%n§;
   import §^!`§.§6"!§;
   import com.angrybirds.§;!e§;
   
   public class §8!M§ extends §@!?§
   {
      
      public static const §<!%§:Boolean = false;
      
      public static const § "q§:int = 0;
      
      protected static var §4"o§:int = § "q§;
      
      public static const LOAD_STATE_STEP_1:int = 1;
      
      public static const LOAD_STATE_STEP_2:int = 2;
      
      public static var §@!n§:Number = -1;
       
      
      private var §"R§:Number = 0;
      
      public function §8!M§(param1:§7!m§, param2:§="B§, param3:Boolean, param4:String)
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         this.§+!`§();
      }
      
      protected function §+!`§() : void
      {
         this.§>I§ = new §6"!§(this);
         §>I§.init(§%n§.§ set§.Views.View_LevelLoad[0]);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §4"o§ = LOAD_STATE_STEP_1;
         this.setLoadingText();
      }
      
      protected function setLoadingText() : void
      {
         if(§ !p§.currentLevel != null)
         {
            §>I§.setText("LOADING " + § !p§.currentLevel.replace("-"," - "),"TextField_LevelLoading");
         }
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         if(§4"o§ == LOAD_STATE_STEP_1)
         {
            §;!e§.§<x§.clearLevel();
            this.initLevelLoad();
            §4"o§ = LOAD_STATE_STEP_2;
         }
         else if(§4"o§ == LOAD_STATE_STEP_2)
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
      
      protected function §%",§(param1:§<U§) : void
      {
         §;!e§.loadLevel(param1);
      }
   }
}
