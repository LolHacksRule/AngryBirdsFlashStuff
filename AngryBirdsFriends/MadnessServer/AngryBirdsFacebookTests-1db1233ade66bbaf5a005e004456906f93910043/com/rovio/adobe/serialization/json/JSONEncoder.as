package com.rovio.adobe.serialization.json
{
   import flash.utils.describeType;
   import flash.utils.getQualifiedClassName;
   
   public class JSONEncoder
   {
       
      
      private var jsonString:String;
      
      public function JSONEncoder(value:*)
      {
         super();
         this.jsonString = this.convertToString(value);
      }
      
      public function getString() : String
      {
         return this.jsonString;
      }
      
      private function convertToString(value:*) : String
      {
         var arrayValue:Array = null;
         var obj:Object = null;
         if(getQualifiedClassName(value).indexOf("__AS3__.vec::Vector") == 0)
         {
            arrayValue = new Array();
            for each(obj in value)
            {
               arrayValue.push(obj);
            }
            value = arrayValue;
         }
         if(value is String)
         {
            return this.escapeString(value as String);
         }
         if(value is Number)
         {
            return !!isFinite(value as Number) ? value.toString() : "null";
         }
         if(value is Boolean)
         {
            return !!value ? "true" : "false";
         }
         if(value is Array)
         {
            return this.arrayToString(value as Array);
         }
         if(value is Object && value != null)
         {
            return this.objectToString(value);
         }
         return "null";
      }
      
      private function escapeString(str:String) : String
      {
         var ch:String = null;
         var hexCode:String = null;
         var zeroPad:String = null;
         var s:* = "";
         var len:Number = str.length;
         for(var i:int = 0; i < len; i++)
         {
            ch = str.charAt(i);
            switch(ch)
            {
               case "\"":
                  s += "\\\"";
                  break;
               case "\\":
                  s += "\\\\";
                  break;
               case "\b":
                  s += "\\b";
                  break;
               case "\f":
                  s += "\\f";
                  break;
               case "\n":
                  s += "\\n";
                  break;
               case "\r":
                  s += "\\r";
                  break;
               case "\t":
                  s += "\\t";
                  break;
               default:
                  if(ch < " ")
                  {
                     hexCode = ch.charCodeAt(0).toString(16);
                     zeroPad = hexCode.length == 2 ? "00" : "000";
                     s += "\\u" + zeroPad + hexCode;
                  }
                  else
                  {
                     s += ch;
                  }
                  break;
            }
         }
         return "\"" + s + "\"";
      }
      
      private function arrayToString(a:Array) : String
      {
         var s:* = "";
         for(var i:int = 0; i < a.length; i++)
         {
            if(s.length > 0)
            {
               s += ",";
            }
            s += this.convertToString(a[i]);
         }
         return "[" + s + "]";
      }
      
      private function objectToString(o:Object) : String
      {
         var value:Object = null;
         var key:String = null;
         var v:XML = null;
         var s:String = "";
         var classInfo:XML = describeType(o);
         if(classInfo.@name.toString() == "Object")
         {
            for(key in o)
            {
               value = o[key];
               if(!(value is Function))
               {
                  if(s.length > 0)
                  {
                     s += ",";
                  }
                  s += this.escapeString(key) + ":" + this.convertToString(value);
               }
            }
         }
         else
         {
            for each(v in classInfo..*.(name() == "variable" || name() == "accessor" && attribute("access").charAt(0) == "r"))
            {
               if(!(v.metadata && v.metadata.(@name == "Transient").length() > 0))
               {
                  if(s.length > 0)
                  {
                     s += ",";
                  }
                  s += this.escapeString(v.@name.toString()) + ":" + this.convertToString(o[v.@name]);
               }
            }
         }
         return "{" + s + "}";
      }
   }
}
