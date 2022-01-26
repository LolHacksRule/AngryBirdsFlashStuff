package §_-bA§
{
   import §_-ZG§.Base64;
   
   public class §_-U7§
   {
       
      
      public function §_-U7§()
      {
         super();
      }
      
      public static function §_-1K§(param1:String) : String
      {
         var response:String = param1;
         var decoded:String = response;
         try
         {
            decoded = Base64.§_-bW§(decoded);
         }
         catch(b64Error:Error)
         {
         }
         return decoded;
      }
      
      public static function §_-qY§(param1:String) : Object
      {
         var userObject:Object = null;
         var response:String = param1;
         try
         {
            userObject = JSON.parse(response);
         }
         catch(error:Error)
         {
            userObject = {"error":§_-Xe§.§_-d0§.CONNECTION_ERROR_RETRY};
         }
         return userObject;
      }
   }
}
