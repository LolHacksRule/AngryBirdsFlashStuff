package §_-jn§
{
   import §_-0AB§.§_-cx§;
   import §_-0BH§.§_-FK§;
   import §_-0BH§.§_-Hy§;
   import §_-4g§.§_-pX§;
   import §_-Hb§.§_-ok§;
   import §_-Ya§.SWFWheel;
   import §_-Yl§.§_-vB§;
   import §_-x8§.§_-It§;
   import §_-x8§.§_-RM§;
   import §_-x8§.§_-Ue§;
   import §_-x8§.§_-nG§;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.utils.getTimer;
   
   public class §_-G2§ extends §_-Ue§ implements IEventDispatcher
   {
      
      public static var §_-Jg§:Number;
      
      public static var §_-4a§:Number;
       
      
      public var §_-09Y§:Number;
      
      private var §_-Rr§:EventDispatcher;
      
      public function §_-G2§(param1:§_-hS§, param2:DisplayObjectContainer, param3:XML, param4:XML)
      {
         var canvas:§_-hS§ = param1;
         var loadingScreen:DisplayObjectContainer = param2;
         var uiData:XML = param3;
         var assetData:XML = param4;
         this.§_-Rr§ = new EventDispatcher();
         super(canvas);
         if(§_-t8§.stage)
         {
            this.init(loadingScreen,uiData,assetData);
         }
         else
         {
            §_-t8§.addEventListener(Event.ADDED_TO_STAGE,function(param1:Event):void
            {
               §_-t8§.removeEventListener(Event.ADDED_TO_STAGE,arguments.callee);
               init(loadingScreen,uiData,assetData);
            });
         }
      }
      
      protected function §_-do§() : void
      {
         §_-pX§.init();
      }
      
      protected function init(param1:DisplayObjectContainer, param2:XML, param3:XML) : void
      {
         SWFWheel.initialize(stage);
         SWFWheel.§_-ue§ = true;
         §_-FK§.§_-Xk§(this.getVersionInfo());
         §_-nG§.§_-lH§ = §_-t8§.stage.loaderInfo.parameters;
         this.§_-do§();
         §_-pP§(new §_-It§());
         var _loc4_:§_-RM§ = this.initStateLoad();
         §_-pP§(_loc4_);
         _loc4_.setLoadingScreen(param1);
         _loc4_.§_-kU§(param3);
         §_-vB§.init(param2);
         if(§_-ok§.§_-UZ§())
         {
            §_-ok§.§_-0-r§("serverConnectionError");
         }
         §_-Sk§(§_-RM§.§_-pk§);
         this.§_-AI§();
      }
      
      protected function initStateLoad() : §_-RM§
      {
         return new §_-RM§(true,§_-RM§.§_-pk§,this.getMinLoadingScreenTime(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
      }
      
      public function §_-AI§() : void
      {
         §_-t8§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         §_-t8§.stage.addEventListener(Event.MOUSE_LEAVE,this.mouseLeave);
         §_-t8§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.keyDown);
         §_-t8§.stage.addEventListener(KeyboardEvent.KEY_UP,this.keyUp);
         this.§_-09Y§ = getTimer();
      }
      
      public function mouseLeave(param1:Event) : void
      {
         if(§_-053§())
         {
            §_-053§().mouseLeave();
         }
      }
      
      public function keyDown(param1:KeyboardEvent) : void
      {
         if(§_-053§())
         {
            §_-053§().keyDown(param1);
         }
         §_-FK§.keyDown(param1);
      }
      
      public function keyUp(param1:KeyboardEvent) : void
      {
         if(§_-053§())
         {
            §_-053§().keyUp(param1);
         }
      }
      
      public function onEnterFrame(param1:Event) : void
      {
         var _loc2_:Number = getTimer() - this.§_-09Y§;
         this.§_-09Y§ = getTimer();
         §_-cx§.§_-3S§.update(_loc2_);
         this.§_-Rr§.dispatchEvent(param1);
         §_-Hy§.§_-wP§(§_-t8§.mouseX,§_-t8§.mouseY);
         if(§_-rl§())
         {
            return;
         }
         if(this.updateState(_loc2_) == §_-nG§.STATE_STATUS_COMPLETED)
         {
            §_-rl§();
         }
      }
      
      override public function updateState(param1:Number) : int
      {
         var _loc2_:int = super.updateState(param1);
         if(§_-053§().isGenericState())
         {
            if(_loc2_ == §_-nG§.STATE_STATUS_COMPLETED)
            {
               §_-t8§.addChild(§_-Hy§.activate());
               this.setFirstGameState();
            }
         }
         return _loc2_;
      }
      
      override protected function previousStateDeactivate() : void
      {
         §_-cx§.§_-3S§.§_-Pm§();
      }
      
      public function setFirstGameState() : void
      {
         §_-Sk§(§_-It§.§_-pk§);
      }
      
      public function getMinLoadingScreenTime() : Number
      {
         return 1000;
      }
      
      public function getVersionInfo() : String
      {
         return "unknown";
      }
      
      public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         this.§_-Rr§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         this.§_-Rr§.removeEventListener(param1,param2,param3);
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return false;
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§_-Rr§.hasEventListener(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§_-Rr§.willTrigger(param1);
      }
   }
}
