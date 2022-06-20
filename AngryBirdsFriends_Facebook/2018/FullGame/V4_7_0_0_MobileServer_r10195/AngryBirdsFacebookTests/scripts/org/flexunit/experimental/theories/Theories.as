package org.flexunit.experimental.theories
{
   import flex.lang.reflect.Field;
   import flex.lang.reflect.Klass;
   import org.flexunit.constants.AnnotationConstants;
   import org.flexunit.experimental.runners.statements.TheoryAnchor;
   import org.flexunit.internals.dependency.ExternalDependencyResolver;
   import org.flexunit.internals.dependency.IExternalDependencyResolver;
   import org.flexunit.internals.dependency.IExternalRunnerDependencyWatcher;
   import org.flexunit.internals.runners.statements.IAsyncStatement;
   import org.flexunit.runner.external.IExternalDependencyRunner;
   import org.flexunit.runners.BlockFlexUnit4ClassRunner;
   import org.flexunit.runners.model.FrameworkMethod;
   
   public class Theories extends BlockFlexUnit4ClassRunner implements IExternalDependencyRunner
   {
       
      
      private var dr:IExternalDependencyResolver;
      
      private var _dependencyWatcher:IExternalRunnerDependencyWatcher;
      
      private var _externalDependencyError:String;
      
      private var externalError:Boolean = false;
      
      public function Theories(klass:Class)
      {
         super(klass);
         this.dr = new ExternalDependencyResolver(klass,this);
         this.dr.resolveDependencies();
      }
      
      public function set dependencyWatcher(value:IExternalRunnerDependencyWatcher) : void
      {
         this._dependencyWatcher = value;
         if(value && this.dr)
         {
            value.watchDependencyResolver(this.dr);
         }
      }
      
      public function set externalDependencyError(value:String) : void
      {
         this.externalError = true;
         this._externalDependencyError = value;
      }
      
      override protected function collectInitializationErrors(errors:Array) : void
      {
         super.collectInitializationErrors(errors);
         this.validateDataPointFields(errors);
      }
      
      private function validateDataPointFields(errors:Array) : void
      {
         var klassInfo:Klass = new Klass(testClass.asClass);
         for(var i:int = 0; i < klassInfo.fields.length; i++)
         {
            if(!(klassInfo.fields[i] as Field).isStatic)
            {
               errors.push(new Error("DataPoint field " + (klassInfo.fields[i] as Field).name + " must be static"));
            }
         }
      }
      
      override protected function validateTestMethods(errors:Array) : void
      {
         var method:FrameworkMethod = null;
         var methods:Array = this.computeTestMethods();
         for(var i:int = 0; i < methods.length; i++)
         {
            method = methods[i];
            method.validatePublicVoid(false,errors);
         }
      }
      
      private function removeFromArray(array:Array, removeElements:Array) : void
      {
         var j:int = 0;
         for(var i:int = 0; i < array.length; i++)
         {
            for(j = 0; j < removeElements.length; j++)
            {
               if(array[i] == removeElements[j])
               {
                  array.splice(i,1);
               }
            }
         }
      }
      
      override protected function computeTestMethods() : Array
      {
         var testMethods:Array = super.computeTestMethods();
         var theoryMethods:Array = testClass.getMetaDataMethods(AnnotationConstants.THEORY);
         this.removeFromArray(testMethods,theoryMethods);
         return testMethods.concat(theoryMethods);
      }
      
      override protected function methodBlock(method:FrameworkMethod) : IAsyncStatement
      {
         return new TheoryAnchor(method,testClass);
      }
   }
}
