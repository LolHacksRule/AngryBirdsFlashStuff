package org.flexunit.async
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   import org.flexunit.events.AsyncEvent;
   
   public class AsyncHandler extends EventDispatcher
   {
      
      public static var EVENT_FIRED:String = "eventFired";
      
      public static var TIMER_EXPIRED:String = "timerExpired";
      
      protected static var TIMER_NOT_STARTED:int = 0;
      
      protected static var TIMER_STARTED:int = 1;
      
      protected static var TIMER_COMPLETE:int = -1;
       
      
      protected var timer:Timer;
      
      protected var timerState:int;
      
      public var eventHandler:Function;
      
      public var timeout:int;
      
      public var passThroughData:Object = null;
      
      public var timeoutHandler:Function = null;
      
      public function AsyncHandler(eventHandler:Function, timeout:int = 0, passThroughData:Object = null, timeoutHandler:Function = null)
      {
         this.timerState = TIMER_NOT_STARTED;
         super();
         this.eventHandler = eventHandler;
         this.timeout = timeout;
         this.passThroughData = passThroughData;
         this.timeoutHandler = timeoutHandler;
         if(timeout)
         {
            this.timer = new Timer(timeout,1);
            this.timer.addEventListener(TimerEvent.TIMER_COMPLETE,this.handleTimeout);
            this.timerState = TIMER_NOT_STARTED;
         }
      }
      
      public function handleEvent(event:Event = null) : void
      {
         if(this.timerState >= 0)
         {
            if(this.timer)
            {
               this.timer.stop();
            }
            this.timerState = TIMER_COMPLETE;
            dispatchEvent(new AsyncEvent(EVENT_FIRED,false,false,event));
         }
      }
      
      public function handleTimeout(event:TimerEvent) : void
      {
         this.timer.stop();
         this.timerState = TIMER_COMPLETE;
         dispatchEvent(new Event(TIMER_EXPIRED));
      }
      
      public function startTimer() : void
      {
         if(this.timer)
         {
            this.timer.start();
            this.timerState = TIMER_STARTED;
         }
      }
   }
}
