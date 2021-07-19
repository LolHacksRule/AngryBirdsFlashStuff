package org.flexunit.runner.manipulation.fields
{
   import flex.lang.reflect.Field;
   
   public interface IFieldSorter
   {
       
      
      function compare(param1:Field, param2:Field) : int;
   }
}
