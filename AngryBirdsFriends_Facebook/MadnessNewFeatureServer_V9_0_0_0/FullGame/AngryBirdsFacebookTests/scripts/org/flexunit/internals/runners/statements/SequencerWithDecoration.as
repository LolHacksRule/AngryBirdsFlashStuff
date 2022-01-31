package org.flexunit.internals.runners.statements
{
   import org.flexunit.runners.model.FrameworkMethod;
   
   public class SequencerWithDecoration extends StatementSequencer
   {
       
      
      private var target:Object;
      
      public function SequencerWithDecoration(steps:Array, target:Object)
      {
         super(steps);
         this.target = target;
      }
      
      protected function methodInvoker(method:FrameworkMethod, test:Object) : IAsyncStatement
      {
         return new InvokeMethod(method,test);
      }
      
      protected function withPotentialAsync(method:FrameworkMethod, test:Object, statement:IAsyncStatement) : IAsyncStatement
      {
         return statement;
      }
      
      protected function withDecoration(method:FrameworkMethod, test:Object) : IAsyncStatement
      {
         var statement:IAsyncStatement = this.methodInvoker(method,test);
         return this.withPotentialAsync(method,test,statement);
      }
      
      override protected function executeStep(child:*) : void
      {
         super.executeStep(child);
         var method:FrameworkMethod = child as FrameworkMethod;
         var statement:IAsyncStatement = this.withDecoration(method,this.target);
         try
         {
            statement.evaluate(myToken);
         }
         catch(error:Error)
         {
            errors.push(error);
         }
      }
   }
}
