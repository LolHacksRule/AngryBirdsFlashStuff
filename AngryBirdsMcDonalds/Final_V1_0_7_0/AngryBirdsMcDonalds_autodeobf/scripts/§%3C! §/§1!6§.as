package §<! §
{
   import §#!8§.§]K§;
   import §0i§.Base64;
   
   public class §1!6§
   {
       
      
      public function §1!6§()
      {
         super();
      }
      
      public static function §0!#§(param1:String) : String
      {
         var response:String = param1;
         var decoded:String = response;
         try
         {
            decoded = Base64.§3!c§(decoded);
         }
         catch(b64Error:Error)
         {
         }
         return decoded;
      }
      
      public static function §>o§(param1:String) : Object
      {
         var userObject:Object = null;
         var response:String = param1;
         try
         {
            userObject = §]K§.§3!c§(response);
         }
         catch(error:Error)
         {
            userObject = {"error":§#!b§.CONNECTION_ERROR_RETRY};
         }
         return userObject;
      }
   }
}
