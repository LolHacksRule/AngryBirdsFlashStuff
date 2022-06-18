package org.flexunit.internals.requests
{
   import org.flexunit.runner.IRequest;
   import org.flexunit.runner.IRunner;
   import org.flexunit.runner.Request;
   import org.flexunit.runner.manipulation.ISorter;
   import org.flexunit.runner.manipulation.Sorter;
   
   public class SortingRequest extends Request
   {
       
      
      private var request:IRequest;
      
      private var comparator:Function;
      
      private var sorter:ISorter;
      
      public function SortingRequest(request:IRequest, sorterOrComparatorFunction:*)
      {
         super();
         this.request = request;
         if(sorterOrComparatorFunction is ISorter)
         {
            this.sorter = sorterOrComparatorFunction as ISorter;
         }
         else
         {
            if(!(sorterOrComparatorFunction is Function))
            {
               throw new TypeError("Provided an invalid parameter for the sorterOrComparatorFunction argument");
            }
            this.comparator = sorterOrComparatorFunction as Function;
         }
      }
      
      override public function get iRunner() : IRunner
      {
         var runner:IRunner = this.request.iRunner;
         if(this.sorter)
         {
            this.sorter.apply(runner);
         }
         else if(this.comparator != null)
         {
            new Sorter(this.comparator).apply(runner);
         }
         return runner;
      }
   }
}
