package §_-Yc§
{
   import §_-Je§.§_-Qy§;
   import §_-Je§.§_-RH§;
   import §_-Je§.§_-gd§;
   import §_-Je§.§_-uE§;
   import §_-SO§.§_-Te§;
   import §_-Ux§.§_-wl§;
   import §_-oZ§.§_-JH§;
   import §_-ot§.§_-UQ§;
   import §_-ot§.§_-o6§;
   import §_-rh§.§_-EN§;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.utils.getTimer;
   
   public class §_-e9§ extends §_-Qy§
   {
      
      public static var §_-mb§:Number;
      
      public static var §_-gG§:Number;
       
      
      public var §_-Sk§:Number;
      
      public function §_-e9§(param1:§_-Yg§, param2:DisplayObjectContainer, param3:XML, param4:XML)
      {
         var canvas:§_-Yg§ = param1;
         var loadingScreen:DisplayObjectContainer = param2;
         var uiData:XML = param3;
         var assetData:XML = param4;
         super(canvas);
         if(§_-8X§.stage)
         {
            this.init(loadingScreen,uiData,assetData);
         }
         else
         {
            §_-8X§.addEventListener(Event.ADDED_TO_STAGE,function(param1:Event):void
            {
               §_-8X§.removeEventListener(Event.ADDED_TO_STAGE,arguments.callee);
               init(loadingScreen,uiData,assetData);
            });
         }
      }
      
      protected function init(param1:DisplayObjectContainer, param2:XML, param3:XML) : void
      {
         §_-Te§.§_-WC§(stage);
         §_-Te§.§_-ap§ = true;
         §_-o6§.§ each§(this.getVersionInfo());
         §_-RH§.§_-Gp§ = §_-8X§.stage.loaderInfo.parameters;
         §_-JH§.init();
         §_-fd§(new §_-gd§());
         var _loc4_:§_-uE§ = new §_-uE§(true,§_-uE§.§_-7J§,this.getMinLoadingScreenTime(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
         §_-fd§(_loc4_);
         _loc4_.§_-v3§(param1);
         _loc4_.§_-pD§(param3);
         §_-wl§.init(param2);
         if(§_-EN§.§_-oH§())
         {
            §_-EN§.§_-Vo§("serverConnectionError");
         }
         §_-wI§(§_-uE§.§_-7J§);
         this.§_-IJ§();
      }
      
      public function §_-IJ§() : void
      {
         §_-8X§.addEventListener(Event.ENTER_FRAME,this.§_-C§);
         §_-8X§.stage.addEventListener(Event.MOUSE_LEAVE,this.mouseLeave);
         §_-8X§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.keyDown);
         §_-8X§.stage.addEventListener(KeyboardEvent.KEY_UP,this.keyUp);
         this.§_-Sk§ = getTimer();
      }
      
      public function mouseLeave(param1:Event) : void
      {
         if(§_-OG§())
         {
            §_-OG§().mouseLeave();
         }
      }
      
      public function keyDown(param1:KeyboardEvent) : void
      {
         if(§_-OG§())
         {
            §_-OG§().keyDown(param1);
         }
         §_-o6§.keyDown(param1);
      }
      
      public function keyUp(param1:KeyboardEvent) : void
      {
         if(§_-OG§())
         {
            §_-OG§().keyUp(param1);
         }
      }
      
      public function §_-C§(param1:Event) : void
      {
         var _loc2_:Number = getTimer() - this.§_-Sk§;
         this.§_-Sk§ = getTimer();
         §_-UQ§.§_-wQ§(§_-8X§.mouseX,§_-8X§.mouseY);
         if(§_-ZO§())
         {
            return;
         }
         this.updateState(_loc2_);
      }
      
      override public function updateState(param1:Number) : int
      {
         var _loc2_:int = super.updateState(param1);
         if(§_-OG§().isGenericState())
         {
            if(_loc2_ == §_-RH§.STATE_STATUS_COMPLETED)
            {
               §_-8X§.addChild(§_-UQ§.activate());
               this.setFirstGameState();
            }
         }
         return _loc2_;
      }
      
      public function setFirstGameState() : void
      {
         §_-wI§(§_-gd§.§_-7J§);
      }
      
      public function §_-9m§(param1:Function) : void
      {
         §_-uE§(§_-XA§(§_-uE§.§_-7J§)).§_-te§(param1);
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
