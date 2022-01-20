package §&6§
{
   import §%!H§.§<!_§;
   import §'+§.Base64;
   
   public class §`!q§
   {
       
      
      public function §`!q§()
      {
         super();
      }
      
      public static function §%!4§(param1:String) : String
      {
         var response:String = param1;
         var decoded:String = response;
         try
         {
            decoded = Base64.§8!R§(decoded);
         }
         catch(b64Error:Error)
         {
         }
         return decoded;
      }
      
      public static function §-`§(param1:String) : Object
      {
         var userObject:Object = null;
         var response:String = param1;
         try
         {
            userObject = §<!_§.§8!R§(response);
         }
         catch(error:Error)
         {
            userObject = {"error":§,!Y§.CONNECTION_ERROR_RETRY};
         }
         return userObject;
      }
   }
}
