package §6g§
{
   import §;!2§.§,>§;
   import §`K§.Base64;
   
   public class §[!@§
   {
       
      
      public function §[!@§()
      {
         super();
      }
      
      public static function §%?§(param1:String) : String
      {
         var response:String = param1;
         var decoded:String = response;
         try
         {
            decoded = Base64.§]t§(decoded);
         }
         catch(b64Error:Error)
         {
         }
         return decoded;
      }
      
      public static function §'!N§(param1:String) : Object
      {
         var userObject:Object = null;
         var response:String = param1;
         try
         {
            userObject = §,>§.§]t§(response);
         }
         catch(error:Error)
         {
            userObject = {"error":§3-§.CONNECTION_ERROR_RETRY};
         }
         return userObject;
      }
   }
}
