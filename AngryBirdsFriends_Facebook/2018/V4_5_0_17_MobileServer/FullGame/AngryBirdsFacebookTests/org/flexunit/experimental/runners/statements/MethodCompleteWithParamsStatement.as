package org.flexunit.experimental.runners.statements
{
   import org.flexunit.experimental.theories.internals.Assignments;
   import org.flexunit.experimental.theories.internals.error.CouldNotGenerateValueException;
   import org.flexunit.internals.AssumptionViolatedException;
   import org.flexunit.internals.namespaces.classInternal;
   import org.flexunit.internals.runners.statements.AsyncStatementBase;
   import org.flexunit.internals.runners.statements.IAsyncStatement;
   import org.flexunit.runners.model.FrameworkMethod;
   import org.flexunit.token.AsyncTestToken;
   import org.flexunit.token.ChildResult;
   
   use namespace classInternal;
   
   public class MethodCompleteWithParamsStatement extends AsyncStatementBase implements IAsyncStatement
   {
       
      
      private var frameworkMethod:FrameworkMethod;
      
      private var anchor:TheoryAnchor;
      
      private var complete:Assignments;
      
      private var freshInstance:Object;
      
      public function MethodCompleteWithParamsStatement(frameworkMethod:FrameworkMethod, anchor:TheoryAnchor, complete:Assignments, freshInstance:Object)
      {
         super();
         this.frameworkMethod = frameworkMethod;
         this.complete = complete;
         this.freshInstance = freshInstance;
         this.anchor = anchor;
         myToken = new AsyncTestToken("MethodCompleteWithParamsStatement");
         myToken.addNotificationMethod(this.handleChildExecuteComplete);
      }
      
      public function evaluate(parentToken:AsyncTestToken) : void
      {
         var values:Object = null;
         var newError:Error = null;
         this.parentToken = parentToken;
         try
         {
            values = this.complete.getMethodArguments(this.anchor.nullsOk());
            this.frameworkMethod.applyExplosively(this.freshInstance,values as Array);
            myToken.sendResult();
         }
         catch(e:CouldNotGenerateValueException)
         {
            sendComplete(null);
         }
         catch(e:AssumptionViolatedException)
         {
            anchor.handleAssumptionViolation(e);
            sendComplete(e);
         }
         catch(e:Error)
         {
            newError = anchor.reportParameterizedError(e,complete.getArgumentStrings(anchor.nullsOk()));
            sendComplete(newError);
         }
      }
      
      public function handleChildExecuteComplete(result:ChildResult) : void
      {
         sendComplete(result.error);
      }
      
      override public function toString() : String
      {
         var statementString:String = "MethodCompleteWithParamsStatement :\n";
         statementString += "          Method : " + this.frameworkMethod.method.name + "\n";
         statementString += "          Complete :\n" + this.complete + "\n";
         return statementString + ("          Instance : " + this.freshInstance);
      }
   }
}
