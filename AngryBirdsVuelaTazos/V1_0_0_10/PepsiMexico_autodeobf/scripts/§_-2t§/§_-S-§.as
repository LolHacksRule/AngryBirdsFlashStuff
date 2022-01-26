package §_-2t§
{
   import §_-ot§.Base64;
   
   public class §_-S-§
   {
       
      
      public function §_-S-§()
      {
         super();
      }
      
      public static function §_-qq§(param1:String) : String
      {
         var response:String = param1;
         var decoded:String = response;
         try
         {
            decoded = Base64.§_-YM§(decoded);
         }
         catch(b64Error:Error)
         {
         }
         return decoded;
      }
      
      public static function §_-d1§(param1:String) : Object
      {
         var userObject:Object = null;
         var response:String = param1;
         try
         {
            userObject = JSON.parse(response);
         }
         catch(error:Error)
         {
            userObject = {"error":§implements§.§_-r7§.CONNECTION_ERROR_RETRY};
         }
         return userObject;
      }
   }
}
