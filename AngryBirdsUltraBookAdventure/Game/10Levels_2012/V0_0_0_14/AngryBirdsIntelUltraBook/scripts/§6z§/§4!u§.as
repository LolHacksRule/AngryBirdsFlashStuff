package §6z§
{
   public class §4!u§
   {
       
      
      public function §4!u§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            super();
         }
      }
      
      public static function §4!W§(param1:Number, param2:Boolean = true) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || §4!u§)
         {
            if(param2)
            {
               addr117:
               if(!(_loc4_ && _loc3_))
               {
                  §§push(1);
                  while(true)
                  {
                     §§push(param1);
                     addr112:
                     while(true)
                     {
                        §§push(§§pop() - §§pop());
                        if(_loc3_)
                        {
                           §§push(Number(§§pop()));
                        }
                     }
                  }
                  addr111:
               }
               loop7:
               while(true)
               {
                  §§push(param1);
                  if(_loc3_)
                  {
                     addr94:
                     §§push(param1);
                     while(true)
                     {
                        §§push(§§pop() * §§pop());
                        addr96:
                        while(true)
                        {
                           §§push(Number(§§pop()));
                        }
                        §§goto(addr94);
                     }
                     addr95:
                  }
                  addr97:
                  while(true)
                  {
                     param1 = §§pop();
                     if(!_loc3_)
                     {
                        continue loop7;
                     }
                     §§push(1);
                     if(_loc3_ || param1)
                     {
                        §§push(param1);
                        if(!(_loc4_ && _loc3_))
                        {
                           §§push(§§pop() - §§pop());
                           while(_loc4_)
                           {
                              §§goto(addr96);
                           }
                           return §§pop();
                           addr69:
                        }
                     }
                     else
                     {
                        §§goto(addr111);
                     }
                     §§goto(addr112);
                  }
               }
               addr117:
            }
            else
            {
               §§push(param1);
               if(!_loc4_)
               {
                  if(_loc3_)
                  {
                     if(!_loc4_)
                     {
                        §§push(param1);
                        if(!_loc4_)
                        {
                           addr36:
                           §§push(§§pop() * §§pop());
                           if(_loc3_)
                           {
                              return §§pop();
                           }
                           while(true)
                           {
                              param1 = §§pop();
                              §§goto(addr117);
                           }
                           addr116:
                        }
                        §§goto(addr95);
                     }
                     §§goto(addr97);
                  }
                  §§goto(addr69);
               }
               §§goto(addr36);
            }
            §§goto(addr116);
         }
         §§goto(addr117);
      }
      
      public static function §-!Q§(param1:Number, param2:int, param3:Number = -1) : Number
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || param1)
         {
            §§push(param3);
            if(!(_loc6_ && param2))
            {
               §§push(0);
               if(_loc5_)
               {
                  §§push(§§pop() > §§pop());
                  if(_loc5_)
                  {
                     if(§§pop())
                     {
                        if(!_loc6_)
                        {
                           addr41:
                           §§pop();
                           if(!(_loc6_ && param2))
                           {
                              §§push(param3);
                              if(_loc5_)
                              {
                                 addr54:
                                 if(§§pop() < 10)
                                 {
                                    if(_loc5_)
                                    {
                                       addr57:
                                       param2 = Math.max(0,param2);
                                       addr63:
                                       §§push(Number(Math.pow(10,param2)));
                                    }
                                    §§goto(addr63);
                                 }
                                 §§goto(addr57);
                              }
                              var _loc4_:* = §§pop();
                              if(_loc5_)
                              {
                                 §§push(Math.round(param1 * _loc4_) / _loc4_);
                                 while(true)
                                 {
                                    §§push(Number(§§pop()));
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
                                                if(_loc5_ || param2)
                                                {
                                                   if(§§pop())
                                                   {
                                                      loop14:
                                                      while(true)
                                                      {
                                                         §§pop();
                                                         loop7:
                                                         while(true)
                                                         {
                                                            §§push(param3);
                                                            if(!_loc6_)
                                                            {
                                                               §§push(10);
                                                               if(!(_loc5_ || param3))
                                                               {
                                                                  break;
                                                               }
                                                               §§push(§§pop() < §§pop());
                                                               if(!_loc5_)
                                                               {
                                                                  continue loop14;
                                                               }
                                                               while(true)
                                                               {
                                                                  if(!§§pop())
                                                                  {
                                                                     loop13:
                                                                     while(true)
                                                                     {
                                                                        §§push(param1);
                                                                        if(!_loc6_)
                                                                        {
                                                                           addr76:
                                                                           if(_loc5_ || §4!u§)
                                                                           {
                                                                              break;
                                                                           }
                                                                           continue loop3;
                                                                        }
                                                                        addr119:
                                                                        loop12:
                                                                        while(!_loc6_)
                                                                        {
                                                                           addr121:
                                                                           if(!(_loc6_ && param3))
                                                                           {
                                                                              param1 = §§pop();
                                                                              if(!(_loc6_ && param3))
                                                                              {
                                                                                 if(!(_loc5_ || param3))
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       if(!(_loc5_ || param3))
                                                                                       {
                                                                                          continue loop7;
                                                                                       }
                                                                                       if(_loc6_ && param3)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       §§push(§§findproperty(§-!Q§));
                                                                                       §§push(param1);
                                                                                       if(!_loc6_)
                                                                                       {
                                                                                          addr192:
                                                                                          §§push(param3);
                                                                                          if(_loc5_ || §4!u§)
                                                                                          {
                                                                                             addr188:
                                                                                             §§push(§§pop() * §§pop());
                                                                                             §§push(param2 - 1);
                                                                                          }
                                                                                          §§push(§§pop().§-!Q§(§§pop(),§§pop(),-1));
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop() / param3);
                                                                                             if(!(_loc6_ && param1))
                                                                                             {
                                                                                                §§push(Number(§§pop()));
                                                                                                break loop12;
                                                                                             }
                                                                                             break loop12;
                                                                                             §§goto(addr121);
                                                                                          }
                                                                                          addr192:
                                                                                       }
                                                                                       §§goto(addr188);
                                                                                    }
                                                                                    continue loop2;
                                                                                    addr161:
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    continue loop13;
                                                                                 }
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§push(§-!Q§(param1,param2,-1));
                                                                                 continue loop3;
                                                                              }
                                                                              addr213:
                                                                           }
                                                                           §§goto(addr192);
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           param1 = §§pop();
                                                                           §§goto(addr213);
                                                                        }
                                                                     }
                                                                     return §§pop();
                                                                  }
                                                                  §§goto(addr161);
                                                               }
                                                            }
                                                            §§goto(addr192);
                                                         }
                                                         continue loop4;
                                                      }
                                                      addr227:
                                                   }
                                                   §§goto(addr159);
                                                }
                                                §§goto(addr227);
                                             }
                                          }
                                       }
                                    }
                                    if(_loc6_ && param2)
                                    {
                                       continue;
                                    }
                                    §§goto(addr119);
                                    §§push(Number(§§pop()));
                                 }
                              }
                              §§goto(addr143);
                           }
                           §§goto(addr57);
                        }
                     }
                     §§goto(addr54);
                  }
                  §§goto(addr41);
               }
            }
            §§goto(addr54);
         }
         §§goto(addr57);
      }
   }
}
