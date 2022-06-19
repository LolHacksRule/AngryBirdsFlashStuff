package §_-QJ§
{
   import §_-3f§.§_-mc§;
   import §_-Py§.§_-Au§;
   import §_-Py§.§_-eK§;
   import §_-Py§.§_-kP§;
   import §_-Py§.§_-v0§;
   import §_-U0§.§_-M9§;
   import §_-U0§.§_-tF§;
   import §_-cb§.§_-0B§;
   import §_-ch§.§_-jw§;
   import §_-hx§.§_-lq§;
   import §_-q6§.§_-Iy§;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.utils.getTimer;
   
   public class §_-Om§ extends §_-kP§
   {
      
      public static var §_-gf§:Number;
      
      public static var §_-E-§:Number;
       
      
      public var §_-sG§:Number;
      
      public function §_-Om§(param1:§_-006§, param2:DisplayObjectContainer, param3:XML, param4:XML)
      {
         var canvas:§_-006§ = param1;
         var loadingScreen:DisplayObjectContainer = param2;
         var uiData:XML = param3;
         var assetData:XML = param4;
         super(canvas);
         if(§_-d3§.stage)
         {
            this.init(loadingScreen,uiData,assetData);
         }
         else
         {
            §_-d3§.addEventListener(Event.ADDED_TO_STAGE,function(param1:Event):void
            {
               §_-d3§.removeEventListener(Event.ADDED_TO_STAGE,arguments.callee);
               init(loadingScreen,uiData,assetData);
            });
         }
      }
      
      protected function init(param1:DisplayObjectContainer, param2:XML, param3:XML) : void
      {
         §_-jw§.§_-Eh§(stage);
         §_-jw§.§_-PF§ = true;
         §_-tF§.§_-QS§(this.getVersionInfo());
         §_-eK§.§_-M-§ = §_-d3§.stage.loaderInfo.parameters;
         §_-0B§.init();
         §_-bs§(new §_-Au§());
         var _loc4_:§_-v0§ = this.§_-8C§();
         §_-bs§(_loc4_);
         _loc4_.§_-Ct§(param1);
         _loc4_.§_-aD§(param3);
         §_-Iy§.init(param2);
         if(§_-mc§.§_-0a§())
         {
            §_-mc§.§ get§("serverConnectionError");
         }
         §_-gp§(§_-v0§.§_-bg§);
         this.§_-Ig§();
      }
      
      protected function §_-8C§() : §_-v0§
      {
         return new §_-v0§(true,§_-v0§.§_-bg§,this.getMinLoadingScreenTime(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
      }
      
      public function §_-Ig§() : void
      {
         §_-d3§.addEventListener(Event.ENTER_FRAME,this.§_-pw§);
         §_-d3§.stage.addEventListener(Event.MOUSE_LEAVE,this.mouseLeave);
         §_-d3§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.keyDown);
         §_-d3§.stage.addEventListener(KeyboardEvent.KEY_UP,this.keyUp);
         this.§_-sG§ = getTimer();
      }
      
      public function mouseLeave(param1:Event) : void
      {
         if(§_-Ki§())
         {
            §_-Ki§().mouseLeave();
         }
      }
      
      public function keyDown(param1:KeyboardEvent) : void
      {
         if(§_-Ki§())
         {
            §_-Ki§().keyDown(param1);
         }
         §_-tF§.keyDown(param1);
      }
      
      public function keyUp(param1:KeyboardEvent) : void
      {
         if(§_-Ki§())
         {
            §_-Ki§().keyUp(param1);
         }
      }
      
      public function §_-pw§(param1:Event) : void
      {
         var _loc2_:Number = getTimer() - this.§_-sG§;
         this.§_-sG§ = getTimer();
         §_-lq§.§var §.update(_loc2_);
         §_-M9§.§_-5b§(§_-d3§.mouseX,§_-d3§.mouseY);
         if(§_-Ss§())
         {
            return;
         }
         if(this.updateState(_loc2_) == §_-eK§.STATE_STATUS_COMPLETED)
         {
            §_-Ss§();
         }
      }
      
      override public function updateState(param1:Number) : int
      {
         var _loc2_:int = super.updateState(param1);
         if(§_-Ki§().isGenericState())
         {
            if(_loc2_ == §_-eK§.STATE_STATUS_COMPLETED)
            {
               §_-d3§.addChild(§_-M9§.activate());
               this.setFirstGameState();
            }
         }
         return _loc2_;
      }
      
      override protected function previousStateDeactivate() : void
      {
         §_-lq§.§var §.§_-q0§();
      }
      
      public function setFirstGameState() : void
      {
         §_-gp§(§_-Au§.§_-bg§);
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
