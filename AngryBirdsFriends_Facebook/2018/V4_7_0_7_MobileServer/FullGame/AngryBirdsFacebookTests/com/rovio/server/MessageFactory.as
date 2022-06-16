package com.rovio.server
{
   import flash.net.URLVariables;
   
   public class MessageFactory
   {
       
      
      public function MessageFactory()
      {
         super();
      }
      
      private static function parseHTTPValue(inputValue:*) : *
      {
         var splitString:* = null;
         var retAr:Array = null;
         var tmpAr:Array = null;
         var tmpentry:String = null;
         var ar:Array = null;
         var entry:* = undefined;
         if(isNaN(inputValue) == false)
         {
            return Number(inputValue);
         }
         if(inputValue.toString() == "true" || inputValue.toString() == "false")
         {
            return true;
         }
         if(isArray(inputValue as String))
         {
            splitString = inputValue.toString().substr(1,inputValue.toString().length - 2);
            splitString = splitString.substr(1,splitString.length - 2);
            retAr = new Array();
            if(isArray(splitString))
            {
               retAr.push(parseHTTPValue(splitString));
            }
            else if(splitString.indexOf("]},{[") > -1)
            {
               tmpAr = splitString.split("]},{[");
               for each(tmpentry in tmpAr)
               {
                  if(tmpentry.substr(0,1) == "{" && tmpentry.substr(tmpentry.length - 1,1) == "}")
                  {
                     splitString = "[" + tmpentry + "]";
                  }
                  else if(tmpentry.substr(0,1) == "{")
                  {
                     splitString = "[" + tmpentry + "}]";
                  }
                  else
                  {
                     splitString = "[{" + tmpentry + "]";
                  }
                  retAr.push(parseHTTPValue(splitString));
               }
            }
            if(!isArray(splitString))
            {
               ar = splitString.split("},{");
               for each(entry in ar)
               {
                  retAr.push(parseHTTPValue(entry));
               }
            }
            return retAr;
         }
         return inputValue.toString();
      }
      
      private static function isArray(inputValue:String) : Boolean
      {
         if(inputValue.toString().substr(0,1) == "[" && inputValue.toString().substr(-1,1) == "]")
         {
            return true;
         }
         return false;
      }
      
      public static function fromHTTPResponse(responseObj:Object) : Object
      {
         var inputValue:* = undefined;
         var key:* = null;
         var data:Array = null;
         var value:String = null;
         var k:String = null;
         var v:String = null;
         var retObj:Object = new Object();
         if(responseObj is URLVariables)
         {
            for(key in responseObj)
            {
               inputValue = responseObj[key];
               retObj[key] = parseHTTPValue(inputValue);
            }
         }
         else if(responseObj is String)
         {
            data = (responseObj as String).split("&");
            for each(value in data)
            {
               k = unescape(value.substring(0,value.indexOf("=")));
               v = unescape(value.substring(value.indexOf("=") + 1));
               retObj[k] = v;
            }
         }
         return retObj;
      }
   }
}
