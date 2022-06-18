package flexunit.framework
{
   public class TestFailure
   {
       
      
      private var error:Error;
      
      private var test:Test;
      
      public function TestFailure(test:Test, error:Error)
      {
         super();
         this.test = test;
         this.error = error;
      }
      
      public function isFailure() : Boolean
      {
         return thrownException() is AssertionFailedError;
      }
      
      public function thrownException() : Error
      {
         return error;
      }
      
      public function toString() : String
      {
         var errorMessage:String = null;
         errorMessage = Object(test).toString() + ": " + error.toString();
         if(!isFailure())
         {
            errorMessage += ": " + error.toString();
         }
         return errorMessage;
      }
      
      public function failedTest() : Test
      {
         return test;
      }
      
      public function exceptionMessage() : String
      {
         if(!isFailure())
         {
            return error.toString();
         }
         return error.toString();
      }
   }
}
