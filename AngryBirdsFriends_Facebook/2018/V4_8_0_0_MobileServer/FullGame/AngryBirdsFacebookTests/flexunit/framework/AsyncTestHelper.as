package flexunit.framework
{
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   import mx.utils.StringUtil;
   
   public class AsyncTestHelper
   {
       
      
      private var testCase:TestCase;
      
      private var objToPass:Object;
      
      private var extraData:Object;
      
      private var func:Function;
      
      private var timer:Timer;
      
      private var failFunc:Function;
      
      private var testResult:TestResult;
      
      private var shouldFail:Boolean = false;
      
      public function AsyncTestHelper(testCase:TestCase, testResult:TestResult)
      {
         shouldFail = false;
         super();
         this.testCase = testCase;
         this.testResult = testResult;
         timer = new Timer(100);
         timer.addEventListener(TimerEvent.TIMER,timerHandler);
      }
      
      public function timerHandler(event:TimerEvent) : void
      {
         timer.stop();
         shouldFail = true;
         testResult.continueRun(testCase);
      }
      
      public function handleEvent(event:Object) : void
      {
         var wasReallyAsync:Boolean = false;
         wasReallyAsync = timer.running;
         timer.stop();
         if(shouldFail)
         {
            return;
         }
         objToPass = event;
         if(wasReallyAsync)
         {
            testResult.continueRun(testCase);
         }
      }
      
      public function loadAsync() : void
      {
         var async:Object = null;
         async = testCase.getNextAsync();
         func = async.func;
         extraData = async.extraData;
         failFunc = async.failFunc;
         timer = new Timer(async.timeout,1);
         timer.addEventListener(TimerEvent.TIMER,timerHandler);
         timer.delay = async.timeout;
      }
      
      public function startAsync() : void
      {
         loadAsync();
         if(objToPass != null)
         {
            testResult.continueRun(testCase);
         }
         else
         {
            timer.start();
         }
      }
      
      public function runNext() : void
      {
         if(shouldFail)
         {
            if(failFunc != null)
            {
               failFunc(extraData);
            }
            else
            {
               Assert.fail(StringUtil.substitute(AssertStringFormats.ASYNC_CALL_NOT_FIRED,timer.delay));
            }
         }
         else
         {
            if(extraData != null)
            {
               func(objToPass,extraData);
            }
            else
            {
               func(objToPass);
            }
            func = null;
            objToPass = null;
            extraData = null;
         }
      }
   }
}
