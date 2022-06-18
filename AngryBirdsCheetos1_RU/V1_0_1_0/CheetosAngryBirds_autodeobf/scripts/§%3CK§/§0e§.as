package §<K§
{
   public class §0e§
   {
      
      private static var §1e§:Object;
       
      
      public function §0e§()
      {
         super();
      }
      
      public static function §[7§(param1:String, param2:Class) : void
      {
         param1 = param1.toUpperCase();
         if(§1e§ == null)
         {
            §1e§ = new Object();
         }
         if(!§1!M§(param1))
         {
            §1e§[param1] = new §>z§(param1,param2);
            return;
         }
         throw new Error("Trying to add a duplicate asset: " + param1);
      }
      
      public static function §1!M§(param1:String) : Boolean
      {
         param1 = param1.toUpperCase();
         if(§1e§[param1] != null)
         {
            return true;
         }
         return false;
      }
      
      public static function §#!!§(param1:String, param2:Boolean = true) : Class
      {
         param1 = param1.toUpperCase();
         var _loc3_:§>z§ = §1e§[param1];
         if(_loc3_ == null)
         {
            if(param2)
            {
               throw new Error("Asset not in cache: " + param1);
            }
            return null;
         }
         return _loc3_.§>s§;
      }
   }
}
