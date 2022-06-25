package §"!i§
{
   public class UserTotalScoreVO extends §<m§
   {
       
      
      public var starCount:int;
      
      public var featherCount:int;
      
      public var totalScore:int;
      
      public function UserTotalScoreVO(userId:String, userName:String, avatarString:String, starCount:int, featherCount:int, rank:int, totalScore:int)
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         if(_loc8_ || userId)
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
                  while(true)
                  {
                     while(_loc8_)
                     {
                        while(_loc8_)
                        {
                           while(!(_loc9_ && userId))
                           {
                              loop14:
                              while(true)
                              {
                                 if(_loc8_ || avatarString)
                                 {
                                    if(!_loc9_)
                                    {
                                       if(_loc9_)
                                       {
                                          break;
                                       }
                                       continue;
                                    }
                                    loop10:
                                    while(true)
                                    {
                                       this.featherCount = featherCount;
                                       loop11:
                                       while(_loc8_)
                                       {
                                          while(true)
                                          {
                                             if(!(_loc8_ || userName))
                                             {
                                                continue loop11;
                                             }
                                             addr94:
                                             if(!(_loc9_ && userName))
                                             {
                                                continue loop2;
                                             }
                                             addr146:
                                             addr123:
                                             while(_loc8_ || this)
                                             {
                                                continue loop10;
                                                §§goto(addr94);
                                             }
                                             while(true)
                                             {
                                                break loop11;
                                                §§goto(addr123);
                                             }
                                             addr123:
                                             continue loop14;
                                          }
                                          continue loop2;
                                       }
                                       while(true)
                                       {
                                          this.starCount = starCount;
                                          §§goto(addr123);
                                       }
                                    }
                                 }
                                 §§goto(addr87);
                              }
                              while(!_loc9_)
                              {
                                 §§goto(addr146);
                              }
                              continue loop1;
                           }
                        }
                     }
                     continue loop0;
                  }
               }
            }
         }
         while(true)
         {
            §§goto(addr149);
         }
      }
      
      public static function §<! §(obj:Object) : UserTotalScoreVO
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc3_ && UserTotalScoreVO)
         {
         }
         if(!_loc3_)
         {
            while(_loc3_)
            {
            }
         }
         §§push(UserTotalScoreVO);
         if(!_loc2_)
         {
         }
         return new §§pop()(obj.u,obj.n,obj.a,obj.s,obj.me,obj.r,obj.t);
      }
   }
}
