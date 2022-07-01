package §9";§
{
   import §&W§.§1!w§;
   import §&W§.§7L§;
   import §0!C§.§,!h§;
   import §5!8§.§1u§;
   import §65§.§%M§;
   import §>!5§.§0!§;
   import §>!5§.§>!O§;
   import §>!5§.§>!T§;
   import §>!5§.§`!X§;
   import §>Z§.§5;§;
   import §catch§.§"L§;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.utils.getTimer;
   
   public class §<!7§ extends §`!X§ implements IEventDispatcher
   {
      
      public static var §&s§:Number;
      
      public static var §"-§:Number;
       
      
      public var §,!;§:Number;
      
      private var §[!v§:EventDispatcher;
      
      public function §<!7§(param1:§,"4§, param2:DisplayObjectContainer, param3:XML, param4:XML)
      {
         var canvas:§,"4§ = param1;
         var loadingScreen:DisplayObjectContainer = param2;
         var uiData:XML = param3;
         var assetData:XML = param4;
         this.§[!v§ = new EventDispatcher();
         super(canvas);
         if(§[!V§.stage)
         {
            this.init(loadingScreen,uiData,assetData);
         }
         else
         {
            §[!V§.addEventListener(Event.ADDED_TO_STAGE,function(param1:Event):void
            {
               §[!V§.removeEventListener(Event.ADDED_TO_STAGE,arguments.callee);
               init(loadingScreen,uiData,assetData);
            });
         }
      }
      
      protected function §[S§() : void
      {
         §5;§.init();
      }
      
      protected function init(param1:DisplayObjectContainer, param2:XML, param3:XML) : void
      {
         §%M§.initialize(stage);
         §%M§.§0!5§ = false;
         §7L§.§<"'§(this.getVersionInfo());
         §7L§.§38§ = this.getVersionInfo();
         §>!T§.§ "%§ = §[!V§.stage.loaderInfo.parameters;
         this.§[S§();
         §'"§(new §0!§());
         var _loc4_:§>!O§ = this.initStateLoad();
         §'"§(_loc4_);
         _loc4_.§4!m§(param1);
         _loc4_.§=?§(param3);
         §,!h§.init(param2);
         if(§1u§.§^!-§())
         {
            §1u§.§3v§("serverConnectionError");
         }
         §4>§(§>!O§.§>H§);
         this.§&!r§();
      }
      
      protected function initStateLoad() : §>!O§
      {
         return new §>!O§(true,§>!O§.§>H§,this.getMinLoadingScreenTime(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
      }
      
      public function §&!r§() : void
      {
         §[!V§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         §[!V§.stage.addEventListener(Event.MOUSE_LEAVE,this.mouseLeave);
         §[!V§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.keyDown);
         §[!V§.stage.addEventListener(KeyboardEvent.KEY_UP,this.keyUp);
         this.§,!;§ = getTimer();
      }
      
      public function mouseLeave(param1:Event) : void
      {
         if(§-!q§())
         {
            §-!q§().mouseLeave();
         }
      }
      
      public function keyDown(param1:KeyboardEvent) : void
      {
         if(§-!q§())
         {
            §-!q§().keyDown(param1);
         }
         §7L§.keyDown(param1);
      }
      
      public function keyUp(param1:KeyboardEvent) : void
      {
         if(§-!q§())
         {
            §-!q§().keyUp(param1);
         }
      }
      
      public function onEnterFrame(param1:Event) : void
      {
         var _loc2_:Number = getTimer() - this.§,!;§;
         this.§,!;§ = getTimer();
         §"L§.§7!?§.update(_loc2_);
         this.§[!v§.dispatchEvent(param1);
         §1!w§.§2!R§(§[!V§.mouseX,§[!V§.mouseY);
         if(§0!k§())
         {
            return;
         }
         if(this.updateState(_loc2_) == §>!T§.STATE_STATUS_COMPLETED)
         {
            §0!k§();
         }
      }
      
      override public function updateState(param1:Number) : int
      {
         var _loc2_:int = super.updateState(param1);
         if(§-!q§().isGenericState())
         {
            if(_loc2_ == §>!T§.STATE_STATUS_COMPLETED)
            {
               §[!V§.addChild(§1!w§.activate());
               this.setFirstGameState();
            }
         }
         return _loc2_;
      }
      
      override protected function previousStateDeactivate() : void
      {
         §"L§.§7!?§.§#!2§();
      }
      
      public function setFirstGameState() : void
      {
         §4>§(§0!§.§>H§);
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
         this.§[!v§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         this.§[!v§.removeEventListener(param1,param2,param3);
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return false;
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§[!v§.hasEventListener(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§[!v§.willTrigger(param1);
      }
   }
}
