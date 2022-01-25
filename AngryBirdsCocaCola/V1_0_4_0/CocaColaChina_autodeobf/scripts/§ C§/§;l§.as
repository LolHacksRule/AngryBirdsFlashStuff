package § C§
{
   import §#-§.§4!K§;
   import §'!G§.Base64;
   
   public class §;l§
   {
       
      
      public function §;l§()
      {
         super();
      }
      
      public static function §>7§(param1:String) : String
      {
         var response:String = param1;
         var decoded:String = response;
         try
         {
            decoded = Base64.§ !R§(decoded);
         }
         catch(b64Error:Error)
         {
         }
         return decoded;
      }
      
      public static function §]g§(param1:String) : Object
      {
         var userObject:Object = null;
         var response:String = param1;
         try
         {
            userObject = §4!K§.§ !R§(response);
         }
         catch(error:Error)
         {
            userObject = {"error":§ !X§.CONNECTION_ERROR_RETRY};
         }
         return userObject;
      }
   }
}
