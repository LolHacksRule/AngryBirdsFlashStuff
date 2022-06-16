package org.flexunit.runners.model
{
   import org.flexunit.runner.IRunner;
   
   public interface IRunnerBuilder
   {
       
      
      function canHandleClass(param1:Class) : Boolean;
      
      function safeRunnerForClass(param1:Class) : IRunner;
      
      function runners(param1:Class, param2:Array) : Array;
      
      function runnerForClass(param1:Class) : IRunner;
   }
}
