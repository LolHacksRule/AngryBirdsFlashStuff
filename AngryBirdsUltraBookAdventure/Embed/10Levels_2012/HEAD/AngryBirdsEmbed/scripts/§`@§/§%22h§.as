package §`@§
{
   import §"!5§.§,!!§;
   import §0!§.§0!5§;
   import §1;§.§!!1§;
   import §1;§.§0!&§;
   import §>!C§.§6M§;
   import §>!C§.§<-§;
   
   public class §"h§ extends §0!5§
   {
      
      public static const §8!7§:Boolean = false;
      
      public static const §?!8§:int = 0;
      
      public static var §&,§:int = §?!8§;
      
      public static const LOAD_STATE_STEP_1:int = 1;
      
      public static const LOAD_STATE_STEP_2:int = 2;
      
      public static var §%a§:Number = -1;
       
      
      private var § v§:Number = 0;
      
      public function §"h§(param1:Boolean, param2:String)
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
         this.§#Z§ = new §!!1§(this);
         §#Z§.init(§0!&§.§'^§.Views.View_LevelLoad[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         §&,§ = LOAD_STATE_STEP_1;
         this.setLoadingText();
      }
      
      protected function setLoadingText() : void
      {
         if(§6M§.§[z§ != null)
         {
            §#Z§.setText("LOADING " + §6M§.§[z§.replace("-"," - "),"TextField_LevelLoading");
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §0!5§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(§&,§ == LOAD_STATE_STEP_1)
         {
            §,!!§.§;4§.clearLevel();
            this.initLevelLoad();
            §&,§ = LOAD_STATE_STEP_2;
         }
         else if(§&,§ == LOAD_STATE_STEP_2)
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
            return §0!5§.STATE_STATUS_COMPLETED;
         }
         return §0!5§.STATE_STATUS_RUNNING;
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
      
      protected function initLevelMain(param1:§<-§) : void
      {
         §,!!§.§<H§(param1);
      }
   }
}
