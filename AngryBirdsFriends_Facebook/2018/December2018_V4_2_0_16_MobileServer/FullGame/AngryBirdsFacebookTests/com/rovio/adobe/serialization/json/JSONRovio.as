package com.rovio.adobe.serialization.json
{
   public class JSONRovio
   {
       
      
      public function JSONRovio()
      {
         super();
      }
      
      public static function encode(o:Object) : String
      {
         return new JSONEncoder(o).getString();
      }
      
      public static function decode(s:String, strict:Boolean = true) : *
      {
         return new JSONDecoder(s,strict).getValue();
      }
   }
}
