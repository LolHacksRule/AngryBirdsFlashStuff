package §_-W7§
{
   public class §_-jT§
   {
      
      private static var §_-61§:Object;
       
      
      public function §_-jT§()
      {
         super();
      }
      
      public static function §_-wU§(param1:String, param2:Class) : void
      {
         param1 = param1.toUpperCase();
         if(§_-61§ == null)
         {
            §_-61§ = new Object();
         }
         if(!§_-Gx§(param1))
         {
            §_-61§[param1] = new §_-JR§(param1,param2);
            return;
         }
         throw new Error("Trying to add a duplicate asset: " + param1);
      }
      
      public static function §_-Gx§(param1:String) : Boolean
      {
         param1 = param1.toUpperCase();
         if(§_-61§[param1] != null)
         {
            return true;
         }
         return false;
      }
      
      public static function §_-kv§(param1:String, param2:Boolean = true) : Class
      {
         param1 = param1.toUpperCase();
         var _loc3_:§_-JR§ = §_-61§[param1];
         if(_loc3_ == null)
         {
            if(param2)
            {
               throw new Error("Asset not in cache: " + param1);
            }
            return null;
         }
         return _loc3_.§_-pW§;
      }
   }
}
