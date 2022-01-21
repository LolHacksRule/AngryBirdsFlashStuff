package §7"§
{
   import §8r§.§8!c§;
   import §=<§.Base64;
   
   public class §[!K§
   {
       
      
      public function §[!K§()
      {
         super();
      }
      
      public static function §<!@§(param1:String) : String
      {
         var response:String = param1;
         var decoded:String = response;
         try
         {
            decoded = Base64.§`!S§(decoded);
         }
         catch(b64Error:Error)
         {
         }
         return decoded;
      }
      
      public static function §,!j§(param1:String) : Object
      {
         var userObject:Object = null;
         var response:String = param1;
         try
         {
            userObject = §8!c§.§`!S§(response);
         }
         catch(error:Error)
         {
            userObject = {"error":§8!#§.CONNECTION_ERROR_RETRY};
         }
         return userObject;
      }
   }
}
