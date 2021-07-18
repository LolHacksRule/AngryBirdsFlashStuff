package com.rovio.states
{
   import com.rovio.factory.Log;
   import com.rovio.ui.Components.Helpers.UIEventListenerRovio;
   import com.rovio.ui.Views.UIView;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   
   public class StateBase extends Sprite
   {
      
      public static const DUMMY_STATE:String = "dummyState";
      
      public static const STATE_STATUS_NOT_READY:int = 0;
      
      public static const STATE_STATUS_NOT_ACTIVE:int = 1;
      
      public static const STATE_STATUS_RUNNING:int = 2;
      
      public static const STATE_STATUS_COMPLETED:int = 3;
      
      public static var smApplicationParameters:Object = null;
       
      
      public var mReady:Boolean = false;
      
      public var mActive:Boolean = false;
      
      public var mName:String;
      
      public var mGenericState:Boolean = false;
      
      public var mCleanUpAfterDeactivating:Boolean = false;
      
      public var mUIView:UIView;
      
      public var mAlternateViewList:Array;
      
      public var mNextState:String = "";
      
      public function StateBase(initObject:Boolean, name:String)
      {
         super();
         this.mName = name;
         this.mAlternateViewList = new Array();
         if(initObject)
         {
            this.init();
         }
      }
      
      public static function getApplicationParameter(key:String) : String
      {
         if(smApplicationParameters)
         {
            return smApplicationParameters[key];
         }
         return null;
      }
      
      public function init() : void
      {
         this.mReady = true;
      }
      
      public function activate() : void
      {
         var view:UIView = null;
         if(!this.mReady)
         {
            this.init();
         }
         if(this.mUIView)
         {
            addChild(this.mUIView);
            this.mUIView.activateView();
         }
         for each(view in this.mAlternateViewList)
         {
            addChild(view);
            view.deactivateView();
         }
         this.mNextState = "";
         this.mActive = true;
      }
      
      public function deActivate() : void
      {
         var view:UIView = null;
         if(this.mUIView)
         {
            this.mUIView.deactivateView();
            removeChild(this.mUIView);
         }
         for each(view in this.mAlternateViewList)
         {
            view.deactivateView();
            removeChild(view);
         }
         if(!this.mActive)
         {
            if(this.mCleanUpAfterDeactivating)
            {
               this.cleanup();
            }
            return;
         }
         this.mActive = false;
         if(this.mCleanUpAfterDeactivating)
         {
            this.cleanup();
         }
      }
      
      public function setCleanUpAfterDeactivating(value:Boolean) : void
      {
         this.mCleanUpAfterDeactivating = value;
      }
      
      public function cleanup() : void
      {
         if(!this.mReady)
         {
            return;
         }
         if(this.mUIView)
         {
            this.mUIView.clear();
            this.mUIView = null;
         }
         while(this.mAlternateViewList.length > 0)
         {
            (this.mAlternateViewList.pop() as UIView).clear();
         }
         if(this.mActive)
         {
            this.deActivate();
         }
         this.mReady = false;
      }
      
      public function run(deltaTime:Number) : int
      {
         if(!this.mReady)
         {
            Log.log("WARNING: State -> run() method is called when state is not ready: " + this.mName);
            return STATE_STATUS_NOT_READY;
         }
         if(!this.mActive)
         {
            Log.log("WARNING: State -> run() method is called when state is not active: " + this.mName);
            return STATE_STATUS_NOT_ACTIVE;
         }
         return STATE_STATUS_RUNNING;
      }
      
      public function isGenericState() : Boolean
      {
         return this.mGenericState;
      }
      
      public function uiInteractionHandler(eventIndex:int, eventName:String, component:UIEventListenerRovio) : void
      {
      }
      
      public function mouseLeave() : void
      {
      }
      
      public function keyDown(e:KeyboardEvent) : void
      {
      }
      
      public function keyUp(e:KeyboardEvent) : void
      {
      }
      
      public function addAlternateView(view:UIView) : void
      {
         this.mAlternateViewList.push(view);
      }
   }
}
