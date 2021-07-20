package com.rovio
{
   import com.rovio.events.FrameUpdateEvent;
   import com.rovio.server.Server;
   import com.rovio.sound.SoundEngine;
   import org.libspark.ui.SWFWheel;
   import com.rovio.ui.Views.ViewXMLLibrary;
   import com.rovio.data.localization.DefaultLocalizationMapping;
   import com.rovio.data.localization.LocalizationManager;
   import com.rovio.tween.TweenManager;
   import com.rovio.states.StateLoad;
   import com.rovio.states.StateBase;
   import com.rovio.states.StateManager;
   import com.rovio.states.StateTemplate;
   import com.rovio.factory.Log;
   import com.rovio.factory.MouseCursorController;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.utils.getTimer;
   
   public class BasicGame extends StateManager implements IEventDispatcher
   {
      
      public static var smScreenWidth:Number;
      
      public static var smScreenHeight:Number;
       
      
      public var mLastFrameTime:Number;
      
      private var mEventDispatcher:EventDispatcher;
      
      private var mLocalizationManager:LocalizationManager;
      
      public function BasicGame(param1:ApplicationCanvas, param2:DisplayObjectContainer, param3:XML, param4:XML)
      {
         var canvas:ApplicationCanvas = param1;
         var loadingScreen:DisplayObjectContainer = param2;
         var uiData:XML = param3;
         var assetData:XML = param4;
         this.mEventDispatcher = new EventDispatcher();
         super(canvas);
         if(mCanvas.stage)
         {
            this.init(loadingScreen,uiData,assetData);
         }
         else
         {
            mCanvas.addEventListener(Event.ADDED_TO_STAGE,function(param1:Event):void
            {
               mCanvas.removeEventListener(Event.ADDED_TO_STAGE,arguments.callee);
               init(loadingScreen,uiData,assetData);
            });
         }
      }
      
      public function get localizationManager() : LocalizationManager
      {
         return this.mLocalizationManager;
      }
      
      protected function initSoundEngine() : void
      {
         SoundEngine.init();
      }
      
      protected function init(param1:DisplayObjectContainer, param2:XML, param3:XML) : void
      {
         this.mLocalizationManager = new LocalizationManager(new DefaultLocalizationMapping("en"));
         SWFWheel.initialize(stage);
         SWFWheel.browserScroll = false;
         Log.setVersionInfo(this.getVersionInfo());
         Log.sServerVersionInfo = this.getVersionInfo();
         StateBase.smApplicationParameters = mCanvas.stage.loaderInfo.parameters;
         this.initSoundEngine();
         addState(new static(this.localizationManager));
         var _loc4_:StateLoad = this.initStateLoad();
         addState(_loc4_);
         _loc4_.setLoadingScreen(param1);
         _loc4_.setAssetData(param3);
         ViewXMLLibrary.init(param2);
         if(Server.getIsAvailable())
         {
            Server.addCommand("serverConnectionError");
         }
         setNextState(StateLoad.STATE_NAME);
         this.startGameLoop();
      }
      
      protected function initStateLoad() : StateLoad
      {
         return new StateLoad(this.localizationManager,true,StateLoad.mStartColorVariance,this.getMinLoadingScreenTime(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
      }
      
      public function startGameLoop() : void
      {
         mCanvas.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         mCanvas.stage.addEventListener(Event.MOUSE_LEAVE,this.mouseLeave);
         mCanvas.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.keyDown);
         mCanvas.stage.addEventListener(KeyboardEvent.KEY_UP,this.keyUp);
         this.mLastFrameTime = getTimer();
      }
      
      public function mouseLeave(param1:Event) : void
      {
         if(getCurrentStateObject())
         {
            getCurrentStateObject().mouseLeave();
         }
      }
      
      public function keyDown(param1:KeyboardEvent) : void
      {
         if(getCurrentStateObject())
         {
            getCurrentStateObject().keyDown(param1);
         }
         Log.keyDown(param1);
      }
      
      public function keyUp(param1:KeyboardEvent) : void
      {
         if(getCurrentStateObject())
         {
            getCurrentStateObject().keyUp(param1);
         }
      }
      
      public function onEnterFrame(param1:Event) : void
      {
         var _loc2_:Number = getTimer() - this.mLastFrameTime;
         this.mLastFrameTime = getTimer();
         TweenManager.instance.update(_loc2_);
         var _loc3_:FrameUpdateEvent = new FrameUpdateEvent(FrameUpdateEvent.UPDATE,_loc2_,param1.bubbles,param1.cancelable);
         this.mEventDispatcher.dispatchEvent(_loc3_);
         MouseCursorController.mouseMove(mCanvas.mouseX,mCanvas.mouseY);
         if(goToNextState())
         {
            return;
         }
         if(this.updateState(_loc2_) == StateBase.STATE_STATUS_COMPLETED)
         {
            goToNextState();
         }
      }
      
      override public function updateState(param1:Number) : int
      {
         var _loc2_:int = super.updateState(param1);
         if(getCurrentStateObject().isGenericState())
         {
            if(_loc2_ == StateBase.STATE_STATUS_COMPLETED)
            {
               mCanvas.addChild(MouseCursorController.activate());
               this.setFirstGameState();
            }
         }
         return _loc2_;
      }
      
      override protected function previousStateDeactivate() : void
      {
         TweenManager.instance.clearTweens();
      }
      
      public function setFirstGameState() : void
      {
         setNextState(StateTemplate.STATE_NAME);
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
         this.mEventDispatcher.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         this.mEventDispatcher.removeEventListener(param1,param2,param3);
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return false;
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return this.mEventDispatcher.hasEventListener(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return this.mEventDispatcher.willTrigger(param1);
      }
   }
}
