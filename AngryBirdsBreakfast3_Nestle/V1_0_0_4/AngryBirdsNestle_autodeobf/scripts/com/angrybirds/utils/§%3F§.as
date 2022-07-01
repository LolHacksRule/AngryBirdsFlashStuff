package com.angrybirds.utils
{
   import §"I§.Base64;
   import §,!9§.§>"$§;
   import §4!V§.§8!?§;
   
   public class §?§
   {
       
      
      public function §?§()
      {
         super();
      }
      
      public static function §`!F§(param1:String) : String
      {
         var response:String = param1;
         var decoded:String = response;
         try
         {
            decoded = Base64.§@!=§(decoded);
         }
         catch(b64Error:Error)
         {
         }
         return decoded;
      }
      
      public static function §8!B§(param1:String) : Object
      {
         var userObject:Object = null;
         var response:String = param1;
         try
         {
            userObject = §8!?§.§@!=§(response);
         }
         catch(error:Error)
         {
            userObject = {"error":§>"$§.CONNECTION_ERROR_RETRY};
         }
         return userObject;
      }
   }
}
