package org.flexunit.internals.runners.statements
{
   import org.flexunit.async.AsyncLocator;
   import org.flexunit.constants.AnnotationConstants;
   import org.flexunit.runners.model.FrameworkMethod;
   
   public class RunBefores extends SequencerWithDecoration implements IAsyncStatement
   {
       
      
      public function RunBefores(befores:Array, target:Object, statement:IAsyncStatement = null)
      {
         super(befores,target);
      }
      
      override protected function withPotentialAsync(method:FrameworkMethod, test:Object, statement:IAsyncStatement) : IAsyncStatement
      {
         var async:Boolean = ExpectAsync.hasAsync(method,AnnotationConstants.BEFORE);
         var needsMonitor:* = false;
         if(async)
         {
            needsMonitor = !AsyncLocator.hasCallableForTest(test);
         }
         return async && needsMonitor ? new ExpectAsync(test,statement) : statement;
      }
      
      override public function toString() : String
      {
         return "RunBefores";
      }
   }
}
