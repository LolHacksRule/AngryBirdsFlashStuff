package §_-ec§
{
   public class §_-GK§
   {
      
      private static var §_-2x§:Object;
       
      
      public function §_-GK§()
      {
         super();
      }
      
      public static function §_-Rf§(param1:String, param2:Class) : void
      {
         param1 = param1.toUpperCase();
         if(§_-2x§ == null)
         {
            §_-2x§ = new Object();
         }
         if(!§_-S3§(param1))
         {
            §_-2x§[param1] = new §_-UH§(param1,param2);
            return;
         }
         throw new Error("Trying to add a duplicate asset: " + param1);
      }
      
      public static function §_-S3§(param1:String) : Boolean
      {
         param1 = param1.toUpperCase();
         if(§_-2x§[param1] != null)
         {
            return true;
         }
         return false;
      }
      
      public static function §_-dR§(param1:String, param2:Boolean = true) : Class
      {
         param1 = param1.toUpperCase();
         var _loc3_:§_-UH§ = §_-2x§[param1];
         if(_loc3_ == null)
         {
            if(param2)
            {
               throw new Error("Asset not in cache: " + param1);
            }
            return null;
         }
         return _loc3_.§_-eI§;
      }
   }
}
