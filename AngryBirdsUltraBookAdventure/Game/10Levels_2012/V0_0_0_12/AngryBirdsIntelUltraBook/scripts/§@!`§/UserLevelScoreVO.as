package §@!`§
{
   public class UserLevelScoreVO extends §5`§
   {
       
      
      public var levelScore:int;
      
      public var stars:int;
      
      public var mightyEagleScore:int;
      
      public var §<>§:Boolean;
      
      [Transient]
      public var §@!!§:Boolean = false;
      
      public function UserLevelScoreVO(userId:String, userName:String, avatarString:String, levelScore:int, stars:int, mightyEagleScore:int, rank:int)
      {
         this.levelScore = levelScore;
         this.stars = stars;
         this.mightyEagleScore = mightyEagleScore;
         super(userId,userName,avatarString,rank);
      }
      
      public static function §"!h§(obj:Object) : UserLevelScoreVO
      {
         return new UserLevelScoreVO(obj.u,obj.n,obj.a,obj.p,obj.s,obj.me,obj.r);
      }
   }
}
