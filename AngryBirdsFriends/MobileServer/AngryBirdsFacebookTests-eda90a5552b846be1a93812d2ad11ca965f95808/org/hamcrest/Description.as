package org.hamcrest
{
   public interface Description
   {
       
      
      function appendValue(param1:Object) : Description;
      
      function appendList(param1:String, param2:String, param3:String, param4:Array) : Description;
      
      function appendDescriptionOf(param1:SelfDescribing) : Description;
      
      function toString() : String;
      
      function appendText(param1:String) : Description;
      
      function appendMismatchOf(param1:Matcher, param2:*) : Description;
   }
}
