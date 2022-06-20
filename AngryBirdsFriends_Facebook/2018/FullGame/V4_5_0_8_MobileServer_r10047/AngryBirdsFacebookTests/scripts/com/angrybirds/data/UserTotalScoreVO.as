package com.angrybirds.data
{
   public class UserTotalScoreVO extends RankedVO
   {
       
      
      public var starCount:int;
      
      public var featherCount:int;
      
      public function UserTotalScoreVO(userId:String, userName:String, avatarString:String, starCount:int, featherCount:int, rank:int, botImageUrl:String = null)
      {
         this.starCount = starCount;
         this.featherCount = featherCount;
         super(userId,userName,avatarString,rank,botImageUrl);
      }
      
      public static function fromServerObject(obj:Object) : UserTotalScoreVO
      {
         return new UserTotalScoreVO(obj.uid,obj.n,obj.a,obj.s,obj.me,obj.r,obj.iurl);
      }
   }
}
