package §1!B§
{
   public class §#A§
   {
       
      
      public function §#A§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            super();
         }
      }
      
      public static function §=!N§(param1:Number, param2:Boolean = true) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            if(param2)
            {
               if(!(_loc4_ && param1))
               {
                  §§push(1);
                  loop0:
                  while(true)
                  {
                     §§push(param1);
                     addr124:
                     addr111:
                     while(true)
                     {
                        §§push(§§pop() - §§pop());
                        addr125:
                        while(true)
                        {
                           §§push(Number(§§pop()));
                           addr126:
                           while(true)
                           {
                              param1 = §§pop();
                           }
                        }
                     }
                     while(true)
                     {
                        param1 = §§pop();
                        §§push(1);
                        if(!_loc4_)
                        {
                           §§push(param1);
                           if(_loc4_)
                           {
                              §§goto(addr124);
                           }
                           addr85:
                           return §§pop() - §§pop();
                           addr84:
                        }
                        continue loop0;
                     }
                  }
               }
               while(true)
               {
                  §§push(param1);
                  addr108:
                  while(true)
                  {
                     §§push(param1);
                     addr109:
                     while(true)
                     {
                        §§push(§§pop() * §§pop());
                        addr110:
                        while(true)
                        {
                           §§goto(addr111);
                        }
                     }
                  }
               }
               §§goto(addr84);
            }
            else
            {
               addr19:
               §§push(param1);
               if(_loc3_)
               {
                  if(_loc3_)
                  {
                     §§push(param1);
                     if(_loc3_ || _loc3_)
                     {
                        addr34:
                        §§push(§§pop() * §§pop());
                        if(!(_loc4_ && param1))
                        {
                           if(_loc3_)
                           {
                              if(_loc3_ || _loc3_)
                              {
                                 if(!(_loc4_ && param1))
                                 {
                                    if(!(_loc4_ && param1))
                                    {
                                       return §§pop();
                                    }
                                    §§goto(addr125);
                                 }
                                 §§goto(addr108);
                              }
                              §§goto(addr110);
                           }
                           §§goto(addr111);
                        }
                        §§goto(addr85);
                     }
                     §§goto(addr109);
                  }
                  §§goto(addr126);
               }
               §§goto(addr34);
            }
         }
         §§goto(addr19);
      }
      
      public static function §`!V§(param1:Number, param2:int, param3:Number = -1) : Number
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && §#A§))
         {
            §§push(param3);
            if(!(_loc5_ && §#A§))
            {
               §§push(0);
               if(_loc6_ || param1)
               {
                  §§push(§§pop() > §§pop());
                  if(!(_loc5_ && param3))
                  {
                     if(§§pop())
                     {
                        if(!_loc5_)
                        {
                           addr52:
                           §§pop();
                           if(_loc6_)
                           {
                              §§push(param3);
                              if(_loc6_)
                              {
                                 addr60:
                                 if(§§pop() < 10)
                                 {
                                    if(!_loc6_)
                                    {
                                    }
                                    addr74:
                                    var _loc4_:Number = Math.pow(10,param2);
                                    if(!_loc5_)
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
                                                   addr235:
                                                   while(true)
                                                   {
                                                      §§push(§§pop() > §§pop());
                                                      addr236:
                                                      while(true)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            loop6:
                                                            while(true)
                                                            {
                                                               §§pop();
                                                               addr239:
                                                               while(true)
                                                               {
                                                                  §§push(param3);
                                                                  if(!_loc5_)
                                                                  {
                                                                     continue loop3;
                                                                  }
                                                                  addr229:
                                                                  addr229:
                                                                  while(true)
                                                                  {
                                                                     §§push(Number(§§pop()));
                                                                     addr230:
                                                                     while(true)
                                                                     {
                                                                        param1 = §§pop();
                                                                     }
                                                                  }
                                                                  continue loop6;
                                                               }
                                                            }
                                                            addr238:
                                                         }
                                                         else
                                                         {
                                                            while(§§pop())
                                                            {
                                                               if(!(_loc5_ && §#A§))
                                                               {
                                                                  if(_loc6_ || param3)
                                                                  {
                                                                     §§push(§§findproperty(§`!V§));
                                                                     §§push(param1);
                                                                     if(_loc6_ || §#A§)
                                                                     {
                                                                        §§push(param3);
                                                                        if(!(_loc5_ && param2))
                                                                        {
                                                                           addr206:
                                                                           §§push(§§pop() * §§pop());
                                                                           §§push(param2 - 1);
                                                                        }
                                                                        §§push(§§pop().§`!V§(§§pop(),§§pop(),-1));
                                                                        continue loop0;
                                                                     }
                                                                     §§goto(addr206);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr239);
                                                                  }
                                                               }
                                                               loop11:
                                                               while(true)
                                                               {
                                                                  §§push(§`!V§(param1,param2,-1));
                                                                  while(_loc6_ || param2)
                                                                  {
                                                                     if(_loc5_ && param3)
                                                                     {
                                                                        continue loop0;
                                                                     }
                                                                     §§push(Number(§§pop()));
                                                                     while(true)
                                                                     {
                                                                        if(!(_loc5_ && param3))
                                                                        {
                                                                           param1 = §§pop();
                                                                           if(!_loc5_)
                                                                           {
                                                                              if(_loc6_ || param2)
                                                                              {
                                                                                 continue;
                                                                              }
                                                                              continue loop2;
                                                                           }
                                                                           continue loop11;
                                                                        }
                                                                        continue loop1;
                                                                     }
                                                                     if(!_loc6_)
                                                                     {
                                                                        continue;
                                                                     }
                                                                     if(!(_loc5_ && param2))
                                                                     {
                                                                        return §§pop();
                                                                     }
                                                                     §§goto(addr229);
                                                                  }
                                                                  §§goto(addr230);
                                                               }
                                                            }
                                                            §§push(param1);
                                                            if(_loc6_ || param3)
                                                            {
                                                               §§goto(addr87);
                                                            }
                                                            §§goto(addr130);
                                                            addr172:
                                                         }
                                                         §§goto(addr231);
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr239);
                                 }
                              }
                              §§goto(addr74);
                           }
                           param2 = Math.max(0,param2);
                           §§goto(addr74);
                        }
                     }
                     §§goto(addr60);
                  }
                  §§goto(addr52);
               }
               §§goto(addr60);
            }
         }
         §§goto(addr74);
      }
   }
}
