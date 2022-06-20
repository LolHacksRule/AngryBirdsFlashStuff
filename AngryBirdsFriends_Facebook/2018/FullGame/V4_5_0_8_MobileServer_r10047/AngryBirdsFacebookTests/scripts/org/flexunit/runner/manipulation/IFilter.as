package org.flexunit.runner.manipulation
{
   import org.flexunit.runner.IDescription;
   
   public interface IFilter
   {
       
      
      function shouldRun(param1:IDescription) : Boolean;
      
      function describe(param1:IDescription) : String;
      
      function apply(param1:Object) : void;
   }
}
