package §]2§
{
   import §"x§.§-8§;
   import §"x§.§?8§;
   import §+0§.§%!Z§;
   import §+0§.§,!E§;
   import §+0§.§3!B§;
   import §+0§.§;!>§;
   import §2!H§.§-!,§;
   import §4l§.SWFWheel;
   import §5!c§.§9'§;
   import §7X§.§^"§;
   import §[!+§.§ !I§;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.utils.getTimer;
   
   public class §[!O§ extends §3!B§ implements IEventDispatcher
   {
      
      public static var §]!<§:Number;
      
      public static var §4!j§:Number;
       
      
      public var §!V§:Number;
      
      private var §0v§:EventDispatcher;
      
      public function §[!O§(param1:§-9§, param2:DisplayObjectContainer, param3:XML, param4:XML)
      {
         var canvas:§-9§ = param1;
         var loadingScreen:DisplayObjectContainer = param2;
         var uiData:XML = param3;
         var assetData:XML = param4;
         this.§0v§ = new EventDispatcher();
         super(canvas);
         if(§ !j§.stage)
         {
            this.init(loadingScreen,uiData,assetData);
         }
         else
         {
            § !j§.addEventListener(Event.ADDED_TO_STAGE,function(param1:Event):void
            {
               § !j§.removeEventListener(Event.ADDED_TO_STAGE,arguments.callee);
               init(loadingScreen,uiData,assetData);
            });
         }
      }
      
      protected function §#0§() : void
      {
         §9'§.init();
      }
      
      protected function init(param1:DisplayObjectContainer, param2:XML, param3:XML) : void
      {
         SWFWheel.initialize(stage);
         SWFWheel.§5!d§ = false;
         §-8§.§%?§(this.getVersionInfo());
         §,!E§.§4!k§ = § !j§.stage.loaderInfo.parameters;
         this.§#0§();
         §!]§(new §%!Z§());
         var _loc4_:§;!>§ = this.initStateLoad();
         §!]§(_loc4_);
         _loc4_.setLoadingScreen(param1);
         _loc4_.§"!_§(param3);
         § !I§.init(param2);
         if(§^"§.§]!x§())
         {
            §^"§.§^!J§("serverConnectionError");
         }
         §@!n§(§;!>§.§"!s§);
         this.§1!g§();
      }
      
      protected function initStateLoad() : §;!>§
      {
         return new §;!>§(true,§;!>§.§"!s§,this.getMinLoadingScreenTime(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
      }
      
      public function §1!g§() : void
      {
         § !j§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         § !j§.stage.addEventListener(Event.MOUSE_LEAVE,this.mouseLeave);
         § !j§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.keyDown);
         § !j§.stage.addEventListener(KeyboardEvent.KEY_UP,this.keyUp);
         this.§!V§ = getTimer();
      }
      
      public function mouseLeave(param1:Event) : void
      {
         if(§0@§())
         {
            §0@§().mouseLeave();
         }
      }
      
      public function keyDown(param1:KeyboardEvent) : void
      {
         if(§0@§())
         {
            §0@§().keyDown(param1);
         }
         §-8§.keyDown(param1);
      }
      
      public function keyUp(param1:KeyboardEvent) : void
      {
         if(§0@§())
         {
            §0@§().keyUp(param1);
         }
      }
      
      public function onEnterFrame(param1:Event) : void
      {
         var _loc2_:Number = getTimer() - this.§!V§;
         this.§!V§ = getTimer();
         §-!,§.§7!j§.update(_loc2_);
         this.§0v§.dispatchEvent(param1);
         §?8§.§^!#§(§ !j§.mouseX,§ !j§.mouseY);
         if(§!!b§())
         {
            return;
         }
         if(this.updateState(_loc2_) == §,!E§.STATE_STATUS_COMPLETED)
         {
            §!!b§();
         }
      }
      
      override public function updateState(param1:Number) : int
      {
         var _loc2_:int = super.updateState(param1);
         if(§0@§().isGenericState())
         {
            if(_loc2_ == §,!E§.STATE_STATUS_COMPLETED)
            {
               § !j§.addChild(§?8§.activate());
               this.setFirstGameState();
            }
         }
         return _loc2_;
      }
      
      override protected function previousStateDeactivate() : void
      {
         §-!,§.§7!j§.§#!p§();
      }
      
      public function setFirstGameState() : void
      {
         §@!n§(§%!Z§.§"!s§);
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
         this.§0v§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         this.§0v§.removeEventListener(param1,param2,param3);
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return false;
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§0v§.hasEventListener(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§0v§.willTrigger(param1);
      }
   }
}
