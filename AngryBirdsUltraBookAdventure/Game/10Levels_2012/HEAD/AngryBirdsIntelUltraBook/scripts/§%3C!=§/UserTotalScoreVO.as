package §<!=§
{
   public class UserTotalScoreVO extends §"o§
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
         if(_loc9_)
         {
            while(true)
            {
               while(_loc9_)
               {
                  loop2:
                  while(_loc9_ || this)
                  {
                     loop3:
                     while(true)
                     {
                        while(true)
                        {
                           addr145:
                           while(!_loc8_)
                           {
                              while(true)
                              {
                                 addr139:
                                 while(true)
                                 {
                                    this.starCount = starCount;
                                    continue loop3;
                                 }
                              }
                           }
                           addr112:
                           continue loop2;
                           if(_loc8_ && this)
                           {
                              continue;
                           }
                           this.featherCount = featherCount;
                           loop10:
                           while(true)
                           {
                              loop11:
                              while(true)
                              {
                                 this.totalScore = totalScore;
                                 while(_loc9_)
                                 {
                                    loop13:
                                    for(; !(_loc8_ && userName); while(true)
                                    {
                                       if(!(_loc8_ && userId))
                                       {
                                          if(!(_loc8_ && userId))
                                          {
                                             continue loop10;
                                          }
                                          continue loop13;
                                       }
                                    },return)
                                    {
                                       if(_loc8_)
                                       {
                                          continue loop11;
                                       }
                                       if(!_loc9_)
                                       {
                                          continue loop3;
                                       }
                                       if(_loc9_)
                                       {
                                          super(userId,userName,avatarString,rank);
                                          continue;
                                       }
                                       §§goto(addr142);
                                    }
                                 }
                                 §§goto(addr145);
                              }
                              if(!(_loc9_ || this))
                              {
                                 continue;
                              }
                              addr51:
                              if(_loc9_ || this)
                              {
                                 §§goto(addr58);
                              }
                              else
                              {
                                 while(_loc9_)
                                 {
                                    §§goto(addr112);
                                    §§goto(addr51);
                                 }
                                 §§goto(addr139);
                                 addr110:
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr76);
      }
      
      public static function §#!_§(obj:Object) : UserTotalScoreVO
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc3_ && UserTotalScoreVO)
         {
         }
         if(_loc3_)
         {
         }
         while(_loc3_ && _loc2_)
         {
         }
         §§push(UserTotalScoreVO);
         if(_loc3_)
         {
         }
         return new §§pop()(obj.u,obj.n,obj.a,obj.s,obj.me,obj.r,obj.t);
      }
   }
}
