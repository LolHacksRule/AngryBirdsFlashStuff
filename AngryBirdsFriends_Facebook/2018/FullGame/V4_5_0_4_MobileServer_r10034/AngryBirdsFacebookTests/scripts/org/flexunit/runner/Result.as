package org.flexunit.runner
{
   import org.flexunit.internals.namespaces.classInternal;
   import org.flexunit.runner.notification.RunListener;
   
   use namespace classInternal;
   
   public class Result
   {
       
      
      classInternal var _runCount:int = 0;
      
      classInternal var _ignoreCount:int = 0;
      
      classInternal var _runTime:Number = 0;
      
      classInternal var _startTime:Number;
      
      private var _failures:Array;
      
      public function Result()
      {
         this._failures = new Array();
         super();
      }
      
      public function get failureCount() : int
      {
         return this.failures.length;
      }
      
      public function get failures() : Array
      {
         return this._failures;
      }
      
      public function get ignoreCount() : int
      {
         return this._ignoreCount;
      }
      
      public function get runCount() : int
      {
         return this._runCount;
      }
      
      public function get runTime() : Number
      {
         return this._runTime;
      }
      
      public function get successful() : Boolean
      {
         return this.failureCount == 0;
      }
      
      public function createListener() : RunListener
      {
         var listener:Listener = new Listener();
         listener.result = this;
         return listener;
      }
   }
}

import flash.utils.getTimer;
import flexunit.framework.Assert;
import org.flexunit.Assert;
import org.flexunit.internals.namespaces.classInternal;
import org.flexunit.runner.IDescription;
import org.flexunit.runner.Result;
import org.flexunit.runner.notification.Failure;
import org.flexunit.runner.notification.RunListener;

use namespace classInternal;

class Listener extends RunListener
{
    
   
   protected var ignoreDuringExecution:Boolean = false;
   
   function Listener()
   {
      super();
   }
   
   override public function testRunStarted(description:IDescription) : void
   {
      result._startTime = getTimer();
   }
   
   override public function testRunFinished(result:Result) : void
   {
      var endTime:Number = getTimer();
      result._runTime += endTime - result._startTime;
   }
   
   override public function testFinished(description:IDescription) : void
   {
      if(!this.ignoreDuringExecution)
      {
         ++result._runCount;
      }
      this.ignoreDuringExecution = false;
   }
   
   override public function testFailure(failure:Failure) : void
   {
      result.failures.push(failure);
   }
   
   override public function testIgnored(description:IDescription) : void
   {
      ++result._ignoreCount;
      this.ignoreDuringExecution = false;
   }
   
   override public function testStarted(description:IDescription) : void
   {
      org.flexunit.Assert.resetAssertionsFields();
      flexunit.framework.Assert.resetAssertionsMade();
   }
}
