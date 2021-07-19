package com.angrybirds.avatarcreator.data
{
   import com.rovio.factory.XMLFactory;
   
   public class Items
   {
      
      private static var mItemDataTable:XML;
       
      
      private var mCategories:Vector.<Category> = null;
      
      private var mAnchorPoints:Vector.<String> = null;
      
      private var mItems:Array = null;
      
      public function Items()
      {
         super();
         this.loadItems();
      }
      
      public function get anchorPoints() : Vector.<String>
      {
         return this.mAnchorPoints;
      }
      
      public function get categories() : Vector.<Category>
      {
         return this.mCategories;
      }
      
      private function loadItems() : void
      {
         var category:XML = null;
         var categoryName:String = null;
         var item:XML = null;
         var itemObj:Item = null;
         this.mCategories = new Vector.<Category>();
         this.mItems = new Array();
         this.mAnchorPoints = new Vector.<String>();
         mItemDataTable = XMLFactory.fromOctetStreamClass(Characters.mCharacterDataTableBin);
         for each(category in mItemDataTable.items.category)
         {
            categoryName = category.@id;
            this.mCategories.push(new Category(categoryName,category.@sid));
            this.mItems[categoryName] = new Array();
            for each(item in category.item)
            {
               itemObj = new Item();
               itemObj.mId = item.@id;
               itemObj.sId = item.@sid;
               itemObj.mName = item.@name;
               itemObj.mAnchor = item.@anchor;
               itemObj.mCategory = categoryName;
               itemObj.mCategorySID = category.@sid;
               if(this.mAnchorPoints.indexOf(itemObj.mAnchor) == -1)
               {
                  this.mAnchorPoints.push(itemObj.mAnchor);
               }
               this.mItems[categoryName].push(itemObj);
            }
         }
      }
      
      public function get allItems() : Array
      {
         return this.mItems;
      }
      
      public function getItemsInCategory(category:String) : Array
      {
         return this.mItems[category];
      }
      
      public function getItem(itemId:String) : Item
      {
         var category:Category = null;
         var categoryId:String = null;
         var item:Item = null;
         for each(category in this.mCategories)
         {
            categoryId = category.name;
            for each(item in this.mItems[categoryId])
            {
               if(item.mId.toUpperCase() == itemId.toUpperCase())
               {
                  return item;
               }
            }
         }
         return null;
      }
   }
}
