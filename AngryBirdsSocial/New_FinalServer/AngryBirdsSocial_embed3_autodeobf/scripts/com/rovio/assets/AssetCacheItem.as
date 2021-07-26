package com.rovio.assets
{
   public class AssetCacheItem
   {
       
      
      private var mAssetName:String;
      
      private var mAssetClass:Class;
      
      public function AssetCacheItem(assetName:String, cls:Class)
      {
         super();
         this.mAssetName = assetName;
         this.mAssetClass = cls;
      }
      
      public function get assetName() : String
      {
         return this.mAssetName;
      }
      
      public function set assetName(value:String) : void
      {
         this.mAssetName = value;
      }
      
      public function get assetClass() : Class
      {
         return this.mAssetClass;
      }
      
      public function set assetClass(value:Class) : void
      {
         this.mAssetClass = value;
      }
   }
}
