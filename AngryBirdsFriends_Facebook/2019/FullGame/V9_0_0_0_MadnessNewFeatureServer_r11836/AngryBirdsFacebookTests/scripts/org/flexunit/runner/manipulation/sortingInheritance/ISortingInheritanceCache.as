package org.flexunit.runner.manipulation.sortingInheritance
{
   import org.flexunit.runner.IDescription;
   
   public interface ISortingInheritanceCache
   {
       
      
      function getInheritedOrder(param1:IDescription, param2:Boolean = true) : int;
   }
}
