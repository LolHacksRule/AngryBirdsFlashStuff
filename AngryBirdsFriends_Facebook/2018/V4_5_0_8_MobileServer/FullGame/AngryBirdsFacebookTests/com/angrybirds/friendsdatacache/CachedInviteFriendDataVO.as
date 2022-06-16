package com.angrybirds.friendsdatacache
{
   public class CachedInviteFriendDataVO
   {
       
      
      public var userID:String;
      
      public var name:String;
      
      public var pictureData:Object;
      
      public function CachedInviteFriendDataVO(uID:String, username:String, picData:Object)
      {
         super();
         this.userID = uID;
         this.name = username;
         this.pictureData = picData;
      }
      
      public static function fromServerObject(obj:Object) : CachedInviteFriendDataVO
      {
         return new CachedInviteFriendDataVO(obj.id,obj.name,obj.picture);
      }
      
      public function getProfilePictureURL() : String
      {
         if(this.pictureData && this.pictureData.data)
         {
            return this.pictureData.data.url;
         }
         return "";
      }
   }
}
