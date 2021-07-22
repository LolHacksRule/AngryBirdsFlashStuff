package §8!k§
{
   import §#M§.§%^§;
   import §,"9§.SWFWheel;
   import §2E§.§&p§;
   import §=#§.§+!H§;
   import §=#§.§5!S§;
   import §=#§.§;D§;
   import §=#§.§`!@§;
   import §>s§.§+m§;
   import §[!-§.§4-§;
   import §[x§.§%3§;
   import §[x§.§]"!§;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.utils.getTimer;
   
   public class §9=§ extends §+!H§ implements IEventDispatcher
   {
      
      public static var §1!t§:Number;
      
      public static var §&!B§:Number;
       
      
      public var §,!H§:Number;
      
      private var §`z§:EventDispatcher;
      
      public function §9=§(param1:§4"0§, param2:DisplayObjectContainer, param3:XML, param4:XML)
      {
         var canvas:§4"0§ = param1;
         var loadingScreen:DisplayObjectContainer = param2;
         var uiData:XML = param3;
         var assetData:XML = param4;
         this.§`z§ = new EventDispatcher();
         super(canvas);
         if(§%!C§.stage)
         {
            this.init(loadingScreen,uiData,assetData);
         }
         else
         {
            §%!C§.addEventListener(Event.ADDED_TO_STAGE,function(param1:Event):void
            {
               §%!C§.removeEventListener(Event.ADDED_TO_STAGE,arguments.callee);
               init(loadingScreen,uiData,assetData);
            });
         }
      }
      
      protected function §[5§() : void
      {
         §+m§.init();
      }
      
      protected function init(param1:DisplayObjectContainer, param2:XML, param3:XML) : void
      {
         SWFWheel.initialize(stage);
         SWFWheel.§=!K§ = false;
         §%3§.§?n§(this.getVersionInfo());
         §%3§.§47§ = this.getVersionInfo();
         §5!S§.§]A§ = §%!C§.stage.loaderInfo.parameters;
         this.§[5§();
         §2"7§(new §;D§());
         var _loc4_:§`!@§ = this.initStateLoad();
         §2"7§(_loc4_);
         _loc4_.setLoadingScreen(param1);
         _loc4_.§=!v§(param3);
         §%^§.init(param2);
         if(§4-§.§+"B§())
         {
            §4-§.§@[§("serverConnectionError");
         }
         §>"I§(§`!@§.STATE_NAME);
         this.§4[§();
      }
      
      protected function initStateLoad() : §`!@§
      {
         return new §`!@§(true,§`!@§.STATE_NAME,this.getMinLoadingScreenTime(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
      }
      
      public function §4[§() : void
      {
         §%!C§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         §%!C§.stage.addEventListener(Event.MOUSE_LEAVE,this.mouseLeave);
         §%!C§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.keyDown);
         §%!C§.stage.addEventListener(KeyboardEvent.KEY_UP,this.keyUp);
         this.§,!H§ = getTimer();
      }
      
      public function mouseLeave(param1:Event) : void
      {
         if(§6!k§())
         {
            §6!k§().mouseLeave();
         }
      }
      
      public function keyDown(param1:KeyboardEvent) : void
      {
         if(§6!k§())
         {
            §6!k§().keyDown(param1);
         }
         §%3§.keyDown(param1);
      }
      
      public function keyUp(param1:KeyboardEvent) : void
      {
         if(§6!k§())
         {
            §6!k§().keyUp(param1);
         }
      }
      
      public function onEnterFrame(param1:Event) : void
      {
         var _loc2_:Number = getTimer() - this.§,!H§;
         this.§,!H§ = getTimer();
         §&p§.§1[§.update(_loc2_);
         this.§`z§.dispatchEvent(param1);
         §]"!§.§&"1§(§%!C§.mouseX,§%!C§.mouseY);
         if(§4g§())
         {
            return;
         }
         if(this.updateState(_loc2_) == §5!S§.STATE_STATUS_COMPLETED)
         {
            §4g§();
         }
      }
      
      override public function updateState(param1:Number) : int
      {
         var _loc2_:int = super.updateState(param1);
         if(§6!k§().isGenericState())
         {
            if(_loc2_ == §5!S§.STATE_STATUS_COMPLETED)
            {
               §%!C§.addChild(§]"!§.activate());
               this.setFirstGameState();
            }
         }
         return _loc2_;
      }
      
      override protected function previousStateDeactivate() : void
      {
         §&p§.§1[§.§2!e§();
      }
      
      public function setFirstGameState() : void
      {
         §>"I§(§;D§.STATE_NAME);
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
         this.§`z§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         this.§`z§.removeEventListener(param1,param2,param3);
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return false;
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§`z§.hasEventListener(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§`z§.willTrigger(param1);
      }
   }
}
