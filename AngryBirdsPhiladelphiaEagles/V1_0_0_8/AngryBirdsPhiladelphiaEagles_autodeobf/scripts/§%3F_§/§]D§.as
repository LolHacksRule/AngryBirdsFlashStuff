package §?_§
{
   import §"1§.Base64;
   
   public class §]D§
   {
       
      
      public function §]D§()
      {
         super();
      }
      
      public static function §8L§(param1:String) : String
      {
         var response:String = param1;
         var decoded:String = response;
         try
         {
            decoded = Base64.§7w§(decoded);
         }
         catch(b64Error:Error)
         {
         }
         return decoded;
      }
      
      public static function §?!2§(param1:String) : Object
      {
         var userObject:Object = null;
         var response:String = param1;
         try
         {
            userObject = §-K§.§7w§(response);
         }
         catch(error:Error)
         {
            userObject = {"error":§[r§.CONNECTION_ERROR_RETRY};
         }
         return userObject;
      }
   }
}
