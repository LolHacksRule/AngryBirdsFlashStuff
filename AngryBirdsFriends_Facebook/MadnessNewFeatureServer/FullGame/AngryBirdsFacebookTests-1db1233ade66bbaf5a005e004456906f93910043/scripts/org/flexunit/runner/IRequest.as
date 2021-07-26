package org.flexunit.runner
{
   import org.flexunit.runner.manipulation.ISort;
   
   public interface IRequest
   {
       
      
      function get sort() : ISort;
      
      function set sort(param1:ISort) : void;
      
      function get iRunner() : IRunner;
      
      function filterWith(param1:*) : Request;
   }
}
