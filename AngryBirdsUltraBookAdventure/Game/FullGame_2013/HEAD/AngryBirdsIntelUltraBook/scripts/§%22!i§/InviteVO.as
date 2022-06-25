package §"!i§
{
   public class InviteVO extends FriendListItemVO
   {
       
      
      public function InviteVO(userId:String, userName:String, avatarString:String)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc5_ && avatarString)
         {
         }
         if(_loc4_)
         {
            while(true)
            {
               addr100:
               while(true)
               {
                  addr58:
                  if(!(_loc5_ && this))
                  {
                     return;
                     addr75:
                  }
               }
            }
            addr102:
         }
         loop2:
         while(true)
         {
            while(true)
            {
               if(!(_loc4_ || avatarString))
               {
                  continue loop2;
               }
               super(userId,userName,avatarString);
               while(true)
               {
                  if(!_loc5_)
                  {
                     continue;
                  }
                  §§goto(addr102);
               }
               §§goto(addr100);
               if(_loc5_ && userId)
               {
                  continue;
               }
               §§goto(addr58);
            }
         }
         §§goto(addr75);
      }
      
      public static function §<! §(obj:Object) : InviteVO
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc3_)
         {
         }
         if(_loc2_)
         {
            while(!_loc2_)
            {
            }
         }
         return new InviteVO(obj.u,obj.n,obj.a);
      }
   }
}
