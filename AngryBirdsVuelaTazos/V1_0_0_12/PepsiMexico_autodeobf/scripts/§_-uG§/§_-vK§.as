package §_-uG§
{
   import §_-RG§.Base64;
   
   public class §_-vK§
   {
       
      
      public function §_-vK§()
      {
         super();
      }
      
      public static function §_-f§(param1:String) : String
      {
         var response:String = param1;
         var decoded:String = response;
         try
         {
            decoded = Base64.§_-RN§(decoded);
         }
         catch(b64Error:Error)
         {
         }
         return decoded;
      }
      
      public static function §_-Jv§(param1:String) : Object
      {
         var userObject:Object = null;
         var response:String = param1;
         try
         {
            userObject = JSON.parse(response);
         }
         catch(error:Error)
         {
            userObject = {"error":§_-JZ§.§_-vE§.CONNECTION_ERROR_RETRY};
         }
         return userObject;
      }
   }
}
