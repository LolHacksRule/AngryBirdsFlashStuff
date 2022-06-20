package org.hamcrest
{
   import flash.errors.IllegalOperationError;
   
   public class BaseDescription implements Description
   {
      
      private static const charToActionScriptSyntaxMap:Object = {
         "\"":"\\\"",
         "\n":"\\n",
         "\r":"\\r",
         "\t":"\\t"
      };
       
      
      public function BaseDescription()
      {
         super();
      }
      
      public function appendDescriptionOf(value:SelfDescribing) : Description
      {
         value.describeTo(this);
         return this;
      }
      
      private function toActionScriptSyntax(value:Object) : void
      {
         String(value).split("").forEach(charToActionScriptSyntax);
      }
      
      private function toSelfDescribingValue(value:Object, i:int = 0, a:Array = null) : SelfDescribingValue
      {
         return new SelfDescribingValue(value);
      }
      
      public function appendMismatchOf(matcher:Matcher, value:*) : Description
      {
         matcher.describeMismatch(value,this);
         return this;
      }
      
      public function appendText(text:String) : Description
      {
         append(text);
         return this;
      }
      
      public function appendValueList(start:String, separator:String, end:String, list:Array) : Description
      {
         return appendList(start,separator,end,list.map(toSelfDescribingValue));
      }
      
      public function appendValue(value:Object) : Description
      {
         if(value == null)
         {
            append("null");
         }
         else if(value is String)
         {
            append("\"");
            toActionScriptSyntax(value);
            append("\"");
         }
         else if(value is Number)
         {
            append("<");
            append(value);
            append(">");
         }
         else if(value is int)
         {
            append("<");
            append(value);
            append(">");
         }
         else if(value is uint)
         {
            append("<");
            append(value);
            append(">");
         }
         else if(value is Array)
         {
            appendValueList("[",",","]",value as Array);
         }
         else if(value is XML)
         {
            append(XML(value).toXMLString());
         }
         else
         {
            append("<");
            append(value);
            append(">");
         }
         return this;
      }
      
      public function appendList(start:String, separator:String, end:String, list:Array) : Description
      {
         var item:Object = null;
         var separate:Boolean = false;
         append(start);
         for each(item in list)
         {
            if(separate)
            {
               append(separator);
            }
            if(item is SelfDescribing)
            {
               appendDescriptionOf(item as SelfDescribing);
            }
            else
            {
               appendValue(item);
            }
            separate = true;
         }
         append(end);
         return this;
      }
      
      protected function append(value:Object) : void
      {
         throw new IllegalOperationError("BaseDescription#append is abstract and must be overriden by a subclass");
      }
      
      public function toString() : String
      {
         throw new IllegalOperationError("BaseDescription#toString is abstract and must be overriden by a subclass");
      }
      
      private function charToActionScriptSyntax(char:String, i:int = 0, a:Array = null) : void
      {
         append(charToActionScriptSyntaxMap[char] || char);
      }
   }
}

import org.hamcrest.Description;
import org.hamcrest.SelfDescribing;

class SelfDescribingValue implements SelfDescribing
{
    
   
   private var _value:Object;
   
   function SelfDescribingValue(value:Object)
   {
      super();
      _value = value;
   }
   
   public function describeTo(description:Description) : void
   {
      description.appendValue(_value);
   }
}
