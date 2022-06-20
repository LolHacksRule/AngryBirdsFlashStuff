package org.flexunit.internals.runners.statements
{
   import org.flexunit.runners.model.FrameworkMethod;
   import org.flexunit.token.AsyncTestToken;
   
   public class InvokeMethod extends AsyncStatementBase implements IAsyncStatement
   {
       
      
      private var testMethod:FrameworkMethod;
      
      private var target:Object;
      
      public function InvokeMethod(testMethod:FrameworkMethod, target:Object)
      {
         super();
         this.testMethod = testMethod;
         this.target = target;
      }
      
      public function evaluate(parentToken:AsyncTestToken) : void
      {
         try
         {
            this.testMethod.invokeExplosively(this.target);
            parentToken.sendResult(null);
         }
         catch(error:Error)
         {
            parentToken.sendResult(error);
         }
      }
      
      override public function toString() : String
      {
         return "InvokeMethod " + this.testMethod.name;
      }
   }
}
