package §]0§
{
   import §%_§.§"!!§;
   import §;K§.§&s§;
   import each.Base64;
   
   public class §5!p§
   {
       
      
      public function §5!p§()
      {
         super();
      }
      
      public static function §49§(param1:String) : String
      {
         var response:String = param1;
         var decoded:String = response;
         try
         {
            decoded = Base64.§>7§(decoded);
         }
         catch(b64Error:Error)
         {
         }
         return decoded;
      }
      
      public static function §0>§(param1:String) : Object
      {
         var userObject:Object = null;
         var response:String = param1;
         try
         {
            userObject = §&s§.§>7§(response);
         }
         catch(error:Error)
         {
            userObject = {"error":§"!!§.CONNECTION_ERROR_RETRY};
         }
         return userObject;
      }
   }
}
