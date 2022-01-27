package §9%§
{
   import §%"%§.§2Z§;
   import §,!M§.§ !;§;
   import §,!M§.§@!T§;
   import §1z§.§2#§;
   import §1z§.§^!@§;
   import §>"2§.§8k§;
   
   public class §!!I§ extends §>!s§
   {
      
      public static const §,"A§:Boolean = false;
      
      public static const §9"#§:int = 0;
      
      protected static var §3!M§:int = §9"#§;
      
      public static const LOAD_STATE_STEP_1:int = 1;
      
      public static const LOAD_STATE_STEP_2:int = 2;
      
      public static var §"S§:Number = -1;
       
      
      private var §]!$§:Number = 0;
      
      public function §!!I§(param1:§^!@§, param2:§2Z§, param3:Boolean, param4:String)
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         this.§+H§();
      }
      
      protected function §+H§() : void
      {
         this.§%!A§ = new § !;§(this);
         §%!A§.init(§@!T§.§-!8§.Views.View_LevelLoad[0]);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §3!M§ = LOAD_STATE_STEP_1;
         this.setLoadingText();
      }
      
      protected function setLoadingText() : void
      {
         if(§#"=§.currentLevel != null)
         {
            §%!A§.setText("LOADING " + §#"=§.currentLevel.replace("-"," - "),"TextField_LevelLoading");
         }
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         if(§3!M§ == LOAD_STATE_STEP_1)
         {
            §8k§.§;!]§.clearLevel();
            this.initLevelLoad();
            §3!M§ = LOAD_STATE_STEP_2;
         }
         else if(§3!M§ == LOAD_STATE_STEP_2)
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
      
      protected function §#"G§(param1:§2#§) : void
      {
         §8k§.loadLevel(param1);
      }
   }
}
