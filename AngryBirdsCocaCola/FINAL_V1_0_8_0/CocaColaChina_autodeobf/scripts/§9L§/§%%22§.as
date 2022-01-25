package §9L§
{
   import §4^§.§=!D§;
   import §^=§.Base64;
   
   public class §%"§
   {
       
      
      public function §%"§()
      {
         super();
      }
      
      public static function §>!<§(param1:String) : String
      {
         var response:String = param1;
         var decoded:String = response;
         try
         {
            decoded = Base64.§,n§(decoded);
         }
         catch(b64Error:Error)
         {
         }
         return decoded;
      }
      
      public static function §1"§(param1:String) : Object
      {
         var userObject:Object = null;
         var response:String = param1;
         try
         {
            userObject = §=!D§.§,n§(response);
         }
         catch(error:Error)
         {
            userObject = {"error":§7!M§.CONNECTION_ERROR_RETRY};
         }
         return userObject;
      }
   }
}
