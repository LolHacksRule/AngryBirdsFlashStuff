package §`!@§
{
   import §8<§.Base64;
   import §<!b§.§2!c§;
   
   public class §!!Y§
   {
       
      
      public function §!!Y§()
      {
         super();
      }
      
      public static function §?!n§(param1:String) : String
      {
         var response:String = param1;
         var decoded:String = response;
         try
         {
            decoded = Base64.§!"§(decoded);
         }
         catch(b64Error:Error)
         {
         }
         return decoded;
      }
      
      public static function §@M§(param1:String) : Object
      {
         var userObject:Object = null;
         var response:String = param1;
         try
         {
            userObject = §2!c§.§!"§(response);
         }
         catch(error:Error)
         {
            userObject = {"error":§#e§.CONNECTION_ERROR_RETRY};
         }
         return userObject;
      }
   }
}
