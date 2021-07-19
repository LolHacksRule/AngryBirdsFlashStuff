package org.flexunit.runner.external
{
   import org.flexunit.internals.dependency.IExternalRunnerDependencyWatcher;
   import org.flexunit.runner.IRunner;
   
   public interface IExternalDependencyRunner extends IRunner
   {
       
      
      function set dependencyWatcher(param1:IExternalRunnerDependencyWatcher) : void;
      
      function set externalDependencyError(param1:String) : void;
   }
}
