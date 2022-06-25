package §^_§
{
   public class §3!q§
   {
       
      
      public function §3!q§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
         }
      }
      
      public static function §^s§(param1:Number, param2:Boolean = true) : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param2)
         {
            if(!param2)
            {
               §§push(param1);
               if(!(_loc3_ && §3!q§))
               {
                  if(_loc4_)
                  {
                     if(_loc4_ || _loc3_)
                     {
                        §§push(param1);
                        if(_loc4_ || _loc3_)
                        {
                           addr62:
                           §§push(§§pop() * §§pop());
                           if(_loc4_ || _loc3_)
                           {
                              if(_loc4_ || param2)
                              {
                                 return §§pop();
                              }
                              loop5:
                              while(true)
                              {
                                 §§push(param1);
                                 addr116:
                                 while(true)
                                 {
                                    §§push(§§pop() * §§pop());
                                    if(_loc4_)
                                    {
                                       §§push(Number(§§pop()));
                                    }
                                    continue loop5;
                                 }
                              }
                              addr115:
                           }
                           while(true)
                           {
                              param1 = §§pop();
                              if(_loc4_)
                              {
                                 if(!_loc3_)
                                 {
                                    while(true)
                                    {
                                       §§push(1);
                                       if(_loc4_ || param2)
                                       {
                                          §§push(param1);
                                          if(_loc4_)
                                          {
                                             §§push(§§pop() - §§pop());
                                             while(_loc3_)
                                             {
                                             }
                                             return §§pop();
                                             addr92:
                                          }
                                          while(true)
                                          {
                                             §§push(§§pop() - §§pop());
                                          }
                                          addr130:
                                          while(true)
                                          {
                                             §§push(Number(§§pop()));
                                             addr132:
                                             while(true)
                                             {
                                                param1 = §§pop();
                                                addr133:
                                                while(true)
                                                {
                                                   §§goto(addr115);
                                                }
                                             }
                                          }
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                          }
                                          addr129:
                                       }
                                       §§goto(addr130);
                                    }
                                    addr125:
                                 }
                                 else
                                 {
                                    while(true)
                                    {
                                    }
                                    addr128:
                                 }
                                 §§goto(addr129);
                              }
                              §§goto(addr133);
                           }
                        }
                        §§goto(addr116);
                     }
                     §§goto(addr132);
                  }
                  §§goto(addr92);
               }
               §§goto(addr62);
            }
            §§goto(addr128);
         }
         §§goto(addr125);
      }
      
      public static function each(param1:Number, param2:int, param3:Number = -1) : Number
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || param1)
         {
            §§push(param3);
            if(_loc6_ || param3)
            {
               §§push(0);
               if(!(_loc5_ && §3!q§))
               {
                  §§push(§§pop() > §§pop());
                  if(!(_loc5_ && param1))
                  {
                     if(§§pop())
                     {
                        if(_loc6_)
                        {
                           §§pop();
                           if(!(_loc5_ && §3!q§))
                           {
                              addr79:
                              §§push(param3);
                              if(!_loc5_)
                              {
                                 addr64:
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
                                                if(!_loc5_)
                                                {
                                                   if(§§pop())
                                                   {
                                                      loop12:
                                                      while(true)
                                                      {
                                                         §§pop();
                                                         addr229:
                                                         while(true)
                                                         {
                                                            §§push(param3);
                                                            if(!(_loc5_ && §3!q§))
                                                            {
                                                               §§push(10);
                                                               if(_loc5_ && param3)
                                                               {
                                                                  break;
                                                               }
                                                               addr160:
                                                               §§push(§§pop() < §§pop());
                                                               if(_loc6_ || param3)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        if(!(_loc5_ && §3!q§))
                                                                        {
                                                                           if(!_loc6_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§push(§§findproperty(each));
                                                                              §§push(param1);
                                                                              if(!_loc5_)
                                                                              {
                                                                                 §§push(param3);
                                                                                 if(!(_loc5_ && param3))
                                                                                 {
                                                                                    addr192:
                                                                                    §§push(§§pop() * §§pop());
                                                                                    §§push(param2 - 1);
                                                                                 }
                                                                                 §§push(§§pop().each(§§pop(),§§pop(),-1));
                                                                                 loop14:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop() / param3);
                                                                                    if(_loc6_)
                                                                                    {
                                                                                       addr211:
                                                                                       §§push(Number(§§pop()));
                                                                                       loop11:
                                                                                       while(true)
                                                                                       {
                                                                                          if(!(_loc5_ && param3))
                                                                                          {
                                                                                             param1 = §§pop();
                                                                                             addr219:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(each(param1,param2,-1));
                                                                                                addr127:
                                                                                                while(_loc6_)
                                                                                                {
                                                                                                   §§push(Number(§§pop()));
                                                                                                   continue loop0;
                                                                                                   if(!(_loc5_ && §3!q§))
                                                                                                   {
                                                                                                      if(!_loc5_)
                                                                                                      {
                                                                                                         if(_loc6_ || param1)
                                                                                                         {
                                                                                                            §§goto(addr118);
                                                                                                         }
                                                                                                         continue loop14;
                                                                                                      }
                                                                                                      continue loop11;
                                                                                                   }
                                                                                                }
                                                                                                continue loop3;
                                                                                             }
                                                                                             addr219:
                                                                                          }
                                                                                          continue loop1;
                                                                                       }
                                                                                       addr211:
                                                                                    }
                                                                                    §§goto(addr211);
                                                                                 }
                                                                              }
                                                                              §§goto(addr192);
                                                                           }
                                                                        }
                                                                        §§goto(addr219);
                                                                     }
                                                                     else
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           §§push(param1);
                                                                           if(_loc5_ && param2)
                                                                           {
                                                                              continue loop0;
                                                                           }
                                                                           §§goto(addr92);
                                                                        }
                                                                        addr118:
                                                                        return §§pop();
                                                                        addr83:
                                                                     }
                                                                     §§goto(addr127);
                                                                     §§goto(addr160);
                                                                  }
                                                                  continue loop2;
                                                                  addr168:
                                                               }
                                                               continue loop12;
                                                            }
                                                            §§goto(addr211);
                                                            continue loop12;
                                                         }
                                                         continue loop4;
                                                      }
                                                      addr228:
                                                   }
                                                   §§goto(addr168);
                                                }
                                                §§goto(addr228);
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                              §§goto(addr179);
                           }
                           addr68:
                           param2 = Math.max(0,param2);
                           §§goto(addr79);
                           §§push(Number(Math.pow(10,param2)));
                        }
                     }
                  }
                  if(§§pop())
                  {
                     if(_loc5_)
                     {
                     }
                  }
                  §§goto(addr68);
               }
               §§goto(addr64);
            }
            §§goto(addr79);
         }
         §§goto(addr68);
      }
   }
}
