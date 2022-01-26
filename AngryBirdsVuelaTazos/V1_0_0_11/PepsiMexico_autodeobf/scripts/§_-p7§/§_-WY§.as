package §_-p7§
{
   public class §_-WY§
   {
      
      private static var §_-eH§:Object;
       
      
      public function §_-WY§()
      {
         super();
      }
      
      public static function §_-fv§(param1:String, param2:Class) : void
      {
         param1 = param1.toUpperCase();
         if(§_-eH§ == null)
         {
            §_-eH§ = new Object();
         }
         if(!§_-uG§(param1))
         {
            §_-eH§[param1] = new §_-0A§(param1,param2);
            return;
         }
         throw new Error("Trying to add a duplicate asset: " + param1);
      }
      
      public static function §_-uG§(param1:String) : Boolean
      {
         param1 = param1.toUpperCase();
         if(§_-eH§[param1] != null)
         {
            return true;
         }
         return false;
      }
      
      public static function §_-fs§(param1:String, param2:Boolean = true) : Class
      {
         param1 = param1.toUpperCase();
         var _loc3_:§_-0A§ = §_-eH§[param1];
         if(_loc3_ == null)
         {
            if(param2)
            {
               throw new Error("Asset not in cache: " + param1);
            }
            return null;
         }
         return _loc3_.§_-62§;
      }
   }
}
