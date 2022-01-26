package §_-3-§
{
   public class §_-ki§
   {
      
      private static var §_-gG§:Object;
       
      
      public function §_-ki§()
      {
         super();
      }
      
      public static function §_-Z-§(param1:String, param2:Class) : void
      {
         param1 = param1.toUpperCase();
         if(§_-gG§ == null)
         {
            §_-gG§ = new Object();
         }
         if(!§_-GZ§(param1))
         {
            §_-gG§[param1] = new §_-WT§(param1,param2);
            return;
         }
         throw new Error("Trying to add a duplicate asset: " + param1);
      }
      
      public static function §_-GZ§(param1:String) : Boolean
      {
         param1 = param1.toUpperCase();
         if(§_-gG§[param1] != null)
         {
            return true;
         }
         return false;
      }
      
      public static function §_-pB§(param1:String, param2:Boolean = true) : Class
      {
         param1 = param1.toUpperCase();
         var _loc3_:§_-WT§ = §_-gG§[param1];
         if(_loc3_ == null)
         {
            if(param2)
            {
               throw new Error("Asset not in cache: " + param1);
            }
            return null;
         }
         return _loc3_.§_-LG§;
      }
   }
}
