package §_-zL§
{
   import §_-e3§.Base64;
   import §_-hq§.§_-AD§;
   
   public class §_-Rv§
   {
       
      
      public function §_-Rv§()
      {
         super();
      }
      
      public static function §_-SN§(param1:String) : String
      {
         var response:String = param1;
         var decoded:String = response;
         try
         {
            decoded = Base64.§_-Ae§(decoded);
         }
         catch(b64Error:Error)
         {
         }
         return decoded;
      }
      
      public static function §_-3a§(param1:String) : Object
      {
         var userObject:Object = null;
         var response:String = param1;
         try
         {
            userObject = §_-AD§.§_-Ae§(response);
         }
         catch(error:Error)
         {
            userObject = {"error":§_-5B§.§_-X8§.CONNECTION_ERROR_RETRY};
         }
         return userObject;
      }
   }
}
