package com.angrybirds.avatarcreator.data
{
   import com.rovio.assets.AssetCache;
   import flash.display.MovieClip;
   
   public class Item
   {
       
      
      public var mId:String = "";
      
      public var sId:String;
      
      public var mName:String = "";
      
      public var mCategory:String = "";
      
      public var mAnchor:String = "";
      
      public var mCategorySID:String = "";
      
      public function Item()
      {
         super();
      }
      
      public function get category() : String
      {
         return this.mCategory;
      }
      
      public function get categorySID() : String
      {
         return this.mCategorySID;
      }
      
      public function getInventoryIcon() : MovieClip
      {
         var itemClass:Class = AssetCache.getAssetFromCache("Inventory_Item_" + this.mId);
         return new itemClass();
      }
   }
}
