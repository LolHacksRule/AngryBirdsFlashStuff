package §1!a§
{
   import §1!K§.Base64;
   import §6Q§.§'!M§;
   
   public class §3U§
   {
       
      
      public function §3U§()
      {
         super();
      }
      
      public static function §[m§(param1:String) : String
      {
         var response:String = param1;
         var decoded:String = response;
         try
         {
            decoded = Base64.§+f§(decoded);
         }
         catch(b64Error:Error)
         {
         }
         return decoded;
      }
      
      public static function §'o§(param1:String) : Object
      {
         var userObject:Object = null;
         var response:String = param1;
         try
         {
            userObject = §'!M§.§+f§(response);
         }
         catch(error:Error)
         {
            userObject = {"error":§`r§.CONNECTION_ERROR_RETRY};
         }
         return userObject;
      }
   }
}
