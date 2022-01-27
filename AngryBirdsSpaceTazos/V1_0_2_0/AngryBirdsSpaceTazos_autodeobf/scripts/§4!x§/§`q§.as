package §4!x§
{
   import §""<§.Base64;
   import §5s§.§ !_§;
   import §6!J§.§ try§;
   
   public class §`q§
   {
       
      
      public function §`q§()
      {
         super();
      }
      
      public static function §@"#§(param1:String) : String
      {
         var response:String = param1;
         var decoded:String = response;
         try
         {
            decoded = Base64.§^!K§(decoded);
         }
         catch(b64Error:Error)
         {
         }
         return decoded;
      }
      
      public static function §<f§(param1:String) : Object
      {
         var userObject:Object = null;
         var response:String = param1;
         try
         {
            userObject = § try§.§^!K§(response);
         }
         catch(error:Error)
         {
            userObject = {"error":§ !_§.CONNECTION_ERROR_RETRY};
         }
         return userObject;
      }
   }
}
