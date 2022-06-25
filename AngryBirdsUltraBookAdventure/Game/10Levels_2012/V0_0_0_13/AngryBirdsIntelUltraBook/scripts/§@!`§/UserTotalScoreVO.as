package §@!`§
{
   public class UserTotalScoreVO extends §5`§
   {
       
      
      public var starCount:int;
      
      public var featherCount:int;
      
      public var totalScore:int;
      
      public function UserTotalScoreVO(userId:String, userName:String, avatarString:String, starCount:int, featherCount:int, rank:int, totalScore:int)
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         if(!_loc9_)
         {
         }
         if(!_loc8_)
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  loop2:
                  while(true)
                  {
                     while(true)
                     {
                        addr172:
                        while(_loc9_)
                        {
                        }
                        continue loop2;
                        addr73:
                        if(!(_loc8_ && this))
                        {
                           super(userId,userName,avatarString,rank);
                           loop14:
                           while(true)
                           {
                              if(!_loc8_)
                              {
                                 addr47:
                                 if(!(_loc8_ && this))
                                 {
                                    addr54:
                                    if(_loc8_ && userName)
                                    {
                                       break;
                                    }
                                    continue;
                                 }
                                 addr169:
                                 loop12:
                                 while(true)
                                 {
                                    if(_loc9_ || this)
                                    {
                                       addr102:
                                       if(_loc9_ || avatarString)
                                       {
                                          while(true)
                                          {
                                             if(_loc9_)
                                             {
                                                addr66:
                                                if(_loc8_ && userName)
                                                {
                                                   break;
                                                }
                                                §§goto(addr73);
                                             }
                                             else
                                             {
                                                while(true)
                                                {
                                                   loop9:
                                                   for(; !_loc8_; if(_loc9_ || this)
                                                   {
                                                      if(!_loc8_)
                                                      {
                                                         this.totalScore = totalScore;
                                                         continue loop12;
                                                      }
                                                      continue loop1;
                                                   })
                                                   {
                                                      this.featherCount = featherCount;
                                                      loop10:
                                                      while(true)
                                                      {
                                                         addr112:
                                                         while(true)
                                                         {
                                                            if(_loc9_ || userName)
                                                            {
                                                               continue loop9;
                                                            }
                                                            continue loop10;
                                                         }
                                                         continue loop9;
                                                      }
                                                   }
                                                   §§goto(addr172);
                                                }
                                                addr153:
                                             }
                                          }
                                          while(true)
                                          {
                                             break loop14;
                                             §§goto(addr66);
                                          }
                                          addr166:
                                          addr64:
                                       }
                                       break;
                                    }
                                    §§goto(addr112);
                                    §§goto(addr47);
                                 }
                                 while(true)
                                 {
                                    §§goto(addr166);
                                    §§goto(addr102);
                                 }
                              }
                              §§goto(addr64);
                           }
                           continue loop0;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr169);
      }
      
      public static function §"!h§(obj:Object) : UserTotalScoreVO
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
         }
         if(_loc2_ || _loc2_)
         {
         }
         while(!_loc2_)
         {
         }
         §§push(UserTotalScoreVO);
         if(!_loc2_)
         {
         }
         return new §§pop()(obj.u,obj.n,obj.a,obj.s,obj.me,obj.r,obj.t);
      }
   }
}
