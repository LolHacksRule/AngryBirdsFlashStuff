package com.angrybirds.utils
{
   import §2!"§.§8K§;
   import §2J§.§7!-§;
   import §;4§.Base64;
   
   public class §`2§
   {
       
      
      public function §`2§()
      {
         super();
      }
      
      public static function §]#§(param1:String) : String
      {
         var response:String = param1;
         var decoded:String = response;
         try
         {
            decoded = Base64.§'!w§(decoded);
         }
         catch(b64Error:Error)
         {
         }
         return decoded;
      }
      
      public static function §#!l§(param1:String) : Object
      {
         var userObject:Object = null;
         var response:String = param1;
         try
         {
            userObject = §7!-§.§'!w§(response);
         }
         catch(error:Error)
         {
            userObject = {"error":§8K§.CONNECTION_ERROR_RETRY};
         }
         return userObject;
      }
   }
}
