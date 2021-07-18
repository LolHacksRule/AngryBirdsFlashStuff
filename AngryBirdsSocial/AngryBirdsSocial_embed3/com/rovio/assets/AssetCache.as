package com.rovio.assets
{
   public class AssetCache
   {
      
      private static var smAssetMap:Object;
       
      
      public function AssetCache()
      {
         super();
      }
      
      public static function storeAsset(assetName:String, acls:Class) : void
      {
         assetName = assetName.toUpperCase();
         if(smAssetMap == null)
         {
            smAssetMap = new Object();
         }
         if(!assetInCache(assetName))
         {
            smAssetMap[assetName] = new AssetCacheItem(assetName,acls);
            return;
         }
         throw new Error("Trying to add a duplicate asset: " + assetName);
      }
      
      public static function assetInCache(assetName:String) : Boolean
      {
         assetName = assetName.toUpperCase();
         if(smAssetMap[assetName] != null)
         {
            return true;
         }
         return false;
      }
      
      public static function getAssetFromCache(assetName:String, throwError:Boolean = true) : Class
      {
         assetName = assetName.toUpperCase();
         var aci:AssetCacheItem = smAssetMap[assetName];
         if(aci == null)
         {
            if(throwError)
            {
               throw new Error("Asset not in cache: " + assetName);
            }
            return null;
         }
         return aci.assetClass;
      }
   }
}
