package §>!A§
{
   import §"!&§.§#!,§;
   import §5H§.§[k§;
   import §6J§.§&!;§;
   import §6J§.§5j§;
   import §<!G§.§!I§;
   import §<!G§.§^3§;
   
   public class §8i§ extends §#!,§
   {
      
      public static const §>!6§:Boolean = false;
      
      public static const §&!4§:int = 0;
      
      public static var §]!$§:int = §&!4§;
      
      public static const LOAD_STATE_STEP_1:int = 1;
      
      public static const LOAD_STATE_STEP_2:int = 2;
      
      public static var §>4§:Number = -1;
       
      
      private var § !'§:Number = 0;
      
      public function §8i§(param1:Boolean, param2:String)
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
         this.§[=§ = new §^3§(this);
         §[=§.init(§!I§.§7y§.Views.View_LevelLoad[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         §]!$§ = LOAD_STATE_STEP_1;
         this.setLoadingText();
      }
      
      protected function setLoadingText() : void
      {
         if(§5j§.§%V§ != null)
         {
            §[=§.setText("LOADING " + §5j§.§%V§.replace("-"," - "),"TextField_LevelLoading");
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §#!,§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(§]!$§ == LOAD_STATE_STEP_1)
         {
            §[k§.§&@§.clearLevel();
            this.initLevelLoad();
            §]!$§ = LOAD_STATE_STEP_2;
         }
         else if(§]!$§ == LOAD_STATE_STEP_2)
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
            return §#!,§.STATE_STATUS_COMPLETED;
         }
         return §#!,§.STATE_STATUS_RUNNING;
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
      
      protected function initLevelMain(param1:§&!;§) : void
      {
         §[k§.§#8§(param1);
      }
   }
}
