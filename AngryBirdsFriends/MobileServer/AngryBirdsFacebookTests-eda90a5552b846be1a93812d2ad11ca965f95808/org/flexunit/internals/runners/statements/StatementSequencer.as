package org.flexunit.internals.runners.statements
{
   import org.flexunit.internals.runners.model.MultipleFailureException;
   import org.flexunit.runner.notification.StoppedByUserException;
   import org.flexunit.token.AsyncTestToken;
   import org.flexunit.token.ChildResult;
   import org.flexunit.utils.ClassNameUtil;
   
   public class StatementSequencer extends AsyncStatementBase implements IAsyncStatement
   {
       
      
      protected var queue:Array;
      
      protected var errors:Array;
      
      public function StatementSequencer(queue:Array = null)
      {
         super();
         if(!queue)
         {
            queue = new Array();
         }
         this.queue = queue.slice();
         this.errors = new Array();
         myToken = new AsyncTestToken(ClassNameUtil.getLoggerFriendlyClassName(this));
         myToken.addNotificationMethod(this.handleChildExecuteComplete);
      }
      
      public function addStep(child:IAsyncStatement) : void
      {
         if(child)
         {
            this.queue.push(child);
         }
      }
      
      protected function executeStep(child:*) : void
      {
         if(child is IAsyncStatement)
         {
            IAsyncStatement(child).evaluate(myToken);
         }
      }
      
      public function evaluate(parentToken:AsyncTestToken) : void
      {
         this.parentToken = parentToken;
         this.handleChildExecuteComplete(null);
      }
      
      public function handleChildExecuteComplete(result:ChildResult) : void
      {
         var step:* = undefined;
         if(result && result.error)
         {
            this.errors.push(result.error);
            if(result.error is StoppedByUserException)
            {
               this.sendComplete();
               return;
            }
         }
         if(this.queue.length > 0)
         {
            step = this.queue.shift();
            this.executeStep(step);
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
      
      override public function toString() : String
      {
         var i:int = 0;
         var sequenceString:String = "StatementSequencer :\n";
         if(this.queue)
         {
            for(i = 0; i < this.queue.length; i++)
            {
               sequenceString += "   " + i + " : " + this.queue[i].toString() + "\n";
            }
         }
         return sequenceString;
      }
   }
}
