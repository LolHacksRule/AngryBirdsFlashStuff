package §"!i§
{
   public class UserTotalScoreVO extends §<m§
   {
       
      
      public var starCount:int;
      
      public var featherCount:int;
      
      public var totalScore:int;
      
      public function UserTotalScoreVO(userId:String, userName:String, avatarString:String, starCount:int, featherCount:int, rank:int, totalScore:int)
      {
         this.starCount = starCount;
         this.featherCount = featherCount;
         this.totalScore = totalScore;
         super(userId,userName,avatarString,rank);
      }
      
      public static function §<! §(obj:Object) : UserTotalScoreVO
      {
         return new UserTotalScoreVO(obj.u,obj.n,obj.a,obj.s,obj.me,obj.r,obj.t);
      }
   }
}
