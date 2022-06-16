package com.rovio.states
{
   import com.rovio.ApplicationCanvas;
   import com.rovio.factory.Log;
   import flash.display.Stage;
   
   public class StateManager
   {
       
      
      private var mStateList:Vector.<StateBase>;
      
      protected var mActiveState:StateBase;
      
      private var mNextState:String;
      
      private var mPreviousState:String;
      
      protected var mCanvas:ApplicationCanvas = null;
      
      private var mViewWidth:Number;
      
      private var mViewHeight:Number;
      
      public function StateManager(canvas:ApplicationCanvas)
      {
         super();
         this.mStateList = new Vector.<StateBase>();
         this.mCanvas = canvas;
         this.mViewWidth = this.mCanvas.stage.stageWidth;
         this.mViewHeight = this.mCanvas.stage.stageHeight;
      }
      
      public function getCurrentState() : String
      {
         if(this.mActiveState != null)
         {
            return this.mActiveState.mName;
         }
         return StateBase.DUMMY_STATE;
      }
      
      public function getCurrentStateObject() : StateBase
      {
         if(this.mActiveState != null)
         {
            return this.mActiveState;
         }
         return null;
      }
      
      public function getStateObject(name:String) : StateBase
      {
         for(var i:int = 0; i < this.mStateList.length; i++)
         {
            if((this.mStateList[i] as StateBase).mName == name)
            {
               return this.mStateList[i] as StateBase;
            }
         }
         return null;
      }
      
      public function replaceStateObject(name:String, stateClass:Class) : StateBase
      {
         var state:StateBase = null;
         for(var i:int = 0; i < this.mStateList.length; i++)
         {
            if((this.mStateList[i] as StateBase).mName == name)
            {
               state = this.createStateObject(stateClass);
               this.mStateList[i] = state;
               state.mApp = this;
               return state;
            }
         }
         throw new Error("State \'" + name + "\' not found.");
      }
      
      protected function createStateObject(stateClass:Class) : StateBase
      {
         return new stateClass();
      }
      
      public function setNextState(newState:String) : void
      {
         this.mNextState = newState;
      }
      
      public function get isStateChanging() : Boolean
      {
         return this.mNextState != StateBase.DUMMY_STATE;
      }
      
      public function getNextState() : String
      {
         return this.mNextState;
      }
      
      public function getPreviousState() : String
      {
         return this.mPreviousState;
      }
      
      public function goToNextState() : Boolean
      {
         if(this.mNextState != StateBase.DUMMY_STATE)
         {
            this.setState(this.mNextState);
            this.setViewSize(this.mViewWidth,this.mViewHeight);
            this.mPreviousState = this.mNextState;
            this.mNextState = StateBase.DUMMY_STATE;
            return true;
         }
         return false;
      }
      
      public function setState(state:String) : Boolean
      {
         var tmpState:StateBase = null;
         var s:StateBase = null;
         for each(s in this.mStateList)
         {
            if(s.mName == state)
            {
               tmpState = s;
            }
         }
         if(tmpState == null)
         {
            Log.log("WARNING: StateManager->setState, requested state name does not exists: " + state);
            return false;
         }
         var skipTransitionIn:Boolean = false;
         if(this.mActiveState != null)
         {
            Log.log("deActivate state: " + this.mActiveState.mName);
            skipTransitionIn = this.mActiveState.skipTransition;
            this.mActiveState.skipTransition = false;
            this.mActiveState.deActivate();
            this.previousStateDeactivate();
            this.mCanvas.removeChild(this.mActiveState.mSprite);
         }
         this.mActiveState = tmpState;
         Log.log("Activate state: " + this.mActiveState.mName);
         this.stage.frameRate = this.mActiveState.getTargetFrameRate();
         this.mCanvas.addChildAt(this.mActiveState.mSprite,0);
         this.mActiveState.activate(this.getPreviousState());
         this.mActiveState.activateComplete(skipTransitionIn);
         return true;
      }
      
      protected function previousStateDeactivate() : void
      {
      }
      
      public function addState(state:StateBase) : Boolean
      {
         if(state != null)
         {
            this.mStateList.push(state);
            state.mApp = this;
            return true;
         }
         return false;
      }
      
      public function updateState(deltaTime:Number) : int
      {
         if(!this.mActiveState)
         {
            return StateBase.STATE_STATUS_NOT_ACTIVE;
         }
         if(this.mActiveState.nextState)
         {
            return StateBase.STATE_STATUS_COMPLETED;
         }
         return this.mActiveState.run(deltaTime);
      }
      
      public function getAppWidth() : Number
      {
         return this.mCanvas.width;
      }
      
      public function getAppHeight() : Number
      {
         return this.mCanvas.height;
      }
      
      public function get canvas() : ApplicationCanvas
      {
         return this.mCanvas;
      }
      
      public function get stage() : Stage
      {
         return this.mCanvas.stage;
      }
      
      public function getFlashVar(key:String) : String
      {
         return this.stage.loaderInfo.parameters[key];
      }
      
      public function setViewSize(width:Number, height:Number) : void
      {
         if(this.mActiveState)
         {
            this.mActiveState.setViewSize(width,height);
         }
         this.mViewWidth = width;
         this.mViewHeight = height;
      }
   }
}
