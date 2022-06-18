package §#J§
{
   import §,J§.§'!C§;
   import §=g§.Base64;
   
   public class §,x§
   {
       
      
      public function §,x§()
      {
         super();
      }
      
      public static function §-c§(param1:String) : String
      {
         var response:String = param1;
         var decoded:String = response;
         try
         {
            decoded = Base64.§ f§(decoded);
         }
         catch(b64Error:Error)
         {
         }
         return decoded;
      }
      
      public static function §%x§(param1:String) : Object
      {
         var userObject:Object = null;
         var response:String = param1;
         try
         {
            userObject = §'!C§.§ f§(response);
         }
         catch(error:Error)
         {
            userObject = {"error":"Error"};
         }
         return userObject;
      }
   }
}
