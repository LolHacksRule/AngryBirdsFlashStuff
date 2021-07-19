package §0N§
{
   public class §8!z§
   {
       
      
      public function §8!z§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            super();
         }
      }
      
      public static function §@!I§(param1:Number, param2:Boolean = true) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param1))
         {
            if(param2)
            {
               §§push(1);
               loop3:
               while(true)
               {
                  §§push(param1);
                  loop4:
                  while(true)
                  {
                     §§push(§§pop() - §§pop());
                     addr130:
                     while(true)
                     {
                        §§push(Number(§§pop()));
                        loop6:
                        while(true)
                        {
                           param1 = §§pop();
                           §§push(param1);
                           if(_loc3_ || param2)
                           {
                              addr103:
                              §§push(param1);
                              while(true)
                              {
                                 §§push(§§pop() * §§pop());
                                 §§goto(addr103);
                              }
                              addr104:
                           }
                           addr105:
                           while(true)
                           {
                              if(_loc4_ && _loc3_)
                              {
                                 continue loop6;
                              }
                              §§push(Number(§§pop()));
                              loop2:
                              while(true)
                              {
                                 param1 = §§pop();
                                 addr124:
                                 while(true)
                                 {
                                    §§push(1);
                                    if(!_loc4_)
                                    {
                                       §§push(param1);
                                       if(_loc3_ || param2)
                                       {
                                          §§push(§§pop() - §§pop());
                                          continue loop2;
                                       }
                                       continue loop4;
                                    }
                                    continue loop3;
                                 }
                              }
                           }
                           §§goto(addr103);
                        }
                     }
                  }
               }
            }
            else
            {
               §§push(param1);
               if(_loc3_ || param2)
               {
                  §§push(param1);
                  if(_loc3_ || param1)
                  {
                     addr42:
                     §§push(§§pop() * §§pop());
                     if(!_loc4_)
                     {
                        if(_loc3_)
                        {
                           return §§pop();
                        }
                        §§goto(addr105);
                     }
                     while(true)
                     {
                        if(!(_loc4_ && _loc3_))
                        {
                           if(_loc3_)
                           {
                              break;
                           }
                           §§goto(addr130);
                        }
                        §§goto(addr113);
                     }
                     return §§pop();
                     addr72:
                  }
                  §§goto(addr104);
               }
               §§goto(addr42);
            }
            §§goto(addr72);
         }
         §§goto(addr124);
      }
      
      public static function §%V§(param1:Number, param2:int, param3:Number = -1) : Number
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            §§push(param3);
            if(_loc5_ || param2)
            {
               §§push(0);
               if(!_loc6_)
               {
                  §§push(§§pop() > §§pop());
                  if(_loc5_)
                  {
                     if(§§pop())
                     {
                        if(_loc5_ || param2)
                        {
                           §§pop();
                           if(!(_loc6_ && param2))
                           {
                              §§push(param3);
                              if(!_loc6_)
                              {
                                 addr54:
                                 if(§§pop() < 10)
                                 {
                                    if(_loc6_ && §8!z§)
                                    {
                                    }
                                    addr73:
                                    var _loc4_:Number = Math.pow(10,param2);
                                    if(!_loc6_)
                                    {
                                       §§push(Math.round(param1 * _loc4_) / _loc4_);
                                       loop0:
                                       while(true)
                                       {
                                          §§push(Number(§§pop()));
                                          loop1:
                                          while(true)
                                          {
                                             param1 = §§pop();
                                             loop2:
                                             while(true)
                                             {
                                                §§push(param3);
                                                loop3:
                                                while(true)
                                                {
                                                   §§push(0);
                                                   addr209:
                                                   while(true)
                                                   {
                                                      §§push(§§pop() > §§pop());
                                                      addr210:
                                                      while(true)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            while(true)
                                                            {
                                                               §§pop();
                                                            }
                                                            addr212:
                                                         }
                                                         else
                                                         {
                                                            while(true)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  if(!_loc5_)
                                                                  {
                                                                     loop10:
                                                                     for(; !(_loc6_ && §8!z§); while(true)
                                                                     {
                                                                        param1 = §§pop();
                                                                        if(!(_loc6_ && param3))
                                                                        {
                                                                           break;
                                                                        }
                                                                        continue loop10;
                                                                     },addr130:,while(true)
                                                                     {
                                                                        §§push(param1);
                                                                        if(_loc5_ || param3)
                                                                        {
                                                                           if(!(_loc6_ && param2))
                                                                           {
                                                                              if(!_loc5_)
                                                                              {
                                                                                 continue loop0;
                                                                              }
                                                                              if(_loc5_ || param2)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              §§goto(addr176);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr121);
                                                                           }
                                                                        }
                                                                        §§goto(addr122);
                                                                        §§goto(addr130);
                                                                     },addr122:,return §§pop())
                                                                     {
                                                                        if(_loc6_)
                                                                        {
                                                                           continue loop2;
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§push(§%V§(param1,param2,-1));
                                                                           addr121:
                                                                           while(true)
                                                                           {
                                                                              §§push(Number(§§pop()));
                                                                              continue loop10;
                                                                           }
                                                                        }
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§push(param3);
                                                                        if(_loc5_)
                                                                        {
                                                                           continue loop3;
                                                                        }
                                                                     }
                                                                     continue loop3;
                                                                     addr213:
                                                                     addr196:
                                                                  }
                                                                  §§push(§§findproperty(§%V§));
                                                                  §§push(param1);
                                                                  if(!_loc6_)
                                                                  {
                                                                     §§push(param3);
                                                                     if(_loc5_)
                                                                     {
                                                                        addr172:
                                                                        §§push(§§pop() * §§pop());
                                                                        §§push(param2 - 1);
                                                                     }
                                                                     §§push(§§pop().§%V§(§§pop(),§§pop(),-1));
                                                                     while(!(_loc6_ && param2))
                                                                     {
                                                                        §§push(§§pop() / param3);
                                                                        if(_loc6_)
                                                                        {
                                                                           continue loop0;
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§push(Number(§§pop()));
                                                                           continue loop0;
                                                                        }
                                                                     }
                                                                     continue loop1;
                                                                     addr176:
                                                                  }
                                                                  §§goto(addr172);
                                                                  §§goto(addr187);
                                                               }
                                                               §§goto(addr77);
                                                            }
                                                            addr160:
                                                         }
                                                         §§goto(addr213);
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr205);
                                 }
                              }
                              §§goto(addr73);
                           }
                           param2 = Math.max(0,param2);
                           §§goto(addr73);
                        }
                     }
                  }
               }
               §§goto(addr54);
            }
         }
         §§goto(addr73);
      }
   }
}
