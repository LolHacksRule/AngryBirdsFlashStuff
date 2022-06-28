package §<i§
{
   import § !x§.§5+§;
   import §1!T§.§6!H§;
   import §1@§.SWFWheel;
   import §1n§.dynamic;
   import §4!C§.§,!l§;
   import §6z§.§+!D§;
   import §6z§.§[g§;
   import §8,§.§+_§;
   import §8,§.§3!?§;
   import §8,§.§5T§;
   import §8,§.§;T§;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.utils.getTimer;
   
   public class §9!M§ extends §3!?§ implements IEventDispatcher
   {
      
      public static var §`!B§:Number;
      
      public static var § !]§:Number;
       
      
      public var §8!I§:Number;
      
      private var §1$§:EventDispatcher;
      
      public function §9!M§(param1:§#!%§, param2:DisplayObjectContainer, param3:XML, param4:XML)
      {
         var canvas:§#!%§ = param1;
         var loadingScreen:DisplayObjectContainer = param2;
         var uiData:XML = param3;
         var assetData:XML = param4;
         this.§1$§ = new EventDispatcher();
         super(canvas);
         if(§>!+§.stage)
         {
            this.init(loadingScreen,uiData,assetData);
         }
         else
         {
            §>!+§.addEventListener(Event.ADDED_TO_STAGE,function(param1:Event):void
            {
               §>!+§.removeEventListener(Event.ADDED_TO_STAGE,arguments.callee);
               init(loadingScreen,uiData,assetData);
            });
         }
      }
      
      protected function §9!6§() : void
      {
         §6!H§.init();
      }
      
      protected function init(param1:DisplayObjectContainer, param2:XML, param3:XML) : void
      {
         SWFWheel.initialize(stage);
         SWFWheel.§&m§ = true;
         §[g§.§7m§(this.getVersionInfo());
         §+_§.§[!Z§ = §>!+§.stage.loaderInfo.parameters;
         this.§9!6§();
         §?!-§(new §;T§());
         var _loc4_:§5T§ = this.initStateLoad();
         §?!-§(_loc4_);
         _loc4_.setLoadingScreen(param1);
         _loc4_.§9l§(param3);
         dynamic.init(param2);
         if(§,!l§.§9e§())
         {
            §,!l§.§1!,§("serverConnectionError");
         }
         § !,§(§5T§.§3F§);
         this.§7!V§();
      }
      
      protected function initStateLoad() : §5T§
      {
         return new §5T§(true,§5T§.§3F§,this.getMinLoadingScreenTime(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
      }
      
      public function §7!V§() : void
      {
         §>!+§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         §>!+§.stage.addEventListener(Event.MOUSE_LEAVE,this.mouseLeave);
         §>!+§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.keyDown);
         §>!+§.stage.addEventListener(KeyboardEvent.KEY_UP,this.keyUp);
         this.§8!I§ = getTimer();
      }
      
      public function mouseLeave(param1:Event) : void
      {
         if(§-#§())
         {
            §-#§().mouseLeave();
         }
      }
      
      public function keyDown(param1:KeyboardEvent) : void
      {
         if(§-#§())
         {
            §-#§().keyDown(param1);
         }
         §[g§.keyDown(param1);
      }
      
      public function keyUp(param1:KeyboardEvent) : void
      {
         if(§-#§())
         {
            §-#§().keyUp(param1);
         }
      }
      
      public function onEnterFrame(param1:Event) : void
      {
         var _loc2_:Number = getTimer() - this.§8!I§;
         this.§8!I§ = getTimer();
         §5+§.§^Z§.update(_loc2_);
         this.§1$§.dispatchEvent(param1);
         §+!D§.§&§(§>!+§.mouseX,§>!+§.mouseY);
         if(§7$§())
         {
            return;
         }
         if(this.updateState(_loc2_) == §+_§.STATE_STATUS_COMPLETED)
         {
            §7$§();
         }
      }
      
      override public function updateState(param1:Number) : int
      {
         var _loc2_:int = super.updateState(param1);
         if(§-#§().isGenericState())
         {
            if(_loc2_ == §+_§.STATE_STATUS_COMPLETED)
            {
               §>!+§.addChild(§+!D§.activate());
               this.setFirstGameState();
            }
         }
         return _loc2_;
      }
      
      override protected function previousStateDeactivate() : void
      {
         §5+§.§^Z§.§%!8§();
      }
      
      public function setFirstGameState() : void
      {
         § !,§(§;T§.§3F§);
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
         this.§1$§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         this.§1$§.removeEventListener(param1,param2,param3);
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return false;
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§1$§.hasEventListener(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§1$§.willTrigger(param1);
      }
   }
}
