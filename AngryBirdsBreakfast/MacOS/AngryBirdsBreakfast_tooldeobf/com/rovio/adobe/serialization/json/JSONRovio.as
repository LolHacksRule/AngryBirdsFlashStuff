package com.rovio.adobe.serialization.json
{
   public class JSONRovio
   {
       
      
      public function JSONRovio()
      {
         super();
      }
      
      public static function encode(param1:Object) : String
      {
         return new JSONEncoder(param1).getString();
      }
      
      public static function decode(param1:String, param2:Boolean = true) : *
      {
         return new JSONDecoder(param1,param2).getValue();
      }
   }
}
