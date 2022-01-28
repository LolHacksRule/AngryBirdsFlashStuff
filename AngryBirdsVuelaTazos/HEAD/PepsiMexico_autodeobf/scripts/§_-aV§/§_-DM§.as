package §_-aV§
{
   import §_-gM§.Base64;
   import §_-s-§.§_-hQ§;
   
   public class §_-DM§
   {
       
      
      public function §_-DM§()
      {
         super();
      }
      
      public static function §_-zN§(param1:String) : String
      {
         var response:String = param1;
         var decoded:String = response;
         try
         {
            decoded = Base64.§_-sx§(decoded);
         }
         catch(b64Error:Error)
         {
         }
         return decoded;
      }
      
      public static function §_-KR§(param1:String) : Object
      {
         var userObject:Object = null;
         var response:String = param1;
         try
         {
            userObject = §_-hQ§.§_-sx§(response);
         }
         catch(error:Error)
         {
            userObject = {"error":§_-mI§.§_-ai§.CONNECTION_ERROR_RETRY};
         }
         return userObject;
      }
   }
}
