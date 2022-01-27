package §4V§
{
   import §0i§.Base64;
   import §?j§.§4W§;
   
   public class §=!=§
   {
       
      
      public function §=!=§()
      {
         super();
      }
      
      public static function §5U§(param1:String) : String
      {
         var response:String = param1;
         var decoded:String = response;
         try
         {
            decoded = Base64.§`!+§(decoded);
         }
         catch(b64Error:Error)
         {
         }
         return decoded;
      }
      
      public static function §=!a§(param1:String) : Object
      {
         var userObject:Object = null;
         var response:String = param1;
         try
         {
            userObject = §4W§.§`!+§(response);
         }
         catch(error:Error)
         {
            userObject = {"error":§>u§.CONNECTION_ERROR_RETRY};
         }
         return userObject;
      }
   }
}
