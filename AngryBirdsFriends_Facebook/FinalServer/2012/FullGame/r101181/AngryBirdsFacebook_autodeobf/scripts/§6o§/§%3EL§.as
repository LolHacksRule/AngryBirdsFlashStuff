package §6o§
{
   public class §>L§
   {
       
      
      public function §>L§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            super();
         }
      }
      
      public static function §"1§(param1:Number, param2:Boolean = true) : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            if(param2)
            {
               if(!(_loc3_ && §>L§))
               {
                  §§push(1);
                  loop5:
                  while(true)
                  {
                     §§push(param1);
                     loop6:
                     while(true)
                     {
                        §§push(§§pop() - §§pop());
                        addr131:
                        while(true)
                        {
                           §§push(Number(§§pop()));
                           addr132:
                           while(true)
                           {
                              param1 = §§pop();
                              addr133:
                              loop9:
                              while(true)
                              {
                                 §§push(param1);
                                 addr107:
                                 loop3:
                                 while(true)
                                 {
                                    §§push(param1);
                                    addr108:
                                    while(true)
                                    {
                                       §§push(§§pop() * §§pop());
                                       addr109:
                                       while(true)
                                       {
                                          §§push(Number(§§pop()));
                                          addr110:
                                          while(true)
                                          {
                                             param1 = §§pop();
                                             if(!(_loc4_ || §>L§))
                                             {
                                                continue loop9;
                                             }
                                             §§push(1);
                                             if(_loc3_)
                                             {
                                                continue loop5;
                                             }
                                             §§push(param1);
                                             if(!_loc4_)
                                             {
                                                continue loop6;
                                             }
                                             §§push(§§pop() - §§pop());
                                          }
                                       }
                                       continue loop3;
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
               }
               §§goto(addr133);
            }
            else
            {
               §§push(param1);
               if(!(_loc3_ && param1))
               {
                  if(!(_loc3_ && param1))
                  {
                     if(_loc4_ || §>L§)
                     {
                        §§push(param1);
                        if(!_loc3_)
                        {
                           addr47:
                           §§push(§§pop() * §§pop());
                           if(!_loc3_)
                           {
                              if(_loc4_ || §>L§)
                              {
                                 if(_loc4_ || §>L§)
                                 {
                                    return §§pop();
                                 }
                                 §§goto(addr107);
                              }
                              §§goto(addr109);
                           }
                           while(_loc3_ && _loc3_)
                           {
                              §§goto(addr131);
                           }
                           return §§pop();
                           addr84:
                        }
                        §§goto(addr108);
                     }
                     §§goto(addr132);
                  }
                  §§goto(addr110);
               }
               §§goto(addr47);
            }
         }
         §§goto(addr133);
      }
      
      public static function §,!n§(param1:Number, param2:int, param3:Number = -1) : Number
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            §§push(param3);
            if(_loc6_ || §>L§)
            {
               §§push(0);
               if(!_loc5_)
               {
                  §§push(§§pop() > §§pop());
                  if(!_loc5_)
                  {
                     if(§§pop())
                     {
                        if(_loc6_ || param1)
                        {
                           §§pop();
                           if(_loc6_)
                           {
                              addr69:
                              §§push(param3);
                              if(_loc6_)
                              {
                                 addr49:
                                 §§push(§§pop() < 10);
                              }
                              var _loc4_:* = §§pop();
                              if(_loc6_)
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
                                             loop4:
                                             while(true)
                                             {
                                                §§push(§§pop() > §§pop());
                                                if(!(_loc5_ && param2))
                                                {
                                                   if(§§pop())
                                                   {
                                                      loop14:
                                                      while(true)
                                                      {
                                                         §§pop();
                                                         addr219:
                                                         while(true)
                                                         {
                                                            addr125:
                                                            §§push(param3);
                                                            §§push(10);
                                                            if(_loc5_)
                                                            {
                                                               break;
                                                            }
                                                            §§push(§§pop() < §§pop());
                                                            if(_loc5_ && §>L§)
                                                            {
                                                            }
                                                            continue loop14;
                                                         }
                                                         continue loop4;
                                                      }
                                                      addr218:
                                                   }
                                                   while(true)
                                                   {
                                                      if(!§§pop())
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(param1);
                                                            if(_loc6_)
                                                            {
                                                               if(!_loc5_)
                                                               {
                                                                  break;
                                                               }
                                                               §§goto(addr88);
                                                            }
                                                         }
                                                         return §§pop();
                                                         addr73:
                                                      }
                                                      while(!_loc5_)
                                                      {
                                                         §§push(§§findproperty(§,!n§));
                                                         §§push(param1);
                                                         if(!(_loc5_ && §>L§))
                                                         {
                                                            §§push(param3);
                                                            if(_loc6_ || param1)
                                                            {
                                                               addr158:
                                                               §§push(§§pop() * §§pop());
                                                               §§push(param2 - 1);
                                                            }
                                                            §§push(§§pop().§,!n§(§§pop(),§§pop(),-1));
                                                            loop7:
                                                            for(; !(_loc5_ && param2); if(!(_loc6_ || param2))
                                                            {
                                                               continue;
                                                            },§§push(Number(§§pop())),while(!_loc5_)
                                                            {
                                                               continue loop3;
                                                            },§§goto(addr125))
                                                            {
                                                               §§push(§§pop() / param3);
                                                               if(!(_loc5_ && param2))
                                                               {
                                                                  continue loop0;
                                                               }
                                                               addr186:
                                                               loop8:
                                                               while(true)
                                                               {
                                                                  param1 = §§pop();
                                                                  addr187:
                                                                  while(!(_loc5_ && param2))
                                                                  {
                                                                     §§push(§,!n§(param1,param2,-1));
                                                                     while(true)
                                                                     {
                                                                        if(!_loc5_)
                                                                        {
                                                                           continue loop7;
                                                                        }
                                                                        continue loop8;
                                                                     }
                                                                     continue loop7;
                                                                  }
                                                                  continue loop2;
                                                               }
                                                            }
                                                            continue loop1;
                                                         }
                                                         §§goto(addr158);
                                                      }
                                                      §§goto(addr219);
                                                      §§goto(addr98);
                                                      §§goto(addr128);
                                                   }
                                                }
                                                §§goto(addr218);
                                             }
                                             if(_loc5_)
                                             {
                                                continue;
                                             }
                                             param1 = §§pop();
                                             if(_loc6_)
                                             {
                                                if(!(_loc5_ && §>L§))
                                                {
                                                   while(true)
                                                   {
                                                      §§goto(addr73);
                                                   }
                                                   addr122:
                                                }
                                                §§goto(addr138);
                                             }
                                             §§goto(addr187);
                                          }
                                       }
                                    }
                                 }
                              }
                              §§goto(addr122);
                           }
                           addr58:
                           param2 = Math.max(0,param2);
                           §§goto(addr69);
                           §§push(Number(Math.pow(10,param2)));
                        }
                     }
                  }
                  if(§§pop())
                  {
                     if(_loc5_ && param1)
                     {
                     }
                  }
                  §§goto(addr58);
               }
               §§goto(addr49);
            }
            §§goto(addr69);
         }
         §§goto(addr58);
      }
   }
}
