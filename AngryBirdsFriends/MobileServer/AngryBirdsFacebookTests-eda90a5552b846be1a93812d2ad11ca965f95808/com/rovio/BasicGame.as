package com.rovio
{
   import com.rovio.data.localization.DefaultLocalizationMapping;
   import com.rovio.data.localization.LocalizationManager;
   import com.rovio.events.FrameUpdateEvent;
   import com.rovio.factory.Log;
   import com.rovio.factory.MouseCursorController;
   import com.rovio.server.Server;
   import com.rovio.sound.SoundEngine;
   import com.rovio.states.StateBase;
   import com.rovio.states.StateLoad;
   import com.rovio.states.StateManager;
   import com.rovio.states.StateTemplate;
   import com.rovio.tween.TweenManager;
   import com.rovio.ui.Views.ViewXMLLibrary;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.utils.getTimer;
   import org.libspark.ui.SWFWheel;
   
   public class BasicGame extends StateManager implements IEventDispatcher
   {
      
      public static var smScreenWidth:Number;
      
      public static var smScreenHeight:Number;
       
      
      public var mLastFrameTime:Number;
      
      private var mEventDispatcher:EventDispatcher;
      
      private var mLocalizationManager:LocalizationManager;
      
      public function BasicGame(canvas:ApplicationCanvas, loadingScreen:DisplayObjectContainer, uiData:XML, assetData:XML)
      {
         this.mEventDispatcher = new EventDispatcher();
         super(canvas);
         if(mCanvas.stage)
         {
            this.init(loadingScreen,uiData,assetData);
         }
         else
         {
            mCanvas.addEventListener(Event.ADDED_TO_STAGE,function(e:Event):void
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
      
      protected function init(loadingScreen:DisplayObjectContainer, uiData:XML, assetData:XML) : void
      {
         this.mLocalizationManager = new LocalizationManager(new DefaultLocalizationMapping("en"));
         SWFWheel.initialize(stage);
         SWFWheel.browserScroll = false;
         Log.setVersionInfo(this.getVersionInfo());
         Log.sServerVersionInfo = this.getVersionInfo();
         StateBase.smApplicationParameters = mCanvas.stage.loaderInfo.parameters;
         this.initSoundEngine();
         addState(new StateTemplate(this.localizationManager));
         var stateLoad:StateLoad = this.initStateLoad();
         addState(stateLoad);
         stateLoad.setLoadingScreen(loadingScreen);
         stateLoad.setAssetData(assetData);
         ViewXMLLibrary.init(uiData);
         if(Server.getIsAvailable())
         {
            Server.addCommand("serverConnectionError");
         }
         setNextState(StateLoad.STATE_NAME);
         this.startGameLoop();
      }
      
      protected function initStateLoad() : StateLoad
      {
         return new StateLoad(this.localizationManager,true,StateLoad.STATE_NAME,this.getMinLoadingScreenTime(),stage.loaderInfo.parameters.assetsUrl || "",stage.loaderInfo.parameters.buildNumber || "");
      }
      
      public function startGameLoop() : void
      {
         mCanvas.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         mCanvas.stage.addEventListener(Event.MOUSE_LEAVE,this.mouseLeave);
         mCanvas.stage.addEventListener(KeyboardEvent.KEY_DOWN,this.keyDown);
         mCanvas.stage.addEventListener(KeyboardEvent.KEY_UP,this.keyUp);
         this.mLastFrameTime = getTimer();
      }
      
      public function mouseLeave(e:Event) : void
      {
         if(getCurrentStateObject())
         {
            getCurrentStateObject().mouseLeave();
         }
      }
      
      public function keyDown(e:KeyboardEvent) : void
      {
         if(getCurrentStateObject())
         {
            getCurrentStateObject().keyDown(e);
         }
         Log.keyDown(e);
      }
      
      public function keyUp(e:KeyboardEvent) : void
      {
         if(getCurrentStateObject())
         {
            getCurrentStateObject().keyUp(e);
         }
      }
      
      public function onEnterFrame(e:Event) : void
      {
         var deltaTime:Number = getTimer() - this.mLastFrameTime;
         this.mLastFrameTime = getTimer();
         TweenManager.instance.update(deltaTime);
         var event:FrameUpdateEvent = new FrameUpdateEvent(FrameUpdateEvent.UPDATE,deltaTime,e.bubbles,e.cancelable);
         this.mEventDispatcher.dispatchEvent(event);
         MouseCursorController.mouseMove(mCanvas.mouseX,mCanvas.mouseY);
         if(goToNextState())
         {
            return;
         }
         if(this.updateState(deltaTime) == StateBase.STATE_STATUS_COMPLETED)
         {
            goToNextState();
         }
      }
      
      override public function updateState(deltaTime:Number) : int
      {
         var returnValue:int = super.updateState(deltaTime);
         if(getCurrentStateObject().isGenericState())
         {
            if(returnValue == StateBase.STATE_STATUS_COMPLETED)
            {
               mCanvas.addChild(MouseCursorController.activate());
               this.setFirstGameState();
            }
         }
         return returnValue;
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
      
      public function addEventListener(type:String, listener:Function, useCapture:Boolean = false, priority:int = 0, useWeakReference:Boolean = false) : void
      {
         this.mEventDispatcher.addEventListener(type,listener,useCapture,priority,useWeakReference);
      }
      
      public function removeEventListener(type:String, listener:Function, useCapture:Boolean = false) : void
      {
         this.mEventDispatcher.removeEventListener(type,listener,useCapture);
      }
      
      public function dispatchEvent(event:Event) : Boolean
      {
         return false;
      }
      
      public function hasEventListener(type:String) : Boolean
      {
         return this.mEventDispatcher.hasEventListener(type);
      }
      
      public function willTrigger(type:String) : Boolean
      {
         return this.mEventDispatcher.willTrigger(type);
      }
   }
}
