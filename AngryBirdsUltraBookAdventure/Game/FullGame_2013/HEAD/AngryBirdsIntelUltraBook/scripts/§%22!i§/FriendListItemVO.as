package §"!i§
{
   public class FriendListItemVO
   {
       
      
      public var userId:String;
      
      public var userName:String;
      
      public var avatarString:String;
      
      [Transient]
      public var offset:Number = 0;
      
      [Transient]
      public var targetOffset:Number = 0;
      
      public function FriendListItemVO(userId:String, userName:String, avatarString:String)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc5_)
         {
         }
         if(_loc5_)
         {
            loop0:
            while(true)
            {
               while(true)
               {
                  loop3:
                  for(; _loc5_ || avatarString; while(!(_loc4_ && avatarString))
                  {
                     §§goto(addr88);
                  })
                  {
                     super();
                     loop4:
                     while(_loc5_)
                     {
                        while(true)
                        {
                           this.userId = userId;
                           continue loop3;
                           addr71:
                           if(_loc5_ || userName)
                           {
                              this.avatarString = avatarString;
                              while(_loc5_ || avatarString)
                              {
                                 if(_loc5_ || userId)
                                 {
                                    return;
                                 }
                              }
                              loop9:
                              while(true)
                              {
                                 if(_loc5_ || userName)
                                 {
                                    if(_loc4_)
                                    {
                                       while(true)
                                       {
                                          if(_loc4_)
                                          {
                                             continue loop3;
                                          }
                                          if(_loc4_)
                                          {
                                             break;
                                          }
                                          this.userName = userName;
                                       }
                                       continue loop4;
                                       addr88:
                                    }
                                    §§goto(addr71);
                                 }
                                 while(_loc5_)
                                 {
                                    continue loop9;
                                 }
                                 continue loop0;
                              }
                              addr42:
                           }
                        }
                     }
                     while(true)
                     {
                        continue loop3;
                     }
                  }
               }
            }
         }
         §§goto(addr136);
      }
      
      public static function §<! §(obj:Object) : FriendListItemVO
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc2_)
         {
         }
         if(!_loc3_)
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  if(_loc2_ || obj)
                  {
                     if(!obj.i)
                     {
                        loop2:
                        for(; obj.p != undefined; return UserLevelScoreVO.§<! §(obj))
                        {
                           while(!(_loc2_ || _loc2_))
                           {
                              if(!_loc2_)
                              {
                                 break loop1;
                              }
                              continue loop2;
                           }
                        }
                        return UserTotalScoreVO.§<! §(obj);
                     }
                     if(_loc2_)
                     {
                        break;
                     }
                     continue;
                  }
                  continue loop0;
               }
               return InviteVO.§<! §(obj);
            }
         }
         §§goto(addr62);
      }
   }
}
