package org.flexunit.async
{
   import flash.utils.Dictionary;
   import org.flexunit.AssertionError;
   import org.flexunit.internals.runners.statements.IAsyncHandlingStatement;
   
   public class AsyncLocator
   {
      
      private static var asyncHandlerMap:Dictionary = new Dictionary();
       
      
      public function AsyncLocator()
      {
         super();
      }
      
      public static function registerStatementForTest(expectAsyncInstance:IAsyncHandlingStatement, testCase:Object) : void
      {
         var monitor:StatementDependencyMonitor = getDependencyMonitor(testCase);
         if(!monitor)
         {
            monitor = createDependencyMonitor(testCase,expectAsyncInstance);
         }
         monitor.addDependency();
      }
      
      public static function getCallableForTest(testCase:Object) : IAsyncHandlingStatement
      {
         var monitor:StatementDependencyMonitor = getDependencyMonitor(testCase);
         if(!monitor)
         {
            throw new AssertionError("Cannot add asynchronous functionality to methods defined by Test,Before or After that are not marked async");
         }
         return monitor.statement;
      }
      
      public static function hasCallableForTest(testCase:Object) : Boolean
      {
         var monitor:StatementDependencyMonitor = getDependencyMonitor(testCase);
         return monitor != null;
      }
      
      public static function cleanUpCallableForTest(testCase:Object) : void
      {
         var monitor:StatementDependencyMonitor = getDependencyMonitor(testCase);
         if(!monitor)
         {
            trace("Yo");
         }
         monitor.removeDependency();
         if(monitor.complete)
         {
            removeDependencyMonitor(testCase);
         }
      }
      
      private static function getDependencyMonitor(testCase:Object) : StatementDependencyMonitor
      {
         return asyncHandlerMap[testCase];
      }
      
      private static function createDependencyMonitor(testCase:Object, statement:IAsyncHandlingStatement) : StatementDependencyMonitor
      {
         var monitor:StatementDependencyMonitor = new StatementDependencyMonitor(statement);
         asyncHandlerMap[testCase] = monitor;
         return monitor;
      }
      
      private static function removeDependencyMonitor(testCase:Object) : void
      {
         delete asyncHandlerMap[testCase];
      }
   }
}

import org.flexunit.internals.runners.statements.IAsyncHandlingStatement;

class StatementDependencyMonitor
{
    
   
   private var dependencyCount:int = 0;
   
   private var _statement:IAsyncHandlingStatement;
   
   function StatementDependencyMonitor(statement:IAsyncHandlingStatement)
   {
      super();
      this._statement = statement;
   }
   
   public function addDependency() : void
   {
      ++this.dependencyCount;
   }
   
   public function removeDependency() : void
   {
      --this.dependencyCount;
   }
   
   public function get statement() : IAsyncHandlingStatement
   {
      return this._statement;
   }
   
   public function get complete() : Boolean
   {
      return this.dependencyCount == 0;
   }
}
