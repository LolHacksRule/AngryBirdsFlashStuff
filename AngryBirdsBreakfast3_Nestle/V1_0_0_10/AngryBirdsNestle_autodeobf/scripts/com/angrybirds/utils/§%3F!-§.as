package com.angrybirds.utils
{
   import §#G§.§8A§;
   import §8!$§.Base64;
   import §^>§.§2"&§;
   
   public class §?!-§
   {
       
      
      public function §?!-§()
      {
         super();
      }
      
      public static function §;!N§(param1:String) : String
      {
         var response:String = param1;
         var decoded:String = response;
         try
         {
            decoded = Base64.§?!=§(decoded);
         }
         catch(b64Error:Error)
         {
         }
         return decoded;
      }
      
      public static function §4!-§(param1:String) : Object
      {
         var userObject:Object = null;
         var response:String = param1;
         try
         {
            userObject = §8A§.§?!=§(response);
         }
         catch(error:Error)
         {
            userObject = {"error":§2"&§.CONNECTION_ERROR_RETRY};
         }
         return userObject;
      }
   }
}
