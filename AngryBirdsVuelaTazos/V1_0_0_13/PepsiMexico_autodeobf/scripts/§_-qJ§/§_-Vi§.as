package §_-qJ§
{
   import § get§.§_-pD§;
   import §_-1p§.§_-uW§;
   import §_-Yv§.§_-Jn§;
   import §_-cu§.§_-P-§;
   import §_-cu§.§_-UO§;
   import §_-cu§.§_-Vu§;
   import §_-cu§.§_-qU§;
   import §_-ex§.§_-Mh§;
   import §_-ex§.§_-mR§;
   import §_-pn§.§_-Kb§;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.utils.getTimer;
   
   public class §_-Vi§ extends §_-qU§
   {
      
      public static var §_-da§:Number;
      
      public static var §_-Ib§:Number;
       
      
      public var §_-yc§:Number;
      
      public function §_-Vi§(param1:§_-Xp§, param2:DisplayObjectContainer, param3:XML, param4:XML)
      {
         var canvas:§_-Xp§ = param1;
         var loadingScreen:DisplayObjectContainer = param2;
         var uiData:XML = param3;
         var assetData:XML = param4;
         super(canvas);
         if(§_-Ro§.stage)
         {
            this.init(loadingScreen,uiData,assetData);
         }
         else
         {
            §_-Ro§.addEventListener(Event.ADDED_TO_STAGE,function(param1:Event):void
            {
               §_-Ro§.removeEventListener(Event.ADDED_TO_STAGE,arguments.callee);
               init(loadingScreen,uiData,assetData);
            });
         }
      }
      
      protected function init(param1:DisplayObjectContainer, param2:XML, param3:XML) : void
      {
         §_-Jn§.§_-UD§(stage);
         §_-Jn§.§_-Ui§ = true;
         §_-mR§.§_-OA§(this.getVersionInfo());
         §_-UO§.§_-2W§ = §_-Ro§.stage.loaderInfo.parameters;
         §_-pD§.init();
         §_-u§(new §_-Vu§());
         var _loc4_:§_-P-§ = new §_-P-§(true,§_-P-§.§_-1h§,this.getMinLoadingScreenTime(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
         §_-u§(_loc4_);
         _loc4_.§_-u7§(param1);
         _loc4_.§_-qH§(param3);
         §_-uW§.init(param2);
         if(§_-Kb§.§ var§())
         {
            §_-Kb§.§_-CL§("serverConnectionError");
         }
         §_-rY§(§_-P-§.§_-1h§);
         this.§_-Lh§();
      }
      
      public function §_-Lh§() : void
      {
         §_-Ro§.addEventListener(Event.ENTER_FRAME,this.§_-2f§);
         §_-Ro§.stage.addEventListener(Event.MOUSE_LEAVE,this.mouseLeave);
         §_-Ro§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.keyDown);
         §_-Ro§.stage.addEventListener(KeyboardEvent.KEY_UP,this.keyUp);
         this.§_-yc§ = getTimer();
      }
      
      public function mouseLeave(param1:Event) : void
      {
         if(§_-xn§())
         {
            §_-xn§().mouseLeave();
         }
      }
      
      public function keyDown(param1:KeyboardEvent) : void
      {
         if(§_-xn§())
         {
            §_-xn§().keyDown(param1);
         }
         §_-mR§.keyDown(param1);
      }
      
      public function keyUp(param1:KeyboardEvent) : void
      {
         if(§_-xn§())
         {
            §_-xn§().keyUp(param1);
         }
      }
      
      public function §_-2f§(param1:Event) : void
      {
         var _loc2_:Number = getTimer() - this.§_-yc§;
         this.§_-yc§ = getTimer();
         §_-Mh§.§_-pX§(§_-Ro§.mouseX,§_-Ro§.mouseY);
         if(§_-K2§())
         {
            return;
         }
         this.updateState(_loc2_);
      }
      
      override public function updateState(param1:Number) : int
      {
         var _loc2_:int = super.updateState(param1);
         if(§_-xn§().isGenericState())
         {
            if(_loc2_ == §_-UO§.STATE_STATUS_COMPLETED)
            {
               §_-Ro§.addChild(§_-Mh§.activate());
               this.setFirstGameState();
            }
         }
         return _loc2_;
      }
      
      public function setFirstGameState() : void
      {
         §_-rY§(§_-Vu§.§_-1h§);
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
