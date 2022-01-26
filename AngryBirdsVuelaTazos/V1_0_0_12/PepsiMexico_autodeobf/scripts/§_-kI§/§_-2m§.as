package §_-kI§
{
   import §_-3K§.§_-h3§;
   import §_-8J§.§_-1T§;
   import §_-IC§.§_-Uw§;
   import §_-IC§.§_-ZK§;
   import §_-IC§.§_-jC§;
   import §_-IC§.§_-qj§;
   import §_-RG§.§_-HT§;
   import §_-RG§.§_-TC§;
   import §_-ZV§.§_-6k§;
   import §_-am§.§_-XJ§;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.utils.getTimer;
   
   public class §_-2m§ extends §_-ZK§
   {
      
      public static var §_-Mg§:Number;
      
      public static var §_-PD§:Number;
       
      
      public var §_-ZW§:Number;
      
      public function §_-2m§(param1:§_-Z6§, param2:DisplayObjectContainer, param3:XML, param4:XML)
      {
         var canvas:§_-Z6§ = param1;
         var loadingScreen:DisplayObjectContainer = param2;
         var uiData:XML = param3;
         var assetData:XML = param4;
         super(canvas);
         if(§_-7M§.stage)
         {
            this.init(loadingScreen,uiData,assetData);
         }
         else
         {
            §_-7M§.addEventListener(Event.ADDED_TO_STAGE,function(param1:Event):void
            {
               §_-7M§.removeEventListener(Event.ADDED_TO_STAGE,arguments.callee);
               init(loadingScreen,uiData,assetData);
            });
         }
      }
      
      protected function init(param1:DisplayObjectContainer, param2:XML, param3:XML) : void
      {
         §_-h3§.§_-ue§(stage);
         §_-h3§.§_-DM§ = true;
         §_-HT§.§_-sy§(this.getVersionInfo());
         §_-Uw§.§_-2D§ = §_-7M§.stage.loaderInfo.parameters;
         §_-XJ§.init();
         §_-sS§(new §_-qj§());
         var _loc4_:§_-jC§ = new §_-jC§(true,§_-jC§.§_-Mi§,this.getMinLoadingScreenTime(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
         §_-sS§(_loc4_);
         _loc4_.§_-pr§(param1);
         _loc4_.§_-HQ§(param3);
         §_-1T§.init(param2);
         if(§_-6k§.§_-Y1§())
         {
            §_-6k§.§class§("serverConnectionError");
         }
         §_-n0§(§_-jC§.§_-Mi§);
         this.§_-0X§();
      }
      
      public function §_-0X§() : void
      {
         §_-7M§.addEventListener(Event.ENTER_FRAME,this.§_-Yx§);
         §_-7M§.stage.addEventListener(Event.MOUSE_LEAVE,this.mouseLeave);
         §_-7M§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.keyDown);
         §_-7M§.stage.addEventListener(KeyboardEvent.KEY_UP,this.keyUp);
         this.§_-ZW§ = getTimer();
      }
      
      public function mouseLeave(param1:Event) : void
      {
         if(§_-P4§())
         {
            §_-P4§().mouseLeave();
         }
      }
      
      public function keyDown(param1:KeyboardEvent) : void
      {
         if(§_-P4§())
         {
            §_-P4§().keyDown(param1);
         }
         §_-HT§.keyDown(param1);
      }
      
      public function keyUp(param1:KeyboardEvent) : void
      {
         if(§_-P4§())
         {
            §_-P4§().keyUp(param1);
         }
      }
      
      public function §_-Yx§(param1:Event) : void
      {
         var _loc2_:Number = getTimer() - this.§_-ZW§;
         this.§_-ZW§ = getTimer();
         §_-TC§.§_-qX§(§_-7M§.mouseX,§_-7M§.mouseY);
         if(§_-ux§())
         {
            return;
         }
         this.updateState(_loc2_);
      }
      
      override public function updateState(param1:Number) : int
      {
         var _loc2_:int = super.updateState(param1);
         if(§_-P4§().isGenericState())
         {
            if(_loc2_ == §_-Uw§.STATE_STATUS_COMPLETED)
            {
               §_-7M§.addChild(§_-TC§.activate());
               this.setFirstGameState();
            }
         }
         return _loc2_;
      }
      
      public function setFirstGameState() : void
      {
         §_-n0§(§_-qj§.§_-Mi§);
      }
      
      public function getMinLoadingScreenTime() : Number
      {
         return 1000;
      }
      
      public function getVersionInfo() : String
      {
         return "unknown";
      }
   }
}
