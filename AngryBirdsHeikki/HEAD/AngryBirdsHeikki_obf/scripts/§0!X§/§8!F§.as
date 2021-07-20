package §0!X§
{
   import §&!b§.Base64;
   import §]!N§.§20§;
   
   public class §8!F§
   {
       
      
      public function §8!F§()
      {
         super();
      }
      
      public static function §`S§(param1:String) : String
      {
         var response:String = param1;
         var decoded:String = response;
         try
         {
            decoded = Base64.§4!@§(decoded);
         }
         catch(b64Error:Error)
         {
         }
         return decoded;
      }
      
      public static function §[<§(param1:String) : Object
      {
         var userObject:Object = null;
         var response:String = param1;
         try
         {
            userObject = §20§.§4!@§(response);
         }
         catch(error:Error)
         {
            userObject = {"error":§&!4§.CONNECTION_ERROR_RETRY};
         }
         return userObject;
      }
   }
}
