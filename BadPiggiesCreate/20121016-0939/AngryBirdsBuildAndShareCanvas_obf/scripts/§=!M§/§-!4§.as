package §=!M§
{
   public class §-!4§
   {
       
      
      public function §-!4§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
         }
      }
      
      public static function §66§(param1:Number, param2:Boolean = true) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param1))
         {
            if(param2)
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
                     loop7:
                     while(true)
                     {
                        §§push(Number(§§pop()));
                        addr126:
                        while(true)
                        {
                           param1 = §§pop();
                           §§push(param1);
                           addr103:
                           while(true)
                           {
                              if(!_loc3_)
                              {
                                 continue loop7;
                              }
                              addr105:
                              §§push(param1);
                              loop0:
                              while(true)
                              {
                                 §§push(§§pop() * §§pop());
                                 addr107:
                                 while(true)
                                 {
                                    §§push(Number(§§pop()));
                                    addr108:
                                    loop2:
                                    while(true)
                                    {
                                       param1 = §§pop();
                                       addr119:
                                       while(true)
                                       {
                                          §§push(1);
                                          if(_loc3_ || param2)
                                          {
                                             §§push(param1);
                                             if(_loc3_)
                                             {
                                                §§push(§§pop() - §§pop());
                                                continue loop2;
                                             }
                                             continue loop6;
                                          }
                                          continue loop5;
                                       }
                                    }
                                    continue loop0;
                                 }
                              }
                           }
                           continue loop7;
                        }
                     }
                  }
               }
            }
            else
            {
               §§push(param1);
               if(_loc3_ || _loc3_)
               {
                  if(!_loc4_)
                  {
                     §§push(param1);
                     if(!_loc4_)
                     {
                        addr39:
                        §§push(§§pop() * §§pop());
                        if(_loc3_ || param1)
                        {
                           if(_loc3_ || _loc3_)
                           {
                              return §§pop();
                           }
                           §§goto(addr126);
                        }
                        while(true)
                        {
                           if(_loc3_ || §-!4§)
                           {
                              if(!_loc4_)
                              {
                                 break;
                              }
                              §§goto(addr103);
                           }
                           §§goto(addr108);
                        }
                        return §§pop();
                        addr79:
                     }
                     §§goto(addr106);
                  }
                  §§goto(addr107);
               }
               §§goto(addr39);
            }
            §§goto(addr79);
         }
         §§goto(addr119);
      }
      
      public static function §^!V§(param1:Number, param2:int, param3:Number = -1) : Number
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && param2))
         {
            §§push(param3);
            if(!(_loc6_ && §-!4§))
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
                           if(!_loc6_)
                           {
                              addr49:
                              §§push(param3);
                              if(_loc5_)
                              {
                                 addr54:
                                 if(§§pop() < 10)
                                 {
                                    if(!_loc6_)
                                    {
                                       addr57:
                                       param2 = Math.max(0,param2);
                                    }
                                    addr68:
                                    var _loc4_:Number = Math.pow(10,param2);
                                    if(!(_loc6_ && §-!4§))
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
                                                   addr205:
                                                   while(true)
                                                   {
                                                      §§push(§§pop() > §§pop());
                                                      if(_loc5_ || param1)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            addr215:
                                                            while(true)
                                                            {
                                                               §§pop();
                                                               addr216:
                                                               addr200:
                                                               while(true)
                                                               {
                                                                  if(!(_loc6_ && param1))
                                                                  {
                                                                     §§push(param3);
                                                                     if(!(_loc5_ || param1))
                                                                     {
                                                                        break;
                                                                     }
                                                                     continue loop3;
                                                                  }
                                                                  continue loop2;
                                                               }
                                                               addr200:
                                                               while(true)
                                                               {
                                                                  param1 = §§pop();
                                                               }
                                                            }
                                                            addr215:
                                                         }
                                                         else
                                                         {
                                                            while(true)
                                                            {
                                                               if(!§§pop())
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§push(param1);
                                                                     if(!(_loc6_ && param1))
                                                                     {
                                                                        if(!(_loc6_ && param1))
                                                                        {
                                                                           if(_loc5_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§goto(addr200);
                                                                           }
                                                                           addr199:
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           if(!_loc6_)
                                                                           {
                                                                              continue loop0;
                                                                           }
                                                                           §§goto(addr200);
                                                                        }
                                                                        continue loop0;
                                                                        addr104:
                                                                     }
                                                                     else
                                                                     {
                                                                        addr124:
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        param1 = §§pop();
                                                                        if(!_loc6_)
                                                                        {
                                                                           if(!(_loc6_ && param3))
                                                                           {
                                                                              if(_loc5_ || param1)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              §§goto(addr216);
                                                                           }
                                                                           else
                                                                           {
                                                                              addr171:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§findproperty(§^!V§));
                                                                                 §§push(param1);
                                                                                 if(!_loc6_)
                                                                                 {
                                                                                    §§push(param3);
                                                                                    if(_loc5_ || param2)
                                                                                    {
                                                                                       addr184:
                                                                                       §§push(§§pop() * §§pop());
                                                                                       §§push(param2 - 1);
                                                                                    }
                                                                                    §§push(§§pop().§^!V§(§§pop(),§§pop(),-1));
                                                                                    if(_loc5_ || param1)
                                                                                    {
                                                                                       if(_loc6_)
                                                                                       {
                                                                                          continue loop1;
                                                                                       }
                                                                                       §§push(§§pop() / param3);
                                                                                    }
                                                                                    §§goto(addr199);
                                                                                 }
                                                                                 §§goto(addr184);
                                                                              }
                                                                              addr171:
                                                                           }
                                                                           §§goto(addr200);
                                                                        }
                                                                     }
                                                                  }
                                                                  return §§pop();
                                                               }
                                                               §§goto(addr171);
                                                            }
                                                            addr169:
                                                         }
                                                         while(true)
                                                         {
                                                            §§goto(addr104);
                                                         }
                                                      }
                                                      §§goto(addr215);
                                                   }
                                                }
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr171);
                                 }
                              }
                              §§goto(addr68);
                           }
                           §§goto(addr57);
                        }
                     }
                  }
               }
               §§goto(addr54);
            }
            §§goto(addr68);
         }
         §§goto(addr49);
      }
   }
}
