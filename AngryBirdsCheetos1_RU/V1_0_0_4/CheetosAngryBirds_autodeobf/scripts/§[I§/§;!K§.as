package §[I§
{
   import § else§.§]!8§;
   import §^!&§.Base64;
   
   public class §;!K§
   {
       
      
      public function §;!K§()
      {
         super();
      }
      
      public static function §-!5§(param1:String) : String
      {
         var response:String = param1;
         var decoded:String = response;
         try
         {
            decoded = Base64.§?!A§(decoded);
         }
         catch(b64Error:Error)
         {
         }
         return decoded;
      }
      
      public static function §#[§(param1:String) : Object
      {
         var userObject:Object = null;
         var response:String = param1;
         try
         {
            userObject = §]!8§.§?!A§(response);
         }
         catch(error:Error)
         {
            userObject = {"error":"Error"};
         }
         return userObject;
      }
   }
}
