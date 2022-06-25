package §@!`§
{
   public class UserTotalScoreVO extends §5`§
   {
       
      
      public var starCount:int;
      
      public var featherCount:int;
      
      public var totalScore:int;
      
      public function UserTotalScoreVO(userId:String, userName:String, avatarString:String, starCount:int, featherCount:int, rank:int, totalScore:int)
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(!_loc8_)
         {
         }
         if(!_loc9_)
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  loop2:
                  for(; !_loc9_; while(!(_loc9_ && userName))
                  {
                  })
                  {
                     loop3:
                     while(true)
                     {
                        loop4:
                        while(true)
                        {
                           loop5:
                           while(true)
                           {
                              loop6:
                              while(true)
                              {
                                 loop7:
                                 while(true)
                                 {
                                    this.starCount = starCount;
                                    continue loop2;
                                    addr59:
                                    if(!(_loc8_ || userId))
                                    {
                                       continue;
                                    }
                                    addr76:
                                    if(_loc8_ || userId)
                                    {
                                       if(!_loc8_)
                                       {
                                          while(true)
                                          {
                                             this.totalScore = totalScore;
                                             addr86:
                                             addr113:
                                             loop13:
                                             while(_loc8_ || avatarString)
                                             {
                                                loop14:
                                                while(!_loc9_)
                                                {
                                                   super(userId,userName,avatarString,rank);
                                                   while(true)
                                                   {
                                                      if(!_loc9_)
                                                      {
                                                         if(_loc9_ && userName)
                                                         {
                                                            continue loop13;
                                                         }
                                                         §§goto(addr59);
                                                         continue loop13;
                                                      }
                                                      continue loop14;
                                                      §§goto(addr76);
                                                   }
                                                   continue loop7;
                                                }
                                                continue loop2;
                                             }
                                             while(_loc8_)
                                             {
                                                continue loop1;
                                                §§goto(addr86);
                                             }
                                             continue loop4;
                                          }
                                          addr96:
                                       }
                                       if(_loc8_)
                                       {
                                          if(_loc8_)
                                          {
                                             return;
                                          }
                                          continue loop6;
                                       }
                                       addr101:
                                       while(!_loc9_)
                                       {
                                          continue loop3;
                                       }
                                       continue loop5;
                                    }
                                    §§goto(addr50);
                                 }
                              }
                           }
                        }
                     }
                  }
                  continue loop0;
               }
            }
         }
         while(true)
         {
            §§goto(addr113);
         }
      }
      
      public static function §"!h§(obj:Object) : UserTotalScoreVO
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc3_)
         {
         }
         if(!(_loc2_ && UserTotalScoreVO))
         {
            while(!(_loc3_ || UserTotalScoreVO))
            {
            }
         }
         §§push(UserTotalScoreVO);
         if(_loc3_ || _loc2_)
         {
         }
         return new §§pop()(obj.u,obj.n,obj.a,obj.s,obj.me,obj.r,obj.t);
      }
   }
}
