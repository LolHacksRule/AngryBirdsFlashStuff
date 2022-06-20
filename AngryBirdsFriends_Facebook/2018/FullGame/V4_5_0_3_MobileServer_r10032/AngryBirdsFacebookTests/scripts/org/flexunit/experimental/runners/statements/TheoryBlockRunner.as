package org.flexunit.experimental.runners.statements
{
   import flex.lang.reflect.Klass;
   import org.flexunit.constants.AnnotationConstants;
   import org.flexunit.experimental.theories.internals.Assignments;
   import org.flexunit.internals.namespaces.classInternal;
   import org.flexunit.internals.runners.statements.ExpectAsync;
   import org.flexunit.internals.runners.statements.IAsyncStatement;
   import org.flexunit.runners.BlockFlexUnit4ClassRunner;
   import org.flexunit.runners.model.FrameworkMethod;
   
   use namespace classInternal;
   
   public class TheoryBlockRunner extends BlockFlexUnit4ClassRunner
   {
       
      
      private var complete:Assignments;
      
      private var anchor:TheoryAnchor;
      
      private var klassInfo:Klass;
      
      public function TheoryBlockRunner(klass:Class, anchor:TheoryAnchor, complete:Assignments)
      {
         super(klass);
         this.anchor = anchor;
         this.complete = complete;
         this.klassInfo = new Klass(klass);
      }
      
      override protected function collectInitializationErrors(errors:Array) : void
      {
      }
      
      override protected function methodInvoker(method:FrameworkMethod, test:Object) : IAsyncStatement
      {
         return new MethodCompleteWithParamsStatement(method,this.anchor,this.complete,test);
      }
      
      override protected function createTest() : Object
      {
         return this.klassInfo.constructor.newInstanceApply(this.complete.getConstructorArguments(this.anchor.nullsOk()));
      }
      
      public function getMethodBlock(method:FrameworkMethod) : IAsyncStatement
      {
         return this.methodBlock(method);
      }
      
      override protected function methodBlock(method:FrameworkMethod) : IAsyncStatement
      {
         var statement:IAsyncStatement = super.methodBlock(method);
         return new TheoryBlockRunnerStatement(statement,this.anchor,this.complete);
      }
      
      override protected function withPotentialAsync(method:FrameworkMethod, test:Object, statement:IAsyncStatement) : IAsyncStatement
      {
         var async:Boolean = ExpectAsync.hasAsync(method,AnnotationConstants.THEORY);
         return !!async ? new ExpectAsync(test,statement) : statement;
      }
   }
}
