package tests
{
   import tests.com.rovio.utils.FacebookAnalyticsCollectorTest;
   import tests.com.rovio.utils.RovioStringUtilTest;
   
   [RunWith("org.flexunit.runners.Suite")]
   [Suite]
   public class TestSuite
   {
       
      
      public var mAngryBirdsFacebookTest:AngryBirdsFacebookTest;
      
      public var mFacebookAnalyticsCollectorTest:FacebookAnalyticsCollectorTest;
      
      public var mStringUtilTest:RovioStringUtilTest;
      
      public function TestSuite()
      {
         super();
      }
   }
}
