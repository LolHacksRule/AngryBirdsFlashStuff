package org.flexunit.internals.requests
{
   import org.flexunit.internals.runners.ErrorReportingRunner;
   import org.flexunit.runner.IRequest;
   import org.flexunit.runner.IRunner;
   import org.flexunit.runner.Request;
   import org.flexunit.runner.manipulation.IFilter;
   import org.flexunit.runner.manipulation.NoTestsRemainException;
   
   public class FilterRequest extends Request
   {
       
      
      private var request:IRequest;
      
      private var filter:IFilter;
      
      public function FilterRequest(classRequest:IRequest, filter:IFilter)
      {
         super();
         this.request = classRequest;
         this.filter = filter;
      }
      
      override public function get iRunner() : IRunner
      {
         var runner:IRunner = null;
         try
         {
            runner = this.request.iRunner;
            this.filter.apply(runner);
            return runner;
         }
         catch(error:NoTestsRemainException)
         {
            return new ErrorReportingRunner(FilterRequest,new Error("No tests found matching " + filter.describe + " from " + request));
         }
      }
   }
}
