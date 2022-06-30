package §9I§
{
   import §!!7§.§"c§;
   import §@R§.Base64;
   
   public class §+J§
   {
       
      
      public function §+J§()
      {
         super();
      }
      
      public static function §,!?§(param1:String) : String
      {
         var response:String = param1;
         var decoded:String = response;
         try
         {
            decoded = Base64.§%!K§(decoded);
         }
         catch(b64Error:Error)
         {
         }
         return decoded;
      }
      
      public static function §;!+§(param1:String) : Object
      {
         var userObject:Object = null;
         var response:String = param1;
         try
         {
            userObject = §"c§.§%!K§(response);
         }
         catch(error:Error)
         {
            userObject = {"error":§1F§.CONNECTION_ERROR_RETRY};
         }
         return userObject;
      }
   }
}
