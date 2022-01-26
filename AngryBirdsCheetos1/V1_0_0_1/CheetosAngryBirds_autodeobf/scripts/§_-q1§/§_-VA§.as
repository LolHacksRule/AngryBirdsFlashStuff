package §_-q1§
{
   import §_-U0§.Base64;
   import §_-zE§.§_-XJ§;
   
   public class §_-VA§
   {
       
      
      public function §_-VA§()
      {
         super();
      }
      
      public static function §_-nZ§(param1:String) : String
      {
         var response:String = param1;
         var decoded:String = response;
         try
         {
            decoded = Base64.§_-NV§(decoded);
         }
         catch(b64Error:Error)
         {
         }
         return decoded;
      }
      
      public static function §_-ji§(param1:String) : Object
      {
         var userObject:Object = null;
         var response:String = param1;
         try
         {
            userObject = §_-XJ§.§_-NV§(response);
         }
         catch(error:Error)
         {
            userObject = {"error":"Error"};
         }
         return userObject;
      }
   }
}
