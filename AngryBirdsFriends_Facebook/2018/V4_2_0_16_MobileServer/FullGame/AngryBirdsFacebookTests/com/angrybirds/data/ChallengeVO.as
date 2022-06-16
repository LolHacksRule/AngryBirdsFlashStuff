package com.angrybirds.data
{
   public class ChallengeVO extends FriendListItemVO
   {
       
      
      private var mChallenged:Boolean;
      
      public function ChallengeVO(userId:String, userName:String, avatarString:String, userChallenged:Boolean)
      {
         super(userId,userName,avatarString);
         this.challenged = userChallenged;
      }
      
      public function get challenged() : Boolean
      {
         return this.mChallenged;
      }
      
      public function set challenged(value:Boolean) : void
      {
         this.mChallenged = value;
      }
   }
}
