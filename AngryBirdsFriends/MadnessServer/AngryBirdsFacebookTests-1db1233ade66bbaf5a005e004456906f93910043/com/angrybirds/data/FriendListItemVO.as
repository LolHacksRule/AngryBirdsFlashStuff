package com.angrybirds.data
{
   public class FriendListItemVO
   {
       
      
      public var userId:String;
      
      public var userName:String;
      
      public var avatarString:String;
      
      public var profileImageURL:String;
      
      [Transient]
      public var offset:Number = 0;
      
      [Transient]
      public var targetOffset:Number = 0;
      
      public function FriendListItemVO(userId:String, userName:String = "", avatarString:String = "", profileImageURL:String = "")
      {
         super();
         this.userId = userId;
         this.userName = userName;
         this.avatarString = avatarString;
         this.profileImageURL = profileImageURL;
      }
      
      public static function fromServerObject(obj:Object, levelScoreObject:Boolean, leagueScoreObject:Boolean) : FriendListItemVO
      {
         if(obj.i)
         {
            return InviteVO.fromServerObject(obj);
         }
         if(obj.p != undefined || levelScoreObject)
         {
            if(leagueScoreObject)
            {
               return LeagueLevelScoreVO.fromServerObject(obj);
            }
            return UserLevelScoreVO.fromServerObject(obj);
         }
         return UserTotalScoreVO.fromServerObject(obj);
      }
   }
}
