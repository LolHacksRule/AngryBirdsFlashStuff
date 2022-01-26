package §_-Ay§
{
   public class §_-nw§
   {
      
      private static var §_-aS§:Object;
       
      
      public function §_-nw§()
      {
         super();
      }
      
      public static function §_-vj§(param1:String, param2:Class) : void
      {
         param1 = param1.toUpperCase();
         if(§_-aS§ == null)
         {
            §_-aS§ = new Object();
         }
         if(!§_-gX§(param1))
         {
            §_-aS§[param1] = new §_-pq§(param1,param2);
            return;
         }
         throw new Error("Trying to add a duplicate asset: " + param1);
      }
      
      public static function §_-gX§(param1:String) : Boolean
      {
         param1 = param1.toUpperCase();
         if(§_-aS§[param1] != null)
         {
            return true;
         }
         return false;
      }
      
      public static function §_-Xm§(param1:String, param2:Boolean = true) : Class
      {
         param1 = param1.toUpperCase();
         var _loc3_:§_-pq§ = §_-aS§[param1];
         if(_loc3_ == null)
         {
            if(param2)
            {
               throw new Error("Asset not in cache: " + param1);
            }
            return null;
         }
         return _loc3_.§_-yq§;
      }
   }
}
