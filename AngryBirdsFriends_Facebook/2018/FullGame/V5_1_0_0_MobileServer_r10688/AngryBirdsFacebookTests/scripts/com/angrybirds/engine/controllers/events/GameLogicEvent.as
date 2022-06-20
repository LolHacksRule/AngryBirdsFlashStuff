package com.angrybirds.engine.controllers.events
{
   import flash.events.Event;
   
   public class GameLogicEvent extends Event
   {
      
      public static var STATE_CHANGED:String = "STATE_CHANGED";
       
      
      private var mState:int;
      
      public function GameLogicEvent(type:String, state:int, bubbles:Boolean = false, cancelable:Boolean = false)
      {
         super(type,bubbles,cancelable);
         this.mState = state;
      }
      
      public function get state() : int
      {
         return this.mState;
      }
   }
}
