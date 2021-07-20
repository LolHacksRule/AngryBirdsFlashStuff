package com.angrybirds.engine.controllers
{
   import starling.display.DisplayObject;
   import com.angrybirds.data.level.LevelManager;
   import com.angrybirds.engine.LevelMain;
   import starling.core.Starling;
   import flash.events.EventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import starling.events.TouchPhase;
   import starling.events.Touch;
   import starling.events.TouchEvent;
   
   public class BasicController extends EventDispatcher implements ILevelMainController
   {
       
      
      protected var mLevelMain:LevelMain;
      
      protected var mLevelManager:LevelManager;
      
      private var mInputEnabled:Boolean = false;
      
      public function BasicController(param1:LevelMain, param2:LevelManager)
      {
         super();
         this.mLevelMain = param1;
         this.mLevelManager = param2;
      }
      
      public function update(param1:Number) : void
      {
         this.mLevelMain.update(param1,true);
      }
      
      public function init() : void
      {
      }
      
      public function keyDown(param1:KeyboardEvent) : void
      {
      }
      
      public function keyUp(param1:KeyboardEvent) : void
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
      
      private function onTouch(param1:TouchEvent) : void
      {
         var _loc3_:Vector.<Touch> = null;
         var _loc4_:Touch = null;
         var _loc5_:Touch = null;
         if(!this.mInputEnabled || !this.mLevelMain.mReadyToRun)
         {
            return;
         }
         var _loc2_:DisplayObject = param1.target as DisplayObject;
         if(_loc2_)
         {
            _loc3_ = param1.getTouches(_loc2_,TouchPhase.MOVED);
            _loc3_ = _loc3_.concat(param1.getTouches(_loc2_,TouchPhase.HOVER));
            if(_loc3_.length > 0)
            {
               this.handleMouseMove(_loc3_[0].globalX,_loc3_[0].globalY);
            }
            if((_loc4_ = param1.getTouch(_loc2_,TouchPhase.ENDED)) && _loc4_.tapCount > 0)
            {
               this.handleMouseUp(_loc4_.globalX,_loc4_.globalY);
            }
            if((_loc5_ = param1.getTouch(_loc2_,TouchPhase.BEGAN)) && _loc5_.tapCount > 0)
            {
               this.handleMouseDown(_loc5_.globalX,_loc5_.globalY);
            }
         }
      }
      
      protected function handleMouseMove(param1:Number, param2:Number) : void
      {
      }
      
      protected function handleMouseUp(param1:Number, param2:Number) : void
      {
      }
      
      protected function handleMouseDown(param1:Number, param2:Number) : void
      {
      }
      
      protected function onMouseWheel(param1:MouseEvent) : void
      {
      }
      
      public function getZoomRatio() : Number
      {
         return this.mLevelMain.camera.getZoomRatio();
      }
      
      public function setZoomRatio(param1:Number) : void
      {
         this.mLevelMain.camera.setZoomRatio(param1);
      }
      
      public function addScore(param1:int) : void
      {
      }
      
      public function getScore(param1:int) : int
      {
         return 0;
      }
      
      public function getEagleScore() : int
      {
         return 0;
      }
      
      public function setInputEnabled(param1:Boolean) : void
      {
         this.mInputEnabled = param1;
      }
      
      public function getInputEnabled() : Boolean
      {
         return this.mInputEnabled;
      }
   }
}
