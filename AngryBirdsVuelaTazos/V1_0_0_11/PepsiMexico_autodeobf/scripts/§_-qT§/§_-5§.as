package §_-qT§
{
   import §_-19§.§_-GJ§;
   import §_-5x§.§_-8p§;
   import §_-QM§.§_-GC§;
   import §_-TE§.§_-7C§;
   import §_-TE§.§_-Gy§;
   import §_-TE§.§_-PN§;
   import §_-TE§.§_-ah§;
   import §_-ZG§.§_-HK§;
   import §_-ZG§.§_-Ne§;
   import §_-nd§.§_-wz§;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.utils.getTimer;
   
   public class §_-5§ extends §_-ah§
   {
      
      public static var §_-jQ§:Number;
      
      public static var §_-Sl§:Number;
       
      
      public var §_-jD§:Number;
      
      public function §_-5§(param1:§_-c9§, param2:DisplayObjectContainer, param3:XML, param4:XML)
      {
         var canvas:§_-c9§ = param1;
         var loadingScreen:DisplayObjectContainer = param2;
         var uiData:XML = param3;
         var assetData:XML = param4;
         super(canvas);
         if(§_-Pv§.stage)
         {
            this.init(loadingScreen,uiData,assetData);
         }
         else
         {
            §_-Pv§.addEventListener(Event.ADDED_TO_STAGE,function(param1:Event):void
            {
               §_-Pv§.removeEventListener(Event.ADDED_TO_STAGE,arguments.callee);
               init(loadingScreen,uiData,assetData);
            });
         }
      }
      
      protected function init(param1:DisplayObjectContainer, param2:XML, param3:XML) : void
      {
         §_-GJ§.§_-da§(stage);
         §_-GJ§.§_-n3§ = true;
         §_-Ne§.§_-9t§(this.getVersionInfo());
         §_-PN§.§_-kK§ = §_-Pv§.stage.loaderInfo.parameters;
         §_-8p§.init();
         §_-Ds§(new §_-7C§());
         var _loc4_:§_-Gy§ = new §_-Gy§(true,§_-Gy§.§_-dh§,this.getMinLoadingScreenTime(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
         §_-Ds§(_loc4_);
         _loc4_.§_-4B§(param1);
         _loc4_.§_-H0§(param3);
         §_-GC§.init(param2);
         if(§_-wz§.§_-98§())
         {
            §_-wz§.§_-II§("serverConnectionError");
         }
         override(§_-Gy§.§_-dh§);
         this.§_-am§();
      }
      
      public function §_-am§() : void
      {
         §_-Pv§.addEventListener(Event.ENTER_FRAME,this.§_-FW§);
         §_-Pv§.stage.addEventListener(Event.MOUSE_LEAVE,this.mouseLeave);
         §_-Pv§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.keyDown);
         §_-Pv§.stage.addEventListener(KeyboardEvent.KEY_UP,this.keyUp);
         this.§_-jD§ = getTimer();
      }
      
      public function mouseLeave(param1:Event) : void
      {
         if(§_-sD§())
         {
            §_-sD§().mouseLeave();
         }
      }
      
      public function keyDown(param1:KeyboardEvent) : void
      {
         if(§_-sD§())
         {
            §_-sD§().keyDown(param1);
         }
         §_-Ne§.keyDown(param1);
      }
      
      public function keyUp(param1:KeyboardEvent) : void
      {
         if(§_-sD§())
         {
            §_-sD§().keyUp(param1);
         }
      }
      
      public function §_-FW§(param1:Event) : void
      {
         var _loc2_:Number = getTimer() - this.§_-jD§;
         this.§_-jD§ = getTimer();
         §_-HK§.§_-6c§(§_-Pv§.mouseX,§_-Pv§.mouseY);
         if(§_-Wm§())
         {
            return;
         }
         this.updateState(_loc2_);
      }
      
      override public function updateState(param1:Number) : int
      {
         var _loc2_:int = super.updateState(param1);
         if(§_-sD§().isGenericState())
         {
            if(_loc2_ == §_-PN§.STATE_STATUS_COMPLETED)
            {
               §_-Pv§.addChild(§_-HK§.activate());
               this.setFirstGameState();
            }
         }
         return _loc2_;
      }
      
      public function setFirstGameState() : void
      {
         override(§_-7C§.§_-dh§);
      }
      
      public function §_-LV§(param1:Function) : void
      {
         §_-Gy§(§_-td§(§_-Gy§.§_-dh§)).§_-ru§(param1);
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
