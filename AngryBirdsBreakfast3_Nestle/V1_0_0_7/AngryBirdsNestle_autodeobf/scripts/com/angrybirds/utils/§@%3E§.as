package com.angrybirds.utils
{
   import § !Q§.Base64;
   import §!! §.§!!M§;
   import §;!y§.§4![§;
   
   public class §@>§
   {
       
      
      public function §@>§()
      {
         super();
      }
      
      public static function §"7§(param1:String) : String
      {
         var response:String = param1;
         var decoded:String = response;
         try
         {
            decoded = Base64.§"!#§(decoded);
         }
         catch(b64Error:Error)
         {
         }
         return decoded;
      }
      
      public static function §&a§(param1:String) : Object
      {
         var userObject:Object = null;
         var response:String = param1;
         try
         {
            userObject = §!!M§.§"!#§(response);
         }
         catch(error:Error)
         {
            userObject = {"error":§4![§.CONNECTION_ERROR_RETRY};
         }
         return userObject;
      }
   }
}
