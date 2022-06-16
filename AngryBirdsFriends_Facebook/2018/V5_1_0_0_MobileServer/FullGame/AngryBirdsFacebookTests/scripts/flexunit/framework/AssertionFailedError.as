package flexunit.framework
{
   public class AssertionFailedError extends Error
   {
       
      
      public function AssertionFailedError(message:String = "")
      {
         super(message);
      }
      
      public function toString() : String
      {
         return message;
      }
   }
}
