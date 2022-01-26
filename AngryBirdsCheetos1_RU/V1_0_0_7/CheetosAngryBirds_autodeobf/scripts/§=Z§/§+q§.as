package §=Z§
{
   import §!7§.§`R§;
   import §'D§.§6!L§;
   import §'D§.§8e§;
   import §2!8§.§^!!§;
   import §2>§.§?!1§;
   import §4!W§.§]H§;
   import §;!K§.§9T§;
   import §]m§.§%!D§;
   import §]m§.§&P§;
   import §]m§.§-D§;
   import §]m§.§4!Q§;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.utils.getTimer;
   
   public class §+q§ extends §&P§ implements IEventDispatcher
   {
      
      public static var § !8§:Number;
      
      public static var §16§:Number;
       
      
      public var §6#§:Number;
      
      private var §]+§:EventDispatcher;
      
      public function §+q§(param1:§4N§, param2:DisplayObjectContainer, param3:XML, param4:XML)
      {
         var canvas:§4N§ = param1;
         var loadingScreen:DisplayObjectContainer = param2;
         var uiData:XML = param3;
         var assetData:XML = param4;
         this.§]+§ = new EventDispatcher();
         super(canvas);
         if(§3!J§.stage)
         {
            this.init(loadingScreen,uiData,assetData);
         }
         else
         {
            §3!J§.addEventListener(Event.ADDED_TO_STAGE,function(param1:Event):void
            {
               §3!J§.removeEventListener(Event.ADDED_TO_STAGE,arguments.callee);
               init(loadingScreen,uiData,assetData);
            });
         }
      }
      
      protected function §^N§() : void
      {
         §?!1§.init();
      }
      
      protected function init(param1:DisplayObjectContainer, param2:XML, param3:XML) : void
      {
         §^!!§.§-W§(stage);
         §^!!§.§>>§ = false;
         §8e§.§9d§(this.getVersionInfo());
         §-D§.§%!a§ = §3!J§.stage.loaderInfo.parameters;
         this.§^N§();
         §#N§(new §4!Q§());
         var _loc4_:§%!D§ = this.initStateLoad();
         §#N§(_loc4_);
         _loc4_.§8!-§(param1);
         _loc4_.§7!4§(param3);
         §9T§.init(param2);
         if(§]H§.§9!7§())
         {
            §]H§.§'v§("serverConnectionError");
         }
         § !$§(§%!D§.§7!Q§);
         this.§3b§();
      }
      
      protected function initStateLoad() : §%!D§
      {
         return new §%!D§(true,§%!D§.§7!Q§,this.getMinLoadingScreenTime(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
      }
      
      public function §3b§() : void
      {
         §3!J§.addEventListener(Event.ENTER_FRAME,this.§in§);
         §3!J§.stage.addEventListener(Event.MOUSE_LEAVE,this.mouseLeave);
         §3!J§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.keyDown);
         §3!J§.stage.addEventListener(KeyboardEvent.KEY_UP,this.keyUp);
         this.§6#§ = getTimer();
      }
      
      public function mouseLeave(param1:Event) : void
      {
         if(§"!A§())
         {
            §"!A§().mouseLeave();
         }
      }
      
      public function keyDown(param1:KeyboardEvent) : void
      {
         if(§"!A§())
         {
            §"!A§().keyDown(param1);
         }
         §8e§.keyDown(param1);
      }
      
      public function keyUp(param1:KeyboardEvent) : void
      {
         if(§"!A§())
         {
            §"!A§().keyUp(param1);
         }
      }
      
      public function §in§(param1:Event) : void
      {
         var _loc2_:Number = getTimer() - this.§6#§;
         this.§6#§ = getTimer();
         §`R§.§!!8§.update(_loc2_);
         this.§]+§.dispatchEvent(param1);
         §6!L§.§,!'§(§3!J§.mouseX,§3!J§.mouseY);
         if(§=H§())
         {
            return;
         }
         if(this.updateState(_loc2_) == §-D§.STATE_STATUS_COMPLETED)
         {
            §=H§();
         }
      }
      
      override public function updateState(param1:Number) : int
      {
         var _loc2_:int = super.updateState(param1);
         if(§"!A§().isGenericState())
         {
            if(_loc2_ == §-D§.STATE_STATUS_COMPLETED)
            {
               §3!J§.addChild(§6!L§.activate());
               this.setFirstGameState();
            }
         }
         return _loc2_;
      }
      
      override protected function previousStateDeactivate() : void
      {
         §`R§.§!!8§.§ m§();
      }
      
      public function setFirstGameState() : void
      {
         § !$§(§4!Q§.§7!Q§);
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
         this.§]+§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         this.§]+§.removeEventListener(param1,param2,param3);
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return false;
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§]+§.hasEventListener(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§]+§.willTrigger(param1);
      }
   }
}
