package flexunit.framework
{
   public class AssertStringFormats
   {
      
      public static const NOT_CONTAINED:String = "did not find <{0}> in <{1}>";
      
      public static const CONTAINED:String = "<{0}> found in <{1}>";
      
      public static const NULL:String = "object was null: {0}";
      
      public static const NOT_NULL:String = "object was not null: {0}";
      
      public static const EVENT_DID_NOT_OCCUR:String = "Expected events <{0}> but caught events <{1}>";
      
      public static const ASYNC_CALL_NOT_FIRED:String = "Asynchronous function did not fire after {0} ms";
      
      public static const MATCH:String = "<{0}> matched <{1}>";
      
      public static const EVENT_DID_OCCUR:String = "Did not expect events <{0}> but caught events <{1}>";
      
      public static const EXPECTED_BUT_WAS:String = "expected:<{0}> but was:<{1}>";
      
      public static const NO_MATCH:String = "<{0}> did not match <{1}>";
      
      public static const UNDEFINED:String = "object was undefined: {0}";
      
      public static const ACTUAL_OBJECT_DIFFERS:String = "At least one property of the actual object differs from the expected object";
      
      public static const NOT_UNDEFINED:String = "object was not undefined: {0}";
       
      
      public function AssertStringFormats()
      {
         super();
      }
   }
}
