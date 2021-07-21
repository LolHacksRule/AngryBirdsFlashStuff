package §[h§
{
   import §;!]§.§`!V§;
   import §>^§.Base64;
   
   public class §[!U§
   {
       
      
      public function §[!U§()
      {
         super();
      }
      
      public static function §+!C§(param1:String) : String
      {
         var response:String = param1;
         var decoded:String = response;
         try
         {
            decoded = Base64.§>X§(decoded);
         }
         catch(b64Error:Error)
         {
         }
         return decoded;
      }
      
      public static function § !=§(param1:String) : Object
      {
         var userObject:Object = null;
         var response:String = param1;
         try
         {
            userObject = §`!V§.§>X§(response);
         }
         catch(error:Error)
         {
            userObject = {"error":"Error"};
         }
         return userObject;
      }
   }
}
