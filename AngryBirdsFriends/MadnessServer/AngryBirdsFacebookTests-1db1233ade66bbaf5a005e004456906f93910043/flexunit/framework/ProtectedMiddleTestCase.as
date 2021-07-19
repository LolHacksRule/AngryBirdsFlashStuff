package flexunit.framework
{
   public class ProtectedMiddleTestCase implements Protectable
   {
       
      
      private var testCase:TestCase;
      
      public function ProtectedMiddleTestCase(testCase:TestCase)
      {
         super();
         this.testCase = testCase;
      }
      
      public function protect() : void
      {
         testCase.runMiddle();
      }
   }
}
