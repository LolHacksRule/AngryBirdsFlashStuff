package §7S§
{
   public class §3t§
   {
      
      private static var §[!Z§:Object;
       
      
      public function §3t§()
      {
         super();
      }
      
      public static function §4!=§(param1:String, param2:Class) : void
      {
         param1 = param1.toUpperCase();
         if(§[!Z§ == null)
         {
            §[!Z§ = new Object();
         }
         if(!§,!K§(param1))
         {
            §[!Z§[param1] = new §!!B§(param1,param2);
            return;
         }
         throw new Error("Trying to add a duplicate asset: " + param1);
      }
      
      public static function §,!K§(param1:String) : Boolean
      {
         param1 = param1.toUpperCase();
         if(§[!Z§[param1] != null)
         {
            return true;
         }
         return false;
      }
      
      public static function §#v§(param1:String, param2:Boolean = true) : Class
      {
         param1 = param1.toUpperCase();
         var _loc3_:§!!B§ = §[!Z§[param1];
         if(_loc3_ == null)
         {
            if(param2)
            {
               throw new Error("Asset not in cache: " + param1);
            }
            return null;
         }
         return _loc3_.§5Y§;
      }
   }
}
