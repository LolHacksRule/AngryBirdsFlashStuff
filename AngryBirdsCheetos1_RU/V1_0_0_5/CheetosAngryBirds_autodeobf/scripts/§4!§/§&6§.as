package §4!§
{
   import §!4§.Base64;
   import §^!5§.§8!_§;
   
   public class §&6§
   {
       
      
      public function §&6§()
      {
         super();
      }
      
      public static function §#^§(param1:String) : String
      {
         var response:String = param1;
         var decoded:String = response;
         try
         {
            decoded = Base64.§`>§(decoded);
         }
         catch(b64Error:Error)
         {
         }
         return decoded;
      }
      
      public static function §1!2§(param1:String) : Object
      {
         var userObject:Object = null;
         var response:String = param1;
         try
         {
            userObject = §8!_§.§`>§(response);
         }
         catch(error:Error)
         {
            userObject = {"error":"Error"};
         }
         return userObject;
      }
   }
}
