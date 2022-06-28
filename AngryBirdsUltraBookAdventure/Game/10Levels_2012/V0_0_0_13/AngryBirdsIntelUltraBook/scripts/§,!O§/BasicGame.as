package §,!O§
{
   import §2=§.TweenManager;
   import §4!9§.§>!^§;
   import §4H§.§5!f§;
   import §4H§.StateBase;
   import §4H§.StateLoad;
   import §4H§.StateManager;
   import §6!a§.Server;
   import §6b§.§3r§;
   import §6b§.Log;
   import §=?§.SoundEngine;
   import §]]§.SWFWheel;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.utils.getTimer;
   
   public class BasicGame extends StateManager implements IEventDispatcher
   {
      
      public static var §=!6§:Number;
      
      public static var §#C§:Number;
       
      
      public var §,?§:Number;
      
      private var §#!R§:EventDispatcher;
      
      public function BasicGame(param1:§3![§, param2:DisplayObjectContainer, param3:XML, param4:XML)
      {
         var canvas:§3![§ = param1;
         var loadingScreen:DisplayObjectContainer = param2;
         var uiData:XML = param3;
         var assetData:XML = param4;
         this.§#!R§ = new EventDispatcher();
         super(canvas);
         if(§=,§.stage)
         {
            this.init(loadingScreen,uiData,assetData);
         }
         else
         {
            §=,§.addEventListener(Event.ADDED_TO_STAGE,function(param1:Event):void
            {
               §=,§.removeEventListener(Event.ADDED_TO_STAGE,arguments.callee);
               init(loadingScreen,uiData,assetData);
            });
         }
      }
      
      protected function §+!8§() : void
      {
         SoundEngine.init();
      }
      
      protected function init(param1:DisplayObjectContainer, param2:XML, param3:XML) : void
      {
         SWFWheel.initialize(stage);
         SWFWheel.§[S§ = true;
         Log.§%x§(this.getVersionInfo());
         StateBase.§"z§ = §=,§.stage.loaderInfo.parameters;
         this.§+!8§();
         §<!g§(new §5!f§());
         var _loc4_:StateLoad = this.initStateLoad();
         §<!g§(_loc4_);
         _loc4_.setLoadingScreen(param1);
         _loc4_.§=!d§(param3);
         §>!^§.init(param2);
         if(Server.§9'§())
         {
            Server.§&H§("serverConnectionError");
         }
         §,!&§(StateLoad.STATE_NAME);
         this.§0!7§();
      }
      
      protected function initStateLoad() : StateLoad
      {
         return new StateLoad(true,StateLoad.STATE_NAME,this.getMinLoadingScreenTime(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
      }
      
      public function §0!7§() : void
      {
         §=,§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         §=,§.stage.addEventListener(Event.MOUSE_LEAVE,this.mouseLeave);
         §=,§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.keyDown);
         §=,§.stage.addEventListener(KeyboardEvent.KEY_UP,this.keyUp);
         this.§,?§ = getTimer();
      }
      
      public function mouseLeave(param1:Event) : void
      {
         if(§@9§())
         {
            §@9§().mouseLeave();
         }
      }
      
      public function keyDown(param1:KeyboardEvent) : void
      {
         if(§@9§())
         {
            §@9§().keyDown(param1);
         }
         Log.keyDown(param1);
      }
      
      public function keyUp(param1:KeyboardEvent) : void
      {
         if(§@9§())
         {
            §@9§().keyUp(param1);
         }
      }
      
      public function onEnterFrame(param1:Event) : void
      {
         var _loc2_:Number = getTimer() - this.§,?§;
         this.§,?§ = getTimer();
         TweenManager.§8!X§.update(_loc2_);
         this.§#!R§.dispatchEvent(param1);
         §3r§.§2?§(§=,§.mouseX,§=,§.mouseY);
         if(§7s§())
         {
            return;
         }
         if(this.updateState(_loc2_) == StateBase.STATE_STATUS_COMPLETED)
         {
            §7s§();
         }
      }
      
      override public function updateState(param1:Number) : int
      {
         var _loc2_:int = super.updateState(param1);
         if(§@9§().isGenericState())
         {
            if(_loc2_ == StateBase.STATE_STATUS_COMPLETED)
            {
               §=,§.addChild(§3r§.activate());
               this.setFirstGameState();
            }
         }
         return _loc2_;
      }
      
      override protected function previousStateDeactivate() : void
      {
         TweenManager.§8!X§.§8!?§();
      }
      
      public function setFirstGameState() : void
      {
         §,!&§(§5!f§.STATE_NAME);
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
         this.§#!R§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         this.§#!R§.removeEventListener(param1,param2,param3);
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return false;
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§#!R§.hasEventListener(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§#!R§.willTrigger(param1);
      }
   }
}
