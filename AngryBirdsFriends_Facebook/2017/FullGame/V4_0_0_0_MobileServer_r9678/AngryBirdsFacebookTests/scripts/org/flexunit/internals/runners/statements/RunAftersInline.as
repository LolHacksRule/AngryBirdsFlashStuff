package org.flexunit.internals.runners.statements
{
   import org.flexunit.internals.runners.model.MultipleFailureException;
   import org.flexunit.token.AsyncTestToken;
   import org.flexunit.token.ChildResult;
   import org.flexunit.utils.ClassNameUtil;
   
   public class RunAftersInline extends AsyncStatementBase implements IAsyncStatement
   {
       
      
      private var afters:Array;
      
      private var target:Object;
      
      private var nextStatement:IAsyncStatement;
      
      private var runAfters:RunAfters;
      
      private var myTokenForSequence:AsyncTestToken;
      
      private var executionError:Error;
      
      public function RunAftersInline(afters:Array, target:Object, statement:IAsyncStatement)
      {
         var className:String = null;
         super();
         this.afters = afters;
         this.target = target;
         this.nextStatement = statement;
         className = ClassNameUtil.getLoggerFriendlyClassName(this);
         myToken = new AsyncTestToken(className);
         myToken.addNotificationMethod(this.handleNextStatementExecuteComplete);
         this.myTokenForSequence = new AsyncTestToken(className);
         this.myTokenForSequence.addNotificationMethod(this.handleSequenceExecuteComplete);
         this.runAfters = new RunAfters(afters,target);
      }
      
      public function evaluate(parentToken:AsyncTestToken) : void
      {
         this.parentToken = parentToken;
         this.nextStatement.evaluate(myToken);
      }
      
      public function handleNextStatementExecuteComplete(result:ChildResult) : void
      {
         this.executionError = result.error;
         this.runAfters.evaluate(this.myTokenForSequence);
      }
      
      public function handleSequenceExecuteComplete(result:ChildResult) : void
      {
         var error:Error = null;
         if(result.error || this.executionError)
         {
            if(result.error && this.executionError)
            {
               error = new MultipleFailureException([this.executionError,result.error]);
            }
            else if(this.executionError)
            {
               error = this.executionError;
            }
            else if(result.error)
            {
               error = result.error;
            }
         }
         sendComplete(error);
      }
   }
}
