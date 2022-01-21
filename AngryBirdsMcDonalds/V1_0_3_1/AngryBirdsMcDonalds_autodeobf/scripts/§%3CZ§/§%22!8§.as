package §<Z§
{
   import §+P§.§;!%§;
   import §5K§.Base64;
   
   public class §"!8§
   {
       
      
      public function §"!8§()
      {
         super();
      }
      
      public static function §?!>§(param1:String) : String
      {
         var response:String = param1;
         var decoded:String = response;
         try
         {
            decoded = Base64.§8[§(decoded);
         }
         catch(b64Error:Error)
         {
         }
         return decoded;
      }
      
      public static function §&!p§(param1:String) : Object
      {
         var userObject:Object = null;
         var response:String = param1;
         try
         {
            userObject = §;!%§.§8[§(response);
         }
         catch(error:Error)
         {
            userObject = {"error":§1!X§.CONNECTION_ERROR_RETRY};
         }
         return userObject;
      }
   }
}
