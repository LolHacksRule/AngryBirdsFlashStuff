package org.flexunit.internals.runners.statements
{
   import org.flexunit.async.AsyncLocator;
   import org.flexunit.constants.AnnotationConstants;
   import org.flexunit.runners.model.FrameworkMethod;
   
   public class RunBeforesClass extends RunBefores implements IAsyncStatement
   {
       
      
      public function RunBeforesClass(befores:Array, target:Object)
      {
         super(befores,target);
      }
      
      override protected function withPotentialAsync(method:FrameworkMethod, test:Object, statement:IAsyncStatement) : IAsyncStatement
      {
         var async:Boolean = ExpectAsync.hasAsync(method,AnnotationConstants.BEFORE_CLASS);
         var needsMonitor:* = false;
         if(async)
         {
            needsMonitor = !AsyncLocator.hasCallableForTest(test);
         }
         return async && needsMonitor ? new ExpectAsync(test,statement) : statement;
      }
      
      override public function toString() : String
      {
         return "RunBeforesClass";
      }
   }
}
