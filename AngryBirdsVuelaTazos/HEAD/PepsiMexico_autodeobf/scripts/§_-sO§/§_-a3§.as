package §_-sO§
{
   import §_-4K§.§_-Av§;
   import §_-KI§.§_-W3§;
   import §_-QG§.§_-gi§;
   import §_-QG§.§_-iL§;
   import §_-QG§.§_-n4§;
   import §_-QG§.§_-t6§;
   import §_-Qn§.§_-O7§;
   import §_-cJ§.§_-xx§;
   import §_-gM§.§_-oq§;
   import §_-gM§.§_-yj§;
   import §_-wM§.§_-9a§;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.utils.getTimer;
   
   public class §_-a3§ extends §_-gi§
   {
      
      public static var §_-DL§:Number;
      
      public static var §_-s§:Number;
       
      
      public var §_-aJ§:Number;
      
      public function §_-a3§(param1:§_-oG§, param2:DisplayObjectContainer, param3:XML, param4:XML)
      {
         var canvas:§_-oG§ = param1;
         var loadingScreen:DisplayObjectContainer = param2;
         var uiData:XML = param3;
         var assetData:XML = param4;
         super(canvas);
         if(§_-tV§.stage)
         {
            this.init(loadingScreen,uiData,assetData);
         }
         else
         {
            §_-tV§.addEventListener(Event.ADDED_TO_STAGE,function(param1:Event):void
            {
               §_-tV§.removeEventListener(Event.ADDED_TO_STAGE,arguments.callee);
               init(loadingScreen,uiData,assetData);
            });
         }
      }
      
      protected function init(param1:DisplayObjectContainer, param2:XML, param3:XML) : void
      {
         §_-W3§.§_-xS§(stage);
         §_-W3§.§return§ = true;
         §_-yj§.§_-3G§(this.getVersionInfo());
         §_-t6§.§_-I7§ = §_-tV§.stage.loaderInfo.parameters;
         §_-Av§.init();
         §_-dK§(new §_-iL§());
         var _loc4_:§_-n4§ = this.§_-jP§();
         §_-dK§(_loc4_);
         _loc4_.§_-ot§(param1);
         _loc4_.§_-MJ§(param3);
         §_-O7§.init(param2);
         if(§_-9a§.§_-tG§())
         {
            §_-9a§.§_-DD§("serverConnectionError");
         }
         §_-5l§(§_-n4§.§_-8r§);
         this.§_-R6§();
      }
      
      protected function §_-jP§() : §_-n4§
      {
         return new §_-n4§(true,§_-n4§.§_-8r§,this.getMinLoadingScreenTime(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
      }
      
      public function §_-R6§() : void
      {
         §_-tV§.addEventListener(Event.ENTER_FRAME,this.§_-pa§);
         §_-tV§.stage.addEventListener(Event.MOUSE_LEAVE,this.mouseLeave);
         §_-tV§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.keyDown);
         §_-tV§.stage.addEventListener(KeyboardEvent.KEY_UP,this.keyUp);
         this.§_-aJ§ = getTimer();
      }
      
      public function mouseLeave(param1:Event) : void
      {
         if(§_-eY§())
         {
            §_-eY§().mouseLeave();
         }
      }
      
      public function keyDown(param1:KeyboardEvent) : void
      {
         if(§_-eY§())
         {
            §_-eY§().keyDown(param1);
         }
         §_-yj§.keyDown(param1);
      }
      
      public function keyUp(param1:KeyboardEvent) : void
      {
         if(§_-eY§())
         {
            §_-eY§().keyUp(param1);
         }
      }
      
      public function §_-pa§(param1:Event) : void
      {
         var _loc2_:Number = getTimer() - this.§_-aJ§;
         this.§_-aJ§ = getTimer();
         §_-xx§.§_-uP§.update(_loc2_);
         §_-oq§.§_-Qv§(§_-tV§.mouseX,§_-tV§.mouseY);
         if(§_-xR§())
         {
            return;
         }
         if(this.updateState(_loc2_) == §_-t6§.STATE_STATUS_COMPLETED)
         {
            §_-xR§();
         }
      }
      
      override public function updateState(param1:Number) : int
      {
         var _loc2_:int = super.updateState(param1);
         if(§_-eY§().isGenericState())
         {
            if(_loc2_ == §_-t6§.STATE_STATUS_COMPLETED)
            {
               §_-tV§.addChild(§_-oq§.activate());
               this.setFirstGameState();
            }
         }
         return _loc2_;
      }
      
      override protected function previousStateDeactivate() : void
      {
         §_-xx§.§_-uP§.§_-Nf§();
      }
      
      public function setFirstGameState() : void
      {
         §_-5l§(§_-iL§.§_-8r§);
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
