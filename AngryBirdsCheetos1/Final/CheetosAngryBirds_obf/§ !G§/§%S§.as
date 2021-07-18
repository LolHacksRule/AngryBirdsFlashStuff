package § !G§
{
   public class §%S§
   {
       
      
      public function §%S§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
         }
      }
      
      public static function §6b§(param1:Number, param2:Boolean = true) : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param1))
         {
            if(param2)
            {
               §§push(1);
               while(true)
               {
                  §§push(param1);
                  addr120:
                  while(true)
                  {
                     §§push(§§pop() - §§pop());
                     addr121:
                     while(true)
                     {
                        §§push(Number(§§pop()));
                        addr122:
                        while(true)
                        {
                           param1 = §§pop();
                           §§push(param1);
                           addr97:
                           while(true)
                           {
                              §§push(param1);
                              addr98:
                              while(true)
                              {
                                 §§push(§§pop() * §§pop());
                              }
                           }
                        }
                     }
                  }
                  addr104:
                  param1 = §§pop();
                  §§push(1);
                  if(_loc3_)
                  {
                     continue;
                  }
                  §§push(param1);
                  if(_loc4_ || _loc3_)
                  {
                     §§push(§§pop() - §§pop());
                     while(true)
                     {
                        if(!(_loc3_ && param1))
                        {
                           return §§pop();
                        }
                        addr102:
                        while(_loc4_)
                        {
                           §§goto(addr104);
                        }
                        §§goto(addr121);
                     }
                     addr80:
                  }
                  §§goto(addr120);
               }
            }
            else
            {
               addr25:
               §§push(param1);
               if(!_loc3_)
               {
                  if(_loc4_)
                  {
                     §§push(param1);
                     if(!(_loc3_ && §%S§))
                     {
                        addr40:
                        §§push(§§pop() * §§pop());
                        if(!(_loc3_ && param1))
                        {
                           if(!(_loc3_ && §%S§))
                           {
                              return §§pop();
                           }
                           §§goto(addr97);
                        }
                        while(true)
                        {
                           if(_loc4_)
                           {
                              §§goto(addr102);
                              §§push(Number(§§pop()));
                           }
                           §§goto(addr122);
                        }
                        addr99:
                     }
                     §§goto(addr98);
                  }
                  §§goto(addr80);
               }
               §§goto(addr40);
            }
            §§goto(addr99);
         }
         §§goto(addr25);
      }
      
      public static function §4!>§(param1:Number, param2:int, param3:Number = -1) : Number
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            §§push(param3);
            if(_loc5_ || param3)
            {
               §§push(0);
               if(!(_loc6_ && §%S§))
               {
                  §§push(§§pop() > §§pop());
                  if(_loc5_)
                  {
                     if(§§pop())
                     {
                        if(!(_loc6_ && param2))
                        {
                           §§pop();
                           if(!_loc6_)
                           {
                              §§push(param3);
                              if(_loc5_ || §%S§)
                              {
                                 addr59:
                                 if(§§pop() < 10)
                                 {
                                    if(_loc5_)
                                    {
                                       addr62:
                                       param2 = Math.max(0,param2);
                                    }
                                    §§push(Number(Math.pow(10,param2)));
                                 }
                                 §§goto(addr62);
                              }
                              var _loc4_:* = §§pop();
                              if(_loc5_)
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
                                          for(; _loc5_; while(true)
                                          {
                                             if(_loc6_ && param2)
                                             {
                                                continue loop3;
                                             }
                                             if(!_loc5_)
                                             {
                                                continue loop0;
                                             }
                                             §§goto(addr186);
                                             §§push(Number(§§pop()));
                                          })
                                          {
                                             §§push(0);
                                             loop4:
                                             while(true)
                                             {
                                                §§push(§§pop() > §§pop());
                                                if(!_loc6_)
                                                {
                                                   if(§§pop())
                                                   {
                                                      addr207:
                                                      while(true)
                                                      {
                                                         §§pop();
                                                         loop7:
                                                         while(true)
                                                         {
                                                            §§push(param3);
                                                            if(_loc5_)
                                                            {
                                                               continue loop4;
                                                            }
                                                            addr186:
                                                            loop14:
                                                            while(true)
                                                            {
                                                               param1 = §§pop();
                                                               addr187:
                                                               loop6:
                                                               while(true)
                                                               {
                                                                  if(!(_loc5_ || param1))
                                                                  {
                                                                     continue loop7;
                                                                  }
                                                                  if(_loc6_)
                                                                  {
                                                                     continue loop2;
                                                                  }
                                                                  §§push(§4!>§(param1,param2,-1));
                                                                  if(_loc5_ || param3)
                                                                  {
                                                                     §§push(Number(§§pop()));
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     if(_loc6_ && param2)
                                                                     {
                                                                        continue loop14;
                                                                     }
                                                                     if(!(_loc5_ || param1))
                                                                     {
                                                                        continue loop3;
                                                                     }
                                                                     if(_loc5_)
                                                                     {
                                                                        param1 = §§pop();
                                                                        if(!(_loc5_ || §%S§))
                                                                        {
                                                                           continue loop6;
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        addr174:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop() / param3);
                                                                           continue loop3;
                                                                        }
                                                                        addr174:
                                                                     }
                                                                  }
                                                               }
                                                               continue loop3;
                                                            }
                                                         }
                                                         continue loop4;
                                                      }
                                                      addr207:
                                                   }
                                                   else
                                                   {
                                                      while(true)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            if(_loc5_)
                                                            {
                                                               while(true)
                                                               {
                                                                  §§push(§§findproperty(§4!>§));
                                                                  §§push(param1);
                                                                  if(!(_loc6_ && §%S§))
                                                                  {
                                                                     §§push(param3);
                                                                     if(!_loc6_)
                                                                     {
                                                                        addr170:
                                                                        §§push(§§pop() * §§pop());
                                                                        §§push(param2 - 1);
                                                                     }
                                                                     §§goto(addr174);
                                                                     §§push(§§pop().§4!>§(§§pop(),§§pop(),-1));
                                                                  }
                                                                  §§goto(addr170);
                                                               }
                                                               addr157:
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr187);
                                                            }
                                                            §§goto(addr174);
                                                         }
                                                         addr145:
                                                         §§push(§§pop() < §§pop());
                                                         if(!(_loc6_ && param1))
                                                         {
                                                            continue;
                                                         }
                                                         §§goto(addr207);
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(param1);
                                                      if(_loc5_)
                                                      {
                                                         break;
                                                      }
                                                      §§goto(addr98);
                                                   }
                                                   return §§pop();
                                                }
                                                §§goto(addr207);
                                             }
                                          }
                                          continue loop1;
                                       }
                                    }
                                 }
                              }
                              §§goto(addr157);
                           }
                           §§goto(addr62);
                        }
                     }
                  }
               }
            }
            §§goto(addr59);
         }
         §§goto(addr62);
      }
   }
}
