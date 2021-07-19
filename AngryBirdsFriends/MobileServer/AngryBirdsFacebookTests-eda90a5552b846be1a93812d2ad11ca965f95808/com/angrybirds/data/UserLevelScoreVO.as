package com.angrybirds.data
{
   public class UserLevelScoreVO extends RankedVO
   {
       
      
      public var levelScore:int;
      
      public var stars:int;
      
      public var mightyEagleScore:int;
      
      public var leagueName:String;
      
      public var leagueStars:int;
      
      public var canBeChallenged:Boolean;
      
      public var isTournamentScore:Boolean;
      
      [Transient]
      public var beaten:Boolean = false;
      
      public function UserLevelScoreVO(userId:String, userName:String, avatarString:String, levelScore:int, stars:int, mightyEagleScore:int, rank:int, leagueName:String, leagueStars:int, scoreType:String, botImageUrl:String = null)
      {
         this.levelScore = levelScore;
         this.stars = stars;
         this.mightyEagleScore = mightyEagleScore;
         this.leagueName = leagueName;
         this.leagueStars = leagueStars;
         this.canBeChallenged = scoreType && scoreType == "ch";
         super(userId,userName,avatarString,rank,botImageUrl);
      }
      
      public static function fromServerObject(obj:Object) : UserLevelScoreVO
      {
         return new UserLevelScoreVO(obj.uid,obj.n,obj.a,obj.p,obj.s,obj.me,obj.r,obj.ltn,obj.ls,obj.t,obj.iurl);
      }
   }
}
