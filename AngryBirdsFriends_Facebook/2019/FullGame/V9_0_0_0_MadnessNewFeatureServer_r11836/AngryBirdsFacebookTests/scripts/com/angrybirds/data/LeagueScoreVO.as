package com.angrybirds.data
{
   public class LeagueScoreVO extends RankedVO
   {
       
      
      public var totalScore:int;
      
      public var firstName:String;
      
      public var lastName:String;
      
      public var nickName:String;
      
      public var promotion:String;
      
      public var starPlayerCount:int;
      
      public var profilePicture:String;
      
      public var coins:int;
      
      public var isMe:Boolean;
      
      public var isFillupPlayer:Boolean;
      
      public var leagueRankCount:int;
      
      public function LeagueScoreVO(userId:String, totalScore:int, firstName:String, lastName:String, nickName:String, promotion:String, starCount:int, profilePicture:String, coins:int, me:Boolean, rank:int, isFillupPlayer:String, botImageUrl:String, leagueRankCount:int)
      {
         this.totalScore = totalScore;
         this.firstName = firstName;
         this.lastName = lastName;
         this.nickName = nickName;
         this.promotion = promotion;
         this.starPlayerCount = starCount;
         this.profilePicture = profilePicture;
         this.coins = coins;
         this.isMe = me;
         this.isFillupPlayer = isFillupPlayer && isFillupPlayer == "t";
         this.leagueRankCount = leagueRankCount;
         var name:String = !!nickName ? nickName : firstName;
         name = !!name ? name : "";
         super(userId,name,profilePicture,rank,botImageUrl);
      }
      
      public static function fromServerObject(obj:Object) : LeagueScoreVO
      {
         return new LeagueScoreVO(obj.u,obj.ts,obj.n,obj.l,obj.ni,obj.p,obj.s,obj.ir,obj.c,obj.me,obj.r,obj.fs,obj.iurl,obj.lrc);
      }
   }
}
