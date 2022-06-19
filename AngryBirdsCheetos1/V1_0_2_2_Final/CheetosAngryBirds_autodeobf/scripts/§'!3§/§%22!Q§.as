package §'!3§
{
   import § !G§.Base64;
   import §=A§.§5r§;
   
   public class §"!Q§
   {
       
      
      public function §"!Q§()
      {
         super();
      }
      
      public static function §5!2§(param1:String) : String
      {
         var response:String = param1;
         var decoded:String = response;
         try
         {
            decoded = Base64.§6! §(decoded);
         }
         catch(b64Error:Error)
         {
         }
         return decoded;
      }
      
      public static function §!i§(param1:String) : Object
      {
         var userObject:Object = null;
         var response:String = param1;
         try
         {
            userObject = §5r§.§6! §(response);
         }
         catch(error:Error)
         {
            userObject = {"error":"Error"};
         }
         return userObject;
      }
   }
}
