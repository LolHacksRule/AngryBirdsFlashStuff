package org.flexunit.internals.runners
{
   import org.flexunit.runner.Description;
   import org.flexunit.runner.IDescription;
   import org.flexunit.runner.IRunner;
   import org.flexunit.runner.notification.Failure;
   import org.flexunit.runner.notification.IRunNotifier;
   import org.flexunit.token.IAsyncTestToken;
   
   public class ErrorReportingRunner implements IRunner
   {
       
      
      private var _causes:Array;
      
      private var _testClass:Class;
      
      protected var stopRequested:Boolean = false;
      
      public function ErrorReportingRunner(testClass:Class, cause:Error)
      {
         super();
         this._testClass = testClass;
         this._causes = this.getCauses(cause);
      }
      
      public function pleaseStop() : void
      {
         this.stopRequested = true;
      }
      
      public function get description() : IDescription
      {
         var description:IDescription = Description.createSuiteDescription(this._testClass);
         for(var i:int = 0; i < this._causes.length; i++)
         {
            description.addChild(this.describeCause(this._causes[i]));
         }
         return description;
      }
      
      public function run(notifier:IRunNotifier, previousToken:IAsyncTestToken) : void
      {
         for(var i:int = 0; i < this._causes.length; i++)
         {
            this.description.addChild(this.describeCause(this._causes[i]));
            this.runCause(this._causes[i],notifier);
         }
         previousToken.sendResult();
      }
      
      private function getCauses(cause:Error) : Array
      {
         if(cause is InitializationError)
         {
            return InitializationError(cause).getCauses();
         }
         return [cause];
      }
      
      private function describeCause(child:Error) : IDescription
      {
         return Description.createTestDescription(this._testClass,"initializationError");
      }
      
      private function runCause(child:Error, notifier:IRunNotifier) : void
      {
         var description:IDescription = this.describeCause(child);
         notifier.fireTestStarted(description);
         notifier.fireTestFailure(new Failure(description,child));
         notifier.fireTestFinished(description);
      }
   }
}
