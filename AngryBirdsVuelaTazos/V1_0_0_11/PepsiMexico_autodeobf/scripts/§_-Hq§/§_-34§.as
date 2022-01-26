package §_-Hq§
{
   import §_-Ah§.§_-b§;
   import §_-QM§.§_-GC§;
   import §_-QM§.§_-Ns§;
   import §_-TE§.§_-PN§;
   import §_-Y-§.§_-Wl§;
   import §_-d5§.§_-6Y§;
   
   public class §_-34§ extends §_-UR§
   {
      
      public static const §_-pw§:int = 0;
      
      public static var §_-ng§:int = §_-pw§;
      
      public static const LOAD_STATE_STEP_1:int = 1;
      
      public static const LOAD_STATE_STEP_2:int = 2;
      
      public static var §_-wI§:Number = -1;
       
      
      private var §_-a4§:Number = 0;
      
      public function §_-34§(param1:Boolean, param2:String)
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         this.§_-qE§ = new §_-Ns§(this);
         §_-qE§.init(§_-GC§.§_-jz§.Views.View_LevelLoad[0]);
      }
      
      override public function activate() : void
      {
         super.activate();
         if(§_-6Y§.§true§)
         {
            §_-6Y§.§true§.start();
         }
         §_-ng§ = LOAD_STATE_STEP_1;
      }
      
      override public function run(param1:Number) : int
      {
         var _loc2_:int = super.run(param1);
         if(_loc2_ != §_-PN§.STATE_STATUS_RUNNING)
         {
            return _loc2_;
         }
         if(§_-ng§ == LOAD_STATE_STEP_1)
         {
            §_-b§.§_-cK§.clearLevel();
            this.initLevelLoad();
            §_-ng§ = LOAD_STATE_STEP_2;
         }
         else if(§_-ng§ == LOAD_STATE_STEP_2)
         {
            if(this.isReady())
            {
               this.onLevelLoadReady();
            }
         }
         if(mNextState.length > 0)
         {
            return §_-PN§.STATE_STATUS_COMPLETED;
         }
         return §_-PN§.STATE_STATUS_RUNNING;
      }
      
      public function initLevelLoad() : void
      {
      }
      
      public function isReady() : Boolean
      {
         return false;
      }
      
      public function onLevelLoadReady() : void
      {
      }
      
      protected function §_-GU§(param1:§_-Wl§) : void
      {
         §_-b§.§_-51§(param1);
      }
   }
}
