package org.flexunit.runner.manipulation
{
   import org.flexunit.runner.IDescription;
   import org.flexunit.runner.manipulation.sortingInheritance.ISortingInheritanceCache;
   
   public interface IFixtureSorter extends ISorter
   {
       
      
      function compareFixtureElements(param1:IDescription, param2:IDescription, param3:ISortingInheritanceCache, param4:Boolean = true) : int;
   }
}
