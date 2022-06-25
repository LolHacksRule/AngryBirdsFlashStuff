package §<!=§
{
   public class InviteVO extends FriendListItemVO
   {
       
      
      public function InviteVO(userId:String, userName:String, avatarString:String)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc4_)
         {
         }
         if(!_loc4_)
         {
            while(true)
            {
               while(!_loc4_)
               {
                  loop2:
                  while(_loc5_)
                  {
                     while(true)
                     {
                        super(userId,userName,avatarString);
                        loop4:
                        while(!(_loc4_ && userId))
                        {
                           while(true)
                           {
                              if(_loc5_ || userId)
                              {
                                 if(_loc5_)
                                 {
                                    break;
                                 }
                                 continue loop2;
                              }
                              continue loop4;
                           }
                           return;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr73);
      }
      
      public static function §#!_§(obj:Object) : InviteVO
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc3_)
         {
         }
         if(_loc3_ || _loc3_)
         {
            while(!(_loc3_ || _loc3_))
            {
            }
         }
         return new InviteVO(obj.u,obj.n,obj.a);
      }
   }
}
