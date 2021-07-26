package tests.com.rovio.utils
{
   import com.angrybirds.data.level.LevelManager;
   import com.rovio.data.localization.DefaultLocalizationMapping;
   import com.rovio.data.localization.LocalizationManager;
   import com.rovio.utils.FacebookAnalyticsCollector;
   import flash.net.URLVariables;
   import org.flexunit.asserts.assertEquals;
   import org.flexunit.asserts.assertNotNull;
   
   public class FacebookAnalyticsCollectorTest
   {
      
      private static var levelManager:LevelManager;
      
      private static var localizationManager:LocalizationManager;
       
      
      public function FacebookAnalyticsCollectorTest()
      {
         super();
      }
      
      [BeforeClass]
      public static function setUpBeforeClass() : void
      {
         FacebookAnalyticsCollector.getInstance().init("100002999593950","AAADhVeKClo8BAASf31gOcUxHkvmylrIxxq69LBf0dLqf8Kt5v8BB3sRHJGsGYQyjtWVOrIGUfLWlsRQ2YBOJIKVmZAMkgdrZAPpqoQZCQZDZD",false);
         FacebookAnalyticsCollector.getInstance().enabled = true;
         levelManager = new LevelManager();
         localizationManager = new LocalizationManager(new DefaultLocalizationMapping("en"));
      }
      
      [AfterClass]
      public static function tearDownAfterClass() : void
      {
         levelManager = null;
         localizationManager = null;
      }
      
      [Before]
      public function setUp() : void
      {
      }
      
      [After]
      public function tearDown() : void
      {
         FacebookAnalyticsCollector.getInstance().getAnalyticsEvents().splice(0,FacebookAnalyticsCollector.getInstance().getAnalyticsEvents().length);
      }
      
      [Test]
      public function testTrackLevelStartedEvent() : void
      {
         var parameterName:* = null;
         var levelId:String = "2000-1";
         var buttonId:String = "2000-1";
         FacebookAnalyticsCollector.getInstance().trackLevelStartedEvent(levelId,-1,"Poached Eggs",3,3);
         var data:Object = new Object();
         data.events = FacebookAnalyticsCollector.getInstance().getAnalyticsEvents();
         var requestData:URLVariables = new URLVariables();
         for(parameterName in data)
         {
            requestData[parameterName] = data[parameterName];
         }
         assertEquals(FacebookAnalyticsCollector.EVENT_ACTION_LEVEL_STARTED,requestData["events"][0].type);
         assertEquals("LEVEL",requestData["events"][0].parameters[0].key);
         assertEquals(levelId,requestData["events"][0].parameters[0].value);
      }
      
      [Test]
      public function testTrackLevelEndedFailEvents() : void
      {
         var parameterName:* = null;
         var levelId:String = "2000-1";
         FacebookAnalyticsCollector.getInstance().trackLevelEndedEvent(false,levelId,-1,"Poached Eggs",1,4,0,["ExtraSpeed"],20000,false);
         var data:Object = new Object();
         data.events = FacebookAnalyticsCollector.getInstance().getAnalyticsEvents();
         var requestData:URLVariables = new URLVariables();
         for(parameterName in data)
         {
            requestData[parameterName] = data[parameterName];
         }
         assertEquals(FacebookAnalyticsCollector.EVENT_ACTION_LEVEL_ENDED_FAIL,requestData["events"][0].type);
         assertEquals("LEVEL",requestData["events"][0].parameters[0].key);
         assertEquals(levelId,requestData["events"][0].parameters[0].value);
         assertEquals("SCORE",requestData["events"][0].parameters[2].key);
         assertEquals("20000",requestData["events"][0].parameters[2].value);
         assertEquals("SESSION_ID",requestData["events"][0].parameters[8].key);
         assertNotNull(requestData["events"][0].parameters[8].value);
      }
      
      [Test]
      public function testTrackLevelEndedWinEvents() : void
      {
         var parameterName:* = null;
         var levelId:String = "2000-1";
         FacebookAnalyticsCollector.getInstance().trackLevelEndedEvent(true,levelId,-1,"Poached Eggs",1,4,3,["LaserSight","Earthquake"],20000,true);
         var data:Object = new Object();
         data.events = FacebookAnalyticsCollector.getInstance().getAnalyticsEvents();
         var requestData:URLVariables = new URLVariables();
         for(parameterName in data)
         {
            requestData[parameterName] = data[parameterName];
         }
         assertEquals(FacebookAnalyticsCollector.EVENT_ACTION_LEVEL_ENDED_WIN,requestData["events"][0].type);
         assertEquals("LEVEL",requestData["events"][0].parameters[0].key);
         assertEquals(levelId,requestData["events"][0].parameters[0].value);
         assertEquals("SCORE",requestData["events"][0].parameters[2].key);
         assertEquals("20000",requestData["events"][0].parameters[2].value);
         assertEquals("SESSION_ID",requestData["events"][0].parameters[11].key);
         assertNotNull(requestData["events"][0].parameters[11].value);
      }
      
      [Test]
      public function testTrackTournamentStatisticsEvent() : void
      {
         var parameterName:* = null;
         FacebookAnalyticsCollector.getInstance().trackTournamentStatisticsEvent("200",6,true,false,32,2,300000,18);
         var data:Object = new Object();
         data.events = FacebookAnalyticsCollector.getInstance().getAnalyticsEvents();
         var requestData:URLVariables = new URLVariables();
         for(parameterName in data)
         {
            requestData[parameterName] = data[parameterName];
         }
         assertEquals(FacebookAnalyticsCollector.EVENT_ACTION_TOURNAMENT_STATISTICS,requestData["events"][0].type);
         assertEquals("TOURNAMENT_ID",requestData["events"][0].parameters[0].key);
         assertEquals("200",requestData["events"][0].parameters[0].value);
         assertEquals("PARTICIPANTS",requestData["events"][0].parameters[4].key);
         assertEquals(32,requestData["events"][0].parameters[4].value);
      }
      
      [Test]
      public function testFormatDate() : void
      {
         var d:Date = new Date(2014,6,17,12,11,53,0);
         var dateAsString:String = FacebookAnalyticsCollector.getInstance().formatDate(d);
      }
      
      [Test]
      public function testShopCategoryEntered() : void
      {
         var parameterName:* = null;
         FacebookAnalyticsCollector.getInstance().trackShopCategoryEntered("SHOP_POWERUPS");
         var data:Object = new Object();
         data.events = FacebookAnalyticsCollector.getInstance().getAnalyticsEvents();
         var requestData:URLVariables = new URLVariables();
         for(parameterName in data)
         {
            requestData[parameterName] = data[parameterName];
         }
         assertEquals(FacebookAnalyticsCollector.EVENT_SHOP_CATEGORY_ENTERED,requestData["events"][0].type);
         assertEquals("SCREEN",requestData["events"][0].parameters[0].key);
         assertEquals(AngryBirdsFacebook.TRACKABLE_STATE_NAMES[0][1],requestData["events"][0].parameters[0].value);
         assertEquals("CATEGORY",requestData["events"][0].parameters[1].key);
         assertEquals("SHOP_POWERUPS",requestData["events"][0].parameters[1].value);
      }
   }
}
