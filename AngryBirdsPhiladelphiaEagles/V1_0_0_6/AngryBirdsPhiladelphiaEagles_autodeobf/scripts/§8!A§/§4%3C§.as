package §8!A§
{
   import §&b§.§[F§;
   import §1E§.§2h§;
   import §1E§.§5T§;
   import §4M§.;
   import §4M§.§^'§;
   import §;!!§.§0H§;
   
   public class §4<§ extends §0H§
   {
      
      public static const §[!!§:Boolean = false;
      
      public static const §!!;§:int = 0;
      
      public static var §,T§:int = §!!;§;
      
      public static const LOAD_STATE_STEP_1:int = 1;
      
      public static const LOAD_STATE_STEP_2:int = 2;
      
      public static var §1Q§:Number = -1;
       
      
      private var §8[§:Number = 0;
      
      public function §4<§(param1:Boolean, param2:String)
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         this.initLoadingView();
      }
      
      protected function initLoadingView() : void
      {
         this.§<A§ = new §^'§(this);
         §<A§.init(§#4§.§]X§.Views.View_LevelLoad[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         §,T§ = LOAD_STATE_STEP_1;
         this.setLoadingText();
      }
      
      protected function setLoadingText() : void
      {
         if(§2h§.§,!P§ != null)
         {
            §<A§.setText("LOADING " + §2h§.§,!P§.replace("-"," - "),"TextField_LevelLoading");
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §0H§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(§,T§ == LOAD_STATE_STEP_1)
         {
            §[F§.§9u§.clearLevel();
            this.initLevelLoad();
            §,T§ = LOAD_STATE_STEP_2;
         }
         else if(§,T§ == LOAD_STATE_STEP_2)
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
            return §0H§.STATE_STATUS_COMPLETED;
         }
         return §0H§.STATE_STATUS_RUNNING;
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
      
      protected function initLevelMain(param1:§5T§) : void
      {
         §[F§.§2!I§(param1);
      }
   }
}
