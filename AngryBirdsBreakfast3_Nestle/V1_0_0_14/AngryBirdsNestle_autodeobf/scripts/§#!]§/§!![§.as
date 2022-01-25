package §#!]§
{
   import §+!2§.§%!-§;
   import §+!2§.§0!%§;
   import §3!0§.§`i§;
   import §7"6§.§^!_§;
   
   public class §!![§ extends §3_§
   {
      
      public static const §;!`§:Boolean = false;
      
      public static const §;6§:int = 0;
      
      protected static var §8`§:int = §;6§;
      
      public static const LOAD_STATE_STEP_1:int = 1;
      
      public static const LOAD_STATE_STEP_2:int = 2;
      
      public static var §[;§:Number = -1;
       
      
      private var §-!a§:Number = 0;
      
      public function §!![§(param1:§-g§, param2:§^!_§, param3:Boolean, param4:String)
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         this.§3!i§();
      }
      
      protected function §3!i§() : void
      {
         this.§4!q§ = new §0!%§(this);
         §4!q§.init(§%!-§.§#t§.Views.View_LevelLoad[0]);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §8`§ = LOAD_STATE_STEP_1;
         this.setLoadingText();
      }
      
      protected function setLoadingText() : void
      {
         if(§#n§.currentLevel != null)
         {
            §4!q§.setText("LOADING " + §#n§.currentLevel.replace("-"," - "),"TextField_LevelLoading");
         }
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         if(§8`§ == LOAD_STATE_STEP_1)
         {
            §`i§.§&!L§.clearLevel();
            this.initLevelLoad();
            §8`§ = LOAD_STATE_STEP_2;
         }
         else if(§8`§ == LOAD_STATE_STEP_2)
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
      
      protected function §[1§(param1:§[d§) : void
      {
         §`i§.loadLevel(param1);
      }
   }
}
