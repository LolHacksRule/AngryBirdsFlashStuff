package §;<§
{
   import §%!$§.Base64;
   import §9!&§.§[!`§;
   
   public class §7!K§
   {
       
      
      public function §7!K§()
      {
         super();
      }
      
      public static function §;N§(param1:String) : String
      {
         var response:String = param1;
         var decoded:String = response;
         try
         {
            decoded = Base64.§'!J§(decoded);
         }
         catch(b64Error:Error)
         {
         }
         return decoded;
      }
      
      public static function §>e§(param1:String) : Object
      {
         var userObject:Object = null;
         var response:String = param1;
         try
         {
            userObject = §[!`§.§'!J§(response);
         }
         catch(error:Error)
         {
            userObject = {"error":§%K§.CONNECTION_ERROR_RETRY};
         }
         return userObject;
      }
   }
}
