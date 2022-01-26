package §_-iq§
{
   import §_-6n§.§_-5z§;
   import §_-Eo§.§_-R4§;
   import §_-Eo§.§_-Wt§;
   import §_-Yh§.§_-BS§;
   import §_-l9§.§_-Le§;
   import §_-ox§.§_-1l§;
   import §_-qT§.§_-7u§;
   import §_-qT§.§_-O5§;
   import §_-qT§.§_-bo§;
   import §_-qT§.§_-t8§;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.utils.getTimer;
   
   public class §_-jB§ extends §_-t8§
   {
      
      public static var §_-SR§:Number;
      
      public static var §_-oB§:Number;
       
      
      public var §_-nf§:Number;
      
      public function §_-jB§(param1:§_-l7§, param2:DisplayObjectContainer, param3:XML, param4:XML)
      {
         var canvas:§_-l7§ = param1;
         var loadingScreen:DisplayObjectContainer = param2;
         var uiData:XML = param3;
         var assetData:XML = param4;
         super(canvas);
         if(§_-5S§.stage)
         {
            this.init(loadingScreen,uiData,assetData);
         }
         else
         {
            §_-5S§.addEventListener(Event.ADDED_TO_STAGE,function(param1:Event):void
            {
               §_-5S§.removeEventListener(Event.ADDED_TO_STAGE,arguments.callee);
               init(loadingScreen,uiData,assetData);
            });
         }
      }
      
      protected function init(param1:DisplayObjectContainer, param2:XML, param3:XML) : void
      {
         §_-Le§.§_-gD§(stage);
         §_-Le§.§_-h7§ = true;
         §_-R4§.§_-oA§(this.getVersionInfo());
         §_-O5§.§_-WV§ = §_-5S§.stage.loaderInfo.parameters;
         §_-5z§.init();
         §_-Uy§(new §_-7u§());
         var _loc4_:§_-bo§ = new §_-bo§(true,§_-bo§.§_-7m§,this.getMinLoadingScreenTime(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
         §_-Uy§(_loc4_);
         _loc4_.§_-he§(param1);
         _loc4_.§_-HU§(param3);
         §_-BS§.init(param2);
         if(§_-1l§.§_-y8§())
         {
            §_-1l§.§_-Dz§("serverConnectionError");
         }
         §_-kW§(§_-bo§.§_-7m§);
         this.§_-EF§();
      }
      
      public function §_-EF§() : void
      {
         §_-5S§.addEventListener(Event.ENTER_FRAME,this.§_-Rf§);
         §_-5S§.stage.addEventListener(Event.MOUSE_LEAVE,this.mouseLeave);
         §_-5S§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.keyDown);
         §_-5S§.stage.addEventListener(KeyboardEvent.KEY_UP,this.keyUp);
         this.§_-nf§ = getTimer();
      }
      
      public function mouseLeave(param1:Event) : void
      {
         if(§_-EZ§())
         {
            §_-EZ§().mouseLeave();
         }
      }
      
      public function keyDown(param1:KeyboardEvent) : void
      {
         if(§_-EZ§())
         {
            §_-EZ§().keyDown(param1);
         }
         §_-R4§.keyDown(param1);
      }
      
      public function keyUp(param1:KeyboardEvent) : void
      {
         if(§_-EZ§())
         {
            §_-EZ§().keyUp(param1);
         }
      }
      
      public function §_-Rf§(param1:Event) : void
      {
         var _loc2_:Number = getTimer() - this.§_-nf§;
         this.§_-nf§ = getTimer();
         §_-Wt§.§_-WG§(§_-5S§.mouseX,§_-5S§.mouseY);
         if(§_-Ry§())
         {
            return;
         }
         this.updateState(_loc2_);
      }
      
      override public function updateState(param1:Number) : int
      {
         var _loc2_:int = super.updateState(param1);
         if(§_-EZ§().isGenericState())
         {
            if(_loc2_ == §_-O5§.STATE_STATUS_COMPLETED)
            {
               §_-5S§.addChild(§_-Wt§.activate());
               this.setFirstGameState();
            }
         }
         return _loc2_;
      }
      
      public function setFirstGameState() : void
      {
         §_-kW§(§_-7u§.§_-7m§);
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
