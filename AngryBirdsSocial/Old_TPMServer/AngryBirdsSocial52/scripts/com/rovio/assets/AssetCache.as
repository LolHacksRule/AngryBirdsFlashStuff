package com.rovio.assets
{
   public class AssetCache
   {
      
      private static var smAssetMap:Object;
       
      
      public function AssetCache()
      {
         super();
      }
      
      public static function storeAsset(param1:String, param2:Class) : void
      {
         param1 = param1.toUpperCase();
         if(smAssetMap == null)
         {
            smAssetMap = new Object();
         }
         if(!assetInCache(param1))
         {
            smAssetMap[param1] = new AssetCacheItem(param1,param2);
            return;
         }
         throw new Error("Trying to add a duplicate asset: " + param1);
      }
      
      public static function assetInCache(param1:String) : Boolean
      {
         param1 = param1.toUpperCase();
         if(smAssetMap[param1] != null)
         {
            return true;
         }
         return false;
      }
      
      public static function getAssetFromCache(param1:String, param2:Boolean = true) : Class
      {
         param1 = param1.toUpperCase();
         var _loc3_:AssetCacheItem = smAssetMap[param1];
         if(_loc3_ == null)
         {
            if(param2)
            {
               throw new Error("Asset not in cache: " + param1);
            }
            return null;
         }
         return _loc3_.assetClass;
      }
   }
}
