package com.rovio.assets
{
   public class AssetCache
   {
      
      private static var §5!`§:Object;
       
      
      public function AssetCache()
      {
         super();
      }
      
      public static function §@§(param1:String, param2:Class) : void
      {
         param1 = param1.toUpperCase();
         if(§5!`§ == null)
         {
            §5!`§ = new Object();
         }
         if(!§+c§(param1))
         {
            §5!`§[param1] = new §8u§(param1,param2);
            return;
         }
         throw new Error("Trying to add a duplicate asset: " + param1);
      }
      
      public static function §+c§(param1:String) : Boolean
      {
         param1 = param1.toUpperCase();
         if(§5!`§[param1] != null)
         {
            return true;
         }
         return false;
      }
      
      public static function §%p§(param1:String, param2:Boolean = true) : Class
      {
         param1 = param1.toUpperCase();
         var _loc3_:§8u§ = §5!`§[param1];
         if(_loc3_ == null)
         {
            if(param2)
            {
               throw new Error("Asset not in cache: " + param1);
            }
            return null;
         }
         return _loc3_.§%J§;
      }
   }
}
