package §3!G§
{
   import §#!?§.§49§;
   import §%!;§.§!L§;
   import §%!;§.§-h§;
   import §%!;§.§31§;
   import §%!;§.§`p§;
   import §+y§.§3V§;
   import §2S§.§,!;§;
   import §@!%§.§-!;§;
   import §@4§.SWFWheel;
   import §@V§.§-'§;
   import §@V§.§`!5§;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.utils.getTimer;
   
   public class §>V§ extends §`p§ implements IEventDispatcher
   {
      
      public static var §1H§:Number;
      
      public static var §[X§:Number;
       
      
      public var §=!>§:Number;
      
      private var §+%§:EventDispatcher;
      
      public function §>V§(param1:§>y§, param2:DisplayObjectContainer, param3:XML, param4:XML)
      {
         var canvas:§>y§ = param1;
         var loadingScreen:DisplayObjectContainer = param2;
         var uiData:XML = param3;
         var assetData:XML = param4;
         this.§+%§ = new EventDispatcher();
         super(canvas);
         if(static.stage)
         {
            this.init(loadingScreen,uiData,assetData);
         }
         else
         {
            static.addEventListener(Event.ADDED_TO_STAGE,function(param1:Event):void
            {
               static.removeEventListener(Event.ADDED_TO_STAGE,arguments.callee);
               init(loadingScreen,uiData,assetData);
            });
         }
      }
      
      protected function initSoundEngine() : void
      {
         §3V§.init();
      }
      
      protected function init(param1:DisplayObjectContainer, param2:XML, param3:XML) : void
      {
         SWFWheel.initialize(stage);
         SWFWheel.§2w§ = false;
         §`!5§.§2W§(this.getVersionInfo());
         §`!5§.§4G§ = this.getVersionInfo();
         §!L§.§[g§ = static.stage.loaderInfo.parameters;
         this.initSoundEngine();
         §@!!§(new §-h§());
         var _loc4_:§31§ = this.initStateLoad();
         §@!!§(_loc4_);
         _loc4_.setLoadingScreen(param1);
         _loc4_.§?a§(param3);
         §,!;§.init(param2);
         if(§-!;§.§"P§())
         {
            §-!;§.§+!N§("serverConnectionError");
         }
         §super§(§31§.§"Z§);
         this.§%!4§();
      }
      
      protected function initStateLoad() : §31§
      {
         return new §31§(true,§31§.§"Z§,this.getMinLoadingScreenTime(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
      }
      
      public function §%!4§() : void
      {
         static.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         static.stage.addEventListener(Event.MOUSE_LEAVE,this.mouseLeave);
         static.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.keyDown);
         static.stage.addEventListener(KeyboardEvent.KEY_UP,this.keyUp);
         this.§=!>§ = getTimer();
      }
      
      public function mouseLeave(param1:Event) : void
      {
         if(§6,§())
         {
            §6,§().mouseLeave();
         }
      }
      
      public function keyDown(param1:KeyboardEvent) : void
      {
         if(§6,§())
         {
            §6,§().keyDown(param1);
         }
         §`!5§.keyDown(param1);
      }
      
      public function keyUp(param1:KeyboardEvent) : void
      {
         if(§6,§())
         {
            §6,§().keyUp(param1);
         }
      }
      
      public function onEnterFrame(param1:Event) : void
      {
         var _loc2_:Number = getTimer() - this.§=!>§;
         this.§=!>§ = getTimer();
         §49§.§&y§.update(_loc2_);
         this.§+%§.dispatchEvent(param1);
         §-'§.§9!P§(static.mouseX,static.mouseY);
         if(§9!?§())
         {
            return;
         }
         if(this.updateState(_loc2_) == §!L§.STATE_STATUS_COMPLETED)
         {
            §9!?§();
         }
      }
      
      override public function updateState(param1:Number) : int
      {
         var _loc2_:int = super.updateState(param1);
         if(§6,§().isGenericState())
         {
            if(_loc2_ == §!L§.STATE_STATUS_COMPLETED)
            {
               static.addChild(§-'§.activate());
               this.setFirstGameState();
            }
         }
         return _loc2_;
      }
      
      override protected function previousStateDeactivate() : void
      {
         §49§.§&y§.§]!&§();
      }
      
      public function setFirstGameState() : void
      {
         §super§(§-h§.§"Z§);
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
         this.§+%§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         this.§+%§.removeEventListener(param1,param2,param3);
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return false;
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§+%§.hasEventListener(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§+%§.willTrigger(param1);
      }
   }
}
