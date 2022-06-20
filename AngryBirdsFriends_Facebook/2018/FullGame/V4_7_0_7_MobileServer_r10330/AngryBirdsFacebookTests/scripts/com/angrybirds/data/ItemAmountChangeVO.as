package com.angrybirds.data
{
   public class ItemAmountChangeVO
   {
       
      
      public var id:String;
      
      public var changedAmount:int;
      
      public function ItemAmountChangeVO(itemChangedAmount:int, itemId:String)
      {
         super();
         this.changedAmount = itemChangedAmount;
         this.id = itemId;
      }
   }
}
