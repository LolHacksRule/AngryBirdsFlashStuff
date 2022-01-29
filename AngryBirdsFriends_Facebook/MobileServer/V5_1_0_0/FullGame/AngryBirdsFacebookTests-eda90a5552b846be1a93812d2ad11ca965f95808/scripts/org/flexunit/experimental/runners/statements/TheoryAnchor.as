package org.flexunit.experimental.runners.statements
{
   import flexunit.framework.AssertionFailedError;
   import org.flexunit.experimental.theories.internals.Assignments;
   import org.flexunit.experimental.theories.internals.ParameterizedAssertionError;
   import org.flexunit.internals.AssumptionViolatedException;
   import org.flexunit.internals.namespaces.classInternal;
   import org.flexunit.internals.runners.statements.AsyncStatementBase;
   import org.flexunit.internals.runners.statements.IAsyncStatement;
   import org.flexunit.runners.model.FrameworkMethod;
   import org.flexunit.runners.model.TestClass;
   import org.flexunit.token.AsyncTestToken;
   import org.flexunit.token.ChildResult;
   import org.flexunit.utils.ClassNameUtil;
   
   public class TheoryAnchor extends AsyncStatementBase implements IAsyncStatement
   {
       
      
      private var successes:int = 0;
      
      private var frameworkMethod:FrameworkMethod;
      
      private var invalidParameters:Array;
      
      private var testClass:TestClass;
      
      private var assignment:Assignments;
      
      private var errors:Array;
      
      private var incompleteLoopCount:int = 0;
      
      public function TheoryAnchor(method:FrameworkMethod, testClass:TestClass)
      {
         this.invalidParameters = new Array();
         this.errors = new Array();
         super();
         this.frameworkMethod = method;
         this.testClass = testClass;
         myToken = new AsyncTestToken(ClassNameUtil.getLoggerFriendlyClassName(this));
         myToken.addNotificationMethod(this.handleMethodExecuteComplete);
      }
      
      protected function handleMethodExecuteComplete(result:ChildResult) : void
      {
         var error:Error = null;
         if(result && result.error)
         {
            error = result.error;
         }
         else if(this.successes == 0)
         {
            error = new AssertionFailedError("Never found parameters that satisfied " + this.frameworkMethod.name + " method assumptions.  Violated assumptions: " + this.invalidParameters);
         }
         parentToken.sendResult(error);
      }
      
      public function evaluate(parentToken:AsyncTestToken) : void
      {
         this.parentToken = parentToken;
         var assignment:Assignments = Assignments.allUnassigned(this.frameworkMethod.method,this.testClass);
         var statement:AssignmentSequencer = new AssignmentSequencer(assignment,this.frameworkMethod,this.testClass.asClass,this);
         statement.evaluate(myToken);
      }
      
      private function methodCompletesWithParameters(method:FrameworkMethod, complete:Assignments, freshInstance:Object) : IAsyncStatement
      {
         return new MethodCompleteWithParamsStatement(method,this,complete,freshInstance);
      }
      
      classInternal function handleAssumptionViolation(e:AssumptionViolatedException) : void
      {
         this.invalidParameters.push(e);
      }
      
      classInternal function reportParameterizedError(e:Error, ... params) : Error
      {
         if(params.length == 0)
         {
            return e;
         }
         return new ParameterizedAssertionError(e,this.frameworkMethod.name,params);
      }
      
      classInternal function nullsOk() : Boolean
      {
         return true;
      }
      
      classInternal function handleDataPointSuccess() : void
      {
         ++this.successes;
      }
   }
}
