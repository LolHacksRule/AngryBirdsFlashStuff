package org.flexunit
{
   import flexunit.framework.AssertionFailedError;
   
   public class Assert
   {
      
      public static var _assertCount:uint = 0;
       
      
      public function Assert()
      {
         super();
      }
      
      public static function get assertionsMade() : uint
      {
         return _assertCount;
      }
      
      public static function resetAssertionsFields() : void
      {
         _assertCount = 0;
      }
      
      public static function assertWithApply(asserter:Function, args:Array) : void
      {
         ++_assertCount;
         asserter.apply(null,args);
      }
      
      public static function assertWith(asserter:Function, ... rest) : void
      {
         ++_assertCount;
         asserter.apply(null,rest);
      }
      
      public static function assertEquals(... rest) : void
      {
         ++_assertCount;
         if(rest.length == 3)
         {
            failNotEquals(rest[0],rest[1],rest[2]);
         }
         else
         {
            failNotEquals("",rest[0],rest[1]);
         }
      }
      
      public static function failNotEquals(message:String, expected:Object, actual:Object) : void
      {
         if(expected != actual)
         {
            failWithUserMessage(message,"expected:<" + expected + "> but was:<" + actual + ">");
         }
      }
      
      public static function assertStrictlyEquals(... rest) : void
      {
         ++_assertCount;
         if(rest.length == 3)
         {
            failNotStrictlyEquals(rest[0],rest[1],rest[2]);
         }
         else
         {
            failNotStrictlyEquals("",rest[0],rest[1]);
         }
      }
      
      public static function failNotStrictlyEquals(message:String, expected:Object, actual:Object) : void
      {
         if(expected !== actual)
         {
            failWithUserMessage(message,"expected:<" + expected + "> but was:<" + actual + ">");
         }
      }
      
      public static function assertTrue(... rest) : void
      {
         ++_assertCount;
         if(rest.length == 2)
         {
            failNotTrue(rest[0],rest[1]);
         }
         else
         {
            failNotTrue("",rest[0]);
         }
      }
      
      public static function failNotTrue(message:String, condition:Boolean) : void
      {
         if(!condition)
         {
            failWithUserMessage(message,"expected true but was false");
         }
      }
      
      public static function assertFalse(... rest) : void
      {
         ++_assertCount;
         if(rest.length == 2)
         {
            failTrue(rest[0],rest[1]);
         }
         else
         {
            failTrue("",rest[0]);
         }
      }
      
      public static function failTrue(message:String, condition:Boolean) : void
      {
         if(condition)
         {
            failWithUserMessage(message,"expected false but was true");
         }
      }
      
      public static function assertNull(... rest) : void
      {
         ++_assertCount;
         if(rest.length == 2)
         {
            failNotNull(rest[0],rest[1]);
         }
         else
         {
            failNotNull("",rest[0]);
         }
      }
      
      public static function failNull(message:String, object:Object) : void
      {
         if(object == null)
         {
            failWithUserMessage(message,"object was null: " + object);
         }
      }
      
      public static function assertNotNull(... rest) : void
      {
         ++_assertCount;
         if(rest.length == 2)
         {
            failNull(rest[0],rest[1]);
         }
         else
         {
            failNull("",rest[0]);
         }
      }
      
      public static function failNotNull(message:String, object:Object) : void
      {
         if(object != null)
         {
            failWithUserMessage(message,"object was not null: " + object);
         }
      }
      
      public static function fail(failMessage:String = "") : void
      {
         throw new AssertionFailedError(failMessage);
      }
      
      private static function failWithUserMessage(userMessage:String, failMessage:String) : void
      {
         if(userMessage.length > 0)
         {
            userMessage += " - ";
         }
         throw new AssertionFailedError(userMessage + failMessage);
      }
   }
}
