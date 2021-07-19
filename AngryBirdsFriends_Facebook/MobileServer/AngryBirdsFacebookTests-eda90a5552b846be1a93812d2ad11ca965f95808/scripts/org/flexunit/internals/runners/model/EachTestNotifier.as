package org.flexunit.internals.runners.model
{
   import org.flexunit.runner.IDescription;
   import org.flexunit.runner.notification.Failure;
   import org.flexunit.runner.notification.IRunNotifier;
   
   public class EachTestNotifier
   {
       
      
      private var notifier:IRunNotifier;
      
      private var description:IDescription;
      
      public function EachTestNotifier(notifier:IRunNotifier, description:IDescription)
      {
         super();
         this.notifier = notifier;
         this.description = description;
      }
      
      public function addFailure(targetException:Error) : void
      {
         var mfe:MultipleFailureException = null;
         var failures:Array = null;
         var i:int = 0;
         if(targetException is MultipleFailureException)
         {
            mfe = MultipleFailureException(targetException);
            failures = mfe.failures;
            for(i = 0; i < failures.length; i++)
            {
               this.addFailure(failures[i]);
            }
            return;
         }
         this.notifier.fireTestFailure(new Failure(this.description,targetException));
      }
      
      public function addFailedAssumption(error:Error) : void
      {
         this.notifier.fireTestAssumptionFailed(new Failure(this.description,error));
      }
      
      public function fireTestFinished() : void
      {
         this.notifier.fireTestFinished(this.description);
      }
      
      public function fireTestStarted() : void
      {
         this.notifier.fireTestStarted(this.description);
      }
      
      public function fireTestIgnored() : void
      {
         this.notifier.fireTestIgnored(this.description);
      }
   }
}
