package § !1§
{
   import § L§.§>!M§;
   import §`!W§.Base64;
   
   public class §8!Y§
   {
       
      
      public function §8!Y§()
      {
         super();
      }
      
      public static function §,!J§(param1:String) : String
      {
         var response:String = param1;
         var decoded:String = response;
         try
         {
            decoded = Base64.§7!N§(decoded);
         }
         catch(b64Error:Error)
         {
         }
         return decoded;
      }
      
      public static function §%f§(param1:String) : Object
      {
         var userObject:Object = null;
         var response:String = param1;
         try
         {
            userObject = §>!M§.§7!N§(response);
         }
         catch(error:Error)
         {
            userObject = {"error":§@!g§.CONNECTION_ERROR_RETRY};
         }
         return userObject;
      }
   }
}
