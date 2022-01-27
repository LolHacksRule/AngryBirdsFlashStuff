package §1!J§
{
   import § !3§.Base64;
   import §+E§.§ 0§;
   
   public class §6Y§
   {
       
      
      public function §6Y§()
      {
         super();
      }
      
      public static function §?!T§(param1:String) : String
      {
         var response:String = param1;
         var decoded:String = response;
         try
         {
            decoded = Base64.§?!D§(decoded);
         }
         catch(b64Error:Error)
         {
         }
         return decoded;
      }
      
      public static function static(param1:String) : Object
      {
         var userObject:Object = null;
         var response:String = param1;
         try
         {
            userObject = § 0§.§?!D§(response);
         }
         catch(error:Error)
         {
            userObject = {"error":§>!U§.CONNECTION_ERROR_RETRY};
         }
         return userObject;
      }
   }
}
