package §_-9C§
{
   import §_-2z§.§_-rz§;
   import §_-Eo§.Base64;
   
   public class §_-6O§
   {
       
      
      public function §_-6O§()
      {
         super();
      }
      
      public static function §_-HJ§(param1:String) : String
      {
         var response:String = param1;
         var decoded:String = response;
         try
         {
            decoded = Base64.§_-EM§(decoded);
         }
         catch(b64Error:Error)
         {
         }
         return decoded;
      }
      
      public static function §_-Mi§(param1:String) : Object
      {
         var userObject:Object = null;
         var response:String = param1;
         try
         {
            userObject = §_-rz§.§_-EM§(response);
         }
         catch(error:Error)
         {
            userObject = {"error":§_-6M§.§_-bX§.CONNECTION_ERROR_RETRY};
         }
         return userObject;
      }
   }
}
