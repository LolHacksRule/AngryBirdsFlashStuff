package §case§
{
   import §%^§.§-r§;
   import §-!5§.Base64;
   
   public class §4W§
   {
       
      
      public function §4W§()
      {
         super();
      }
      
      public static function §"!-§(param1:String) : String
      {
         var response:String = param1;
         var decoded:String = response;
         try
         {
            decoded = Base64.§]<§(decoded);
         }
         catch(b64Error:Error)
         {
         }
         return decoded;
      }
      
      public static function §6!P§(param1:String) : Object
      {
         var userObject:Object = null;
         var response:String = param1;
         try
         {
            userObject = §-r§.§]<§(response);
         }
         catch(error:Error)
         {
            userObject = {"error":§'u§.CONNECTION_ERROR_RETRY};
         }
         return userObject;
      }
   }
}
