package §_-S9§
{
   import §_-ex§.Base64;
   
   public class §_-o2§
   {
       
      
      public function §_-o2§()
      {
         super();
      }
      
      public static function native(param1:String) : String
      {
         var response:String = param1;
         var decoded:String = response;
         try
         {
            decoded = Base64.§_-SR§(decoded);
         }
         catch(b64Error:Error)
         {
         }
         return decoded;
      }
      
      public static function §_-Yz§(param1:String) : Object
      {
         var userObject:Object = null;
         var response:String = param1;
         try
         {
            userObject = JSON.parse(response);
         }
         catch(error:Error)
         {
            userObject = {"error":§_-3W§.§_-f7§.CONNECTION_ERROR_RETRY};
         }
         return userObject;
      }
   }
}
