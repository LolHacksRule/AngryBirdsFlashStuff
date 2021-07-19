package flexunit.framework
{
   public class WarningTestCase extends TestCase
   {
       
      
      private var message:String;
      
      public function WarningTestCase(message:String)
      {
         super("Warning: " + message);
         this.message = message;
      }
      
      override public function toString() : String
      {
         return methodName;
      }
      
      private function runTest() : void
      {
         fail(message);
      }
   }
}
