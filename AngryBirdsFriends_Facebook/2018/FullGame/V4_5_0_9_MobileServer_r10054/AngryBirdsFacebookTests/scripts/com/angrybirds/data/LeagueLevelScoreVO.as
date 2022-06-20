package com.angrybirds.data
{
   public class LeagueLevelScoreVO extends UserLevelScoreVO
   {
       
      
      public var isMe:Boolean;
      
      public var isFillupPlayer:Boolean;
      
      public var nickName:String;
      
      public var profilePicture:String;
      
      public function LeagueLevelScoreVO(userId:String, userName:String, nickName:String, profilePicture:String, isMe:Boolean, rank:int, levelScore:int, avatarString:String, leagueName:String, leagueStars:int, isFillupPlayer:String, botImageUrl:String)
      {
         this.levelScore = levelScore;
         this.nickName = nickName;
         this.profilePicture = profilePicture;
         this.isMe = isMe;
         this.isFillupPlayer = isFillupPlayer && isFillupPlayer == "t";
         var name:String = !!nickName ? nickName : userName;
         name = !!name ? name : "";
         super(userId,name,avatarString,levelScore,1,0,rank,leagueName,leagueStars,null,botImageUrl);
      }
      
      public static function fromServerObject(obj:Object) : UserLevelScoreVO
      {
         return new LeagueLevelScoreVO(obj.u,obj.n,obj.ni,obj.ir,obj.me,obj.r,obj.ts,obj.a,obj.ltn,obj.s,obj.fs,obj.iurl);
      }
   }
}
