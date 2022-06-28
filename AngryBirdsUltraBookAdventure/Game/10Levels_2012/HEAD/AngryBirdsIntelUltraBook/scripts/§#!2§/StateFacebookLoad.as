package §#!2§
{
   import §,!#§.ExternalInterfaceHandler;
   import §9v§.§4!c§;
   import §<!=§.InitDataLoader;
   import §[!>§.StateBase;
   import §[!>§.StateLoad;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   
   public class StateFacebookLoad extends StateLoad
   {
      
      private static const SERVER_CALLS_LOADING_PERCENTAGE:Number = 0.2;
      
      private static const TIMED_PERCENTAGE:Number = 60;
       
      
      private var §,!2§:Boolean = false;
      
      protected var §1!a§:Number = -1;
      
      protected var §6O§:Number = 0;
      
      private var §-!&§:Boolean = false;
      
      private var §6;§:Number = 60;
      
      public function StateFacebookLoad(initState:Boolean = true, name:String = "load", minTimeOnScreen:Number = 1000, assetsUrl:String = "", buildNumber:String = "")
      {
         super(initState,name,minTimeOnScreen,assetsUrl,buildNumber);
      }
      
      override public function setLoadingScreen(loadingScreen:DisplayObjectContainer) : void
      {
         super.setLoadingScreen(loadingScreen);
         this.§=!+§(0);
      }
      
      private function §2X§() : int
      {
         var tempErrorValue:String = InitDataLoader.§5,§();
         if(tempErrorValue != "")
         {
            if(!this.§-!&§)
            {
               this.§-!&§ = true;
               §4!c§.§?!U§();
               throw new Error(tempErrorValue,InitDataLoader.§<!>§());
            }
            return StateBase.STATE_STATUS_RUNNING;
         }
         ExternalInterfaceHandler.§!!@§("onFlashLoadComplete");
         return StateBase.STATE_STATUS_COMPLETED;
      }
      
      override public function run(deltaTime:Number) : int
      {
         var superState:int = 0;
         if(this.§1!a§ == -1)
         {
            this.§1!a§ = new Date().time;
         }
         if(!this.§,!2§)
         {
            superState = super.run(deltaTime);
            if(superState == StateBase.STATE_STATUS_COMPLETED)
            {
               this.§,!2§ = true;
               this.§6O§ = 1;
            }
         }
         var percentLoaded:Number = this.§3K§();
         this.§=!+§(percentLoaded);
         if(percentLoaded == 1 && this.§,!2§)
         {
            return this.§2X§();
         }
         return StateBase.STATE_STATUS_RUNNING;
      }
      
      private function §3K§() : Number
      {
         var initPercentage:Number = !!InitDataLoader.§?,§ ? Number(0) : Number(1);
         var timedPercentage:Number = this.§,§(initPercentage == 1 && this.§6O§ == 1);
         if(this.§6O§ == 1 && initPercentage == 1 && timedPercentage == 1)
         {
            return 1;
         }
         return this.§6O§ * 0.7 + initPercentage * 0.2 + timedPercentage * 0.1;
      }
      
      private function §,§(loadingComplete:Boolean) : Number
      {
         if(loadingComplete)
         {
            --this.§6;§;
         }
         var scaleToMinute:Number = Math.min((new Date().time - this.§1!a§) / 1000,this.§6;§) / this.§6;§;
         return Number(1 - Math.pow(1 - scaleToMinute,2));
      }
      
      override public function setLoadingPercentage(value:Number) : void
      {
         this.§6O§ = value;
      }
      
      private function §=!+§(value:Number) : void
      {
         (§%x§.getChildByName("Bar") as MovieClip).mcProgress.scaleX = value;
      }
      
      override public function setViewSize(width:Number, height:Number) : void
      {
         super.setViewSize(width,height);
         if(§%x§)
         {
            §%x§.x = 0;
            §%x§.y = 0;
         }
      }
   }
}
