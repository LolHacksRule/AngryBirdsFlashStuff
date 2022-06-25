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
         if(_loc5_ || userName)
         {
            while(true)
            {
            }
            addr98:
         }
         loop1:
         while(true)
         {
            while(!_loc4_)
            {
               loop3:
               while(true)
               {
                  super(userId,userName,avatarString);
                  while(true)
                  {
                     if(!_loc4_)
                     {
                        if(!_loc5_)
                        {
                           break;
                        }
                        continue;
                     }
                     continue loop3;
                  }
                  continue loop1;
               }
               if(!(_loc4_ && avatarString))
               {
                  return;
               }
            }
            §§goto(addr98);
         }
      }
      
      public static function §"!h§(obj:Object) : InviteVO
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc3_)
         {
         }
         if(_loc3_)
         {
         }
         while(!_loc2_)
         {
         }
         return new InviteVO(obj.u,obj.n,obj.a);
      }
   }
}
