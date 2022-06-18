package §>!1§
{
   import §-!6§.Base64;
   import §5l§.§@!+§;
   
   public class §!!Q§
   {
       
      
      public function §!!Q§()
      {
         super();
      }
      
      public static function §!!-§(param1:String) : String
      {
         var response:String = param1;
         var decoded:String = response;
         try
         {
            decoded = Base64.§'E§(decoded);
         }
         catch(b64Error:Error)
         {
         }
         return decoded;
      }
      
      public static function §+!!§(param1:String) : Object
      {
         var userObject:Object = null;
         var response:String = param1;
         try
         {
            userObject = §@!+§.§'E§(response);
         }
         catch(error:Error)
         {
            userObject = {"error":"Error"};
         }
         return userObject;
      }
   }
}
