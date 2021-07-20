package §_-0S§
{
   public class §_-z1§
   {
      
      private static var §_-z6§:Object;
       
      
      public function §_-z1§()
      {
         super();
      }
      
      public static function §_-SK§(param1:String, param2:Class) : void
      {
         param1 = param1.toUpperCase();
         if(§_-z6§ == null)
         {
            §_-z6§ = new Object();
         }
         if(!§_-3p§(param1))
         {
            §_-z6§[param1] = new §_-hK§(param1,param2);
            return;
         }
         throw new Error("Trying to add a duplicate asset: " + param1);
      }
      
      public static function §_-3p§(param1:String) : Boolean
      {
         param1 = param1.toUpperCase();
         if(§_-z6§[param1] != null)
         {
            return true;
         }
         return false;
      }
      
      public static function §_-tn§(param1:String, param2:Boolean = true) : Class
      {
         param1 = param1.toUpperCase();
         var _loc3_:§_-hK§ = §_-z6§[param1];
         if(_loc3_ == null)
         {
            if(param2)
            {
               throw new Error("Asset not in cache: " + param1);
            }
            return null;
         }
         return _loc3_.§_-Sk§;
      }
   }
}
