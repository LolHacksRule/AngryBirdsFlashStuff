package org.flexunit.internals.runners.statements
{
   import org.flexunit.token.AsyncTestToken;
   
   public class Fail extends AsyncStatementBase implements IAsyncStatement
   {
       
      
      private var error:Error;
      
      public function Fail(error:Error)
      {
         super();
         this.error = error;
      }
      
      public function evaluate(previousToken:AsyncTestToken) : void
      {
         throw this.error;
      }
   }
}
