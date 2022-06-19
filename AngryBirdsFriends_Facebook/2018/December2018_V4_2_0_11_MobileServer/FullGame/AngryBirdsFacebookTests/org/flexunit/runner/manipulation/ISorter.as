package org.flexunit.runner.manipulation
{
   import org.flexunit.runner.IDescription;
   
   public interface ISorter
   {
       
      
      function apply(param1:Object) : void;
      
      function compare(param1:IDescription, param2:IDescription) : int;
   }
}
