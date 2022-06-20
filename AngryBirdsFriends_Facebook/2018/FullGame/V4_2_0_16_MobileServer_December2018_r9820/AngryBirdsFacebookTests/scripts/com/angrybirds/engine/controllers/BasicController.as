package com.angrybirds.engine.controllers
{
   import com.angrybirds.data.level.LevelManager;
   import com.angrybirds.engine.LevelMain;
   import flash.events.EventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import starling.core.Starling;
   import starling.display.DisplayObject;
   import starling.events.Touch;
   import starling.events.TouchEvent;
   import starling.events.TouchPhase;
   
   public class BasicController extends EventDispatcher implements ILevelMainController
   {
       
      
      protected var mLevelMain:LevelMain;
      
      protected var mLevelManager:LevelManager;
      
      private var mInputEnabled:Boolean = false;
      
      public function BasicController(levelMain:LevelMain, levelManager:LevelManager)
      {
         super();
         this.mLevelMain = levelMain;
         this.mLevelManager = levelManager;
      }
      
      public function update(deltaTime:Number) : void
      {
         this.mLevelMain.update(deltaTime,true);
      }
      
      public function init() : void
      {
      }
      
      public function keyDown(evt:KeyboardEvent) : void
      {
      }
      
      public function keyUp(evt:KeyboardEvent) : void
      {
      }
      
      public function addEventListeners() : void
      {
         this.removeEventListeners();
         if(Starling.current)
         {
            Starling.current.stage.addEventListener(TouchEvent.TOUCH,this.onTouch);
         }
         this.mLevelMain.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      public function removeEventListeners() : void
      {
         if(Starling.current)
         {
            Starling.current.stage.removeEventListener(TouchEvent.TOUCH,this.onTouch);
         }
         this.mLevelMain.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
      }
      
      private function onTouch(event:TouchEvent) : void
      {
         var touches:Vector.<Touch> = null;
         var touchEnd:Touch = null;
         var touchBegin:Touch = null;
         if(!this.mInputEnabled || !this.mLevelMain.mReadyToRun)
         {
            return;
         }
         var target:DisplayObject = event.target as DisplayObject;
         if(target)
         {
            touches = event.getTouches(target,TouchPhase.MOVED);
            touches = touches.concat(event.getTouches(target,TouchPhase.HOVER));
            if(touches.length > 0)
            {
               this.handleMouseMove(touches[0].globalX,touches[0].globalY);
            }
            touchEnd = event.getTouch(target,TouchPhase.ENDED);
            if(touchEnd && touchEnd.tapCount > 0)
            {
               this.handleMouseUp(touchEnd.globalX,touchEnd.globalY);
            }
            touchBegin = event.getTouch(target,TouchPhase.BEGAN);
            if(touchBegin && touchBegin.tapCount > 0)
            {
               this.handleMouseDown(touchBegin.globalX,touchBegin.globalY);
            }
         }
      }
      
      protected function handleMouseMove(x:Number, y:Number) : void
      {
      }
      
      protected function handleMouseUp(x:Number, y:Number) : void
      {
      }
      
      protected function handleMouseDown(x:Number, y:Number) : void
      {
      }
      
      protected function onMouseWheel(e:MouseEvent) : void
      {
      }
      
      public function getZoomRatio() : Number
      {
         return this.mLevelMain.camera.getZoomRatio();
      }
      
      public function setZoomRatio(ratio:Number) : void
      {
         this.mLevelMain.camera.setZoomRatio(ratio);
      }
      
      public function addScore(score:int) : void
      {
      }
      
      public function getScore() : int
      {
         return 0;
      }
      
      public function getEagleScore() : int
      {
         return 0;
      }
      
      public function setInputEnabled(enabled:Boolean) : void
      {
         this.mInputEnabled = enabled;
      }
      
      public function getInputEnabled() : Boolean
      {
         return this.mInputEnabled;
      }
      
      public function checkForLevelEnd() : void
      {
      }
   }
}
