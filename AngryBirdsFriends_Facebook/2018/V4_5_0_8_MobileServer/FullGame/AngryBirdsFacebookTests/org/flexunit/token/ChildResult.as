package org.flexunit.token
{
   public class ChildResult
   {
       
      
      public var token:AsyncTestToken;
      
      public var error:Error;
      
      public function ChildResult(token:AsyncTestToken, error:Error = null)
      {
         super();
         this.token = token;
         this.error = error;
      }
   }
}
