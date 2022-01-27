package §-A§
{
   import §!@§.§^!5§;
   import §3!O§.Base64;
   
   public class §+q§
   {
       
      
      public function §+q§()
      {
         super();
      }
      
      public static function §,!!§(param1:String) : String
      {
         var response:String = param1;
         var decoded:String = response;
         try
         {
            decoded = Base64.§^+§(decoded);
         }
         catch(b64Error:Error)
         {
         }
         return decoded;
      }
      
      public static function §4d§(param1:String) : Object
      {
         var userObject:Object = null;
         var response:String = param1;
         try
         {
            userObject = §^!5§.§^+§(response);
         }
         catch(error:Error)
         {
            userObject = {"error":§@I§.CONNECTION_ERROR_RETRY};
         }
         return userObject;
      }
   }
}
