package flexunit.framework
{
   import mx.utils.ObjectUtil;
   import mx.utils.StringUtil;
   
   public class Assert
   {
      
      protected static var _assertionsMade:Number = 0;
      
      private static var _totalAssertionsMade:Number = 0;
      
      private static var _maxAssertionsMade:Number = 0;
       
      
      public function Assert()
      {
         super();
      }
      
      private static function failNotContained(message:String, shortString:String, longString:String) : void
      {
         oneAssertionHasBeenMade();
         if(longString.indexOf(shortString) < 0)
         {
            failWithUserMessage(message,StringUtil.substitute(AssertStringFormats.NOT_CONTAINED,shortString,longString));
         }
      }
      
      private static function failNotUndefined(message:String, object:Object) : void
      {
         oneAssertionHasBeenMade();
         if(object != null)
         {
            failWithUserMessage(message,StringUtil.substitute(AssertStringFormats.NOT_UNDEFINED,object));
         }
      }
      
      private static function failNotTrue(message:String, condition:Boolean) : void
      {
         oneAssertionHasBeenMade();
         if(!condition)
         {
            failWithUserMessage(message,StringUtil.substitute(AssertStringFormats.EXPECTED_BUT_WAS,true,false));
         }
      }
      
      public static function assertObjectEquals(... rest) : void
      {
         if(rest.length == 3)
         {
            failObjectEquals(rest[0],rest[1],rest[2]);
         }
         else
         {
            failObjectEquals("",rest[0],rest[1]);
         }
      }
      
      public static function resetEveryAsserionsFields() : void
      {
         _assertionsMade = 0;
         _maxAssertionsMade = 0;
         _totalAssertionsMade = 0;
      }
      
      private static function failMatch(message:String, regexp:RegExp, string:String) : void
      {
         oneAssertionHasBeenMade();
         if(regexp.test(string))
         {
            failWithUserMessage(message,StringUtil.substitute(AssertStringFormats.MATCH,string,regexp.toString()));
         }
      }
      
      private static function failTrue(message:String, condition:Boolean) : void
      {
         oneAssertionHasBeenMade();
         if(condition)
         {
            failWithUserMessage(message,StringUtil.substitute(AssertStringFormats.EXPECTED_BUT_WAS,false,true));
         }
      }
      
      public static function assertNotContained(... rest) : void
      {
         if(rest.length == 3)
         {
            failContained(rest[0],rest[1],rest[2]);
         }
         else
         {
            failContained("",rest[0],rest[1]);
         }
      }
      
      public static function get assetionsMade() : Number
      {
         return _assertionsMade;
      }
      
      public static function get totalAssertionsMade() : Number
      {
         return _totalAssertionsMade;
      }
      
      private static function failUndefined(message:String, object:Object) : void
      {
         oneAssertionHasBeenMade();
         if(object == null)
         {
            failWithUserMessage(message,StringUtil.substitute(AssertStringFormats.UNDEFINED,object));
         }
      }
      
      public static function assertNotNull(... rest) : void
      {
         if(rest.length == 2)
         {
            failNull(rest[0],rest[1]);
         }
         else
         {
            failNull("",rest[0]);
         }
      }
      
      public static function resetAssertionsMade() : void
      {
         if(_assertionsMade > _maxAssertionsMade)
         {
            _maxAssertionsMade = _assertionsMade;
         }
         _assertionsMade = 0;
      }
      
      private static function failWithUserMessage(userMessage:String, failMessage:String) : void
      {
         if(userMessage.length > 0)
         {
            userMessage += " - ";
         }
         throw new AssertionFailedError(userMessage + failMessage);
      }
      
      public static function assertStrictlyEquals(... rest) : void
      {
         if(rest.length == 3)
         {
            failNotStrictlyEquals(rest[0],rest[1],rest[2]);
         }
         else
         {
            failNotStrictlyEquals("",rest[0],rest[1]);
         }
      }
      
      public static function assertContained(... rest) : void
      {
         if(rest.length == 3)
         {
            failNotContained(rest[0],rest[1],rest[2]);
         }
         else
         {
            failNotContained("",rest[0],rest[1]);
         }
      }
      
      public static function assertNoMatch(... rest) : void
      {
         if(rest.length == 3)
         {
            failMatch(rest[0],rest[1],rest[2]);
         }
         else
         {
            failMatch("",rest[0],rest[1]);
         }
      }
      
      public static function assertMatch(... rest) : void
      {
         if(rest.length == 3)
         {
            failNoMatch(rest[0],rest[1],rest[2]);
         }
         else
         {
            failNoMatch("",rest[0],rest[1]);
         }
      }
      
      public static function assertNotUndefined(... rest) : void
      {
         if(rest.length == 2)
         {
            failUndefined(rest[0],rest[1]);
         }
         else
         {
            failUndefined("",rest[0]);
         }
      }
      
      public static function assertEquals(... rest) : void
      {
         if(rest.length == 3)
         {
            failNotEquals(rest[0],rest[1],rest[2]);
         }
         else
         {
            failNotEquals("",rest[0],rest[1]);
         }
      }
      
      private static function failNull(message:String, object:Object) : void
      {
         oneAssertionHasBeenMade();
         if(object == null)
         {
            failWithUserMessage(message,StringUtil.substitute(AssertStringFormats.NULL,object));
         }
      }
      
      private static function failNoMatch(message:String, regexp:RegExp, string:String) : void
      {
         oneAssertionHasBeenMade();
         if(!regexp.test(string))
         {
            failWithUserMessage(message,StringUtil.substitute(AssertStringFormats.NO_MATCH,string,regexp.toString()));
         }
      }
      
      public static function get maxAssertionsMade() : Number
      {
         return _maxAssertionsMade;
      }
      
      public static function assertNull(... rest) : void
      {
         if(rest.length == 2)
         {
            failNotNull(rest[0],rest[1]);
         }
         else
         {
            failNotNull("",rest[0]);
         }
      }
      
      public static function assertUndefined(... rest) : void
      {
         if(rest.length == 2)
         {
            failNotUndefined(rest[0],rest[1]);
         }
         else
         {
            failNotUndefined("",rest[0]);
         }
      }
      
      public static function assertTrue(... rest) : void
      {
         if(rest.length == 2)
         {
            failNotTrue(rest[0],rest[1]);
         }
         else
         {
            failNotTrue("",rest[0]);
         }
      }
      
      private static function failContained(message:String, shortString:String, longString:String) : void
      {
         oneAssertionHasBeenMade();
         if(longString.indexOf(shortString) >= 0)
         {
            failWithUserMessage(message,StringUtil.substitute(AssertStringFormats.CONTAINED,shortString,longString));
         }
      }
      
      public static function fail(failMessage:String = "") : void
      {
         throw new AssertionFailedError(failMessage);
      }
      
      private static function failNotStrictlyEquals(message:String, expected:Object, actual:Object) : void
      {
         oneAssertionHasBeenMade();
         if(expected !== actual)
         {
            failWithUserMessage(message,StringUtil.substitute(AssertStringFormats.EXPECTED_BUT_WAS,expected,actual));
         }
      }
      
      private static function failNotEquals(message:String, expected:Object, actual:Object) : void
      {
         oneAssertionHasBeenMade();
         if(expected != actual)
         {
            if(expected is Number && actual is Number && isNaN(Number(expected)) && isNaN(Number(actual)))
            {
               return;
            }
            failWithUserMessage(message,StringUtil.substitute(AssertStringFormats.EXPECTED_BUT_WAS,expected,actual));
         }
      }
      
      private static function failNotNull(message:String, object:Object) : void
      {
         oneAssertionHasBeenMade();
         if(object != null)
         {
            failWithUserMessage(message,StringUtil.substitute(AssertStringFormats.NOT_NULL,object));
         }
      }
      
      public static function assertFalse(... rest) : void
      {
         if(rest.length == 2)
         {
            failTrue(rest[0],rest[1]);
         }
         else
         {
            failTrue("",rest[0]);
         }
      }
      
      private static function failObjectEquals(message:String, expected:Object, actual:Object) : void
      {
         oneAssertionHasBeenMade();
         if(ObjectUtil.compare(expected,actual) != 0)
         {
            failWithUserMessage(message,AssertStringFormats.ACTUAL_OBJECT_DIFFERS);
         }
      }
      
      public static function oneAssertionHasBeenMade() : void
      {
         ++_assertionsMade;
         ++_totalAssertionsMade;
      }
   }
}
