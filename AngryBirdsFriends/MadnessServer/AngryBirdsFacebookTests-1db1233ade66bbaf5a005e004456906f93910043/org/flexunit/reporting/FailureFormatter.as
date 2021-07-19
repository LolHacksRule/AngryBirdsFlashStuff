package org.flexunit.reporting
{
   import flash.utils.getQualifiedClassName;
   import flexunit.framework.AssertionFailedError;
   import org.flexunit.AssertionError;
   import org.hamcrest.AssertionError;
   
   public class FailureFormatter
   {
       
      
      public function FailureFormatter()
      {
         super();
      }
      
      public static function isError(error:Error) : Boolean
      {
         var failure:Boolean = error is org.flexunit.AssertionError || error is org.hamcrest.AssertionError || error is AssertionFailedError || getQualifiedClassName(error) == "net.digitalprimates.fluint.assertion::AssertionFailedError";
         return !failure;
      }
      
      public static function xmlEscapeMessage(message:String) : String
      {
         var escape:XML = <escape/>;
         var escaped:String = "";
         var doubleQuote:RegExp = /"/g;
         if(message)
         {
            escape.setChildren(message);
            escaped = escape.children()[0].toXMLString();
            escaped = escaped.replace(doubleQuote,"&quot;");
         }
         return escaped;
      }
   }
}
