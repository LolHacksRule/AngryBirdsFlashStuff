package org.flexunit.rules
{
   import org.flexunit.internals.runners.statements.IAsyncStatement;
   import org.flexunit.runners.model.FrameworkMethod;
   
   public interface IMethodRule extends IAsyncStatement
   {
       
      
      function apply(param1:IAsyncStatement, param2:FrameworkMethod, param3:Object) : IAsyncStatement;
   }
}
