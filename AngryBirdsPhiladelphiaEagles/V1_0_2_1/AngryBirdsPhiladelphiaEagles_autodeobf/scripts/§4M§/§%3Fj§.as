package §4M§
{
   import §,!K§.§>!1§;
   import §@V§.Base64;
   
   public class §?j§
   {
       
      
      public function §?j§()
      {
         super();
      }
      
      public static function §64§(param1:String) : String
      {
         var response:String = param1;
         var decoded:String = response;
         try
         {
            decoded = Base64.§4!&§(decoded);
         }
         catch(b64Error:Error)
         {
         }
         return decoded;
      }
      
      public static function §%!%§(param1:String) : Object
      {
         var userObject:Object = null;
         var response:String = param1;
         try
         {
            userObject = §>!1§.§4!&§(response);
         }
         catch(error:Error)
         {
            userObject = {"error":§]!2§.CONNECTION_ERROR_RETRY};
         }
         return userObject;
      }
   }
}
