package com.rovio
{
   import com.rovio.factory.Log;
   import com.rovio.factory.MouseCursorController;
   import com.rovio.server.Server;
   import com.rovio.sound.SoundEngine;
   import com.rovio.states.StateBase;
   import com.rovio.states.StateLoad;
   import com.rovio.states.StateManager;
   import com.rovio.states.StateTemplate;
   import flash.display.StageAlign;
   import flash.display.StageScaleMode;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.utils.getTimer;
   
   public class BasicGame extends StateManager
   {
       
      
      public var lastTime:Number;
      
      public function BasicGame()
      {
         super();
         Log.init();
         StateBase.smApplicationParameters = this.stage.loaderInfo.parameters;
         stage.scaleMode = StageScaleMode.NO_SCALE;
         stage.align = StageAlign.TOP_LEFT;
         SoundEngine.init();
         addState(new StateTemplate());
         addState(new StateLoad());
         Server.addCommand("serverConnectionError");
         setNextState(StateLoad.STATE_NAME);
         this.startGameLoop();
      }
      
      public function startGameLoop() : void
      {
         addEventListener(Event.ENTER_FRAME,this.updateGame);
         stage.addEventListener(Event.MOUSE_LEAVE,this.mouseLeave);
         stage.addEventListener(KeyboardEvent.KEY_DOWN,this.keyDown);
         stage.addEventListener(KeyboardEvent.KEY_UP,this.keyUp);
         this.lastTime = getTimer();
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
      
      public function updateGame(param1:Event) : void
      {
         var _loc2_:Number = getTimer() - this.lastTime;
         this.lastTime = getTimer();
         MouseCursorController.mouseMove(mouseX,mouseY);
         if(goToNextState())
         {
            return;
         }
         this.updateState(_loc2_);
      }
      
      override public function updateState(param1:Number) : int
      {
         var _loc2_:int = super.updateState(param1);
         if(getCurrentStateObject().isGenericState())
         {
            if(_loc2_ == StateBase.STATE_STATUS_COMPLETED)
            {
               addChild(MouseCursorController.activate());
               this.setFirstGameState();
            }
         }
         return _loc2_;
      }
      
      public function setFirstGameState() : void
      {
         setNextState(StateTemplate.STATE_NAME);
      }
      
      public function addCallBackFunctionsToInitialLoadingState(param1:Function) : void
      {
         StateLoad(getStateObject(StateLoad.STATE_NAME)).addCallBackFunction(param1);
      }
   }
}
