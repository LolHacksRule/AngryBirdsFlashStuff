package org.flexunit.internals.runners.statements
{
   import org.flexunit.token.AsyncTestToken;
   import org.flexunit.token.ChildResult;
   import org.flexunit.utils.ClassNameUtil;
   
   public class RunBeforesInline extends AsyncStatementBase implements IAsyncStatement
   {
       
      
      private var befores:Array;
      
      private var target:Object;
      
      private var nextStatement:IAsyncStatement;
      
      private var runBefores:RunBefores;
      
      private var myTokenForSequence:AsyncTestToken;
      
      public function RunBeforesInline(befores:Array, target:Object, statement:IAsyncStatement)
      {
         var className:String = null;
         super();
         this.befores = befores;
         this.target = target;
         this.nextStatement = statement;
         className = ClassNameUtil.getLoggerFriendlyClassName(this);
         myToken = new AsyncTestToken(className);
         myToken.addNotificationMethod(this.handleNextStatementExecuteComplete);
         this.myTokenForSequence = new AsyncTestToken(className);
         this.myTokenForSequence.addNotificationMethod(this.handleSequenceExecuteComplete);
         this.runBefores = new RunBefores(befores,target);
      }
      
      public function evaluate(parentToken:AsyncTestToken) : void
      {
         this.parentToken = parentToken;
         this.runBefores.evaluate(this.myTokenForSequence);
      }
      
      public function handleSequenceExecuteComplete(result:ChildResult) : void
      {
         if(result && result.error)
         {
            sendComplete(result.error);
         }
         else
         {
            this.nextStatement.evaluate(myToken);
         }
      }
      
      public function handleNextStatementExecuteComplete(result:ChildResult) : void
      {
         sendComplete(result.error);
      }
   }
}
