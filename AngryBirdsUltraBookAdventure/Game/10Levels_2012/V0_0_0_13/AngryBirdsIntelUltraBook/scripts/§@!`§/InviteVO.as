package §@!`§
{
   public class InviteVO extends FriendListItemVO
   {
       
      
      public function InviteVO(userId:String, userName:String, avatarString:String)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc4_ && userName)
         {
         }
         if(_loc5_ || userId)
         {
            while(true)
            {
            }
            addr93:
         }
         loop1:
         while(true)
         {
            while(_loc5_)
            {
               loop3:
               do
               {
                  super(userId,userName,avatarString);
                  while(!_loc4_)
                  {
                     if(!(_loc4_ && this))
                     {
                        continue loop3;
                     }
                  }
                  continue loop1;
               }
               while(!_loc5_);
               
               if(_loc5_)
               {
                  return;
               }
            }
            §§goto(addr93);
         }
      }
      
      public static function §"!h§(obj:Object) : InviteVO
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc2_)
         {
         }
         if(_loc3_)
         {
            while(!(_loc3_ || _loc3_))
            {
            }
         }
         return new InviteVO(obj.u,obj.n,obj.a);
      }
   }
}
