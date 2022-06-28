package §@z§
{
   import §%!4§.§]!e§;
   import §'b§.ExternalInterfaceHandler;
   import §4H§.StateBase;
   import §4H§.StateLoad;
   import §@!`§.InitDataLoader;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   
   public class StateFacebookLoad extends StateLoad
   {
      
      private static const SERVER_CALLS_LOADING_PERCENTAGE:Number = 0.2;
      
      private static const TIMED_PERCENTAGE:Number = 60;
       
      
      private var §4K§:Boolean = false;
      
      protected var §<#§:Number = -1;
      
      protected var §55§:Number = 0;
      
      private var § !-§:Boolean = false;
      
      private var §@!2§:Number = 60;
      
      public function StateFacebookLoad(initState:Boolean = true, name:String = "load", minTimeOnScreen:Number = 1000, assetsUrl:String = "", buildNumber:String = "")
      {
         super(initState,name,minTimeOnScreen,assetsUrl,buildNumber);
      }
      
      override public function setLoadingScreen(loadingScreen:DisplayObjectContainer) : void
      {
         super.setLoadingScreen(loadingScreen);
         this.§4=§(0);
      }
      
      private function §`!d§() : int
      {
         var tempErrorValue:String = InitDataLoader.§1!9§();
         if(tempErrorValue != "")
         {
            if(!this.§ !-§)
            {
               this.§ !-§ = true;
               §]!e§.§3!T§();
               throw new Error(tempErrorValue,InitDataLoader.§3!D§());
            }
            return StateBase.STATE_STATUS_RUNNING;
         }
         ExternalInterfaceHandler.§>!2§("onFlashLoadComplete");
         return StateBase.STATE_STATUS_COMPLETED;
      }
      
      override public function run(deltaTime:Number) : int
      {
         var superState:int = 0;
         if(this.§<#§ == -1)
         {
            this.§<#§ = new Date().time;
         }
         if(!this.§4K§)
         {
            superState = super.run(deltaTime);
            if(superState == StateBase.STATE_STATUS_COMPLETED)
            {
               this.§4K§ = true;
               this.§55§ = 1;
            }
         }
         var percentLoaded:Number = this.§;1§();
         this.§4=§(percentLoaded);
         if(percentLoaded == 1 && this.§4K§)
         {
            return this.§`!d§();
         }
         return StateBase.STATE_STATUS_RUNNING;
      }
      
      private function §;1§() : Number
      {
         var initPercentage:Number = !!InitDataLoader.§5!W§ ? Number(0) : Number(1);
         var timedPercentage:Number = this.§[!;§(initPercentage == 1 && this.§55§ == 1);
         if(this.§55§ == 1 && initPercentage == 1 && timedPercentage == 1)
         {
            return 1;
         }
         return this.§55§ * 0.7 + initPercentage * 0.2 + timedPercentage * 0.1;
      }
      
      private function §[!;§(loadingComplete:Boolean) : Number
      {
         if(loadingComplete)
         {
            --this.§@!2§;
         }
         var scaleToMinute:Number = Math.min((new Date().time - this.§<#§) / 1000,this.§@!2§) / this.§@!2§;
         return Number(1 - Math.pow(1 - scaleToMinute,2));
      }
      
      override public function setLoadingPercentage(value:Number) : void
      {
         this.§55§ = value;
      }
      
      private function §4=§(value:Number) : void
      {
         (§0!T§.getChildByName("Bar") as MovieClip).mcProgress.scaleX = value;
      }
      
      override public function setViewSize(width:Number, height:Number) : void
      {
         super.setViewSize(width,height);
         if(§0!T§)
         {
            §0!T§.x = 0;
            §0!T§.y = 0;
         }
      }
   }
}
