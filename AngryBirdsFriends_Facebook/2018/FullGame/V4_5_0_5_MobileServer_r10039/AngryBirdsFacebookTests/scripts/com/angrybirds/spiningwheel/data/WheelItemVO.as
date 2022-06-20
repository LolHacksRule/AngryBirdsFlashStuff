package com.angrybirds.spiningwheel.data
{
   public class WheelItemVO extends BaseItemVO
   {
       
      
      private var _mId:int;
      
      private var _mType:String;
      
      public function WheelItemVO(data:Object)
      {
         super(data);
         this._mId = data.id;
         this._mType = data.s;
      }
      
      public function get id() : uint
      {
         return this._mId;
      }
      
      public function get mType() : String
      {
         return this._mType;
      }
      
      public function get isCoin() : Boolean
      {
         return this._mType == "s" || this._mType == "m" || this._mType == "l";
      }
   }
}
