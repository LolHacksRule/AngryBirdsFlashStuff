package com.angrybirds.spiningwheel.data
{
   public class BaseItemVO
   {
       
      
      private var _mQuantity:uint;
      
      private var _mInventoryName:String;
      
      private var _mRawData:Object;
      
      public function BaseItemVO(data:Object)
      {
         super();
         this._mQuantity = data.q;
         this._mInventoryName = data.i;
         this._mRawData = data;
      }
      
      public function get quantity() : uint
      {
         return this._mQuantity;
      }
      
      public function get inventoryName() : String
      {
         return this._mInventoryName;
      }
      
      public function get rawData() : Object
      {
         return this._mRawData;
      }
   }
}
