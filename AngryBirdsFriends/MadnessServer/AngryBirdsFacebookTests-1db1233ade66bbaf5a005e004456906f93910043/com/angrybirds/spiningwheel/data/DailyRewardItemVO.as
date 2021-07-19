package com.angrybirds.spiningwheel.data
{
   public class DailyRewardItemVO extends BaseItemVO
   {
       
      
      private var _mDay:uint;
      
      private var _mRewarded:Boolean;
      
      private var _mActualPrizeForUser:uint;
      
      public function DailyRewardItemVO(data:Object)
      {
         super(data);
         this._mDay = data.d;
         this._mRewarded = !!data.r ? Boolean(data.r) : false;
         this._mActualPrizeForUser = !!data.p ? uint(data.p) : uint(0);
      }
      
      public function get day() : uint
      {
         return this._mDay;
      }
      
      public function get isRewarded() : Boolean
      {
         return this._mRewarded;
      }
      
      public function get actualPrizeForUser() : uint
      {
         return this._mActualPrizeForUser;
      }
   }
}
