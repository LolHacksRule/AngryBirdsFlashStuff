package org.flexunit.runner.manipulation.filters
{
   import org.flexunit.runner.IDescription;
   
   public class DynamicFilter extends AbstractFilter
   {
       
      
      private var _shouldRunFunction:Function;
      
      private var _describeFunction:Function;
      
      public function DynamicFilter(shouldRunFunction:Function, describeFunction:Function)
      {
         super();
         if(shouldRunFunction == null || describeFunction == null)
         {
            throw new TypeError("Must provide functions for comparison and description to Filter");
         }
         this._shouldRunFunction = shouldRunFunction;
         this._describeFunction = describeFunction;
      }
      
      override public function shouldRun(description:IDescription) : Boolean
      {
         return this._shouldRunFunction(description);
      }
      
      override public function describe(description:IDescription) : String
      {
         return this._describeFunction(description);
      }
   }
}
