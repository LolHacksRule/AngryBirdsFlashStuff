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
         var name1:String = "HUBERT BLAINE WOLFESCHLEGELSTEINHAUSENBERGERDORFF";
         var name2:String = "WOLFESCHLEGELSTEINHAUSENBERGERDORFF";
         var name3:String = "HUBERT WOLFESCHLEGELSTEINHAUSENBERGERDORFF";
         var name4:String = "WOLFES WOLFES";
         var name5:String = "";
         assertEquals("HUBERT BLAINE W.",RovioStringUtil.shortenName(name1));
         assertEquals("W.",RovioStringUtil.shortenName(name2));
         assertEquals("HUBERT W.",RovioStringUtil.shortenName(name3));
      }
   }
}
