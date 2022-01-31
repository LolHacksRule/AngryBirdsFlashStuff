package com.angrybirds.friendsdatacache
{
   import com.angrybirds.friendsbar.FriendsBar;
   import flash.utils.Dictionary;
   
   public class FriendsDataCache
   {
      
      private static var friendsCache:Dictionary;
      
      private static var friendsCacheVector:Vector.<CachedFriendDataVO>;
      
      private static var inviteFriendsCache:Vector.<CachedInviteFriendDataVO>;
       
      
      public function FriendsDataCache()
      {
         super();
      }
      
      public static function injectFriendsData(dataObject:Object) : void
      {
         var object:Object = null;
         var friendVO:CachedFriendDataVO = null;
         friendsCache = new Dictionary();
         friendsCacheVector = new Vector.<CachedFriendDataVO>();
         for each(object in dataObject)
         {
            friendVO = CachedFriendDataVO.fromServerObject(object);
            friendsCache[object.uid] = friendVO;
            friendsCacheVector.push(friendVO);
         }
      }
      
      public static function injectInviteFriendsData(dataObject:Object) : void
      {
         var object:Object = null;
         inviteFriendsCache = new Vector.<CachedInviteFriendDataVO>();
         for each(object in dataObject)
         {
            inviteFriendsCache.push(CachedInviteFriendDataVO.fromServerObject(object));
         }
      }
      
      public static function getPlayingFriendsOnly() : Vector.<CachedFriendDataVO>
      {
         return friendsCacheVector;
      }
      
      public static function getInvitableFriendsOnly() : Vector.<CachedInviteFriendDataVO>
      {
         var friendObject:CachedInviteFriendDataVO = null;
         var invitableFriends:Vector.<CachedInviteFriendDataVO> = new Vector.<CachedInviteFriendDataVO>();
         for each(friendObject in inviteFriendsCache)
         {
            if(!isInvited(friendObject.userID))
            {
               invitableFriends.push(friendObject);
            }
         }
         return invitableFriends;
      }
      
      public static function isInvited(userId:String) : Boolean
      {
         var allreadyInvitedUserId:String = null;
         for each(allreadyInvitedUserId in FriendsBar.sInvitedFriends)
         {
            if(userId == allreadyInvitedUserId)
            {
               return true;
            }
         }
         return false;
      }
      
      public static function getFriendData(uid:String) : CachedFriendDataVO
      {
         if(friendsCache[uid])
         {
            return friendsCache[uid];
         }
         return null;
      }
      
      public static function getNumberOfPlayingFriends() : int
      {
         return !!friendsCacheVector ? int(friendsCacheVector.length) : 0;
      }
   }
}
