package flexunit.framework
{
   public class ProtectedStartTestCase implements Protectable
   {
       
      
      private var testCase:TestCase;
      
      public function ProtectedStartTestCase(testCase:TestCase)
      {
         super();
         this.testCase = testCase;
      }
      
      public function protect() : void
      {
         testCase.runStart();
      }
   }
}
