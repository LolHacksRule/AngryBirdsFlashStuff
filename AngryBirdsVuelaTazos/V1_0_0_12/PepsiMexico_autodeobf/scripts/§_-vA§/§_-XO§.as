package §_-vA§
{
   public class §_-XO§
   {
      
      private static var §_-sc§:Object;
       
      
      public function §_-XO§()
      {
         super();
      }
      
      public static function §_-7x§(param1:String, param2:Class) : void
      {
         param1 = param1.toUpperCase();
         if(§_-sc§ == null)
         {
            §_-sc§ = new Object();
         }
         if(!§_-C3§(param1))
         {
            §_-sc§[param1] = new §_-LX§(param1,param2);
            return;
         }
         throw new Error("Trying to add a duplicate asset: " + param1);
      }
      
      public static function §_-C3§(param1:String) : Boolean
      {
         param1 = param1.toUpperCase();
         if(§_-sc§[param1] != null)
         {
            return true;
         }
         return false;
      }
      
      public static function §_-O3§(param1:String, param2:Boolean = true) : Class
      {
         param1 = param1.toUpperCase();
         var _loc3_:§_-LX§ = §_-sc§[param1];
         if(_loc3_ == null)
         {
            if(param2)
            {
               throw new Error("Asset not in cache: " + param1);
            }
            return null;
         }
         return _loc3_.§_-wA§;
      }
   }
}
