package §!!r§
{
   import §!!s§.§;4§;
   import §&e§.§<x§;
   import §6!C§.Base64;
   
   public class §,!u§
   {
       
      
      public function §,!u§()
      {
         super();
      }
      
      public static function §!!v§(param1:String) : String
      {
         var response:String = param1;
         var decoded:String = response;
         try
         {
            decoded = Base64.§2!#§(decoded);
         }
         catch(b64Error:Error)
         {
         }
         return decoded;
      }
      
      public static function §4!E§(param1:String) : Object
      {
         var userObject:Object = null;
         var response:String = param1;
         try
         {
            userObject = §;4§.§2!#§(response);
         }
         catch(error:Error)
         {
            userObject = {"error":§<x§.CONNECTION_ERROR_RETRY};
         }
         return userObject;
      }
   }
}
