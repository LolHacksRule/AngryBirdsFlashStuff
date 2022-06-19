package §_-Eq§
{
   public class §_-q§
   {
      
      private static var §_-IJ§:Object;
       
      
      public function §_-q§()
      {
         super();
      }
      
      public static function §_-CL§(param1:String, param2:Class) : void
      {
         param1 = param1.toUpperCase();
         if(§_-IJ§ == null)
         {
            §_-IJ§ = new Object();
         }
         if(!§_-qN§(param1))
         {
            §_-IJ§[param1] = new §_-9l§(param1,param2);
            return;
         }
         throw new Error("Trying to add a duplicate asset: " + param1);
      }
      
      public static function §_-qN§(param1:String) : Boolean
      {
         param1 = param1.toUpperCase();
         if(§_-IJ§[param1] != null)
         {
            return true;
         }
         return false;
      }
      
      public static function §_-Ti§(param1:String, param2:Boolean = true) : Class
      {
         param1 = param1.toUpperCase();
         var _loc3_:§_-9l§ = §_-IJ§[param1];
         if(_loc3_ == null)
         {
            if(param2)
            {
               throw new Error("Asset not in cache: " + param1);
            }
            return null;
         }
         return _loc3_.§_-yI§;
      }
   }
}
