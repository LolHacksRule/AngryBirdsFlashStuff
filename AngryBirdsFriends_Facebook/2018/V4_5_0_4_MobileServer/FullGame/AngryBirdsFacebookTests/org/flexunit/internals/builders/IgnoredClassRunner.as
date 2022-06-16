package org.flexunit.internals.builders
{
   import org.flexunit.runner.Description;
   import org.flexunit.runner.IDescription;
   import org.flexunit.runner.IRunner;
   import org.flexunit.runner.notification.IRunNotifier;
   import org.flexunit.runner.notification.StoppedByUserException;
   import org.flexunit.token.IAsyncTestToken;
   
   public class IgnoredClassRunner implements IRunner
   {
       
      
      private var testClass:Class;
      
      protected var stopRequested:Boolean = false;
      
      public function IgnoredClassRunner(testClass:Class)
      {
         super();
         this.testClass = testClass;
      }
      
      public function run(notifier:IRunNotifier, previousToken:IAsyncTestToken) : void
      {
         if(this.stopRequested)
         {
            previousToken.sendResult(new StoppedByUserException());
            return;
         }
         notifier.fireTestIgnored(this.description);
         previousToken.sendResult();
      }
      
      public function pleaseStop() : void
      {
         this.stopRequested = true;
      }
      
      public function get description() : IDescription
      {
         return Description.createSuiteDescription(this.testClass);
      }
   }
}
