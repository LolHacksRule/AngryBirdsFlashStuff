package §`!6§
{
   import §>!a§.§-?§;
   import §>!a§.§5l§;
   import §[" §.§"!j§;
   import §[" §.§1"1§;
   import §]!d§.§-!<§;
   import com.angrybirds.§4!l§;
   
   public class §<!y§ extends §-!c§
   {
      
      public static const §7!n§:Boolean = false;
      
      public static const §`t§:int = 0;
      
      protected static var §"!Z§:int = §`t§;
      
      public static const LOAD_STATE_STEP_1:int = 1;
      
      public static const LOAD_STATE_STEP_2:int = 2;
      
      public static var §1Q§:Number = -1;
       
      
      private var §3#§:Number = 0;
      
      public function §<!y§(param1:§5l§, param2:§-!<§, param3:Boolean, param4:String)
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         this.§6!t§();
      }
      
      protected function §6!t§() : void
      {
         this.§!^§ = new §1"1§(this);
         §!^§.init(§"!j§.§3=§.Views.View_LevelLoad[0]);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §"!Z§ = LOAD_STATE_STEP_1;
         this.setLoadingText();
      }
      
      protected function setLoadingText() : void
      {
         if(§^!§.currentLevel != null)
         {
            §!^§.setText("LOADING " + §^!§.currentLevel.replace("-"," - "),"TextField_LevelLoading");
         }
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         if(§"!Z§ == LOAD_STATE_STEP_1)
         {
            §4!l§.§,!8§.clearLevel();
            this.initLevelLoad();
            §"!Z§ = LOAD_STATE_STEP_2;
         }
         else if(§"!Z§ == LOAD_STATE_STEP_2)
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
      
      protected function §3!i§(param1:§-?§) : void
      {
         §4!l§.loadLevel(param1);
      }
   }
}
