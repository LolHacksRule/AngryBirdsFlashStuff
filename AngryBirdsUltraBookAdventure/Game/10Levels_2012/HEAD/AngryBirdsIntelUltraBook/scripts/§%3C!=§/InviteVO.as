package §<!=§
{
   public class InviteVO extends FriendListItemVO
   {
       
      
      public function InviteVO(userId:String, userName:String, avatarString:String)
      {
         super(userId,userName,avatarString);
      }
      
      public static function §#!_§(obj:Object) : InviteVO
      {
         return new InviteVO(obj.u,obj.n,obj.a);
      }
   }
}
