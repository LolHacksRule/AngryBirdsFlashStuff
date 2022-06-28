package §"!!§
{
   import § $§.Server;
   import §'N§.§'!6§;
   import §'N§.Log;
   import §2D§.SWFWheel;
   import §3!j§.SoundEngine;
   import §<!G§.TweenManager;
   import §@!H§.§3!5§;
   import §[!>§.StateBase;
   import §[!>§.StateLoad;
   import §[!>§.StateManager;
   import §[!>§.§]!i§;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.utils.getTimer;
   
   public class BasicGame extends StateManager implements IEventDispatcher
   {
      
      public static var §]t§:Number;
      
      public static var §,-§:Number;
       
      
      public var §class§:Number;
      
      private var §`!b§:EventDispatcher;
      
      public function BasicGame(param1:§&G§, param2:DisplayObjectContainer, param3:XML, param4:XML)
      {
         var canvas:§&G§ = param1;
         var loadingScreen:DisplayObjectContainer = param2;
         var uiData:XML = param3;
         var assetData:XML = param4;
         this.§`!b§ = new EventDispatcher();
         super(canvas);
         if(§"B§.stage)
         {
            this.init(loadingScreen,uiData,assetData);
         }
         else
         {
            §"B§.addEventListener(Event.ADDED_TO_STAGE,function(param1:Event):void
            {
               §"B§.removeEventListener(Event.ADDED_TO_STAGE,arguments.callee);
               init(loadingScreen,uiData,assetData);
            });
         }
      }
      
      protected function §``§() : void
      {
         SoundEngine.init();
      }
      
      protected function init(param1:DisplayObjectContainer, param2:XML, param3:XML) : void
      {
         SWFWheel.initialize(stage);
         SWFWheel.§0L§ = true;
         Log.§-3§(this.getVersionInfo());
         StateBase.§#-§ = §"B§.stage.loaderInfo.parameters;
         this.§``§();
         §&=§(new §]!i§());
         var _loc4_:StateLoad = this.initStateLoad();
         §&=§(_loc4_);
         _loc4_.setLoadingScreen(param1);
         _loc4_.§'!+§(param3);
         §3!5§.init(param2);
         if(Server.§`!3§())
         {
            Server.§8>§("serverConnectionError");
         }
         §0!f§(StateLoad.STATE_NAME);
         this.§3A§();
      }
      
      protected function initStateLoad() : StateLoad
      {
         return new StateLoad(true,StateLoad.STATE_NAME,this.getMinLoadingScreenTime(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
      }
      
      public function §3A§() : void
      {
         §"B§.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         §"B§.stage.addEventListener(Event.MOUSE_LEAVE,this.mouseLeave);
         §"B§.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.keyDown);
         §"B§.stage.addEventListener(KeyboardEvent.KEY_UP,this.keyUp);
         this.§class§ = getTimer();
      }
      
      public function mouseLeave(param1:Event) : void
      {
         if(§;!W§())
         {
            §;!W§().mouseLeave();
         }
      }
      
      public function keyDown(param1:KeyboardEvent) : void
      {
         if(§;!W§())
         {
            §;!W§().keyDown(param1);
         }
         Log.keyDown(param1);
      }
      
      public function keyUp(param1:KeyboardEvent) : void
      {
         if(§;!W§())
         {
            §;!W§().keyUp(param1);
         }
      }
      
      public function onEnterFrame(param1:Event) : void
      {
         var _loc2_:Number = getTimer() - this.§class§;
         this.§class§ = getTimer();
         TweenManager.§&!'§.update(_loc2_);
         this.§`!b§.dispatchEvent(param1);
         §'!6§.§#!U§(§"B§.mouseX,§"B§.mouseY);
         if(§<y§())
         {
            return;
         }
         if(this.updateState(_loc2_) == StateBase.STATE_STATUS_COMPLETED)
         {
            §<y§();
         }
      }
      
      override public function updateState(param1:Number) : int
      {
         var _loc2_:int = super.updateState(param1);
         if(§;!W§().isGenericState())
         {
            if(_loc2_ == StateBase.STATE_STATUS_COMPLETED)
            {
               §"B§.addChild(§'!6§.activate());
               this.setFirstGameState();
            }
         }
         return _loc2_;
      }
      
      override protected function previousStateDeactivate() : void
      {
         TweenManager.§&!'§.§%T§();
      }
      
      public function setFirstGameState() : void
      {
         §0!f§(§]!i§.STATE_NAME);
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
         this.§`!b§.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         this.§`!b§.removeEventListener(param1,param2,param3);
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return false;
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.§`!b§.hasEventListener(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.§`!b§.willTrigger(param1);
      }
   }
}
