package §_-Y7§
{
   import §_-DH§.§_-KR§;
   import §_-r6§.Base64;
   
   public class §_-d8§
   {
       
      
      public function §_-d8§()
      {
         super();
      }
      
      public static function §_-Zw§(param1:String) : String
      {
         var response:String = param1;
         var decoded:String = response;
         try
         {
            decoded = Base64.§_-8B§(decoded);
         }
         catch(b64Error:Error)
         {
         }
         return decoded;
      }
      
      public static function §_-QX§(param1:String) : Object
      {
         var userObject:Object = null;
         var response:String = param1;
         try
         {
            userObject = §_-KR§.§_-8B§(response);
         }
         catch(error:Error)
         {
            userObject = {"error":"Error"};
         }
         return userObject;
      }
   }
}
