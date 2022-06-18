package §0A§
{
   import §"Z§.§-N§;
   import §1Y§.§ ;§;
   import §1Y§.§&!1§;
   import §1Y§.§+$§;
   import §1Y§.§?^§;
   import §7!7§.§return§;
   import §7!P§.§-3§;
   import §7!P§.§[!1§;
   import §8v§.include;
   import §;!;§.§4>§;
   import §=Z§.§1X§;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.utils.getTimer;
   
   public class §@+§ extends §?^§ implements IEventDispatcher
   {
      
      public static var § !1§:Number;
      
      public static var §?`§:Number;
       
      
      public var §[B§:Number;
      
      private var §&!,§:EventDispatcher;
      
      public function §@+§(param1:§90§, param2:DisplayObjectContainer, param3:XML, param4:XML)
      {
         var canvas:§90§ = param1;
         var loadingScreen:DisplayObjectContainer = param2;
         var uiData:XML = param3;
         var assetData:XML = param4;
         this.§&!,§ = new EventDispatcher();
         super(canvas);
         if(§!!+§.stage)
         {
            this.init(loadingScreen,uiData,assetData);
         }
         else
         {
            §!!+§.addEventListener(Event.ADDED_TO_STAGE,function(param1:Event):void
            {
               §!!+§.removeEventListener(Event.ADDED_TO_STAGE,arguments.callee);
               init(loadingScreen,uiData,assetData);
            });
         }
      }
      
      protected function §"^§() : void
      {
         §return§.init();
      }
      
      protected function init(param1:DisplayObjectContainer, param2:XML, param3:XML) : void
      {
         §1X§.§!f§(stage);
         §1X§.§@>§ = false;
         §-3§.§40§(this.getVersionInfo());
         §-3§.§!a§ = this.getVersionInfo();
         §+$§.§@!!§ = §!!+§.stage.loaderInfo.parameters;
         this.§"^§();
         §+K§(new §&!1§());
         var _loc4_:§ ;§ = this.initStateLoad();
         §+K§(_loc4_);
         _loc4_.§,0§(param1);
         _loc4_.§&!K§(param3);
         include.init(param2);
         if(§4>§.§`!%§())
         {
            §4>§.§]y§("serverConnectionError");
         }
         §%+§(§ ;§.§,F§);
         this.§^V§();
      }
      
      protected function initStateLoad() : § ;§
      {
         return new § ;§(true,§ ;§.§,F§,this.getMinLoadingScreenTime(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
      }
      
      public function §^V§() : void
      {
         §!!+§.addEventListener(Event.ENTER_FRAME,this.§+!T§);
         §!!+§.stage.addEventListener(Event.MOUSE_LEAVE,this.mouseLeave);
         §!!+§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.keyDown);
         §!!+§.stage.addEventListener(KeyboardEvent.KEY_UP,this.keyUp);
         this.§[B§ = getTimer();
      }
      
      public function mouseLeave(param1:Event) : void
      {
         if(§<!S§())
         {
            §<!S§().mouseLeave();
         }
      }
      
      public function keyDown(param1:KeyboardEvent) : void
      {
         if(§<!S§())
         {
            §<!S§().keyDown(param1);
         }
         §-3§.keyDown(param1);
      }
      
      public function keyUp(param1:KeyboardEvent) : void
      {
         if(§<!S§())
         {
            §<!S§().keyUp(param1);
         }
      }
      
      public function §+!T§(param1:Event) : void
      {
         var _loc2_:Number = getTimer() - this.§[B§;
         this.§[B§ = getTimer();
         §-N§.§<?§.update(_loc2_);
         this.§&!,§.dispatchEvent(param1);
         §[!1§.§'o§(§!!+§.mouseX,§!!+§.mouseY);
         if(§@!7§())
         {
            return;
         }
         if(this.updateState(_loc2_) == §+$§.STATE_STATUS_COMPLETED)
         {
            §@!7§();
         }
      }
      
      override public function updateState(param1:Number) : int
      {
         var _loc2_:int = super.updateState(param1);
         if(§<!S§().isGenericState())
         {
            if(_loc2_ == §+$§.STATE_STATUS_COMPLETED)
            {
               §!!+§.addChild(§[!1§.activate());
               this.setFirstGameState();
            }
         }
         return _loc2_;
      }
      
      override protected function previousStateDeactivate() : void
      {
         §-N§.§<?§.§9"§();
      }
      
      public function setFirstGameState() : void
      {
         §%+§(§&!1§.§,F§);
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
         this.§&!,§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         this.§&!,§.removeEventListener(param1,param2,param3);
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return false;
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§&!,§.hasEventListener(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§&!,§.willTrigger(param1);
      }
   }
}
