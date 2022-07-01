package com.angrybirds.utils
{
   import §,j§.§'u§;
   import §24§.Base64;
   import §[!5§.§2p§;
   
   public class §2!N§
   {
       
      
      public function §2!N§()
      {
         super();
      }
      
      public static function §^"3§(param1:String) : String
      {
         var response:String = param1;
         var decoded:String = response;
         try
         {
            decoded = Base64.§&!Z§(decoded);
         }
         catch(b64Error:Error)
         {
         }
         return decoded;
      }
      
      public static function §6l§(param1:String) : Object
      {
         var userObject:Object = null;
         var response:String = param1;
         try
         {
            userObject = §'u§.§&!Z§(response);
         }
         catch(error:Error)
         {
            userObject = {"error":§2p§.CONNECTION_ERROR_RETRY};
         }
         return userObject;
      }
   }
}
