package §7I§
{
   import §!6§.Base64;
   import §=^§.§;D§;
   
   public class §?Q§
   {
       
      
      public function §?Q§()
      {
         super();
      }
      
      public static function §+I§(param1:String) : String
      {
         var response:String = param1;
         var decoded:String = response;
         try
         {
            decoded = Base64.§8a§(decoded);
         }
         catch(b64Error:Error)
         {
         }
         return decoded;
      }
      
      public static function §7L§(param1:String) : Object
      {
         var userObject:Object = null;
         var response:String = param1;
         try
         {
            userObject = §;D§.§8a§(response);
         }
         catch(error:Error)
         {
            userObject = {"error":§3!"§.CONNECTION_ERROR_RETRY};
         }
         return userObject;
      }
   }
}
