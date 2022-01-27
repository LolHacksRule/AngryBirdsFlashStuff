package §[z§
{
   import §3!-§.§&!+§;
   import §`!w§.Base64;
   import §`>§.§>7§;
   
   public class §4!L§
   {
       
      
      public function §4!L§()
      {
         super();
      }
      
      public static function §=!Y§(param1:String) : String
      {
         var response:String = param1;
         var decoded:String = response;
         try
         {
            decoded = Base64.§`!W§(decoded);
         }
         catch(b64Error:Error)
         {
         }
         return decoded;
      }
      
      public static function §#";§(param1:String) : Object
      {
         var userObject:Object = null;
         var response:String = param1;
         try
         {
            userObject = §&!+§.§`!W§(response);
         }
         catch(error:Error)
         {
            userObject = {"error":§>7§.CONNECTION_ERROR_RETRY};
         }
         return userObject;
      }
   }
}
