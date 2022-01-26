package §_-9a§
{
   import §_-5v§.§_-JH§;
   import §_-9s§.§_-db§;
   import §_-E5§.§_-Wo§;
   import §_-EH§.*;
   import §_-IO§.§_-zS§;
   import §_-aD§.§_-nW§;
   import §_-r6§.§_-Oy§;
   import §_-r6§.§_-oy§;
   import §_-xL§.§_-y9§;
   import flash.display.DisplayObjectContainer;
   import flash.events.*;
   import flash.utils.*;
   
   public class §_-IU§ extends §_-xS§
   {
      
      public static var §_-Si§:Number;
      
      public static var §_-Y0§:Number;
       
      
      public var §_-Zo§:Number;
      
      private var §_-2u§:Vector.<§_-nW§>;
      
      public function §_-IU§(param1:§_-a5§, param2:DisplayObjectContainer, param3:XML, param4:XML)
      {
         var canvas:§_-a5§ = param1;
         var loadingScreen:DisplayObjectContainer = param2;
         var uiData:XML = param3;
         var assetData:XML = param4;
         this.§_-2u§ = new Vector.<§_-nW§>();
         super(canvas);
         if(§_-93§.stage)
         {
            this.init(loadingScreen,uiData,assetData);
         }
         else
         {
            §_-93§.addEventListener(Event.ADDED_TO_STAGE,function(param1:Event):void
            {
               §_-93§.removeEventListener(Event.ADDED_TO_STAGE,arguments.callee);
               init(loadingScreen,uiData,assetData);
            });
         }
      }
      
      protected function init(param1:DisplayObjectContainer, param2:XML, param3:XML) : void
      {
         §_-JH§.§_-sY§(stage);
         §_-JH§.§_-4Y§ = true;
         §_-Oy§.§_-UY§(this.getVersionInfo());
         §_-uz§.§_-go§ = §_-93§.stage.loaderInfo.parameters;
         §_-Wo§.init();
         §_-ia§(new §_-AP§());
         var _loc4_:§_-cU§ = this.§_-1i§();
         §_-ia§(_loc4_);
         _loc4_.§_-EP§(param1);
         _loc4_.§_-GS§(param3);
         §_-y9§.init(param2);
         if(§_-zS§.§_-i5§())
         {
            §_-zS§.§_-UI§("serverConnectionError");
         }
         §_-va§(§_-cU§.§_-3o§);
         this.§_-SN§();
      }
      
      protected function §_-1i§() : §_-cU§
      {
         return new §_-cU§(true,§_-cU§.§_-3o§,this.getMinLoadingScreenTime(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
      }
      
      public function §_-SN§() : void
      {
         §_-93§.addEventListener(Event.ENTER_FRAME,this.§_-qE§);
         §_-93§.stage.addEventListener(Event.MOUSE_LEAVE,this.mouseLeave);
         §_-93§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.keyDown);
         §_-93§.stage.addEventListener(KeyboardEvent.KEY_UP,this.keyUp);
         this.§_-Zo§ = getTimer();
      }
      
      public function mouseLeave(param1:Event) : void
      {
         if(§_-vm§())
         {
            §_-vm§().mouseLeave();
         }
      }
      
      public function keyDown(param1:KeyboardEvent) : void
      {
         if(§_-vm§())
         {
            §_-vm§().keyDown(param1);
         }
         §_-Oy§.keyDown(param1);
      }
      
      public function keyUp(param1:KeyboardEvent) : void
      {
         if(§_-vm§())
         {
            §_-vm§().keyUp(param1);
         }
      }
      
      public function §_-qE§(param1:Event) : void
      {
         var _loc3_:§_-nW§ = null;
         var _loc2_:Number = getTimer() - this.§_-Zo§;
         this.§_-Zo§ = getTimer();
         §_-db§.§_-yU§.update(_loc2_);
         for each(_loc3_ in this.§_-2u§)
         {
            _loc3_.§_-qE§();
         }
         §_-oy§.§_-oC§(§_-93§.mouseX,§_-93§.mouseY);
         if(§_-x3§())
         {
            return;
         }
         if(this.updateState(_loc2_) == §_-uz§.STATE_STATUS_COMPLETED)
         {
            §_-x3§();
         }
      }
      
      override public function updateState(param1:Number) : int
      {
         var _loc2_:int = super.updateState(param1);
         if(§_-vm§().isGenericState())
         {
            if(_loc2_ == §_-uz§.STATE_STATUS_COMPLETED)
            {
               §_-93§.addChild(§_-oy§.activate());
               this.setFirstGameState();
            }
         }
         return _loc2_;
      }
      
      override protected function previousStateDeactivate() : void
      {
         §_-db§.§_-yU§.§_-aF§();
      }
      
      public function setFirstGameState() : void
      {
         §_-va§(§_-AP§.§_-3o§);
      }
      
      public function getMinLoadingScreenTime() : Number
      {
         return 1000;
      }
      
      public function getVersionInfo() : String
      {
         return "unknown";
      }
      
      public function §_-jn§(param1:§_-nW§) : void
      {
         if(this.§_-2u§.indexOf(param1) < 0)
         {
            this.§_-2u§.push(param1);
         }
      }
      
      public function §_-W2§(param1:§_-nW§) : void
      {
         var _loc2_:int = this.§_-2u§.indexOf(param1);
         if(_loc2_ >= 0)
         {
            this.§_-2u§.splice(_loc2_,1);
         }
      }
   }
}
