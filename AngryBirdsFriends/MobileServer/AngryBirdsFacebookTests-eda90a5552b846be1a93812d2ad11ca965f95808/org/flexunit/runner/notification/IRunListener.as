package org.flexunit.runner.notification
{
   import org.flexunit.runner.IDescription;
   import org.flexunit.runner.Result;
   
   public interface IRunListener
   {
       
      
      function testRunStarted(param1:IDescription) : void;
      
      function testRunFinished(param1:Result) : void;
      
      function testStarted(param1:IDescription) : void;
      
      function testFinished(param1:IDescription) : void;
      
      function testFailure(param1:Failure) : void;
      
      function testAssumptionFailure(param1:Failure) : void;
      
      function testIgnored(param1:IDescription) : void;
   }
}
