package org.flexunit.runner.manipulation.filters
{
   import org.flexunit.runner.IDescription;
   import org.flexunit.runner.manipulation.IFilter;
   import org.flexunit.runner.manipulation.IFilterable;
   
   public class AbstractFilter implements IFilter
   {
       
      
      public function AbstractFilter()
      {
         super();
      }
      
      public function shouldRun(description:IDescription) : Boolean
      {
         return false;
      }
      
      public function describe(description:IDescription) : String
      {
         return null;
      }
      
      public function apply(child:Object) : void
      {
         if(!(child is IFilterable))
         {
            return;
         }
         var filterable:IFilterable = IFilterable(child);
         filterable.filter(this);
      }
   }
}
