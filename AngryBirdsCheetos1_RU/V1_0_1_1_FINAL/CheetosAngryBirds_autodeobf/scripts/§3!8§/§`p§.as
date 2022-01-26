package §3!8§
{
   import § N§.Base64;
   import §5#§.§!j§;
   
   public class §`p§
   {
       
      
      public function §`p§()
      {
         super();
      }
      
      public static function §[!F§(param1:String) : String
      {
         var response:String = param1;
         var decoded:String = response;
         try
         {
            decoded = Base64.§2Q§(decoded);
         }
         catch(b64Error:Error)
         {
         }
         return decoded;
      }
      
      public static function §=p§(param1:String) : Object
      {
         var userObject:Object = null;
         var response:String = param1;
         try
         {
            userObject = §!j§.§2Q§(response);
         }
         catch(error:Error)
         {
            userObject = {"error":"Error"};
         }
         return userObject;
      }
   }
}
