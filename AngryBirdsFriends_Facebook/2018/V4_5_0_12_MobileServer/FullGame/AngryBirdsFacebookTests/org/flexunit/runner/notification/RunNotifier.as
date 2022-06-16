package org.flexunit.runner.notification
{
   import flash.utils.getTimer;
   import org.flexunit.runner.IDescription;
   import org.flexunit.runner.Result;
   
   public class RunNotifier implements IRunNotifier
   {
       
      
      private var listeners:Array;
      
      private var startTime:Number;
      
      public function RunNotifier()
      {
         this.listeners = new Array();
         super();
      }
      
      public function fireTestRunStarted(description:IDescription) : void
      {
         var notifier:SafeNotifier = new SafeNotifier(this,this.listeners);
         notifier.notifyListener = function(item:IRunListener):void
         {
            item.testRunStarted(description);
         };
         notifier.run();
      }
      
      public function fireTestRunFinished(result:Result) : void
      {
         var notifier:SafeNotifier = new SafeNotifier(this,this.listeners);
         notifier.notifyListener = function(item:IRunListener):void
         {
            item.testRunFinished(result);
         };
         notifier.run();
      }
      
      public function fireTestStarted(description:IDescription) : void
      {
         var notifier:SafeNotifier = new SafeNotifier(this,this.listeners);
         notifier.notifyListener = function(item:IRunListener):void
         {
            item.testStarted(description);
         };
         notifier.run();
         this.startTime = getTimer();
      }
      
      public function fireTestFailure(failure:Failure) : void
      {
         var endTime:Number = NaN;
         endTime = getTimer() - this.startTime;
         var notifier:SafeNotifier = new SafeNotifier(this,this.listeners);
         notifier.notifyListener = function(item:IRunListener):void
         {
            if(item is ITemporalRunListener)
            {
               (item as ITemporalRunListener).testTimed(failure.description,endTime);
            }
            item.testFailure(failure);
         };
         notifier.run();
      }
      
      public function fireTestAssumptionFailed(failure:Failure) : void
      {
         var endTime:Number = NaN;
         endTime = getTimer() - this.startTime;
         var notifier:SafeNotifier = new SafeNotifier(this,this.listeners);
         notifier.notifyListener = function(item:IRunListener):void
         {
            if(item is ITemporalRunListener)
            {
               (item as ITemporalRunListener).testTimed(failure.description,endTime);
            }
            item.testAssumptionFailure(failure);
         };
         notifier.run();
      }
      
      public function fireTestIgnored(description:IDescription) : void
      {
         var endTime:Number = NaN;
         endTime = getTimer() - this.startTime;
         var notifier:SafeNotifier = new SafeNotifier(this,this.listeners);
         notifier.notifyListener = function(item:IRunListener):void
         {
            if(item is ITemporalRunListener)
            {
               (item as ITemporalRunListener).testTimed(description,endTime);
            }
            item.testIgnored(description);
         };
         notifier.run();
      }
      
      public function fireTestFinished(description:IDescription) : void
      {
         var endTime:Number = NaN;
         endTime = getTimer() - this.startTime;
         var notifier:SafeNotifier = new SafeNotifier(this,this.listeners);
         notifier.notifyListener = function(item:IRunListener):void
         {
            if(item is ITemporalRunListener)
            {
               (item as ITemporalRunListener).testTimed(description,endTime);
            }
            item.testFinished(description);
         };
         notifier.run();
      }
      
      public function addListener(listener:IRunListener) : void
      {
         this.listeners.push(listener);
      }
      
      public function addFirstListener(listener:IRunListener) : void
      {
         this.listeners.unshift(listener);
      }
      
      public function removeListener(listener:IRunListener) : void
      {
         for(var i:int = 0; i < this.listeners.length; i++)
         {
            if(this.listeners[i] == listener)
            {
               this.listeners.splice(i,1);
               break;
            }
         }
      }
      
      public function removeAllListeners() : void
      {
         this.listeners = new Array();
      }
   }
}

import org.flexunit.runner.Description;
import org.flexunit.runner.notification.Failure;
import org.flexunit.runner.notification.IRunListener;
import org.flexunit.runner.notification.IRunNotifier;

class SafeNotifier
{
    
   
   protected var notifier:IRunNotifier;
   
   protected var listeners:Array;
   
   public var notifyListener:Function;
   
   function SafeNotifier(notifier:IRunNotifier, listeners:Array)
   {
      super();
      this.notifier = notifier;
      this.listeners = listeners;
   }
   
   public function run() : void
   {
      var i:int = 0;
      for(i = 0; i < this.listeners.length; i++)
      {
         try
         {
            this.notifyListener(this.listeners[i] as IRunListener);
         }
         catch(e:Error)
         {
            listeners.splice(i,1);
            notifier.fireTestFailure(new Failure(Description.TEST_MECHANISM,e));
            i--;
         }
      }
   }
}
