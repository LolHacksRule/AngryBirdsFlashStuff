package §,#§
{
   import §"!G§.§3!f§;
   import §5<§.§58§;
   import §5<§.§8!1§;
   import §8!e§.§!!E§;
   import §8!e§.§3"&§;
   import com.angrybirds.§4"6§;
   
   public class §6B§ extends §@!4§
   {
      
      public static const §9!!§:Boolean = false;
      
      public static const §2!w§:int = 0;
      
      protected static var §2%§:int = §2!w§;
      
      public static const LOAD_STATE_STEP_1:int = 1;
      
      public static const LOAD_STATE_STEP_2:int = 2;
      
      public static var §2>§:Number = -1;
       
      
      private var §%l§:Number = 0;
      
      public function §6B§(param1:§3"&§, param2:§3!f§, param3:Boolean, param4:String)
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         this.§-n§();
      }
      
      protected function §-n§() : void
      {
         this.§^!6§ = new §58§(this);
         §^!6§.init(§8!1§.§31§.Views.View_LevelLoad[0]);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §2%§ = LOAD_STATE_STEP_1;
         this.setLoadingText();
      }
      
      protected function setLoadingText() : void
      {
         if(§!3§.currentLevel != null)
         {
            §^!6§.setText("LOADING " + §!3§.currentLevel.replace("-"," - "),"TextField_LevelLoading");
         }
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         if(§2%§ == LOAD_STATE_STEP_1)
         {
            §4"6§.§;!k§.clearLevel();
            this.initLevelLoad();
            §2%§ = LOAD_STATE_STEP_2;
         }
         else if(§2%§ == LOAD_STATE_STEP_2)
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
      
      protected function §,!!§(param1:§!!E§) : void
      {
         §4"6§.loadLevel(param1);
      }
   }
}
