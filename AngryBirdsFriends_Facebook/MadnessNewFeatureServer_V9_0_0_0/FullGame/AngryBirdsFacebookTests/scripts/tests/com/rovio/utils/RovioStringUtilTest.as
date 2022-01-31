package tests.com.rovio.utils
{
   import com.angrybirds.utils.RovioStringUtil;
   import org.flexunit.asserts.assertEquals;
   
   public class RovioStringUtilTest
   {
       
      
      public function RovioStringUtilTest()
      {
         super();
      }
      
      [BeforeClass]
      public static function setUpBeforeClass() : void
      {
      }
      
      [AfterClass]
      public static function tearDownAfterClass() : void
      {
      }
      
      [Before]
      public function setUp() : void
      {
      }
      
      [After]
      public function tearDown() : void
      {
      }
      
      [Test]
      public function testShortenName() : void
      {
         assertEquals("HUBERT BLAINE W.",RovioStringUtil.shortenName("HUBERT BLAINE WOLFESCHLEGELSTEINHAUSENBERGERDORFF"));
         assertEquals("W.",RovioStringUtil.shortenName("WOLFESCHLEGELSTEINHAUSENBERGERDORFF"));
         assertEquals("HUBERT W.",RovioStringUtil.shortenName("HUBERT WOLFESCHLEGELSTEINHAUSENBERGERDORFF"));
      }
   }
}
