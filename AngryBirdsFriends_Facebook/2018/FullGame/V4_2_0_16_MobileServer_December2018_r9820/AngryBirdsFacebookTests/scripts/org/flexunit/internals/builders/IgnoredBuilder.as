package org.flexunit.internals.builders
{
   import flex.lang.reflect.Klass;
   import org.flexunit.constants.AnnotationConstants;
   import org.flexunit.runner.IRunner;
   import org.flexunit.runners.model.RunnerBuilderBase;
   
   public class IgnoredBuilder extends RunnerBuilderBase
   {
       
      
      public function IgnoredBuilder()
      {
         super();
      }
      
      override public function canHandleClass(testClass:Class) : Boolean
      {
         var klassInfo:Klass = new Klass(testClass);
         if(klassInfo.hasMetaData(AnnotationConstants.IGNORE))
         {
            return true;
         }
         return false;
      }
      
      override public function runnerForClass(testClass:Class) : IRunner
      {
         return new IgnoredClassRunner(testClass);
      }
   }
}
