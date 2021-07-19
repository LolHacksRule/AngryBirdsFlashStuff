package flexunit.framework
{
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class TestSuiteTestListener implements TestListener
   {
      
      private static var listenerStack:Array;
       
      
      private var result:TestResult;
      
      private var timer:Timer;
      
      private var suite:TestSuite;
      
      public function TestSuiteTestListener(suite:TestSuite, result:TestResult)
      {
         super();
         this.suite = suite;
         this.result = result;
         result.addListener(TestListener(this));
         timer = new Timer(5,1);
         timer.addEventListener("timer",handleTimer);
         if(listenerStack == null)
         {
            listenerStack = new Array();
         }
         else
         {
            result.removeListener(TestListener(listenerStack[0]));
         }
         listenerStack.unshift(this);
      }
      
      public function endTest(test:Test) : void
      {
         if(listenerStack[0] != this)
         {
            return;
         }
         timer.removeEventListener(TimerEvent.TIMER,handleTimer);
         timer = new Timer(5,1);
         timer.addEventListener(TimerEvent.TIMER,handleTimer);
         timer.start();
      }
      
      public function addFailure(test:Test, error:AssertionFailedError) : void
      {
      }
      
      public function pop() : void
      {
         var popped:TestSuiteTestListener = null;
         popped = listenerStack.shift();
         result.removeListener(TestListener(this));
         if(listenerStack.length > 0)
         {
            result.addListener(TestListener(listenerStack[0]));
            listenerStack[0].endTest(null);
         }
      }
      
      public function addError(test:Test, error:Error) : void
      {
      }
      
      public function startTest(test:Test) : void
      {
      }
      
      public function handleTimer(event:Event) : void
      {
         suite.runNext(result);
      }
   }
}
