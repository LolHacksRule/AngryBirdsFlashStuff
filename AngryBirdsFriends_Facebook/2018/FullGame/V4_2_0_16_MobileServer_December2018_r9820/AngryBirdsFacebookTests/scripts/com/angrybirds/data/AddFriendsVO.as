package com.angrybirds.data
{
   public class AddFriendsVO extends FriendListItemVO
   {
       
      
      public function AddFriendsVO(userId:String, userName:String = "", avatarString:String = "")
      {
         super(userId,userName,avatarString);
      }
   }
}
