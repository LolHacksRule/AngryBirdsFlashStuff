package com.angrybirds.friendsdatacache
{
   public class CachedFriendDataVO
   {
       
      
      public var userID:String;
      
      public var name:String;
      
      public function CachedFriendDataVO(uID:String, username:String)
      {
         super();
         this.userID = uID;
         this.name = username;
      }
      
      public static function fromServerObject(obj:Object) : CachedFriendDataVO
      {
         var name:String = !!obj.ni ? obj.ni : obj.n;
         return new CachedFriendDataVO(obj.uid,name);
      }
   }
}
