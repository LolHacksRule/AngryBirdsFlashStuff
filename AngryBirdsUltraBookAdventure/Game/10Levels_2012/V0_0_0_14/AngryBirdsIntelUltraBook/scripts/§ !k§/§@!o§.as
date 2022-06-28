package § !k§
{
   import §!!§.§>4§;
   import §!!§.LevelManager;
   import §1n§.§ C§;
   import §1n§.dynamic;
   import §5i§.§4!]§;
   import §8,§.§+_§;
   
   public class §@!o§ extends §+_§
   {
      
      public static const §3!=§:Boolean = false;
      
      public static const § !v§:int = 0;
      
      public static var §5!F§:int = § !v§;
      
      public static const LOAD_STATE_STEP_1:int = 1;
      
      public static const LOAD_STATE_STEP_2:int = 2;
      
      public static var §,!-§:Number = -1;
       
      
      private var §8!D§:Number = 0;
      
      public function §@!o§(param1:Boolean, param2:String)
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         this.§5]§();
      }
      
      protected function §5]§() : void
      {
         this.§`-§ = new § C§(this);
         §`-§.init(dynamic.§[6§.Views.View_LevelLoad[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         §5!F§ = LOAD_STATE_STEP_1;
         this.§[r§();
      }
      
      protected function §[r§() : void
      {
         if(LevelManager.§^!F§ != null)
         {
            §`-§.setText("LOADING " + LevelManager.§^!F§.replace("-"," - "),"TextField_LevelLoading");
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §+_§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(§5!F§ == LOAD_STATE_STEP_1)
         {
            §4!]§.§8C§.clearLevel();
            this.initLevelLoad();
            §5!F§ = LOAD_STATE_STEP_2;
         }
         else if(§5!F§ == LOAD_STATE_STEP_2)
         {
            if(this.isReady())
            {
               this.onLevelLoadReady();
            }
            else if(this.hasError())
            {
               this.onLevelLoadError();
            }
         }
         if(mNextState.length > 0)
         {
            return §+_§.STATE_STATUS_COMPLETED;
         }
         return §+_§.STATE_STATUS_RUNNING;
      }
      
      protected function initLevelLoad() : void
      {
      }
      
      public function isReady() : Boolean
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
      
      protected function initLevelMain(param1:§>4§) : void
      {
         §4!]§.§9!d§(param1);
      }
   }
}
