package §+n§
{
   import §<!!§.Base64;
   import §[T§.§@!a§;
   
   public class §<`§
   {
       
      
      public function §<`§()
      {
         super();
      }
      
      public static function § j§(param1:String) : String
      {
         var response:String = param1;
         var decoded:String = response;
         try
         {
            decoded = Base64.§>!P§(decoded);
         }
         catch(b64Error:Error)
         {
         }
         return decoded;
      }
      
      public static function §48§(param1:String) : Object
      {
         var userObject:Object = null;
         var response:String = param1;
         try
         {
            userObject = §@!a§.§>!P§(response);
         }
         catch(error:Error)
         {
            userObject = {"error":§;!+§.CONNECTION_ERROR_RETRY};
         }
         return userObject;
      }
   }
}
