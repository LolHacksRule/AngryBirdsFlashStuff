package org.flexunit.runner.external
{
   public interface IExternalDependencyLoader
   {
       
      
      function retrieveDependency(param1:Class) : ExternalDependencyToken;
   }
}
