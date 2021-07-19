package com.angrybirds.data
{
   public class UserTournamentScoreVO extends RankedVO
   {
       
      
      public var tournamentScore:int;
      
      public var rewardCoins:int;
      
      public var leagueName:String;
      
      public var leagueStars:int;
      
      public var canBeChallenged:Boolean;
      
      public function UserTournamentScoreVO(userId:String, userName:String, avatarString:String, rank:int, tournamentScore:int, rewardCoins:int, leagueName:String, leagueStars:int, scoreType:String, botImageUrl:String)
      {
         this.tournamentScore = tournamentScore;
         this.rewardCoins = rewardCoins;
         this.leagueName = leagueName;
         this.leagueStars = leagueStars;
         this.canBeChallenged = scoreType && scoreType == "ch";
         super(userId,userName,avatarString,rank,botImageUrl);
      }
      
      public static function fromServerObject(obj:Object) : UserTournamentScoreVO
      {
         return new UserTournamentScoreVO(obj.uid,obj.n,obj.a,obj.r,obj.p,obj.c,obj.ltn,obj.ls,obj.t,obj.iurl);
      }
   }
}
