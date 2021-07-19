package org.flexunit.internals.runners.statements
{
   import org.flexunit.token.AsyncTestToken;
   
   public class AsyncStatementBase
   {
       
      
      protected var parentToken:AsyncTestToken;
      
      protected var myToken:AsyncTestToken;
      
      protected var sentComplete:Boolean = false;
      
      public function AsyncStatementBase()
      {
         super();
      }
      
      protected function sendComplete(error:Error = null) : void
      {
         if(!this.sentComplete)
         {
            this.sentComplete = true;
            this.parentToken.sendResult(error);
         }
         else if(error && error.message)
         {
            trace("Token asked to send second result: " + error.message);
         }
         else
         {
            trace("Token asked to send second result ");
         }
      }
      
      public function toString() : String
      {
         return "Async Statement Base";
      }
   }
}
