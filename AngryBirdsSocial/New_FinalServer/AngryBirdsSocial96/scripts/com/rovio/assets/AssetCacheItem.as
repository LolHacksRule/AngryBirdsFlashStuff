package com.rovio.assets
{
   public class AssetCacheItem
   {
       
      
      private var mAssetName:String;
      
      private var mAssetClass:Class;
      
      public function AssetCacheItem(param1:String, param2:Class)
      {
         super();
         this.mAssetName = param1;
         this.mAssetClass = param2;
      }
      
      public function get assetName() : String
      {
         return this.mAssetName;
      }
      
      public function set assetName(param1:String) : void
      {
         this.mAssetName = param1;
      }
      
      public function get assetClass() : Class
      {
         return this.mAssetClass;
      }
      
      public function set assetClass(param1:Class) : void
      {
         this.mAssetClass = param1;
      }
   }
}
