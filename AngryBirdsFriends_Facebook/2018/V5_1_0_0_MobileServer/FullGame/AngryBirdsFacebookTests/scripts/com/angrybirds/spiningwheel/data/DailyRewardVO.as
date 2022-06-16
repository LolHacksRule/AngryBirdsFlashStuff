package com.angrybirds.spiningwheel.data
{
   import com.angrybirds.popups.ErrorPopup;
   
   public class DailyRewardVO
   {
       
      
      private var mDay:uint;
      
      private var mWheelItems:Vector.<WheelItemVO>;
      
      private var mDailyRewardItems:Vector.<DailyRewardItemVO>;
      
      private var mDailyReward:BaseItemVO;
      
      private var mRewardRawData:Object;
      
      private var mWheelRewardId:int;
      
      public function DailyRewardVO(data:Object)
      {
         var swItem:Object = null;
         var wItemVO:WheelItemVO = null;
         super();
         this.mDay = data.d;
         var spinWheelItems:Array = data.sw;
         this.mWheelItems = new Vector.<WheelItemVO>();
         for each(swItem in spinWheelItems)
         {
            wItemVO = new WheelItemVO(swItem);
            this.mWheelItems.push(wItemVO);
         }
         this.mWheelRewardId = !!data.rid ? int(data.rid) : -1;
      }
      
      public function hasRewardToShow() : Boolean
      {
         return this.mWheelRewardId != -1;
      }
      
      public function getPredictedWheelRewardID() : int
      {
         return this.mWheelRewardId;
      }
      
      public function getWheelItems() : Vector.<WheelItemVO>
      {
         return this.mWheelItems.concat();
      }
      
      public function getDailyReward() : BaseItemVO
      {
         return this.mDailyReward;
      }
      
      public function getRewardRawData() : Object
      {
         return this.mRewardRawData;
      }
      
      function setReward(data:Object) : void
      {
         this.mRewardRawData = data;
      }
      
      public function getItemForID(id:int) : WheelItemVO
      {
         var item:WheelItemVO = null;
         if(id < 0)
         {
            AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.ERROR_GENERAL,"invalid id for spinning wheel"));
         }
         var wheelItem:WheelItemVO = null;
         var wheelItems:Vector.<WheelItemVO> = this.getWheelItems();
         for each(item in wheelItems)
         {
            if(item.id == id)
            {
               wheelItem = item;
               break;
            }
         }
         return wheelItem;
      }
   }
}
