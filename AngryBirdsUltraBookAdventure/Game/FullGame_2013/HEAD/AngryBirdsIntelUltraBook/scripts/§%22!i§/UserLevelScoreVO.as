package §"!i§
{
   public class UserLevelScoreVO extends §<m§
   {
       
      
      public var levelScore:int;
      
      public var stars:int;
      
      public var mightyEagleScore:int;
      
      public var §'v§:Boolean;
      
      [Transient]
      public var §`#§:Boolean = false;
      
      public function UserLevelScoreVO(userId:String, userName:String, avatarString:String, levelScore:int, stars:int, mightyEagleScore:int, rank:int)
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(_loc8_)
         {
         }
         if(!(_loc8_ && avatarString))
         {
            while(true)
            {
               loop1:
               while(true)
               {
                  loop2:
                  while(true)
                  {
                     loop3:
                     while(true)
                     {
                        loop4:
                        while(true)
                        {
                           addr161:
                           while(true)
                           {
                              continue loop3;
                           }
                           addr82:
                           if(!(_loc9_ || avatarString))
                           {
                              continue;
                           }
                           addr89:
                           if(_loc9_)
                           {
                              if(_loc8_)
                              {
                                 while(true)
                                 {
                                    this.stars = stars;
                                    loop10:
                                    while(!_loc8_)
                                    {
                                       while(true)
                                       {
                                          while(!_loc8_)
                                          {
                                             if(!_loc8_)
                                             {
                                                this.mightyEagleScore = mightyEagleScore;
                                                while(_loc9_)
                                                {
                                                   loop14:
                                                   while(_loc9_ || userId)
                                                   {
                                                      super(userId,userName,avatarString,rank);
                                                      while(true)
                                                      {
                                                         if(_loc8_ && userId)
                                                         {
                                                            continue loop14;
                                                         }
                                                         §§goto(addr82);
                                                         §§goto(addr89);
                                                      }
                                                      continue loop4;
                                                   }
                                                }
                                                continue;
                                             }
                                             addr148:
                                             while(true)
                                             {
                                                this.levelScore = levelScore;
                                                continue loop1;
                                             }
                                          }
                                          continue loop10;
                                       }
                                       return;
                                    }
                                    continue loop3;
                                 }
                                 addr123:
                              }
                              if(!_loc9_)
                              {
                                 continue loop1;
                              }
                              if(!_loc8_)
                              {
                                 continue loop2;
                              }
                              §§goto(addr161);
                           }
                           §§goto(addr65);
                        }
                     }
                  }
               }
               if(!(_loc9_ || this))
               {
                  continue;
               }
               §§goto(addr57);
            }
         }
         §§goto(addr120);
      }
      
      public static function §<! §(obj:Object) : UserLevelScoreVO
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc3_)
         {
         }
         if(!(_loc2_ && _loc3_))
         {
            while(_loc2_)
            {
            }
         }
         §§push(UserLevelScoreVO);
         if(_loc3_ || _loc2_)
         {
         }
         return new §§pop()(obj.u,obj.n,obj.a,obj.p,obj.s,obj.me,obj.r);
      }
   }
}
