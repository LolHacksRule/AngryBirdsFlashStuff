package flexunit.framework
{
   public class ProtectedFinishTestCase implements Protectable
   {
       
      
      private var testCase:TestCase;
      
      public function ProtectedFinishTestCase(testCase:TestCase)
      {
         super();
         this.testCase = testCase;
      }
      
      public function protect() : void
      {
         testCase.runFinish();
      }
   }
}
