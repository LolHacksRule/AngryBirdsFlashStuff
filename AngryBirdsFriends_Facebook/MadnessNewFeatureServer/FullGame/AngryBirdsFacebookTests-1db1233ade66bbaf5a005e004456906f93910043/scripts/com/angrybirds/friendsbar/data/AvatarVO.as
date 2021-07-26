package com.angrybirds.friendsbar.data
{
   public class AvatarVO
   {
       
      
      private var mAvatarString:String;
      
      private var mId:String;
      
      public function AvatarVO(avatarString:String, userID:String)
      {
         super();
         this.mAvatarString = avatarString;
         this.mId = userID;
      }
      
      public function get avatarString() : String
      {
         return this.mAvatarString;
      }
      
      public function get id() : String
      {
         return this.mId;
      }
   }
}
