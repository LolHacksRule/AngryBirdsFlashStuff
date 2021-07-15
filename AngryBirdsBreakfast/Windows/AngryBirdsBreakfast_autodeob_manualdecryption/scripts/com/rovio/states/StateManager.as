package com.rovio.states
{
   import com.rovio.ApplicationCanvas;
   import com.rovio.factory.Log;
   import flash.display.Stage;
   
   public class StateManager
   {
       
      
      private var SoundEngine:Vector.<StateBase>;
      
      protected var mActiveState:StateBase;
      
      private var mNextState:String;
      
      private var mPreviousState:String;
      
      protected var mCanvas:ApplicationCanvas = null;
      
      private var mViewWidth:Number;
      
      private var mViewHeight:Number;
      
      public function StateManager(param1:ApplicationCanvas)
      {
         super();
         this.SoundEngine = new Vector.<StateBase>();
         this.mCanvas = param1;
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
      
      public function getStateObject(param1:String) : StateBase
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.SoundEngine.length)
         {
            if((this.SoundEngine[_loc2_] as StateBase).mName == param1)
            {
               return this.SoundEngine[_loc2_] as StateBase;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function setNextState(param1:String) : void
      {
         this.mNextState = param1;
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
      
      public function setState(param1:String) : Boolean
      {
         var _loc2_:StateBase = null;
         var _loc3_:StateBase = null;
         for each(_loc3_ in this.SoundEngine)
         {
            if(_loc3_.mName == param1)
            {
               _loc2_ = _loc3_;
            }
         }
         if(_loc2_ == null)
         {
            Log.log("WARNING: StateManager->setState, requested state name does not exists: " + param1);
            return false;
         }
         var _loc4_:Boolean = false;
         if(this.mActiveState != null)
         {
            Log.log("deActivate state: " + this.mActiveState.mName);
            _loc4_ = this.mActiveState.skipTransition;
            this.mActiveState.skipTransition = false;
            this.mActiveState.deActivate();
            this.previousStateDeactivate();
            this.mCanvas.removeChild(this.mActiveState.mSprite);
         }
         this.mActiveState = _loc2_;
         Log.log("Activate state: " + this.mActiveState.mName);
         this.stage.frameRate = this.mActiveState.getTargetFrameRate();
         this.mCanvas.addChildAt(this.mActiveState.mSprite,0);
         this.mActiveState.activate(this.getPreviousState());
         this.mActiveState.activateComplete(_loc4_);
         return true;
      }
      
      protected function previousStateDeactivate() : void
      {
      }
      
      public function addState(param1:StateBase) : Boolean
      {
         if(param1 != null)
         {
            this.SoundEngine.push(param1);
            param1.mApp = this;
            return true;
         }
         return false;
      }
      
      public function updateState(param1:Number) : int
      {
         if(!this.mActiveState)
         {
            return StateBase.STATE_STATUS_NOT_ACTIVE;
         }
         if(this.mActiveState.nextState)
         {
            return StateBase.STATE_STATUS_COMPLETED;
         }
         return this.mActiveState.run(param1);
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
      
      public function getFlashVar(param1:String) : String
      {
         return this.stage.loaderInfo.parameters[param1];
      }
      
      public function setViewSize(param1:Number, param2:Number) : void
      {
         if(this.mActiveState)
         {
            this.mActiveState.setViewSize(param1,param2);
         }
         this.mViewWidth = param1;
         this.mViewHeight = param2;
      }
   }
}
