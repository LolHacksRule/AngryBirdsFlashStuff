package §%"Q§
{
   import §&!j§.§5#+§;
   import §[!H§.§4Z§;
   import §[!H§.§^x§;
   import com.angrybirds.§<!J§;
   import §null §.§5#§;
   import §null §.§>#-§;
   
   public class § "§ extends §`!6§
   {
      
      public static const §case§:Boolean = false;
      
      public static const §[!I§:int = 0;
      
      protected static var §?" §:int = §[!I§;
      
      public static const LOAD_STATE_STEP_1:int = 1;
      
      public static const LOAD_STATE_STEP_2:int = 2;
      
      public static var §[M§:Number = -1;
       
      
      private var §`!X§:Number = 0;
      
      public function § "§(param1:§5#§, param2:§5#+§, param3:Boolean, param4:String)
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         this.§`s§();
      }
      
      protected function §`s§() : void
      {
         this.§^!b§ = new §4Z§(this);
         §^!b§.init(§^x§.§ '§.Views.View_LevelLoad[0]);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         §?" § = LOAD_STATE_STEP_1;
         this.setLoadingText();
      }
      
      protected function setLoadingText() : void
      {
         if(§'""§.currentLevel != null)
         {
            §^!b§.setText("LOADING " + §'""§.currentLevel.replace("-"," - "),"TextField_LevelLoading");
         }
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         if(§?" § == LOAD_STATE_STEP_1)
         {
            §<!J§.§=!%§.clearLevel();
            this.initLevelLoad();
            §?" § = LOAD_STATE_STEP_2;
         }
         else if(§?" § == LOAD_STATE_STEP_2)
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
      
      protected function §[^§(param1:§>#-§) : void
      {
         §<!J§.loadLevel(param1);
      }
   }
}
