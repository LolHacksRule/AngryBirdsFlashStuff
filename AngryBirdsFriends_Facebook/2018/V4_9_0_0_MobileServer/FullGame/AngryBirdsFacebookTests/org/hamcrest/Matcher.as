package org.hamcrest
{
   public interface Matcher extends SelfDescribing
   {
       
      
      function describeMismatch(param1:Object, param2:Description) : void;
      
      function matches(param1:Object) : Boolean;
   }
}
