package §[!$§
{
   import §"!i§.InitDataLoader;
   import §&"§.ExternalInterfaceHandler;
   import §1N§.StateBase;
   import §1N§.StateLoad;
   import §;!1§.§9u§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   
   public class StateFacebookLoad extends StateLoad
   {
      
      private static const SERVER_CALLS_LOADING_PERCENTAGE:Number = 0.2;
      
      private static const TIMED_PERCENTAGE:Number = 60;
       
      
      private var §`q§:Boolean = false;
      
      protected var §!!c§:Number = -1;
      
      protected var §36§:Number = 0;
      
      private var §[%§:Boolean = false;
      
      private var §@v§:Number = 60;
      
      public function StateFacebookLoad(initState:Boolean = true, name:String = "load", minTimeOnScreen:Number = 1000, assetsUrl:String = "", buildNumber:String = "")
      {
         super(initState,name,minTimeOnScreen,assetsUrl,buildNumber);
      }
      
      override public function setLoadingScreen(loadingScreen:DisplayObjectContainer) : void
      {
         super.setLoadingScreen(loadingScreen);
         this.§'^§(0);
      }
      
      private function §^-§() : int
      {
         var tempErrorValue:String = InitDataLoader.§=J§();
         if(tempErrorValue != "")
         {
            if(!this.§[%§)
            {
               this.§[%§ = true;
               §9u§.§4!L§();
               throw new Error(tempErrorValue,InitDataLoader.§2!§());
            }
            return StateBase.STATE_STATUS_RUNNING;
         }
         ExternalInterfaceHandler.§`F§("onFlashLoadComplete");
         return StateBase.STATE_STATUS_COMPLETED;
      }
      
      override public function run(deltaTime:Number) : int
      {
         var superState:int = 0;
         if(this.§!!c§ == -1)
         {
            this.§!!c§ = new Date().time;
         }
         if(!this.§`q§)
         {
            superState = super.run(deltaTime);
            if(superState == StateBase.STATE_STATUS_COMPLETED)
            {
               this.§`q§ = true;
               this.§36§ = 1;
            }
         }
         var percentLoaded:Number = this.§^!R§();
         this.§'^§(percentLoaded);
         if(percentLoaded == 1 && this.§`q§)
         {
            return this.§^-§();
         }
         return StateBase.STATE_STATUS_RUNNING;
      }
      
      private function §^!R§() : Number
      {
         var initPercentage:Number = !!InitDataLoader.§#]§ ? Number(0) : Number(1);
         var timedPercentage:Number = this.§8!7§(initPercentage == 1 && this.§36§ == 1);
         if(this.§36§ == 1 && initPercentage == 1 && timedPercentage == 1)
         {
            return 1;
         }
         return this.§36§ * 0.7 + initPercentage * 0.2 + timedPercentage * 0.1;
      }
      
      private function §8!7§(loadingComplete:Boolean) : Number
      {
         if(loadingComplete)
         {
            --this.§@v§;
         }
         var scaleToMinute:Number = Math.min((new Date().time - this.§!!c§) / 1000,this.§@v§) / this.§@v§;
         return Number(1 - Math.pow(1 - scaleToMinute,2));
      }
      
      override public function setLoadingPercentage(value:Number) : void
      {
         this.§36§ = value;
      }
      
      private function §'^§(value:Number) : void
      {
         (§6!W§.getChildByName("Bar") as MovieClip).mcProgress.scaleX = value;
      }
      
      override public function setViewSize(width:Number, height:Number) : void
      {
         super.setViewSize(width,height);
         if(§6!W§)
         {
            §6!W§.x = 0;
            §6!W§.y = 0;
         }
      }
   }
}
