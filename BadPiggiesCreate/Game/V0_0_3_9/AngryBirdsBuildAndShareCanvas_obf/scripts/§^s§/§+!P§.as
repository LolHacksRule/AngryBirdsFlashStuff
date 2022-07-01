package §^s§
{
   import §"h§.§<"+§;
   import §"h§.§<O§;
   import §"h§.§>C§;
   import §"h§.§@!8§;
   import §5<§.§6",§;
   import §6p§.§'!B§;
   import §7!P§.§&I§;
   import §<Z§.§"!f§;
   import §>!J§.§"g§;
   import §@!;§.§%"-§;
   import §@!;§.§&F§;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.utils.getTimer;
   
   public class §+!P§ extends §<O§ implements IEventDispatcher
   {
      
      public static var §"!J§:Number;
      
      public static var §3N§:Number;
       
      
      public var §0!r§:Number;
      
      private var §4! §:EventDispatcher;
      
      public function §+!P§(param1:§#!p§, param2:DisplayObjectContainer, param3:XML, param4:XML)
      {
         var canvas:§#!p§ = param1;
         var loadingScreen:DisplayObjectContainer = param2;
         var uiData:XML = param3;
         var assetData:XML = param4;
         this.§4! § = new EventDispatcher();
         super(canvas);
         if(§[!d§.stage)
         {
            this.init(loadingScreen,uiData,assetData);
         }
         else
         {
            §[!d§.addEventListener(Event.ADDED_TO_STAGE,function(param1:Event):void
            {
               §[!d§.removeEventListener(Event.ADDED_TO_STAGE,arguments.callee);
               init(loadingScreen,uiData,assetData);
            });
         }
      }
      
      protected function §@!P§() : void
      {
         §'!B§.init();
      }
      
      protected function init(param1:DisplayObjectContainer, param2:XML, param3:XML) : void
      {
         §&I§.initialize(stage);
         §&I§.§9!m§ = false;
         §&F§.§%!&§(this.getVersionInfo());
         §&F§.§>!Q§ = this.getVersionInfo();
         §<"+§.§1i§ = §[!d§.stage.loaderInfo.parameters;
         this.§@!P§();
         §?!B§(new §@!8§());
         var _loc4_:§>C§ = this.initStateLoad();
         §?!B§(_loc4_);
         _loc4_.§#!C§(param1);
         _loc4_.§`V§(param3);
         §"!f§.init(param2);
         if(§6",§.§6!X§())
         {
            §6",§.§,q§("serverConnectionError");
         }
         §<g§(§>C§.§8G§);
         this.§`i§();
      }
      
      protected function initStateLoad() : §>C§
      {
         return new §>C§(true,§>C§.§8G§,this.getMinLoadingScreenTime(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
      }
      
      public function §`i§() : void
      {
         §[!d§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         §[!d§.stage.addEventListener(Event.MOUSE_LEAVE,this.mouseLeave);
         §[!d§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.keyDown);
         §[!d§.stage.addEventListener(KeyboardEvent.KEY_UP,this.keyUp);
         this.§0!r§ = getTimer();
      }
      
      public function mouseLeave(param1:Event) : void
      {
         if(§+!C§())
         {
            §+!C§().mouseLeave();
         }
      }
      
      public function keyDown(param1:KeyboardEvent) : void
      {
         if(§+!C§())
         {
            §+!C§().keyDown(param1);
         }
         §&F§.keyDown(param1);
      }
      
      public function keyUp(param1:KeyboardEvent) : void
      {
         if(§+!C§())
         {
            §+!C§().keyUp(param1);
         }
      }
      
      public function onEnterFrame(param1:Event) : void
      {
         var _loc2_:Number = getTimer() - this.§0!r§;
         this.§0!r§ = getTimer();
         §"g§.§'!o§.update(_loc2_);
         this.§4! §.dispatchEvent(param1);
         §%"-§.§,!l§(§[!d§.mouseX,§[!d§.mouseY);
         if(§4w§())
         {
            return;
         }
         if(this.updateState(_loc2_) == §<"+§.STATE_STATUS_COMPLETED)
         {
            §4w§();
         }
      }
      
      override public function updateState(param1:Number) : int
      {
         var _loc2_:int = super.updateState(param1);
         if(§+!C§().isGenericState())
         {
            if(_loc2_ == §<"+§.STATE_STATUS_COMPLETED)
            {
               §[!d§.addChild(§%"-§.activate());
               this.setFirstGameState();
            }
         }
         return _loc2_;
      }
      
      override protected function previousStateDeactivate() : void
      {
         §"g§.§'!o§.§^j§();
      }
      
      public function setFirstGameState() : void
      {
         §<g§(§@!8§.§8G§);
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
         this.§4! §.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         this.§4! §.removeEventListener(param1,param2,param3);
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return false;
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§4! §.hasEventListener(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§4! §.willTrigger(param1);
      }
   }
}
