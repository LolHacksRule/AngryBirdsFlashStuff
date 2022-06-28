package §&A§
{
   import §"R§.§ !Q§;
   import §2h§.§[!'§;
   import §57§.§,!b§;
   import §;!5§.§5>§;
   import §<!>§.§#i§;
   import §<!>§.§,?§;
   import §<!>§.§>!C§;
   import §<!>§.§?Y§;
   import §=5§.SWFWheel;
   import §^_§.§!>§;
   import §^_§.§=H§;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.utils.getTimer;
   
   public class § !f§ extends §>!C§ implements IEventDispatcher
   {
      
      public static var §%#§:Number;
      
      public static var §="§:Number;
       
      
      public var §%![§:Number;
      
      private var §+B§:EventDispatcher;
      
      public function § !f§(param1:§,6§, param2:DisplayObjectContainer, param3:XML, param4:XML)
      {
         var canvas:§,6§ = param1;
         var loadingScreen:DisplayObjectContainer = param2;
         var uiData:XML = param3;
         var assetData:XML = param4;
         this.§+B§ = new EventDispatcher();
         super(canvas);
         if(§8!0§.stage)
         {
            this.init(loadingScreen,uiData,assetData);
         }
         else
         {
            §8!0§.addEventListener(Event.ADDED_TO_STAGE,function(param1:Event):void
            {
               §8!0§.removeEventListener(Event.ADDED_TO_STAGE,arguments.callee);
               init(loadingScreen,uiData,assetData);
            });
         }
      }
      
      protected function §5!y§() : void
      {
         § !Q§.init();
      }
      
      protected function init(param1:DisplayObjectContainer, param2:XML, param3:XML) : void
      {
         SWFWheel.initialize(stage);
         SWFWheel.§&!k§ = true;
         §!>§.§,!P§(this.getVersionInfo());
         §?Y§.§'!;§ = §8!0§.stage.loaderInfo.parameters;
         this.§5!y§();
         §9!`§(new §#i§());
         var _loc4_:§,?§ = this.initStateLoad();
         §9!`§(_loc4_);
         _loc4_.setLoadingScreen(param1);
         _loc4_.§;w§(param3);
         §[!'§.init(param2);
         if(§5>§.§"1§())
         {
            §5>§.§7Y§("serverConnectionError");
         }
         §,!6§(§,?§.§?h§);
         this.§>!-§();
      }
      
      protected function initStateLoad() : §,?§
      {
         return new §,?§(true,§,?§.§?h§,this.getMinLoadingScreenTime(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
      }
      
      public function §>!-§() : void
      {
         §8!0§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         §8!0§.stage.addEventListener(Event.MOUSE_LEAVE,this.mouseLeave);
         §8!0§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.keyDown);
         §8!0§.stage.addEventListener(KeyboardEvent.KEY_UP,this.keyUp);
         this.§%![§ = getTimer();
      }
      
      public function mouseLeave(param1:Event) : void
      {
         if(§4C§())
         {
            §4C§().mouseLeave();
         }
      }
      
      public function keyDown(param1:KeyboardEvent) : void
      {
         if(§4C§())
         {
            §4C§().keyDown(param1);
         }
         §!>§.keyDown(param1);
      }
      
      public function keyUp(param1:KeyboardEvent) : void
      {
         if(§4C§())
         {
            §4C§().keyUp(param1);
         }
      }
      
      public function onEnterFrame(param1:Event) : void
      {
         var _loc2_:Number = getTimer() - this.§%![§;
         this.§%![§ = getTimer();
         §,!b§.§<d§.update(_loc2_);
         this.§+B§.dispatchEvent(param1);
         §=H§.§9!x§(§8!0§.mouseX,§8!0§.mouseY);
         if(§8p§())
         {
            return;
         }
         if(this.updateState(_loc2_) == §?Y§.STATE_STATUS_COMPLETED)
         {
            §8p§();
         }
      }
      
      override public function updateState(param1:Number) : int
      {
         var _loc2_:int = super.updateState(param1);
         if(§4C§().isGenericState())
         {
            if(_loc2_ == §?Y§.STATE_STATUS_COMPLETED)
            {
               §8!0§.addChild(§=H§.activate());
               this.setFirstGameState();
            }
         }
         return _loc2_;
      }
      
      override protected function previousStateDeactivate() : void
      {
         §,!b§.§<d§.§ if§();
      }
      
      public function setFirstGameState() : void
      {
         §,!6§(§#i§.§?h§);
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
         this.§+B§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         this.§+B§.removeEventListener(param1,param2,param3);
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return false;
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§+B§.hasEventListener(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§+B§.willTrigger(param1);
      }
   }
}
