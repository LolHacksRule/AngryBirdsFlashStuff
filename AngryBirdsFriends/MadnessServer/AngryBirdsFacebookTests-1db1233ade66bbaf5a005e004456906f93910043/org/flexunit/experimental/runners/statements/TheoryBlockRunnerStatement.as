package org.flexunit.experimental.runners.statements
{
   import org.flexunit.experimental.theories.internals.Assignments;
   import org.flexunit.internals.AssumptionViolatedException;
   import org.flexunit.internals.namespaces.classInternal;
   import org.flexunit.internals.runners.statements.AsyncStatementBase;
   import org.flexunit.internals.runners.statements.IAsyncStatement;
   import org.flexunit.token.AsyncTestToken;
   import org.flexunit.token.ChildResult;
   
   use namespace classInternal;
   
   public class TheoryBlockRunnerStatement extends AsyncStatementBase implements IAsyncStatement
   {
       
      
      private var statement:IAsyncStatement;
      
      private var anchor:TheoryAnchor;
      
      private var complete:Assignments;
      
      public function TheoryBlockRunnerStatement(statement:IAsyncStatement, anchor:TheoryAnchor, complete:Assignments)
      {
         super();
         this.statement = statement;
         this.anchor = anchor;
         this.complete = complete;
         myToken = new AsyncTestToken("TheoryBlockRunnerStatement");
         myToken.addNotificationMethod(this.handleChildExecuteComplete);
      }
      
      public function evaluate(parentToken:AsyncTestToken) : void
      {
         this.parentToken = parentToken;
         try
         {
            this.statement.evaluate(myToken);
         }
         catch(e:AssumptionViolatedException)
         {
            anchor.handleAssumptionViolation(e);
            sendComplete(e);
         }
         catch(e:Error)
         {
            trace(e.getStackTrace());
            anchor.reportParameterizedError(e,complete.getArgumentStrings(anchor.nullsOk()));
         }
      }
      
      public function handleChildExecuteComplete(result:ChildResult) : void
      {
         var assumptionError:Boolean = false;
         if(result && result.error && result.error is AssumptionViolatedException)
         {
            assumptionError = true;
         }
         if(!assumptionError)
         {
            this.anchor.handleDataPointSuccess();
         }
         sendComplete(result.error);
      }
   }
}
