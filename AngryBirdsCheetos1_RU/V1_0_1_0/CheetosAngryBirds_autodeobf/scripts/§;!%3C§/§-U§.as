package §;!<§
{
   import §%t§.Base64;
   import §&d§.§!!O§;
   
   public class §-U§
   {
       
      
      public function §-U§()
      {
         super();
      }
      
      public static function §1c§(param1:String) : String
      {
         var response:String = param1;
         var decoded:String = response;
         try
         {
            decoded = Base64.§3Q§(decoded);
         }
         catch(b64Error:Error)
         {
         }
         return decoded;
      }
      
      public static function §[f§(param1:String) : Object
      {
         var userObject:Object = null;
         var response:String = param1;
         try
         {
            userObject = §!!O§.§3Q§(response);
         }
         catch(error:Error)
         {
            userObject = {"error":"Error"};
         }
         return userObject;
      }
   }
}
