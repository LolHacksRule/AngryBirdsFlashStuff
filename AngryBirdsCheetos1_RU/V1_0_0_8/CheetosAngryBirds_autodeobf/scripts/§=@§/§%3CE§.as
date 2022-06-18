package §=@§
{
   import §'D§.Base64;
   import §@F§.§9!U§;
   
   public class §<E§
   {
       
      
      public function §<E§()
      {
         super();
      }
      
      public static function §'!6§(param1:String) : String
      {
         var response:String = param1;
         var decoded:String = response;
         try
         {
            decoded = Base64.§[M§(decoded);
         }
         catch(b64Error:Error)
         {
         }
         return decoded;
      }
      
      public static function §!C§(param1:String) : Object
      {
         var userObject:Object = null;
         var response:String = param1;
         try
         {
            userObject = §9!U§.§[M§(response);
         }
         catch(error:Error)
         {
            userObject = {"error":"Error"};
         }
         return userObject;
      }
   }
}
