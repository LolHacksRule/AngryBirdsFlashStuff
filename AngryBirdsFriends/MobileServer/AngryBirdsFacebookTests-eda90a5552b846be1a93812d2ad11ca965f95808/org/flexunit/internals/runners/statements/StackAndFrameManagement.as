package org.flexunit.internals.runners.statements
{
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   import org.flexunit.internals.runners.watcher.FrameWatcher;
   import org.flexunit.token.AsyncTestToken;
   import org.flexunit.token.ChildResult;
   import org.flexunit.utils.ClassNameUtil;
   
   public class StackAndFrameManagement implements IAsyncStatement
   {
      
      private static var frameWatcher:FrameWatcher;
       
      
      protected var parentToken:AsyncTestToken;
      
      protected var myToken:AsyncTestToken;
      
      protected var timer:Timer;
      
      protected var statement:IAsyncStatement;
      
      public function StackAndFrameManagement(statement:IAsyncStatement)
      {
         super();
         this.statement = statement;
         this.myToken = new AsyncTestToken(ClassNameUtil.getLoggerFriendlyClassName(this));
         this.myToken.addNotificationMethod(this.handleNextExecuteComplete);
         if(!frameWatcher)
         {
            frameWatcher = new FrameWatcher();
         }
      }
      
      public function evaluate(previousToken:AsyncTestToken) : void
      {
         this.parentToken = previousToken;
         if(!frameWatcher.timeRemaining)
         {
            this.timer = new Timer(5,1);
            this.timer.addEventListener(TimerEvent.TIMER_COMPLETE,this.handleTimerComplete,false,0,false);
            this.timer.start();
            if(frameWatcher.approximateMode)
            {
               frameWatcher.simulateTick();
            }
         }
         else
         {
            this.statement.evaluate(this.myToken);
         }
      }
      
      protected function handleTimerComplete(event:TimerEvent) : void
      {
         this.timer.removeEventListener(TimerEvent.TIMER_COMPLETE,this.handleTimerComplete,false);
         this.statement.evaluate(this.myToken);
      }
      
      public function handleNextExecuteComplete(result:ChildResult) : void
      {
         this.parentToken.sendResult(result.error);
      }
      
      public function toString() : String
      {
         return "Stack Management Base";
      }
   }
}
