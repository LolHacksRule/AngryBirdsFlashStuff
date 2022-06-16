package com.angrybirds.friendsdatacache
{
   public class CachedInviteFriendDataVO
   {
       
      
      public var userID:String;
      
      public var name:String;
      
      public function CachedInviteFriendDataVO(uID:String, username:String)
      {
         super();
         this.userID = uID;
         this.name = username;
      }
      
      public static function fromServerObject(obj:Object) : CachedInviteFriendDataVO
      {
         return new CachedInviteFriendDataVO(obj.uid,obj.n);
      }
   }
}
