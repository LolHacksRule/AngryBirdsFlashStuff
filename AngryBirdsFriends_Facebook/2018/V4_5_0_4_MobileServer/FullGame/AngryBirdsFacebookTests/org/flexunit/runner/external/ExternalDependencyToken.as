package org.flexunit.runner.external
{
   import flex.lang.reflect.Field;
   import org.flexunit.internals.dependency.IExternalDependencyResolver;
   
   public class ExternalDependencyToken
   {
       
      
      private var resolver:IExternalDependencyResolver;
      
      private var _targetField:Field;
      
      public function ExternalDependencyToken()
      {
         super();
      }
      
      public function get targetField() : Field
      {
         return this._targetField;
      }
      
      public function set targetField(value:Field) : void
      {
         this._targetField = value;
      }
      
      public function addResolver(adr:IExternalDependencyResolver) : void
      {
         this.resolver = adr;
      }
      
      public function removeResolver(adr:IExternalDependencyResolver) : void
      {
         if(this.resolver == adr)
         {
            this.resolver = null;
         }
      }
      
      public function notifyResult(data:Object = null) : void
      {
         this.resolver.dependencyResolved(this,data);
      }
      
      public function notifyFault(errorMessage:String) : void
      {
         this.resolver.dependencyFailed(this,errorMessage);
      }
   }
}
