package com.rovio.assets
{
   public class §_-Fc§
   {
      
      private static var §_-08M§:Object;
       
      
      public function §_-Fc§()
      {
         super();
      }
      
      public static function §_-AG§(param1:String, param2:Class) : void
      {
         param1 = param1.toUpperCase();
         if(§_-08M§ == null)
         {
            §_-08M§ = new Object();
         }
         if(!§_-TY§(param1))
         {
            §_-08M§[param1] = new §_-sB§(param1,param2);
            return;
         }
         throw new Error("Trying to add a duplicate asset: " + param1);
      }
      
      public static function §_-TY§(param1:String) : Boolean
      {
         param1 = param1.toUpperCase();
         if(§_-08M§[param1] != null)
         {
            return true;
         }
         return false;
      }
      
      public static function §_-YE§(param1:String, param2:Boolean = true) : Class
      {
         param1 = param1.toUpperCase();
         var _loc3_:§_-sB§ = §_-08M§[param1];
         if(_loc3_ == null)
         {
            if(param2)
            {
               throw new Error("Asset not in cache: " + param1);
            }
            return null;
         }
         return _loc3_.§_-0u§;
      }
   }
}
