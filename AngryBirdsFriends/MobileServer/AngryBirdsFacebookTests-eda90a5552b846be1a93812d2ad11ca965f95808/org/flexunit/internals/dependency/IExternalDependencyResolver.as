package org.flexunit.internals.dependency
{
   import flash.events.IEventDispatcher;
   import org.flexunit.runner.external.ExternalDependencyToken;
   
   public interface IExternalDependencyResolver extends IEventDispatcher
   {
       
      
      function get ready() : Boolean;
      
      function resolveDependencies() : Boolean;
      
      function dependencyResolved(param1:ExternalDependencyToken, param2:Object) : void;
      
      function dependencyFailed(param1:ExternalDependencyToken, param2:String) : void;
   }
}
