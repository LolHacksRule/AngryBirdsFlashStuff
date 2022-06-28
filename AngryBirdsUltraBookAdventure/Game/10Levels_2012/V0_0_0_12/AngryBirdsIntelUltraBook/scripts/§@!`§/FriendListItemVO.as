package §@!`§
{
   public class FriendListItemVO
   {
       
      
      public var userId:String;
      
      public var userName:String;
      
      public var avatarString:String;
      
      [Transient]
      public var offset:Number = 0;
      
      [Transient]
      public var targetOffset:Number = 0;
      
      public function FriendListItemVO(userId:String, userName:String, avatarString:String)
      {
         super();
         this.userId = userId;
         this.userName = userName;
         this.avatarString = avatarString;
      }
      
      public static function §"!h§(obj:Object) : FriendListItemVO
      {
         if(obj.i)
         {
            return InviteVO.§"!h§(obj);
         }
         if(obj.p != undefined)
         {
            return UserLevelScoreVO.§"!h§(obj);
         }
         return UserTotalScoreVO.§"!h§(obj);
      }
   }
}
