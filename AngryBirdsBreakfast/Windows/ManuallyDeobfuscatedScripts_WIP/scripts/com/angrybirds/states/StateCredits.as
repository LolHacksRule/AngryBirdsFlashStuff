package com.angrybirds.states
{
   import com.rovio.ui.Components.Helpers.UIEventListenerRovio;
   import com.rovio.ui.Components.UIContainerRovio;
   import com.rovio.ui.Views.ViewXMLLibrary;
   import com.rovio.ui.Views.UIView;
   import com.angrybirds.data.level.LevelManager;
   import com.rovio.data.localization.LocalizationManager;
   import com.angrybirds.engine.controllers.SlowScrollController;
   import com.angrybirds.AngryBirdsEngine;
   import com.rovio.factory.Log;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class StateCredits extends StateBaseLevel
   {
      
      public static const STATE_NAME:String = "CreditsState";
       
      
      protected var mEngineController:SlowScrollController = null;
      
      private var mIsDragging:Boolean;
      
      private var mMouseDragDelta:Number;
      
      private var mMouseWheelDelta:Number;
      
      private var mMouseDragStartY:Number;
      
      private var mDragOffsetY:Number;
      
      private var mDragAreaHeight:Number;
      
      public function StateCredits(param1:LevelManager, param2:LocalizationManager, param3:Boolean = false, param4:String = "CreditsState")
      {
         super(param1,param3,param4,param2);
      }
      
      override protected function init() : void
      {
         super.init();
         mUIView = new UIView(this);
         mUIView.init(ViewXMLLibrary.mLibrary.Views.View_Credits[0]);
         this.mEngineController = new SlowScrollController(AngryBirdsEngine.mIsRunning,null);
      }
      
      override public function activate(param1:String) : void
      {
         super.activate(param1);
         this.mIsDragging = false;
         this.mDragAreaHeight = (mUIView.getItemByName("Container_Credits") as UIContainerRovio).height + AngryBirdsEngine.SCREEN_HEIGHT * AngryBirdsEngine.sHeightScale;
         this.mDragOffsetY = -this.mDragAreaHeight;
         this.activateLevelEngine();
         mUIView.stage.addEventListener(MouseEvent.MOUSE_MOVE,this.onMouseMove);
         mUIView.stage.addEventListener(MouseEvent.MOUSE_DOWN,this.onMouseDown);
         mUIView.stage.addEventListener(MouseEvent.MOUSE_UP,this.onMouseUp);
         mUIView.stage.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         mUIView.stage.addEventListener(Event.MOUSE_LEAVE,this.onMouseLeave);
         this.mMouseDragDelta = 0;
         this.mMouseWheelDelta = 0;
         this.setVersion();
      }
      
      protected function activateLevelEngine() : void
      {
         AngryBirdsEngine.mIsRunning.setVisible(true);
         AngryBirdsEngine.resume();
         AngryBirdsEngine.setController(this.mEngineController);
         this.mEngineController.init();
         AngryBirdsBase.singleton.playThemeMusic();
      }
      
      protected function setVersion() : void
      {
         var _loc1_:String = Log.sVersionInfo;
         var _loc2_:String = _loc1_.slice(_loc1_.search("Server:"),_loc1_.length);
         _loc1_ = _loc1_.slice(0,_loc1_.search("Server:"));
         mUIView.setText(_loc1_,"TextField_Version_Number");
         mUIView.setText(_loc2_,"TextField_Version_Number_Server");
      }
      
      private function isMouseWithinView(param1:MouseEvent) : Boolean
      {
         if(mUIView.stage.mouseX < mUIView.stage.width - 180)
         {
            return true;
         }
         return false;
      }
      
      private function onMouseMove(param1:MouseEvent) : void
      {
         if(this.mIsDragging)
         {
            if(!this.isMouseWithinView(param1))
            {
               this.mIsDragging = false;
               return;
            }
            if(this.mMouseDragStartY - mUIView.stage.mouseY > 0)
            {
               this.mMouseDragDelta = this.mMouseDragStartY - mUIView.stage.mouseY;
               this.mMouseDragStartY = mUIView.stage.mouseY;
            }
            else if(this.mMouseDragStartY - mUIView.stage.mouseY < 0)
            {
               this.mMouseDragDelta = this.mMouseDragStartY - mUIView.stage.mouseY;
               this.mMouseDragStartY = mUIView.stage.mouseY;
            }
         }
      }
      
      private function onMouseDown(param1:MouseEvent) : void
      {
         if(this.isMouseWithinView(param1))
         {
            if(!AngryBirdsEngine.isPaused)
            {
               this.mIsDragging = true;
               this.mMouseDragStartY = mUIView.stage.mouseY;
            }
         }
      }
      
      private function onMouseUp(param1:MouseEvent) : void
      {
         this.mIsDragging = false;
      }
      
      private function onMouseLeave(param1:Event) : void
      {
         this.mIsDragging = false;
      }
      
      private function onMouseWheel(param1:MouseEvent) : void
      {
         if(this.isMouseWithinView(param1))
         {
            if(param1.delta < 0)
            {
               this.mMouseWheelDelta = 16;
            }
            else if(param1.delta > 0)
            {
               this.mMouseWheelDelta = -16;
            }
         }
      }
      
      override protected function update(param1:Number) : void
      {
         super.update(param1);
         if(!AngryBirdsEngine.isPaused)
         {
            AngryBirdsEngine.controller.update(param1);
            (mUIView.getItemByName("Container_Credits") as UIContainerRovio).setVisibility(true);
            this.readyToShowCredits();
            (mUIView.getItemByName("Container_Credits") as UIContainerRovio).y = Math.floor(-this.mDragOffsetY);
            this.updateInput(param1);
         }
      }
      
      protected function readyToShowCredits() : void
      {
      }
      
      private function updateInput(param1:Number) : void
      {
         this.mDragOffsetY += this.mMouseDragDelta;
         this.mDragOffsetY += this.mMouseWheelDelta;
         if(!this.mIsDragging && Math.abs(this.mMouseWheelDelta) < param1 / 15)
         {
            this.mDragOffsetY += param1 / 15;
         }
         if(this.mDragOffsetY < -AngryBirdsBase.screenHeight * AngryBirdsEngine.sHeightScale)
         {
            this.mDragOffsetY = this.mDragAreaHeight;
         }
         else if(this.mDragOffsetY > this.mDragAreaHeight)
         {
            this.mDragOffsetY = -AngryBirdsBase.screenHeight * AngryBirdsEngine.sHeightScale;
         }
         if(!this.mIsDragging)
         {
            this.mMouseDragDelta *= 0.9;
            this.mMouseWheelDelta *= 0.9;
         }
      }
      
      override public function deActivate() : void
      {
         mUIView.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.onMouseMove);
         mUIView.stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.onMouseDown);
         mUIView.stage.removeEventListener(MouseEvent.MOUSE_UP,this.onMouseUp);
         mUIView.stage.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
         mUIView.stage.removeEventListener(Event.MOUSE_LEAVE,this.onMouseLeave);
         (mUIView.getItemByName("Container_Credits") as UIContainerRovio).visible = false;
         super.deActivate();
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:UIEventListenerRovio) : void
      {
         switch(param2)
         {
            case "CREDITS_CLOSE_BUTTON":
               setNextState(StateStart.STATE_NAME);
               break;
            case "FULLSCREEN_BUTTON":
               AngryBirdsBase.singleton.toggleFullScreen();
         }
      }
   }
}
