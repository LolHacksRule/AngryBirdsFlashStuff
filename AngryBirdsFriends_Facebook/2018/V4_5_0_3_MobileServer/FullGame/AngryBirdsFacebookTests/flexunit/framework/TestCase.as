package flexunit.framework
{
   import flash.utils.describeType;
   
   public class TestCase extends Assert implements Test
   {
       
      
      private var _assertionsMade:Number = 0;
      
      private var asyncMethods:Array;
      
      private var testResult:TestResult;
      
      private var methodNames:Array;
      
      public var methodName:String;
      
      private var asyncTestHelper:AsyncTestHelper;
      
      public function TestCase(methodName:String = null)
      {
         _assertionsMade = 0;
         super();
         this.methodName = methodName;
         asyncMethods = new Array();
      }
      
      public function runMiddle() : void
      {
         runTestOrAsync();
      }
      
      public function countTestCases() : Number
      {
         return 1;
      }
      
      private function isTestMethod(name:String) : Boolean
      {
         return name.indexOf("test",0) == 0;
      }
      
      public function run() : TestResult
      {
         var result:TestResult = null;
         result = new TestResult();
         runWithResult(result);
         return result;
      }
      
      public function set assertionsMade(value:Number) : void
      {
         _assertionsMade = value;
      }
      
      public function hasAsync() : Boolean
      {
         return asyncMethods.length > 0;
      }
      
      public function getNextAsync() : Object
      {
         return asyncMethods.shift();
      }
      
      public function runStart() : void
      {
         setUp();
      }
      
      public function setTestResult(result:TestResult) : void
      {
         testResult = result;
      }
      
      public function addAsync(func:Function, timeout:int, passThroughData:Object = null, failFunc:Function = null) : Function
      {
         oneAssertionHasBeenMade();
         if(asyncTestHelper == null)
         {
            asyncTestHelper = new AsyncTestHelper(this,testResult);
         }
         asyncMethods.push({
            "func":func,
            "timeout":timeout,
            "extraData":passThroughData,
            "failFunc":failFunc
         });
         return asyncTestHelper.handleEvent;
      }
      
      private function runTestOrAsync() : void
      {
         if(methodName == null || methodName == "")
         {
            fail("No test method to run");
         }
         if(asyncTestHelper != null)
         {
            asyncTestHelper.runNext();
         }
         else
         {
            this[methodName]();
         }
      }
      
      public function setUp() : void
      {
      }
      
      public function get className() : String
      {
         return describeType(this).attribute("name").toString();
      }
      
      public function tearDown() : void
      {
      }
      
      public function get assertionsMade() : Number
      {
         return _assertionsMade;
      }
      
      public function toString() : String
      {
         return methodName + " (" + className + ")";
      }
      
      public function runWithResult(result:TestResult) : void
      {
         result.run(this);
      }
      
      public function startAsync() : void
      {
         asyncTestHelper.startAsync();
      }
      
      public function runFinish() : void
      {
         asyncTestHelper = null;
         tearDown();
      }
      
      public function getTestMethodNames() : Array
      {
         var type:XML = null;
         var names:XMLList = null;
         var i:uint = 0;
         if(methodNames == null)
         {
            methodNames = new Array();
            type = describeType(this);
            names = type.method.@name;
            for(i = 0; i < names.length(); i++)
            {
               if(isTestMethod(String(names[i])))
               {
                  methodNames.push(String(names[i]));
               }
            }
         }
         return methodNames;
      }
   }
}
