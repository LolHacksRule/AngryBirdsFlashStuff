package §"!+§
{
   import §,!D§.§5E§;
   import §@,§.Base64;
   
   public class §2!U§
   {
       
      
      public function §2!U§()
      {
         super();
      }
      
      public static function §`m§(param1:String) : String
      {
         var response:String = param1;
         var decoded:String = response;
         try
         {
            decoded = Base64.§,§(decoded);
         }
         catch(b64Error:Error)
         {
         }
         return decoded;
      }
      
      public static function §1!#§(param1:String) : Object
      {
         var userObject:Object = null;
         var response:String = param1;
         try
         {
            userObject = §5E§.§,§(response);
         }
         catch(error:Error)
         {
            userObject = {"error":"Error"};
         }
         return userObject;
      }
   }
}
