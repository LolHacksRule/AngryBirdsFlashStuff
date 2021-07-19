package flexunit.framework
{
   import flexunit.utils.ArrayList;
   import flexunit.utils.Collection;
   import flexunit.utils.Iterator;
   
   public class TestResult
   {
       
      
      private var listeners:Collection;
      
      public var syncToFrame:Boolean = false;
      
      private var runTests:Number;
      
      private var errors:Collection;
      
      private var failures:Collection;
      
      private var _localAssertionsMade:Number;
      
      private var stopTests:Boolean;
      
      public function TestResult()
      {
         syncToFrame = false;
         super();
         failures = Collection(new ArrayList());
         errors = Collection(new ArrayList());
         listeners = Collection(new ArrayList());
         runTests = 0;
      }
      
      private function doRun(testCase:TestCase) : void
      {
         var protectedTestCase:Protectable = null;
         var startOK:Boolean = false;
         startTest(testCase);
         testCase.setTestResult(this);
         protectedTestCase = Protectable(new ProtectedStartTestCase(testCase));
         startOK = doProtected(testCase,protectedTestCase);
         if(startOK)
         {
            doContinue(testCase);
         }
         else
         {
            endTest(testCase);
         }
         testCase.assertionsMade = assertionsMade;
      }
      
      public function stop(stopTests:Boolean) : void
      {
         this.stopTests = stopTests;
      }
      
      public function runCount() : Number
      {
         return runTests;
      }
      
      public function run(testCase:TestCase) : void
      {
         doRun(testCase);
      }
      
      public function endTest(test:Test) : void
      {
         var iter:Iterator = null;
         var listener:TestListener = null;
         iter = listeners.iterator();
         while(iter.hasNext())
         {
            listener = TestListener(iter.next());
            listener.endTest(test);
         }
      }
      
      private function doContinue(testCase:TestCase) : void
      {
         var protectedTestCase:Protectable = null;
         protectedTestCase = Protectable(new ProtectedMiddleTestCase(testCase));
         doProtected(testCase,protectedTestCase);
         if(testCase.hasAsync())
         {
            testCase.startAsync();
         }
         else
         {
            doFinish(testCase);
         }
      }
      
      public function startTest(test:Test) : void
      {
         var count:Number = NaN;
         var iter:Iterator = null;
         var listener:TestListener = null;
         count = test.countTestCases();
         runTests += count;
         iter = listeners.iterator();
         while(iter.hasNext())
         {
            listener = TestListener(iter.next());
            listener.startTest(test);
         }
      }
      
      public function shouldStop() : Boolean
      {
         return stopTests;
      }
      
      public function removeListener(listener:TestListener) : void
      {
         if(listeners.contains(listener))
         {
            listeners.removeItem(listener);
         }
      }
      
      public function wasSuccessful() : Boolean
      {
         return failureCount() == 0 && errorCount() == 0;
      }
      
      public function continueRun(testCase:TestCase) : void
      {
         doContinue(testCase);
      }
      
      public function failureCount() : Number
      {
         return failures.length();
      }
      
      public function get assertionsMade() : Number
      {
         return _localAssertionsMade;
      }
      
      public function addError(test:Test, error:Error) : void
      {
         var iter:Iterator = null;
         var listener:TestListener = null;
         errors.addItem(new TestFailure(test,error));
         iter = listeners.iterator();
         while(iter.hasNext())
         {
            listener = TestListener(iter.next());
            listener.addError(test,error);
         }
      }
      
      public function addFailure(test:Test, error:AssertionFailedError) : void
      {
         var iter:Iterator = null;
         var listener:TestListener = null;
         failures.addItem(new TestFailure(test,error));
         iter = listeners.iterator();
         while(iter.hasNext())
         {
            listener = TestListener(iter.next());
            listener.addFailure(test,error);
         }
      }
      
      private function doProtected(testCase:Test, protectable:Protectable) : Boolean
      {
         var success:Boolean = false;
         success = false;
         try
         {
            if(protectable is ProtectedMiddleTestCase)
            {
               Assert.resetAssertionsMade();
            }
            protectable.protect();
            success = true;
         }
         catch(error:Error)
         {
            if(error is AssertionFailedError)
            {
               addFailure(testCase,AssertionFailedError(error));
            }
            else
            {
               addError(testCase,error);
            }
         }
         if(protectable is ProtectedMiddleTestCase)
         {
            _localAssertionsMade = Assert.assetionsMade;
         }
         return success;
      }
      
      public function addListener(listener:TestListener) : void
      {
         if(listeners.contains(listener) == false)
         {
            listeners.addItem(listener);
         }
      }
      
      public function errorCount() : Number
      {
         return errors.length();
      }
      
      public function failuresIterator() : Iterator
      {
         return failures.iterator();
      }
      
      public function errorsIterator() : Iterator
      {
         return errors.iterator();
      }
      
      private function doFinish(testCase:TestCase) : void
      {
         var protectedTestCase:Protectable = null;
         protectedTestCase = Protectable(new ProtectedFinishTestCase(testCase));
         doProtected(testCase,protectedTestCase);
         endTest(testCase);
      }
   }
}
