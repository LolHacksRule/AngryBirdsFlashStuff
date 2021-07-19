package org.flexunit.experimental.runners.statements
{
   import org.flexunit.experimental.theories.IPotentialAssignment;
   import org.flexunit.experimental.theories.internals.Assignments;
   import org.flexunit.internals.AssumptionViolatedException;
   import org.flexunit.internals.runners.model.MultipleFailureException;
   import org.flexunit.internals.runners.statements.AsyncStatementBase;
   import org.flexunit.internals.runners.statements.IAsyncStatement;
   import org.flexunit.runners.model.FrameworkMethod;
   import org.flexunit.token.AsyncTestToken;
   import org.flexunit.token.ChildResult;
   import org.flexunit.utils.ClassNameUtil;
   
   public class AssignmentSequencer extends AsyncStatementBase implements IAsyncStatement
   {
       
      
      protected var potential:Array;
      
      protected var parameterAssignment:Assignments;
      
      protected var counter:int = 0;
      
      protected var errors:Array;
      
      protected var testClass:Class;
      
      protected var anchor:TheoryAnchor;
      
      protected var frameworkMethod:FrameworkMethod;
      
      public function AssignmentSequencer(parameterAssignment:Assignments, frameworkMethod:FrameworkMethod, testClass:Class, anchor:TheoryAnchor)
      {
         super();
         this.parameterAssignment = parameterAssignment;
         this.testClass = testClass;
         this.anchor = anchor;
         this.frameworkMethod = frameworkMethod;
         this.errors = new Array();
         myToken = new AsyncTestToken(ClassNameUtil.getLoggerFriendlyClassName(this));
         myToken.addNotificationMethod(this.handleChildExecuteComplete);
      }
      
      public function evaluate(parentToken:AsyncTestToken) : void
      {
         this.parentToken = parentToken;
         if(!this.parameterAssignment.complete)
         {
            this.potential = this.parameterAssignment.potentialsForNextUnassigned();
            this.handleChildExecuteComplete(null);
         }
         else
         {
            this.runWithCompleteAssignment(this.parameterAssignment);
         }
      }
      
      public function handleChildExecuteComplete(result:ChildResult) : void
      {
         var source:IPotentialAssignment = null;
         var statement:AssignmentSequencer = null;
         if(result && result.error && !(result.error is AssumptionViolatedException))
         {
            this.errors.push(result.error);
         }
         if(this.errors.length)
         {
            this.sendComplete();
            return;
         }
         if(this.potential && this.counter < this.potential.length)
         {
            source = this.potential[this.counter] as IPotentialAssignment;
            ++this.counter;
            statement = new AssignmentSequencer(this.parameterAssignment.assignNext(source),this.frameworkMethod,this.testClass,this.anchor);
            statement.evaluate(myToken);
         }
         else
         {
            this.sendComplete();
         }
      }
      
      override protected function sendComplete(error:Error = null) : void
      {
         var sendError:Error = null;
         if(error)
         {
            this.errors.push(error);
         }
         if(this.errors.length == 1)
         {
            sendError = this.errors[0];
         }
         else if(this.errors.length > 1)
         {
            sendError = new MultipleFailureException(this.errors);
         }
         super.sendComplete(sendError);
      }
      
      protected function runWithCompleteAssignment(complete:Assignments) : void
      {
         var runner:TheoryBlockRunner = new TheoryBlockRunner(this.testClass,this.anchor,complete);
         runner.getMethodBlock(this.frameworkMethod).evaluate(myToken);
      }
   }
}
