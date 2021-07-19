package com.rovio.states
{
   import com.rovio.factory.Log;
   import flash.display.Sprite;
   
   public class StateManager extends Sprite
   {
       
      
      private var mStateList:Vector.<StateBase>;
      
      private var mActiveState:StateBase;
      
      private var mNextState:String;
      
      public function StateManager()
      {
         super();
         this.mStateList = new Vector.<StateBase>();
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
         while(_loc2_ < this.mStateList.length)
         {
            if((this.mStateList[_loc2_] as StateBase).mName == param1)
            {
               return this.mStateList[_loc2_] as StateBase;
            }
            _loc2_++;
         }
         return null;
      }
      
      public function setNextState(param1:String) : void
      {
         this.mNextState = param1;
      }
      
      public function goToNextState() : Boolean
      {
         if(this.mNextState != StateBase.DUMMY_STATE)
         {
            this.setState(this.mNextState);
            this.mNextState = StateBase.DUMMY_STATE;
            return true;
         }
         return false;
      }
      
      public function setState(param1:String) : Boolean
      {
         var _loc2_:StateBase = null;
         var _loc3_:StateBase = null;
         for each(_loc3_ in this.mStateList)
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
         if(this.mActiveState != null)
         {
            Log.log("deActivate state: " + this.mActiveState.mName);
            this.mActiveState.deActivate();
            removeChild(this.mActiveState);
         }
         this.mActiveState = _loc2_;
         Log.log("Activate state: " + this.mActiveState.mName);
         addChildAt(this.mActiveState,0);
         this.mActiveState.activate();
         return true;
      }
      
      public function addState(param1:StateBase) : Boolean
      {
         if(param1 != null)
         {
            this.mStateList.push(param1);
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
         return this.mActiveState.run(param1);
      }
   }
}
