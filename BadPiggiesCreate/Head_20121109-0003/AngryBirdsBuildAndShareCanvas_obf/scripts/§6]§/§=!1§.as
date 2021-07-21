package §6]§
{
   public class §=!1§
   {
       
      
      public function §=!1§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            super();
         }
      }
      
      public static function §-!1§(param1:Number, param2:Boolean = true) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || §=!1§)
         {
            if(param2)
            {
               §§push(1);
               while(true)
               {
                  §§push(param1);
                  addr139:
                  addr124:
                  while(true)
                  {
                     §§push(§§pop() - §§pop());
                     loop2:
                     while(true)
                     {
                        §§push(Number(§§pop()));
                        loop3:
                        while(true)
                        {
                           param1 = §§pop();
                           addr142:
                           while(true)
                           {
                              §§push(param1);
                              if(_loc3_)
                              {
                                 §§push(param1);
                                 while(true)
                                 {
                                    §§push(§§pop() * §§pop());
                                 }
                                 addr110:
                              }
                              loop5:
                              while(_loc3_)
                              {
                                 if(_loc4_ && _loc3_)
                                 {
                                    continue loop2;
                                 }
                                 §§push(Number(§§pop()));
                                 while(true)
                                 {
                                    if(!(_loc4_ && param2))
                                    {
                                       §§goto(addr89);
                                    }
                                    continue loop5;
                                 }
                              }
                              continue loop3;
                           }
                        }
                     }
                  }
                  §§push(1);
                  if(_loc4_ && §=!1§)
                  {
                     continue;
                  }
                  §§push(param1);
                  if(_loc3_ || _loc3_)
                  {
                     §§goto(addr82);
                     §§push(§§pop() - §§pop());
                  }
                  §§goto(addr139);
               }
            }
            else
            {
               addr24:
               §§push(param1);
               if(!(_loc4_ && param2))
               {
                  if(_loc3_ || param2)
                  {
                     §§push(param1);
                     if(_loc3_)
                     {
                        addr44:
                        §§push(§§pop() * §§pop());
                        if(!(_loc4_ && param2))
                        {
                           return §§pop();
                        }
                        while(true)
                        {
                           param1 = §§pop();
                           if(!_loc4_)
                           {
                              §§goto(addr124);
                           }
                           §§goto(addr142);
                        }
                        addr89:
                        return §§pop();
                        addr121:
                     }
                     §§goto(addr110);
                  }
                  §§goto(addr82);
               }
               §§goto(addr44);
            }
            §§goto(addr121);
         }
         §§goto(addr24);
      }
      
      public static function §'a§(param1:Number, param2:int, param3:Number = -1) : Number
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            §§push(param3);
            if(!(_loc5_ && §=!1§))
            {
               §§push(0);
               if(_loc6_ || param3)
               {
                  §§push(§§pop() > §§pop());
                  if(!_loc5_)
                  {
                     if(§§pop())
                     {
                        if(_loc6_ || param1)
                        {
                           §§pop();
                           if(!(_loc5_ && param2))
                           {
                              §§push(param3);
                              if(!(_loc5_ && §=!1§))
                              {
                                 addr65:
                                 if(§§pop() < 10)
                                 {
                                    if(!_loc5_)
                                    {
                                       addr68:
                                       param2 = Math.max(0,param2);
                                       addr74:
                                       §§push(Number(Math.pow(10,param2)));
                                    }
                                    §§goto(addr74);
                                 }
                                 §§goto(addr68);
                              }
                              var _loc4_:* = §§pop();
                              if(_loc6_)
                              {
                                 §§push(Math.round(param1 * _loc4_) / _loc4_);
                                 if(_loc6_ || §=!1§)
                                 {
                                    §§push(Number(§§pop()));
                                 }
                                 loop0:
                                 while(true)
                                 {
                                    param1 = §§pop();
                                    loop1:
                                    while(true)
                                    {
                                       §§push(param3);
                                       loop2:
                                       while(true)
                                       {
                                          §§push(0);
                                          loop3:
                                          while(true)
                                          {
                                             §§push(§§pop() > §§pop());
                                             if(_loc6_ || param3)
                                             {
                                                if(§§pop())
                                                {
                                                   loop12:
                                                   while(true)
                                                   {
                                                      §§pop();
                                                      addr212:
                                                      while(true)
                                                      {
                                                         addr147:
                                                         §§push(param3);
                                                         if(!_loc6_)
                                                         {
                                                            break;
                                                         }
                                                         §§push(10);
                                                         if(_loc5_ && param2)
                                                         {
                                                            continue loop3;
                                                         }
                                                         §§push(§§pop() < §§pop());
                                                         if(!_loc5_)
                                                         {
                                                         }
                                                         continue loop12;
                                                      }
                                                      continue loop0;
                                                   }
                                                   addr211:
                                                }
                                                while(true)
                                                {
                                                   if(§§pop())
                                                   {
                                                      loop5:
                                                      while(_loc6_)
                                                      {
                                                         §§push(§§findproperty(§'a§));
                                                         §§push(param1);
                                                         if(_loc6_ || param2)
                                                         {
                                                            §§push(param3);
                                                            if(_loc6_ || §=!1§)
                                                            {
                                                               addr182:
                                                               §§push(§§pop() * §§pop());
                                                               §§push(param2 - 1);
                                                            }
                                                            §§push(§§pop().§'a§(§§pop(),§§pop(),-1));
                                                            if(_loc6_ || param3)
                                                            {
                                                               §§push(§§pop() / param3);
                                                            }
                                                            loop6:
                                                            while(true)
                                                            {
                                                               §§push(Number(§§pop()));
                                                               loop7:
                                                               while(true)
                                                               {
                                                                  param1 = §§pop();
                                                                  addr197:
                                                                  loop13:
                                                                  while(true)
                                                                  {
                                                                     §§push(§'a§(param1,param2,-1));
                                                                     loop10:
                                                                     while(true)
                                                                     {
                                                                        §§push(Number(§§pop()));
                                                                        loop11:
                                                                        while(_loc6_ || param3)
                                                                        {
                                                                           if(!_loc5_)
                                                                           {
                                                                              param1 = §§pop();
                                                                              if(_loc6_ || param2)
                                                                              {
                                                                                 if(_loc6_)
                                                                                 {
                                                                                    if(!(_loc5_ && param1))
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(param1);
                                                                                          if(!_loc5_)
                                                                                          {
                                                                                             if(_loc6_ || param2)
                                                                                             {
                                                                                                if(_loc6_)
                                                                                                {
                                                                                                   if(_loc6_)
                                                                                                   {
                                                                                                      return §§pop();
                                                                                                   }
                                                                                                   continue loop6;
                                                                                                }
                                                                                                continue loop7;
                                                                                             }
                                                                                             continue loop10;
                                                                                          }
                                                                                          continue loop11;
                                                                                       }
                                                                                       addr83:
                                                                                    }
                                                                                    continue loop1;
                                                                                 }
                                                                                 continue loop5;
                                                                              }
                                                                              continue loop13;
                                                                           }
                                                                           continue loop2;
                                                                        }
                                                                        §§goto(addr147);
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr182);
                                                      }
                                                      §§goto(addr212);
                                                   }
                                                   §§goto(addr83);
                                                }
                                             }
                                             §§goto(addr211);
                                          }
                                       }
                                    }
                                 }
                              }
                              §§goto(addr197);
                           }
                           §§goto(addr68);
                        }
                     }
                  }
               }
            }
            §§goto(addr65);
         }
         §§goto(addr68);
      }
   }
}
