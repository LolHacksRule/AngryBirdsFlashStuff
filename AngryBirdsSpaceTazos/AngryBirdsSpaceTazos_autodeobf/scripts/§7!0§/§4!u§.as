package §7!0§
{
   import §,!3§.§#"C§;
   import §0N§.Base64;
   import §9y§.§8"3§;
   
   public class §4!u§
   {
       
      
      public function §4!u§()
      {
         super();
      }
      
      public static function §3!@§(param1:String) : String
      {
         var response:String = param1;
         var decoded:String = response;
         try
         {
            decoded = Base64.§+c§(decoded);
         }
         catch(b64Error:Error)
         {
         }
         return decoded;
      }
      
      public static function §&"D§(param1:String) : Object
      {
         var userObject:Object = null;
         var response:String = param1;
         try
         {
            userObject = §#"C§.§+c§(response);
         }
         catch(error:Error)
         {
            userObject = {"error":§8"3§.CONNECTION_ERROR_RETRY};
         }
         return userObject;
      }
   }
}
