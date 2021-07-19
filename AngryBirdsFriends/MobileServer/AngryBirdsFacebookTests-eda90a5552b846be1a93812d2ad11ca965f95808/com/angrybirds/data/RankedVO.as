package com.angrybirds.data
{
   public class RankedVO extends FriendListItemVO
   {
       
      
      public var rank:int;
      
      public function RankedVO(userId:String, userName:String, avatarString:String, rank:int, profileImageUrl:String = "")
      {
         this.rank = rank;
         super(userId,userName,avatarString,!!profileImageUrl ? profileImageUrl : "");
      }
   }
}
