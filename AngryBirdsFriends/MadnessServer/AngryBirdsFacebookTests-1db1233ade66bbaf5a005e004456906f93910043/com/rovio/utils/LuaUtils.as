package com.rovio.utils
{
   import flash.utils.getQualifiedClassName;
   
   public class LuaUtils
   {
       
      
      public function LuaUtils()
      {
         super();
      }
      
      public static function luaToObject(luaString:String, emptyObjectAsArray:Boolean = false, addJSONDebugString:Boolean = false) : Object
      {
         var jsonString:String = null;
         var returnObject:Object = null;
         jsonString = normalizeLuaString(luaString,emptyObjectAsArray);
         try
         {
            returnObject = JSON.parse(jsonString);
         }
         catch(e:Error)
         {
            throw new Error("Error parsing JSON string.\n" + jsonString);
         }
         if(addJSONDebugString)
         {
            returnObject.debug = luaString;
         }
         return returnObject;
      }
      
      public static function normalizedLuaToObject(normalizedLua:String, addJSONDebugString:Boolean = false) : Object
      {
         var returnObject:Object = null;
         try
         {
            returnObject = JSON.parse(normalizedLua);
         }
         catch(e:Error)
         {
            throw new Error("Error parsing JSON string.\n" + normalizedLua);
         }
         if(addJSONDebugString)
         {
            returnObject.debug = normalizedLua;
         }
         return returnObject;
      }
      
      public static function normalizeLuaString(luaString:String, emptyObjectAsArray:Boolean = false) : String
      {
         luaString = luaString.replace(/\-\-\[\[[\s\S]*?\]\]/mg,"");
         luaString = luaString.replace(/\-\-.*/g,"");
         luaString = luaString.replace(/NaN/g,"\"nil\"");
         luaString = luaString.replace(/\[\"(.*)\"\]/g,"$1");
         luaString = luaString.replace(/\}\s*$/mg,"},");
         luaString = luaString.replace(/^(.*\=\s*[^,\{\[\s]+)$/mg,"$&,");
         luaString = luaString.replace(/([^{,\=\s]*)\s*?\=/mg,"\"$1\":");
         luaString = "{" + luaString + "}";
         luaString = luaString.replace(/,(\s*[\]\}$])/mg,"$1");
         return fixArrays(luaString,emptyObjectAsArray);
      }
      
      private static function fixArrays(jsonString:String, emptyObjectAsArray:Boolean) : String
      {
         var part:String = null;
         var convertToArray:Boolean = false;
         var arrayParts:Array = null;
         var mixed:Boolean = false;
         var newOpen:int = 0;
         var newClose:int = 0;
         var partSemiColon:int = 0;
         var partOpeningBrace:int = 0;
         var part1:String = null;
         var part2:String = null;
         var part3:String = null;
         var partBefore:String = null;
         var partAfter:String = null;
         var openingBrace:String = "{";
         var closingBrace:String = "}";
         var openingSquare:String = "[";
         var closingSquare:String = "]";
         var semicolon:String = ":";
         var comma:String = ",";
         var openingBraces:Vector.<int> = new Vector.<int>();
         var openingSquares:Vector.<int> = new Vector.<int>();
         var closingSquares:Vector.<int> = new Vector.<int>();
         var newOpeningBraces:Vector.<int> = new Vector.<int>();
         var newClosingBraces:Vector.<int> = new Vector.<int>();
         var i:int = 0;
         var opening:int = jsonString.indexOf(openingBrace);
         var openingMax:int = opening;
         var closing:int = jsonString.indexOf(closingBrace);
         while(opening >= 0 || closing >= 0)
         {
            if(opening >= 0 && opening < closing)
            {
               openingBraces.push(opening);
               openingMax = opening;
            }
            else
            {
               opening = openingBraces.pop();
               part = jsonString.substring(opening,closing + 1);
               convertToArray = false;
               if(part.indexOf(openingBrace,1) < 0)
               {
                  if(part.indexOf(semicolon,1) < 0)
                  {
                     if(emptyObjectAsArray || part.search(/[a-zA-Z0-9]+/g) >= 0)
                     {
                        convertToArray = true;
                     }
                  }
                  else
                  {
                     arrayParts = part.substr(1,part.length - 2).split(comma);
                     mixed = false;
                     for(i = 0; i < arrayParts.length; i++)
                     {
                        if(arrayParts[i].indexOf(semicolon) < 0)
                        {
                           mixed = true;
                           break;
                        }
                     }
                     if(mixed)
                     {
                        convertToArray = true;
                        for(i = 0; i < arrayParts.length; i++)
                        {
                           if(arrayParts[i].indexOf(semicolon) > 0)
                           {
                              newOpen = opening + part.indexOf(arrayParts[i]);
                              newClose = newOpen + arrayParts[i].length;
                              newOpeningBraces.push(newOpen);
                              newClosingBraces.push(newClose);
                           }
                        }
                     }
                  }
               }
               else
               {
                  partSemiColon = part.indexOf(semicolon,1);
                  if(partSemiColon < 0)
                  {
                     convertToArray = true;
                  }
                  else
                  {
                     partOpeningBrace = part.indexOf(openingBrace,1);
                     if(partOpeningBrace > 0 && partSemiColon > partOpeningBrace)
                     {
                        convertToArray = true;
                     }
                  }
               }
               if(convertToArray)
               {
                  openingSquares.push(opening);
                  closingSquares.push(closing);
               }
               closing = jsonString.indexOf(closingBrace,closing + 1);
            }
            opening = jsonString.indexOf(openingBrace,openingMax + 1);
         }
         for(i = 0; i < openingSquares.length; i++)
         {
            opening = openingSquares[i];
            closing = closingSquares[i];
            part1 = jsonString.substring(0,opening);
            part2 = jsonString.substring(opening + 1,closing);
            part3 = jsonString.substring(closing + 1);
            jsonString = part1 + openingSquare + part2 + closingSquare + part3;
         }
         for(i = newClosingBraces.length - 1; i >= 0; i--)
         {
            closing = newClosingBraces[i];
            opening = newOpeningBraces[i];
            partBefore = jsonString.substring(0,closing);
            partAfter = jsonString.substring(closing);
            jsonString = partBefore + closingBrace + partAfter;
            partBefore = jsonString.substring(0,opening);
            partAfter = jsonString.substring(opening);
            jsonString = partBefore + openingBrace + partAfter;
         }
         return jsonString;
      }
      
      public static function objectToLua(object:Object) : String
      {
         return objectToLuaRecursive(object,0);
      }
      
      private static function objectToLuaRecursive(object:Object, level:int) : String
      {
         var key:* = null;
         var i:int = 0;
         level++;
         var result:* = "";
         for(key in object)
         {
            for(i = 0; i < level - 1; i++)
            {
               result += "\t";
            }
            result += key + " = " + valueToLuaString(object[key],level);
            if(level > 1)
            {
               result += ",";
            }
            result += "\n";
         }
         level--;
         return result;
      }
      
      private static function valueToLuaString(value:*, level:int) : String
      {
         var array:Array = null;
         var obj:* = undefined;
         var i:int = 0;
         var tab:int = 0;
         var result:* = "";
         if(getQualifiedClassName(value).indexOf("__AS3__.vec::Vector") == 0)
         {
            array = [];
            for each(obj in value)
            {
               array.push(obj);
            }
            value = array;
         }
         if(value is Boolean)
         {
            result = !!value ? "true" : "false";
         }
         else if(value is Number)
         {
            result = value.toString();
         }
         else
         {
            if(value is String)
            {
               return "\"" + value + "\"";
            }
            if(value is Array)
            {
               result = "{\n";
               for(i = 0; i < value.length; i++)
               {
                  result += valueToLuaString(value[i],level) + (i < value.length - 1 ? "," : "");
               }
               return result + "}";
            }
            if(value is Object)
            {
               result = "{\n" + objectToLuaRecursive(value,level);
               for(tab = 0; tab < level - 1; tab++)
               {
                  result += "\t";
               }
               result += "}";
            }
         }
         return result;
      }
   }
}
