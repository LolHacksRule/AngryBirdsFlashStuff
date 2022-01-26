package §_-Ul§
{
   import §_-aA§.Base64;
   import §_-rt§.§_-nm§;
   
   public class §_-M5§
   {
       
      
      public function §_-M5§()
      {
         super();
      }
      
      public static function §_-fO§(param1:String) : String
      {
         var response:String = param1;
         var decoded:String = response;
         try
         {
            decoded = Base64.§_-UM§(decoded);
         }
         catch(b64Error:Error)
         {
         }
         return decoded;
      }
      
      public static function §_-uI§(param1:String) : Object
      {
         var userObject:Object = null;
         var response:String = param1;
         try
         {
            userObject = §_-nm§.§_-UM§(response);
         }
         catch(error:Error)
         {
            userObject = {"error":"Error"};
         }
         return userObject;
      }
   }
}
