package §[-§
{
   public class §#!,§
   {
      
      private static var §3?§:Object;
       
      
      public function §#!,§()
      {
         super();
      }
      
      public static function §2!=§(param1:String, param2:Class) : void
      {
         param1 = param1.toUpperCase();
         if(§3?§ == null)
         {
            §3?§ = new Object();
         }
         if(!§,!§(param1))
         {
            §3?§[param1] = new §=u§(param1,param2);
            return;
         }
         throw new Error("Trying to add a duplicate asset: " + param1);
      }
      
      public static function §,!§(param1:String) : Boolean
      {
         param1 = param1.toUpperCase();
         if(§3?§[param1] != null)
         {
            return true;
         }
         return false;
      }
      
      public static function §-<§(param1:String, param2:Boolean = true) : Class
      {
         param1 = param1.toUpperCase();
         var _loc3_:§=u§ = §3?§[param1];
         if(_loc3_ == null)
         {
            if(param2)
            {
               throw new Error("Asset not in cache: " + param1);
            }
            return null;
         }
         return _loc3_.§52§;
      }
   }
}
