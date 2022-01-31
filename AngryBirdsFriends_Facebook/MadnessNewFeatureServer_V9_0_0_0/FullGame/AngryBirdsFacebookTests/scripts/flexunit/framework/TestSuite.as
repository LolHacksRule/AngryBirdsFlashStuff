package flexunit.framework
{
   import flash.utils.describeType;
   import flexunit.utils.ArrayList;
   import flexunit.utils.Collection;
   import flexunit.utils.Iterator;
   
   public class TestSuite implements Test
   {
       
      
      private var runIter:Iterator;
      
      public var name:String;
      
      public var testArrayList:Collection;
      
      private var listener:TestSuiteTestListener;
      
      public function TestSuite(param:Object = null)
      {
         var c:Class = null;
         var newClass:Test = null;
         var warningTestCase:WarningTestCase = null;
         super();
         testArrayList = Collection(new ArrayList());
         if(param == null)
         {
            return;
         }
         if(param is Class)
         {
            c = Class(param);
            newClass = new c();
            addTestMethods(c,newClass);
            if(testArrayList.length() == 0)
            {
               warningTestCase = new WarningTestCase("No tests found in " + newClass.className);
               addTestToList(warningTestCase);
            }
         }
         else
         {
            if(!(param is Test))
            {
               throw new Error("Can\'t handle constructor arg");
            }
            addTestToList(Test(param));
         }
      }
      
      public function countTestCases() : Number
      {
         var count:Number = NaN;
         var iter:Iterator = null;
         var test:Test = null;
         count = 0;
         iter = testArrayList.iterator();
         while(iter.hasNext())
         {
            test = Test(iter.next());
            count += test.countTestCases();
         }
         return count;
      }
      
      public function toString() : String
      {
         return "TestSuite";
      }
      
      public function addTest(test:Test) : void
      {
         if(!(test is Test))
         {
            addTest(Test(new WarningTestCase("Object instance passed to addTest does not implement Test interface")));
         }
         else
         {
            addTestToList(test);
         }
      }
      
      private function addTestMethod(theClass:Class, methodName:String) : void
      {
         addTestToList(createTestInstance(theClass,methodName));
      }
      
      public function testCount() : Number
      {
         return testArrayList.length();
      }
      
      public function runNext(result:TestResult) : void
      {
         var test:Test = null;
         if(runIter.hasNext())
         {
            if(result.shouldStop())
            {
               listener.pop();
               return;
            }
            test = Test(runIter.next());
            runTest(test,result);
         }
         else
         {
            listener.pop();
         }
      }
      
      private function addTestMethods(theClass:Class, newClass:Test) : void
      {
         var methodNames:Array = null;
         var i:uint = 0;
         var method:String = null;
         methodNames = newClass.getTestMethodNames();
         for(i = 0; i < methodNames.length; i++)
         {
            method = String(methodNames[i]);
            addTestMethod(theClass,method);
         }
      }
      
      private function createTestInstance(theClass:Class, methodName:String) : Test
      {
         var test:Test = null;
         test = new theClass();
         if(test is TestCase)
         {
            TestCase(test).methodName = methodName;
         }
         return test;
      }
      
      public function addTestSuite(testClass:Class) : void
      {
         addTestToList(new TestSuite(testClass));
      }
      
      public function get className() : String
      {
         return describeType(this).attribute("name").toString();
      }
      
      public function getTests() : Array
      {
         return testArrayList.toArray();
      }
      
      public function runWithResult(result:TestResult) : void
      {
         runIter = testArrayList.iterator();
         listener = new TestSuiteTestListener(this,result);
         runNext(result);
      }
      
      private function addTestToList(test:Test) : void
      {
         testArrayList.addItem(test);
      }
      
      private function runTest(test:Test, result:TestResult) : void
      {
         test.runWithResult(result);
      }
      
      public function getTestMethodNames() : Array
      {
         return null;
      }
   }
}
