package flexunit.framework
{
   public interface Test extends Reflective
   {
       
      
      function countTestCases() : Number;
      
      function getTestMethodNames() : Array;
      
      function toString() : String;
      
      function runWithResult(param1:TestResult) : void;
   }
}
