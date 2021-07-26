package com.angrybirds.states
{
   import com.angrybirds.AngryBirdsEngine;
   import com.angrybirds.data.level.LevelManager;
   import com.angrybirds.engine.controllers.SlowScrollController;
   import com.rovio.data.localization.LocalizationManager;
   import com.rovio.factory.Log;
   import com.rovio.ui.Components.Helpers.UIEventListenerRovio;
   import com.rovio.ui.Components.UIContainerRovio;
   import com.rovio.ui.Views.UIView;
   import com.rovio.ui.Views.ViewXMLLibrary;
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
      
      public function StateCredits(levelManager:LevelManager, localizationManager:LocalizationManager, initState:Boolean = false, name:String = "CreditsState")
      {
         super(levelManager,initState,name,localizationManager);
      }
      
      override protected function init() : void
      {
         super.init();
         mUIView = new UIView(this);
         mUIView.init(ViewXMLLibrary.mLibrary.Views.View_Credits[0]);
         this.mEngineController = new SlowScrollController(AngryBirdsEngine.smLevelMain,null);
      }
      
      override public function activate(previousState:String) : void
      {
         super.activate(previousState);
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
         AngryBirdsEngine.smLevelMain.setVisible(true);
         AngryBirdsEngine.resume();
         AngryBirdsEngine.setController(this.mEngineController);
         this.mEngineController.init();
         AngryBirdsBase.singleton.playThemeMusic();
      }
      
      protected function setVersion() : void
      {
         var verText:String = Log.sVersionInfo;
         var verTextServ:String = verText.slice(verText.search("Server:"),verText.length);
         verText = verText.slice(0,verText.search("Server:"));
         mUIView.setText(verText,"TextField_Version_Number");
         mUIView.setText(verTextServ,"TextField_Version_Number_Server");
      }
      
      private function isMouseWithinView(e:MouseEvent) : Boolean
      {
         if(AngryBirdsBase.singleton.isFullScreenMode())
         {
            if(mUIView.stage.mouseX < mUIView.stage.width - 187)
            {
               return true;
            }
         }
         else if(mUIView.stage.mouseX < mUIView.stage.width - 264)
         {
            return true;
         }
         return false;
      }
      
      private function onMouseMove(e:MouseEvent) : void
      {
         if(this.mIsDragging)
         {
            if(!this.isMouseWithinView(e))
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
      
      private function onMouseDown(e:MouseEvent) : void
      {
         if(this.isMouseWithinView(e))
         {
            if(!AngryBirdsEngine.isPaused)
            {
               this.mIsDragging = true;
               this.mMouseDragStartY = mUIView.stage.mouseY;
            }
         }
      }
      
      private function onMouseUp(e:MouseEvent) : void
      {
         this.mIsDragging = false;
      }
      
      private function onMouseLeave(e:Event) : void
      {
         this.mIsDragging = false;
      }
      
      private function onMouseWheel(e:MouseEvent) : void
      {
         if(!AngryBirdsEngine.isPaused)
         {
            if(this.isMouseWithinView(e))
            {
               if(e.delta < 0)
               {
                  this.mMouseWheelDelta = 16;
               }
               else if(e.delta > 0)
               {
                  this.mMouseWheelDelta = -16;
               }
            }
         }
      }
      
      override protected function update(deltaTime:Number) : void
      {
         super.update(deltaTime);
         if(!AngryBirdsEngine.isPaused)
         {
            AngryBirdsEngine.controller.update(deltaTime);
            (mUIView.getItemByName("Container_Credits") as UIContainerRovio).setVisibility(true);
            this.readyToShowCredits();
            (mUIView.getItemByName("Container_Credits") as UIContainerRovio).y = Math.floor(-this.mDragOffsetY);
            this.updateInput(deltaTime);
         }
      }
      
      protected function readyToShowCredits() : void
      {
      }
      
      private function updateInput(deltaTime:Number) : void
      {
         this.mDragOffsetY += this.mMouseDragDelta;
         this.mDragOffsetY += this.mMouseWheelDelta;
         if(!this.mIsDragging && Math.abs(this.mMouseWheelDelta) < deltaTime / 15)
         {
            this.mDragOffsetY += deltaTime / 15;
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
      
      override protected function onUIInteraction(eventIndex:int, eventName:String, component:UIEventListenerRovio) : void
      {
         switch(eventName)
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
