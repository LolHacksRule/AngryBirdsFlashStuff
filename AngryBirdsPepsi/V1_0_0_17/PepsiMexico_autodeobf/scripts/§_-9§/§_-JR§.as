package §_-9§
{
   import §_-Ur§.§_-BN§;
   import §_-bz§.§_-uC§;
   import §_-e3§.§_-54§;
   import §_-e3§.§_-9Y§;
   import §_-fv§.§_-eO§;
   import §_-rQ§.§_-Ou§;
   import §_-y7§.§_-M4§;
   import §_-y7§.§_-VA§;
   import §_-y7§.§_-YQ§;
   import §_-y7§.§_-vT§;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.utils.getTimer;
   
   public class §_-JR§ extends §_-vT§
   {
      
      public static var §_-j1§:Number;
      
      public static var §_-iZ§:Number;
       
      
      public var §_-Vh§:Number;
      
      public function §_-JR§(param1:§_-0W§, param2:DisplayObjectContainer, param3:XML, param4:XML)
      {
         var canvas:§_-0W§ = param1;
         var loadingScreen:DisplayObjectContainer = param2;
         var uiData:XML = param3;
         var assetData:XML = param4;
         super(canvas);
         if(§_-XX§.stage)
         {
            this.init(loadingScreen,uiData,assetData);
         }
         else
         {
            §_-XX§.addEventListener(Event.ADDED_TO_STAGE,function(param1:Event):void
            {
               §_-XX§.removeEventListener(Event.ADDED_TO_STAGE,arguments.callee);
               init(loadingScreen,uiData,assetData);
            });
         }
      }
      
      protected function init(param1:DisplayObjectContainer, param2:XML, param3:XML) : void
      {
         §_-eO§.§_-oA§(stage);
         §_-eO§.§_-Ay§ = true;
         §_-54§.§_-9o§(this.getVersionInfo());
         §_-VA§.§_-nP§ = §_-XX§.stage.loaderInfo.parameters;
         §_-Ou§.init();
         §_-13§(new §_-M4§());
         var _loc4_:§_-YQ§ = new §_-YQ§(true,§_-YQ§.§_-Az§,this.getMinLoadingScreenTime(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
         §_-13§(_loc4_);
         _loc4_.§_-rT§(param1);
         _loc4_.§_-Mc§(param3);
         §_-BN§.init(param2);
         if(§_-uC§.§_-cn§())
         {
            §_-uC§.§_-RY§("serverConnectionError");
         }
         §_-Ld§(§_-YQ§.§_-Az§);
         this.§_-Hn§();
      }
      
      public function §_-Hn§() : void
      {
         §_-XX§.addEventListener(Event.ENTER_FRAME,this.§_-Oe§);
         §_-XX§.stage.addEventListener(Event.MOUSE_LEAVE,this.mouseLeave);
         §_-XX§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.keyDown);
         §_-XX§.stage.addEventListener(KeyboardEvent.KEY_UP,this.keyUp);
         this.§_-Vh§ = getTimer();
      }
      
      public function mouseLeave(param1:Event) : void
      {
         if(§_-cO§())
         {
            §_-cO§().mouseLeave();
         }
      }
      
      public function keyDown(param1:KeyboardEvent) : void
      {
         if(§_-cO§())
         {
            §_-cO§().keyDown(param1);
         }
         §_-54§.keyDown(param1);
      }
      
      public function keyUp(param1:KeyboardEvent) : void
      {
         if(§_-cO§())
         {
            §_-cO§().keyUp(param1);
         }
      }
      
      public function §_-Oe§(param1:Event) : void
      {
         var _loc2_:Number = getTimer() - this.§_-Vh§;
         this.§_-Vh§ = getTimer();
         §_-9Y§.§_-1L§(§_-XX§.mouseX,§_-XX§.mouseY);
         if(§_-wg§())
         {
            return;
         }
         this.updateState(_loc2_);
      }
      
      override public function updateState(param1:Number) : int
      {
         var _loc2_:int = super.updateState(param1);
         if(§_-cO§().isGenericState())
         {
            if(_loc2_ == §_-VA§.STATE_STATUS_COMPLETED)
            {
               §_-XX§.addChild(§_-9Y§.activate());
               this.setFirstGameState();
            }
         }
         return _loc2_;
      }
      
      public function setFirstGameState() : void
      {
         §_-Ld§(§_-M4§.§_-Az§);
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
