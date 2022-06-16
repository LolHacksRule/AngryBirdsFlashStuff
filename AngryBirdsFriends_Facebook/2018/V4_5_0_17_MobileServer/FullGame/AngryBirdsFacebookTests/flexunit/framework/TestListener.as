package flexunit.framework
{
   public interface TestListener
   {
       
      
      function startTest(param1:Test) : void;
      
      function addError(param1:Test, param2:Error) : void;
      
      function addFailure(param1:Test, param2:AssertionFailedError) : void;
      
      function endTest(param1:Test) : void;
   }
}
