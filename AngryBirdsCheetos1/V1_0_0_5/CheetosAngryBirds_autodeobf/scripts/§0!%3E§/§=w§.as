package §0!>§
{
   import §&N§.Base64;
   import §,!D§.§5E§;
   
   public class §=w§
   {
       
      
      public function §=w§()
      {
         super();
      }
      
      public static function §2!U§(param1:String) : String
      {
         var response:String = param1;
         var decoded:String = response;
         try
         {
            decoded = Base64.§4O§(decoded);
         }
         catch(b64Error:Error)
         {
         }
         return decoded;
      }
      
      public static function §`m§(param1:String) : Object
      {
         var userObject:Object = null;
         var response:String = param1;
         try
         {
            userObject = §5E§.§4O§(response);
         }
         catch(error:Error)
         {
            userObject = {"error":"Error"};
         }
         return userObject;
      }
   }
}
