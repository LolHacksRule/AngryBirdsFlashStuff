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
      
      public function setNextState(newState:String) : void
      {
         this.mNextState = newState;
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
         if(this.mActiveState != null)
         {
            Log.log("deActivate state: " + this.mActiveState.mName);
            this.mActiveState.deActivate();
            removeChild(this.mActiveState);
         }
         this.mActiveState = tmpState;
         Log.log("Activate state: " + this.mActiveState.mName);
         addChildAt(this.mActiveState,0);
         this.mActiveState.activate();
         return true;
      }
      
      public function addState(state:StateBase) : Boolean
      {
         if(state != null)
         {
            this.mStateList.push(state);
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
         return this.mActiveState.run(deltaTime);
      }
   }
}
