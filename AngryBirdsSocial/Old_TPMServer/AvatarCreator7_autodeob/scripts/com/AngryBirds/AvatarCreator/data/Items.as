package com.AngryBirds.AvatarCreator.data
{
   import com.rovio.factory.XMLFactory;
   
   public class Items
   {
      
      private static var mItemDataTableBin:Class = Items_mItemDataTableBin;
      
      public static var mItemDataTable:XML;
       
      
      public var mCategories:Array = null;
      
      public var mAnchorPoints:Array = null;
      
      private var mItems:Array;
      
      public function Items()
      {
         super();
      }
      
      public function loadItems() : void
      {
         var _loc1_:XML = null;
         var _loc2_:String = null;
         var _loc3_:XML = null;
         var _loc4_:Item = null;
         this.mCategories = new Array();
         this.mItems = new Array();
         this.mAnchorPoints = new Array();
         mItemDataTable = XMLFactory.fromOctetStreamClass(mItemDataTableBin);
         for each(_loc1_ in mItemDataTable.Items.Category)
         {
            _loc2_ = _loc1_.@id;
            this.mCategories.push(_loc2_);
            this.mItems[_loc2_] = new Array();
            for each(_loc3_ in _loc1_.Item)
            {
               (_loc4_ = new Item()).mId = _loc3_.@id;
               _loc4_.mName = _loc3_.@name;
               _loc4_.mAnchor = _loc3_.@anchor;
               _loc4_.mCost = Number(_loc3_.@cost);
               _loc4_.mLevel = Number(_loc3_.@level);
               _loc4_.mCategory = _loc2_;
               if(this.mAnchorPoints.indexOf(_loc4_.mAnchor) == -1)
               {
                  this.mAnchorPoints.push(_loc4_.mAnchor);
               }
               this.mItems[_loc2_].push(_loc4_);
            }
         }
      }
      
      public function getItemsInCategory(param1:String) : Array
      {
         return this.mItems[param1];
      }
      
      public function findItems(param1:String, param2:Number = -1, param3:Number = -1, param4:String = null) : Array
      {
         var _loc6_:Item = null;
         var _loc5_:Array = new Array();
         for each(_loc6_ in this.mItems[param1])
         {
            if((param2 == -1 || _loc6_.mLevel <= param2) && (param3 == -1 || _loc6_.mCost <= param3) && (param4 == null || _loc6_.mAnchor == param4))
            {
               _loc5_.push(_loc6_);
            }
         }
         return _loc5_;
      }
      
      public function getItem(param1:String) : Item
      {
         var _loc2_:String = null;
         var _loc3_:Item = null;
         for each(_loc2_ in this.mCategories)
         {
            for each(_loc3_ in this.mItems[_loc2_])
            {
               if(_loc3_.mId.toUpperCase() == param1.toUpperCase())
               {
                  return _loc3_;
               }
            }
         }
         return null;
      }
   }
}
