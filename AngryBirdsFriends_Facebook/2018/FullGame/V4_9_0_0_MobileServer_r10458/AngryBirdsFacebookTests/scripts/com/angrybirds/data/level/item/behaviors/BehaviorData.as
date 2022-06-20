package com.angrybirds.data.level.item.behaviors
{
   public class BehaviorData
   {
       
      
      private var mName:String;
      
      public function BehaviorData(mName:String)
      {
         super();
         this.mName = mName;
      }
      
      public function get name() : String
      {
         return this.mName;
      }
   }
}
