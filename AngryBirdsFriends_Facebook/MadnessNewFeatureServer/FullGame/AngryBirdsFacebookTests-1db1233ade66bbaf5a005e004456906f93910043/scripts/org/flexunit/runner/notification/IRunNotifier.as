package org.flexunit.runner.notification
{
   import org.flexunit.runner.IDescription;
   import org.flexunit.runner.Result;
   
   public interface IRunNotifier
   {
       
      
      function fireTestRunStarted(param1:IDescription) : void;
      
      function fireTestRunFinished(param1:Result) : void;
      
      function fireTestStarted(param1:IDescription) : void;
      
      function fireTestFailure(param1:Failure) : void;
      
      function fireTestAssumptionFailed(param1:Failure) : void;
      
      function fireTestIgnored(param1:IDescription) : void;
      
      function fireTestFinished(param1:IDescription) : void;
      
      function addListener(param1:IRunListener) : void;
      
      function addFirstListener(param1:IRunListener) : void;
      
      function removeListener(param1:IRunListener) : void;
      
      function removeAllListeners() : void;
   }
}
