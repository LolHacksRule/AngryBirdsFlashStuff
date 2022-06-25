package §^_§
{
   public class §3!q§
   {
       
      
      public function §3!q§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            super();
         }
      }
      
      public static function §^s§(param1:Number, param2:Boolean = true) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && §3!q§))
         {
            if(param2)
            {
               if(!(_loc4_ && param2))
               {
                  §§push(1);
                  while(true)
                  {
                     §§push(param1);
                     addr129:
                     while(true)
                     {
                        §§push(§§pop() - §§pop());
                        addr130:
                        while(true)
                        {
                           §§push(Number(§§pop()));
                           addr131:
                           while(true)
                           {
                              param1 = §§pop();
                           }
                        }
                     }
                     addr117:
                     §§push(1);
                     if(!(_loc3_ || param2))
                     {
                        continue;
                     }
                     §§push(param1);
                     if(_loc3_ || param1)
                     {
                        §§push(§§pop() - §§pop());
                        while(!(_loc3_ || §3!q§))
                        {
                           loop5:
                           while(true)
                           {
                              param1 = §§pop();
                              if(_loc3_)
                              {
                                 §§goto(addr117);
                              }
                              addr132:
                              while(true)
                              {
                                 §§push(param1);
                                 if(_loc3_ || param2)
                                 {
                                    if(_loc3_)
                                    {
                                       §§push(param1);
                                       while(true)
                                       {
                                          §§push(§§pop() * §§pop());
                                          addr106:
                                          while(true)
                                          {
                                             if(!(_loc4_ && §3!q§))
                                             {
                                                §§push(Number(§§pop()));
                                                continue loop5;
                                             }
                                             §§goto(addr130);
                                          }
                                       }
                                       addr105:
                                    }
                                    §§goto(addr131);
                                 }
                                 §§goto(addr106);
                              }
                           }
                        }
                        return §§pop();
                        addr72:
                     }
                     §§goto(addr129);
                  }
               }
               §§goto(addr132);
            }
            else
            {
               §§goto(addr24);
            }
         }
         addr24:
         §§push(param1);
         if(_loc3_)
         {
            if(!_loc4_)
            {
               if(!_loc4_)
               {
                  §§push(param1);
                  if(!(_loc4_ && param2))
                  {
                     §§goto(addr41);
                  }
                  else
                  {
                     §§goto(addr105);
                  }
               }
               §§goto(addr106);
            }
            §§goto(addr72);
         }
         addr41:
         return §§pop() * §§pop();
      }
      
      public static function each(param1:Number, param2:int, param3:Number = -1) : Number
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            §§push(param3);
            if(_loc5_)
            {
               §§push(0);
               if(!_loc6_)
               {
                  §§push(§§pop() > §§pop());
                  if(_loc5_ || param2)
                  {
                     if(§§pop())
                     {
                        if(_loc5_)
                        {
                           addr36:
                           §§pop();
                           if(_loc5_)
                           {
                              addr68:
                              §§push(param3);
                              if(!(_loc6_ && param3))
                              {
                                 addr48:
                                 §§push(§§pop() < 10);
                              }
                              var _loc4_:* = §§pop();
                              if(!_loc6_)
                              {
                                 §§push(Math.round(param1 * _loc4_) / _loc4_);
                                 while(true)
                                 {
                                    §§push(Number(§§pop()));
                                    addr227:
                                    while(true)
                                    {
                                       param1 = §§pop();
                                    }
                                 }
                                 addr226:
                              }
                              loop2:
                              while(true)
                              {
                                 §§push(param3);
                                 loop3:
                                 while(true)
                                 {
                                    §§push(0);
                                    loop4:
                                    while(true)
                                    {
                                       §§push(§§pop() > §§pop());
                                       loop5:
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             loop6:
                                             while(true)
                                             {
                                                §§pop();
                                                loop7:
                                                while(true)
                                                {
                                                   §§push(param3);
                                                   if(!(_loc6_ && param3))
                                                   {
                                                      §§push(10);
                                                      if(!(_loc5_ || param1))
                                                      {
                                                         break;
                                                      }
                                                      §§push(§§pop() < §§pop());
                                                      if(!_loc5_)
                                                      {
                                                         continue loop6;
                                                      }
                                                      if(_loc6_ && param2)
                                                      {
                                                         continue loop5;
                                                      }
                                                      while(§§pop())
                                                      {
                                                         if(_loc5_)
                                                         {
                                                            if(_loc6_ && param3)
                                                            {
                                                               continue loop7;
                                                            }
                                                            if(!(_loc5_ || §3!q§))
                                                            {
                                                               continue loop2;
                                                            }
                                                            §§push(§§findproperty(each));
                                                            §§push(param1);
                                                            if(!(_loc6_ && param2))
                                                            {
                                                               addr202:
                                                               §§push(param3);
                                                               if(_loc5_)
                                                               {
                                                                  addr188:
                                                                  §§push(§§pop() * §§pop());
                                                                  §§push(param2 - 1);
                                                               }
                                                               §§push(§§pop().each(§§pop(),§§pop(),-1) / param3);
                                                               if(_loc5_)
                                                               {
                                                                  §§push(Number(§§pop()));
                                                               }
                                                               if(!_loc6_)
                                                               {
                                                                  param1 = §§pop();
                                                                  addr210:
                                                                  §§push(each(param1,param2,-1));
                                                                  if(_loc5_ || §3!q§)
                                                                  {
                                                                     if(!_loc6_)
                                                                     {
                                                                        addr112:
                                                                        §§push(Number(§§pop()));
                                                                        if(!_loc6_)
                                                                        {
                                                                           if(!(_loc6_ && param3))
                                                                           {
                                                                              param1 = §§pop();
                                                                              if(_loc5_ || param1)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              §§goto(addr210);
                                                                           }
                                                                           §§goto(addr227);
                                                                        }
                                                                     }
                                                                     §§goto(addr202);
                                                                  }
                                                                  §§goto(addr112);
                                                               }
                                                               §§goto(addr226);
                                                            }
                                                            §§goto(addr188);
                                                         }
                                                         §§goto(addr210);
                                                      }
                                                      §§push(param1);
                                                      if(!_loc6_)
                                                      {
                                                         continue loop3;
                                                      }
                                                      §§goto(addr112);
                                                   }
                                                   §§goto(addr202);
                                                }
                                                continue loop4;
                                             }
                                          }
                                          §§goto(addr157);
                                       }
                                    }
                                 }
                              }
                           }
                           addr63:
                           §§goto(addr68);
                           §§push(Number(Math.pow(10,param2)));
                        }
                     }
                     if(§§pop())
                     {
                        if(_loc5_ || param3)
                        {
                        }
                        §§goto(addr63);
                     }
                     param2 = Math.max(0,param2);
                     §§goto(addr63);
                  }
                  §§goto(addr36);
               }
               §§goto(addr48);
            }
            §§goto(addr68);
         }
         §§goto(addr36);
      }
   }
}
