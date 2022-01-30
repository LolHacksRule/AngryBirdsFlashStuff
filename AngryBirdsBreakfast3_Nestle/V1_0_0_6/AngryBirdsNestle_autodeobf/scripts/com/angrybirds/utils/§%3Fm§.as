package com.angrybirds.utils
{
   import §&!k§.§]!q§;
   import §'-§.§9u§;
   import §0!$§.Base64;
   
   public class §?m§
   {
       
      
      public function §?m§()
      {
         super();
      }
      
      public static function §]!H§(param1:String) : String
      {
         var response:String = param1;
         var decoded:String = response;
         try
         {
            decoded = Base64.§"""§(decoded);
         }
         catch(b64Error:Error)
         {
         }
         return decoded;
      }
      
      public static function §98§(param1:String) : Object
      {
         var userObject:Object = null;
         var response:String = param1;
         try
         {
            userObject = §]!q§.§"""§(response);
         }
         catch(error:Error)
         {
            userObject = {"error":§9u§.CONNECTION_ERROR_RETRY};
         }
         return userObject;
      }
   }
}
