package §_-2B§
{
   public class §_-wA§
   {
      
      private static var §_-vQ§:Object;
       
      
      public function §_-wA§()
      {
         super();
      }
      
      public static function §_-N3§(param1:String, param2:Class) : void
      {
         param1 = param1.toUpperCase();
         if(§_-vQ§ == null)
         {
            §_-vQ§ = new Object();
         }
         if(!§_-71§(param1))
         {
            §_-vQ§[param1] = new §_-RL§(param1,param2);
            return;
         }
         throw new Error("Trying to add a duplicate asset: " + param1);
      }
      
      public static function §_-71§(param1:String) : Boolean
      {
         param1 = param1.toUpperCase();
         if(§_-vQ§[param1] != null)
         {
            return true;
         }
         return false;
      }
      
      public static function §_-Mh§(param1:String, param2:Boolean = true) : Class
      {
         param1 = param1.toUpperCase();
         var _loc3_:§_-RL§ = §_-vQ§[param1];
         if(_loc3_ == null)
         {
            if(param2)
            {
               throw new Error("Asset not in cache: " + param1);
            }
            return null;
         }
         return _loc3_.§_-um§;
      }
   }
}
