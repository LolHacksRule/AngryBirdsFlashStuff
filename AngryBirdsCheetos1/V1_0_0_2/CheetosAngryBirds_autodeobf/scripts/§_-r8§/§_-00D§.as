package §_-r8§
{
   import §_-Bi§.§_-p0§;
   import §_-G8§.§_-Qz§;
   import §_-VH§.§_-X6§;
   import §_-aA§.§_-HE§;
   import §_-aA§.§_-I0§;
   import §_-jV§.§_-mI§;
   import §_-sj§.§_-4z§;
   import §_-sj§.§_-Vo§;
   import §_-sj§.§_-kQ§;
   import §_-sj§.§_-qs§;
   import §_-w8§.§_-Jg§;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.utils.getTimer;
   
   public class §_-00D§ extends §_-Vo§
   {
      
      public static var §_-je§:Number;
      
      public static var §_-pd§:Number;
       
      
      public var §_-2v§:Number;
      
      public function §_-00D§(param1:§_-G7§, param2:DisplayObjectContainer, param3:XML, param4:XML)
      {
         var canvas:§_-G7§ = param1;
         var loadingScreen:DisplayObjectContainer = param2;
         var uiData:XML = param3;
         var assetData:XML = param4;
         super(canvas);
         if(§_-bk§.stage)
         {
            this.init(loadingScreen,uiData,assetData);
         }
         else
         {
            §_-bk§.addEventListener(Event.ADDED_TO_STAGE,function(param1:Event):void
            {
               §_-bk§.removeEventListener(Event.ADDED_TO_STAGE,arguments.callee);
               init(loadingScreen,uiData,assetData);
            });
         }
      }
      
      protected function init(param1:DisplayObjectContainer, param2:XML, param3:XML) : void
      {
         §_-Qz§.§_-9M§(stage);
         §_-Qz§.§_-jz§ = true;
         §_-I0§.§_-Uv§(this.getVersionInfo());
         §_-qs§.§_-Ks§ = §_-bk§.stage.loaderInfo.parameters;
         §_-X6§.init();
         §_-Kg§(new §_-kQ§());
         var _loc4_:§_-4z§ = this.§_-CB§();
         §_-Kg§(_loc4_);
         _loc4_.§_-82§(param1);
         _loc4_.§_-VA§(param3);
         §_-Jg§.init(param2);
         if(§_-p0§.§_-0M§())
         {
            §_-p0§.§_-SY§("serverConnectionError");
         }
         §_-MV§(§_-4z§.§_-jn§);
         this.§_-8o§();
      }
      
      protected function §_-CB§() : §_-4z§
      {
         return new §_-4z§(true,§_-4z§.§_-jn§,this.getMinLoadingScreenTime(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
      }
      
      public function §_-8o§() : void
      {
         §_-bk§.addEventListener(Event.ENTER_FRAME,this.§_-TU§);
         §_-bk§.stage.addEventListener(Event.MOUSE_LEAVE,this.mouseLeave);
         §_-bk§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.keyDown);
         §_-bk§.stage.addEventListener(KeyboardEvent.KEY_UP,this.keyUp);
         this.§_-2v§ = getTimer();
      }
      
      public function mouseLeave(param1:Event) : void
      {
         if(§_-kl§())
         {
            §_-kl§().mouseLeave();
         }
      }
      
      public function keyDown(param1:KeyboardEvent) : void
      {
         if(§_-kl§())
         {
            §_-kl§().keyDown(param1);
         }
         §_-I0§.keyDown(param1);
      }
      
      public function keyUp(param1:KeyboardEvent) : void
      {
         if(§_-kl§())
         {
            §_-kl§().keyUp(param1);
         }
      }
      
      public function §_-TU§(param1:Event) : void
      {
         var _loc2_:Number = getTimer() - this.§_-2v§;
         this.§_-2v§ = getTimer();
         §_-mI§.§_-0H§.update(_loc2_);
         §_-HE§.§_-KF§(§_-bk§.mouseX,§_-bk§.mouseY);
         if(§_-I7§())
         {
            return;
         }
         if(this.updateState(_loc2_) == §_-qs§.STATE_STATUS_COMPLETED)
         {
            §_-I7§();
         }
      }
      
      override public function updateState(param1:Number) : int
      {
         var _loc2_:int = super.updateState(param1);
         if(§_-kl§().isGenericState())
         {
            if(_loc2_ == §_-qs§.STATE_STATUS_COMPLETED)
            {
               §_-bk§.addChild(§_-HE§.activate());
               this.setFirstGameState();
            }
         }
         return _loc2_;
      }
      
      override protected function previousStateDeactivate() : void
      {
         §_-mI§.§_-0H§.§_-MC§();
      }
      
      public function setFirstGameState() : void
      {
         §_-MV§(§_-kQ§.§_-jn§);
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
