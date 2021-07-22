package §%"J§
{
   import §&%§.SWFWheel;
   import §+!c§.§&!0§;
   import §+!c§.§;!=§;
   import §2"'§.§0W§;
   import §2<§.§8M§;
   import §8";§.§+d§;
   import §8";§.§5]§;
   import §8";§.§6!9§;
   import §8";§.§?4§;
   import §8m§.§@"M§;
   import §`"%§.§ "<§;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.utils.getTimer;
   
   public class §3!O§ extends §6!9§ implements IEventDispatcher
   {
      
      public static var §7!i§:Number;
      
      public static var §9A§:Number;
       
      
      public var §%!s§:Number;
      
      private var §]" §:EventDispatcher;
      
      public function §3!O§(param1:§!`§, param2:DisplayObjectContainer, param3:XML, param4:XML)
      {
         var canvas:§!`§ = param1;
         var loadingScreen:DisplayObjectContainer = param2;
         var uiData:XML = param3;
         var assetData:XML = param4;
         this.§]" § = new EventDispatcher();
         super(canvas);
         if(§%3§.stage)
         {
            this.init(loadingScreen,uiData,assetData);
         }
         else
         {
            §%3§.addEventListener(Event.ADDED_TO_STAGE,function(param1:Event):void
            {
               §%3§.removeEventListener(Event.ADDED_TO_STAGE,arguments.callee);
               init(loadingScreen,uiData,assetData);
            });
         }
      }
      
      protected function §;!Z§() : void
      {
         §@"M§.init();
      }
      
      protected function init(param1:DisplayObjectContainer, param2:XML, param3:XML) : void
      {
         SWFWheel.initialize(stage);
         SWFWheel.§["&§ = false;
         §;!=§.§;"J§(this.getVersionInfo());
         §;!=§.§]!_§ = this.getVersionInfo();
         §+d§.§!"R§ = §%3§.stage.loaderInfo.parameters;
         this.§;!Z§();
         §%1§(new §5]§());
         var _loc4_:§?4§ = this.initStateLoad();
         §%1§(_loc4_);
         _loc4_.setLoadingScreen(param1);
         _loc4_.§,"0§(param3);
         § "<§.init(param2);
         if(§8M§.§#!j§())
         {
            §8M§.§#H§("serverConnectionError");
         }
         §`H§(§?4§.STATE_NAME);
         this.§#r§();
      }
      
      protected function initStateLoad() : §?4§
      {
         return new §?4§(true,§?4§.STATE_NAME,this.getMinLoadingScreenTime(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
      }
      
      public function §#r§() : void
      {
         §%3§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         §%3§.stage.addEventListener(Event.MOUSE_LEAVE,this.mouseLeave);
         §%3§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.keyDown);
         §%3§.stage.addEventListener(KeyboardEvent.KEY_UP,this.keyUp);
         this.§%!s§ = getTimer();
      }
      
      public function mouseLeave(param1:Event) : void
      {
         if(§2!d§())
         {
            §2!d§().mouseLeave();
         }
      }
      
      public function keyDown(param1:KeyboardEvent) : void
      {
         if(§2!d§())
         {
            §2!d§().keyDown(param1);
         }
         §;!=§.keyDown(param1);
      }
      
      public function keyUp(param1:KeyboardEvent) : void
      {
         if(§2!d§())
         {
            §2!d§().keyUp(param1);
         }
      }
      
      public function onEnterFrame(param1:Event) : void
      {
         var _loc2_:Number = getTimer() - this.§%!s§;
         this.§%!s§ = getTimer();
         §0W§.§&"5§.update(_loc2_);
         this.§]" §.dispatchEvent(param1);
         §&!0§.§%!E§(§%3§.mouseX,§%3§.mouseY);
         if(§@">§())
         {
            return;
         }
         if(this.updateState(_loc2_) == §+d§.STATE_STATUS_COMPLETED)
         {
            §@">§();
         }
      }
      
      override public function updateState(param1:Number) : int
      {
         var _loc2_:int = super.updateState(param1);
         if(§2!d§().isGenericState())
         {
            if(_loc2_ == §+d§.STATE_STATUS_COMPLETED)
            {
               §%3§.addChild(§&!0§.activate());
               this.setFirstGameState();
            }
         }
         return _loc2_;
      }
      
      override protected function previousStateDeactivate() : void
      {
         §0W§.§&"5§.§'"=§();
      }
      
      public function setFirstGameState() : void
      {
         §`H§(§5]§.STATE_NAME);
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
         this.§]" §.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         this.§]" §.removeEventListener(param1,param2,param3);
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return false;
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§]" §.hasEventListener(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§]" §.willTrigger(param1);
      }
   }
}
