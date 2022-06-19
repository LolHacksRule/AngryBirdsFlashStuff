package org.flexunit.runner
{
   import org.flexunit.runner.notification.IRunNotifier;
   import org.flexunit.token.IAsyncTestToken;
   
   public interface IRunner
   {
       
      
      function run(param1:IRunNotifier, param2:IAsyncTestToken) : void;
      
      function get description() : IDescription;
      
      function pleaseStop() : void;
   }
}
