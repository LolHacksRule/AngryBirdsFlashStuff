package §87§
{
   import §#-§.§4!K§;
   import §?@§.Base64;
   
   public class §?z§
   {
       
      
      public function §?z§()
      {
         super();
      }
      
      public static function §;l§(param1:String) : String
      {
         var response:String = param1;
         var decoded:String = response;
         try
         {
            decoded = Base64.§ !7§(decoded);
         }
         catch(b64Error:Error)
         {
         }
         return decoded;
      }
      
      public static function §>7§(param1:String) : Object
      {
         var userObject:Object = null;
         var response:String = param1;
         try
         {
            userObject = §4!K§.§ !7§(response);
         }
         catch(error:Error)
         {
            userObject = {"error":§31§.CONNECTION_ERROR_RETRY};
         }
         return userObject;
      }
   }
}
