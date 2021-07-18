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
      
      public function StateBase(param1:Boolean, param2:String)
      {
         super();
         this.mName = param2;
         this.mAlternateViewList = new Array();
         if(param1)
         {
            this.init();
         }
      }
      
      public static function getApplicationParameter(param1:String) : String
      {
         if(smApplicationParameters)
         {
            return smApplicationParameters[param1];
         }
         return null;
      }
      
      public function init() : void
      {
         this.mReady = true;
      }
      
      public function activate() : void
      {
         var _loc1_:UIView = null;
         if(!this.mReady)
         {
            this.init();
         }
         if(this.mUIView)
         {
            addChild(this.mUIView);
            this.mUIView.activateView();
         }
         for each(_loc1_ in this.mAlternateViewList)
         {
            addChild(_loc1_);
            _loc1_.deactivateView();
         }
         this.mNextState = "";
         this.mActive = true;
      }
      
      public function deActivate() : void
      {
         var _loc1_:UIView = null;
         if(this.mUIView)
         {
            this.mUIView.deactivateView();
            removeChild(this.mUIView);
         }
         for each(_loc1_ in this.mAlternateViewList)
         {
            _loc1_.deactivateView();
            removeChild(_loc1_);
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
      
      public function setCleanUpAfterDeactivating(param1:Boolean) : void
      {
         this.mCleanUpAfterDeactivating = param1;
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
      
      public function run(param1:Number) : int
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
      
      public function uiInteractionHandler(param1:int, param2:String, param3:UIEventListenerRovio) : void
      {
      }
      
      public function mouseLeave() : void
      {
      }
      
      public function keyDown(param1:KeyboardEvent) : void
      {
      }
      
      public function keyUp(param1:KeyboardEvent) : void
      {
      }
      
      public function addAlternateView(param1:UIView) : void
      {
         this.mAlternateViewList.push(param1);
      }
   }
}
