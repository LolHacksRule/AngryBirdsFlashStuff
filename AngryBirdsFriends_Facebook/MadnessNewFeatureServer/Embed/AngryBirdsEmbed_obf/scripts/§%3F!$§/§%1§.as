package §?!$§
{
   import §"!O§.SWFWheel;
   import §'6§.§?!L§;
   import §'6§.§^t§;
   import §+[§.§%G§;
   import §3!$§.§^[§;
   import §<!A§.§,!?§;
   import §<!A§.§-!8§;
   import §<!A§.§5y§;
   import §<!A§.§8?§;
   import §@a§.§'p§;
   import §`!1§.§-!&§;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.utils.getTimer;
   
   public class §%1§ extends §5y§ implements IEventDispatcher
   {
      
      public static var §#a§:Number;
      
      public static var §5M§:Number;
       
      
      public var §=A§:Number;
      
      private var §-V§:EventDispatcher;
      
      public function §%1§(param1:§+!,§, param2:DisplayObjectContainer, param3:XML, param4:XML)
      {
         var canvas:§+!,§ = param1;
         var loadingScreen:DisplayObjectContainer = param2;
         var uiData:XML = param3;
         var assetData:XML = param4;
         this.§-V§ = new EventDispatcher();
         super(canvas);
         if(§,Y§.stage)
         {
            this.init(loadingScreen,uiData,assetData);
         }
         else
         {
            §,Y§.addEventListener(Event.ADDED_TO_STAGE,function(param1:Event):void
            {
               §,Y§.removeEventListener(Event.ADDED_TO_STAGE,arguments.callee);
               init(loadingScreen,uiData,assetData);
            });
         }
      }
      
      protected function initSoundEngine() : void
      {
         §%G§.init();
      }
      
      protected function init(param1:DisplayObjectContainer, param2:XML, param3:XML) : void
      {
         SWFWheel.initialize(stage);
         SWFWheel.§3K§ = false;
         §?!L§.§'!A§(this.getVersionInfo());
         §?!L§.§0R§ = this.getVersionInfo();
         §,!?§.§0u§ = §,Y§.stage.loaderInfo.parameters;
         this.initSoundEngine();
         §3R§(new §-!8§());
         var _loc4_:§8?§ = this.initStateLoad();
         §3R§(_loc4_);
         _loc4_.setLoadingScreen(param1);
         _loc4_.§;p§(param3);
         §'p§.init(param2);
         if(§^[§.§-n§())
         {
            §^[§.§;!I§("serverConnectionError");
         }
         §#!%§(§8?§.§`W§);
         this.§9@§();
      }
      
      protected function initStateLoad() : §8?§
      {
         return new §8?§(true,§8?§.§`W§,this.getMinLoadingScreenTime(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
      }
      
      public function §9@§() : void
      {
         §,Y§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         §,Y§.stage.addEventListener(Event.MOUSE_LEAVE,this.mouseLeave);
         §,Y§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.keyDown);
         §,Y§.stage.addEventListener(KeyboardEvent.KEY_UP,this.keyUp);
         this.§=A§ = getTimer();
      }
      
      public function mouseLeave(param1:Event) : void
      {
         if(§`!%§())
         {
            §`!%§().mouseLeave();
         }
      }
      
      public function keyDown(param1:KeyboardEvent) : void
      {
         if(§`!%§())
         {
            §`!%§().keyDown(param1);
         }
         §?!L§.keyDown(param1);
      }
      
      public function keyUp(param1:KeyboardEvent) : void
      {
         if(§`!%§())
         {
            §`!%§().keyUp(param1);
         }
      }
      
      public function onEnterFrame(param1:Event) : void
      {
         var _loc2_:Number = getTimer() - this.§=A§;
         this.§=A§ = getTimer();
         §-!&§.§;R§.update(_loc2_);
         this.§-V§.dispatchEvent(param1);
         §^t§.§%!=§(§,Y§.mouseX,§,Y§.mouseY);
         if(§+!!§())
         {
            return;
         }
         if(this.updateState(_loc2_) == §,!?§.STATE_STATUS_COMPLETED)
         {
            §+!!§();
         }
      }
      
      override public function updateState(param1:Number) : int
      {
         var _loc2_:int = super.updateState(param1);
         if(§`!%§().isGenericState())
         {
            if(_loc2_ == §,!?§.STATE_STATUS_COMPLETED)
            {
               §,Y§.addChild(§^t§.activate());
               this.setFirstGameState();
            }
         }
         return _loc2_;
      }
      
      override protected function previousStateDeactivate() : void
      {
         §-!&§.§;R§.§0M§();
      }
      
      public function setFirstGameState() : void
      {
         §#!%§(§-!8§.§`W§);
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
         this.§-V§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         this.§-V§.removeEventListener(param1,param2,param3);
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return false;
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§-V§.hasEventListener(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§-V§.willTrigger(param1);
      }
   }
}
