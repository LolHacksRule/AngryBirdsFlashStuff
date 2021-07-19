package org.hamcrest
{
   public class AssertionError extends Error
   {
       
      
      private var _cause:Error;
      
      private var _mismatchDescription:String;
      
      private var _matcherDescription:String;
      
      private var _value;
      
      public function AssertionError(message:String, cause:Error = null, matcherDescription:String = null, mismatchDescription:String = null, value:* = undefined)
      {
         super(message);
         _cause = cause;
         _matcherDescription = matcherDescription;
         _mismatchDescription = mismatchDescription;
         _value = value;
      }
      
      public function get cause() : Error
      {
         return _cause;
      }
      
      public function get mismatchDescription() : String
      {
         return _mismatchDescription;
      }
      
      public function get matcherDescription() : String
      {
         return _matcherDescription;
      }
      
      public function get value() : *
      {
         return _value;
      }
      
      override public function getStackTrace() : String
      {
         var stackTrace:* = super.getStackTrace();
         if(_cause)
         {
            stackTrace += "\n\n";
            stackTrace += "Nested Error:\n";
            stackTrace += _cause.getStackTrace();
         }
         return stackTrace;
      }
   }
}
