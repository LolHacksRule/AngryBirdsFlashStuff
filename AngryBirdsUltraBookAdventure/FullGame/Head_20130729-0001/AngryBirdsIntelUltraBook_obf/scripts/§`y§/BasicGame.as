package §`y§
{
   import §!!0§.SoundEngine;
   import §1N§.§3y§;
   import §1N§.StateBase;
   import §1N§.StateLoad;
   import §1N§.StateManager;
   import §2!!§.SWFWheel;
   import §<u§.§%c§;
   import §<u§.Log;
   import §=!5§.§+q§;
   import §?!O§.TweenManager;
   import §^!7§.Server;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.utils.getTimer;
   
   public class BasicGame extends StateManager implements IEventDispatcher
   {
      
      public static var §]o§:Number;
      
      public static var §4!O§:Number;
       
      
      public var §5m§:Number;
      
      private var §3H§:EventDispatcher;
      
      public function BasicGame(param1:§4!g§, param2:DisplayObjectContainer, param3:XML, param4:XML)
      {
         var canvas:§4!g§ = param1;
         var loadingScreen:DisplayObjectContainer = param2;
         var uiData:XML = param3;
         var assetData:XML = param4;
         this.§3H§ = new EventDispatcher();
         super(canvas);
         if(§!!d§.stage)
         {
            this.init(loadingScreen,uiData,assetData);
         }
         else
         {
            §!!d§.addEventListener(Event.ADDED_TO_STAGE,function(param1:Event):void
            {
               §!!d§.removeEventListener(Event.ADDED_TO_STAGE,arguments.callee);
               init(loadingScreen,uiData,assetData);
            });
         }
      }
      
      protected function §]!=§() : void
      {
         SoundEngine.init();
      }
      
      protected function init(param1:DisplayObjectContainer, param2:XML, param3:XML) : void
      {
         SWFWheel.initialize(stage);
         SWFWheel.§'!c§ = true;
         Log.§<Y§(this.getVersionInfo());
         StateBase.§9!4§ = §!!d§.stage.loaderInfo.parameters;
         this.§]!=§();
         §,u§(new §3y§());
         var _loc4_:StateLoad = this.initStateLoad();
         §,u§(_loc4_);
         _loc4_.setLoadingScreen(param1);
         _loc4_.§'e§(param3);
         §+q§.init(param2);
         if(Server.§"!B§())
         {
            Server.§]g§("serverConnectionError");
         }
         §&!<§(StateLoad.STATE_NAME);
         this.§"!X§();
      }
      
      protected function initStateLoad() : StateLoad
      {
         return new StateLoad(true,StateLoad.STATE_NAME,this.getMinLoadingScreenTime(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
      }
      
      public function §"!X§() : void
      {
         §!!d§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         §!!d§.stage.addEventListener(Event.MOUSE_LEAVE,this.mouseLeave);
         §!!d§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.keyDown);
         §!!d§.stage.addEventListener(KeyboardEvent.KEY_UP,this.keyUp);
         this.§5m§ = getTimer();
      }
      
      public function mouseLeave(param1:Event) : void
      {
         if(§`!O§())
         {
            §`!O§().mouseLeave();
         }
      }
      
      public function keyDown(param1:KeyboardEvent) : void
      {
         if(§`!O§())
         {
            §`!O§().keyDown(param1);
         }
         Log.keyDown(param1);
      }
      
      public function keyUp(param1:KeyboardEvent) : void
      {
         if(§`!O§())
         {
            §`!O§().keyUp(param1);
         }
      }
      
      public function onEnterFrame(param1:Event) : void
      {
         var _loc2_:Number = getTimer() - this.§5m§;
         this.§5m§ = getTimer();
         TweenManager.§7!E§.update(_loc2_);
         this.§3H§.dispatchEvent(param1);
         §%c§.§'§(§!!d§.mouseX,§!!d§.mouseY);
         if(§9A§())
         {
            return;
         }
         if(this.updateState(_loc2_) == StateBase.STATE_STATUS_COMPLETED)
         {
            §9A§();
         }
      }
      
      override public function updateState(param1:Number) : int
      {
         var _loc2_:int = super.updateState(param1);
         if(§`!O§().isGenericState())
         {
            if(_loc2_ == StateBase.STATE_STATUS_COMPLETED)
            {
               §!!d§.addChild(§%c§.activate());
               this.setFirstGameState();
            }
         }
         return _loc2_;
      }
      
      override protected function previousStateDeactivate() : void
      {
         TweenManager.§7!E§.§'!3§();
      }
      
      public function setFirstGameState() : void
      {
         §&!<§(§3y§.STATE_NAME);
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
         this.§3H§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         this.§3H§.removeEventListener(param1,param2,param3);
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return false;
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§3H§.hasEventListener(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§3H§.willTrigger(param1);
      }
   }
}
