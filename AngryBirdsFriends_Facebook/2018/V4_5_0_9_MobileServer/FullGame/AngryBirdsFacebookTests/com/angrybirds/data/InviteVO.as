package com.angrybirds.data
{
   import com.angrybirds.utils.RovioStringUtil;
   
   public class InviteVO extends FriendListItemVO
   {
       
      
      public function InviteVO(userId:String, userName:String, profileImageURL:String)
      {
         userName = RovioStringUtil.shortenName(userName,13);
         super(userId,userName,"",profileImageURL);
      }
      
      public static function fromServerObject(obj:Object) : InviteVO
      {
         return new InviteVO(obj.uid,obj.n,obj.a);
      }
   }
}
