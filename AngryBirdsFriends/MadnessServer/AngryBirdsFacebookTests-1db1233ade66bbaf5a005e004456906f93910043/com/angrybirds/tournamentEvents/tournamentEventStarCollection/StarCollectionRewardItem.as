package com.angrybirds.tournamentEvents.tournamentEventStarCollection
{
   public class StarCollectionRewardItem
   {
       
      
      private var mID:int;
      
      private var mStarsNeeded:int;
      
      private var mRewards:Array;
      
      public function StarCollectionRewardItem(data:Object)
      {
         super();
         this.mID = data.id;
         this.mStarsNeeded = data.c;
         this.mRewards = data.i;
      }
      
      public function get rewards() : Array
      {
         return this.mRewards;
      }
      
      public function get starsNeeded() : int
      {
         return this.mStarsNeeded;
      }
      
      public function get ID() : int
      {
         return this.mID;
      }
   }
}
