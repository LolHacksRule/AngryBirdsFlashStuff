package org.flexunit.experimental.theories.internals
{
   import org.flexunit.AssertionError;
   
   public class ParameterizedAssertionError extends AssertionError
   {
       
      
      public var targetException:Error;
      
      public function ParameterizedAssertionError(targetException:Error, methodName:String, ... params)
      {
         this.targetException = targetException;
         super(methodName + " " + (params as Array).join(", "));
      }
      
      public static function join(delimiter:String, ... params) : String
      {
         return (params as Array).join(delimiter);
      }
      
      private static function stringValueOf(next:Object) : String
      {
         var result:String = null;
         try
         {
            result = String(next);
         }
         catch(e:Error)
         {
            result = "[toString failed]";
         }
         return result;
      }
   }
}
