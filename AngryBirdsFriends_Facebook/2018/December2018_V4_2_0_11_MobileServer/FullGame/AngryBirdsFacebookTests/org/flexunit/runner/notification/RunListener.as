package org.flexunit.runner.notification
{
   import org.flexunit.runner.IDescription;
   import org.flexunit.runner.Result;
   
   public class RunListener implements IRunListener
   {
       
      
      public var result:Result;
      
      public function RunListener()
      {
         super();
      }
      
      public function testRunStarted(description:IDescription) : void
      {
      }
      
      public function testRunFinished(result:Result) : void
      {
         this.result = result;
      }
      
      public function testStarted(description:IDescription) : void
      {
      }
      
      public function testFinished(description:IDescription) : void
      {
      }
      
      public function testFailure(failure:Failure) : void
      {
      }
      
      public function testAssumptionFailure(failure:Failure) : void
      {
      }
      
      public function testIgnored(description:IDescription) : void
      {
      }
   }
}
