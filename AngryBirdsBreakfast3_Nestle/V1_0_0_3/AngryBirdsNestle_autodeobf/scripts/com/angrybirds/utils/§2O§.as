package com.angrybirds.utils
{
   import §,n§.§;!h§;
   import §=!7§.Base64;
   import §]K§.§>!I§;
   
   public class §2O§
   {
       
      
      public function §2O§()
      {
         super();
      }
      
      public static function §'P§(param1:String) : String
      {
         var response:String = param1;
         var decoded:String = response;
         try
         {
            decoded = Base64.§51§(decoded);
         }
         catch(b64Error:Error)
         {
         }
         return decoded;
      }
      
      public static function §>!r§(param1:String) : Object
      {
         var userObject:Object = null;
         var response:String = param1;
         try
         {
            userObject = §;!h§.§51§(response);
         }
         catch(error:Error)
         {
            userObject = {"error":§>!I§.CONNECTION_ERROR_RETRY};
         }
         return userObject;
      }
   }
}
