package §^>§
{
   import §5!"§.§+!2§;
   import §6!Q§.Base64;
   
   public class §<t§
   {
       
      
      public function §<t§()
      {
         super();
      }
      
      public static function §`m§(param1:String) : String
      {
         var response:String = param1;
         var decoded:String = response;
         try
         {
            decoded = Base64.§<!,§(decoded);
         }
         catch(b64Error:Error)
         {
         }
         return decoded;
      }
      
      public static function §1&§(param1:String) : Object
      {
         var userObject:Object = null;
         var response:String = param1;
         try
         {
            userObject = §+!2§.§<!,§(response);
         }
         catch(error:Error)
         {
            userObject = {"error":§9i§.CONNECTION_ERROR_RETRY};
         }
         return userObject;
      }
   }
}
