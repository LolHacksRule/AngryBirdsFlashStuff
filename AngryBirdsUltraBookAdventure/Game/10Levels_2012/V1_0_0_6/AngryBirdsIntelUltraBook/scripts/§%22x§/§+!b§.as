package §"x§
{
   public class §+!b§
   {
       
      
      public function §+!b§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
         }
      }
      
      public static function §@!@§(param1:Number, param2:Boolean = true) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param1))
         {
            if(param2)
            {
               addr122:
               §§push(1);
               loop7:
               while(true)
               {
                  §§push(param1);
                  loop8:
                  while(true)
                  {
                     §§push(§§pop() - §§pop());
                     loop5:
                     while(true)
                     {
                        §§push(Number(§§pop()));
                        addr126:
                        while(true)
                        {
                           param1 = §§pop();
                           loop3:
                           while(true)
                           {
                              §§push(param1);
                              if(_loc3_)
                              {
                                 if(!_loc3_)
                                 {
                                    continue loop5;
                                 }
                                 addr113:
                                 §§push(param1);
                                 while(true)
                                 {
                                    §§push(§§pop() * §§pop());
                                    addr115:
                                    while(true)
                                    {
                                       §§push(Number(§§pop()));
                                    }
                                    §§goto(addr113);
                                 }
                              }
                              addr116:
                              while(true)
                              {
                                 param1 = §§pop();
                                 if(!_loc3_)
                                 {
                                    continue loop3;
                                 }
                                 §§push(1);
                                 if(!(_loc3_ || param1))
                                 {
                                    continue loop7;
                                 }
                                 §§push(param1);
                                 if(_loc4_ && param2)
                                 {
                                    continue loop8;
                                 }
                                 §§push(§§pop() - §§pop());
                                 §§goto(addr115);
                              }
                           }
                           continue loop5;
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
                  if(!(_loc4_ && param1))
                  {
                     if(_loc3_ || param2)
                     {
                        §§push(param1);
                        if(_loc3_)
                        {
                           addr61:
                           §§push(§§pop() * §§pop());
                           if(!(_loc4_ && _loc3_))
                           {
                              return §§pop();
                           }
                           while(_loc4_)
                           {
                              §§goto(addr115);
                           }
                           return §§pop();
                           addr99:
                        }
                        §§goto(addr114);
                     }
                     §§goto(addr126);
                  }
                  §§goto(addr116);
               }
               §§goto(addr61);
            }
            §§goto(addr99);
         }
         §§goto(addr122);
      }
      
      public static function §while§(param1:Number, param2:int, param3:Number = -1) : Number
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            §§push(param3);
            if(!(_loc5_ && param3))
            {
               §§push(0);
               if(_loc6_)
               {
                  §§push(§§pop() > §§pop());
                  if(_loc6_ || param3)
                  {
                     if(§§pop())
                     {
                        if(!_loc5_)
                        {
                           addr42:
                           §§pop();
                           if(_loc6_ || param2)
                           {
                              §§push(param3);
                              if(_loc6_)
                              {
                                 addr55:
                                 if(§§pop() < 10)
                                 {
                                    if(!(_loc5_ && §+!b§))
                                    {
                                       addr63:
                                       param2 = Math.max(0,param2);
                                    }
                                    §§push(Number(Math.pow(10,param2)));
                                 }
                                 §§goto(addr63);
                              }
                              var _loc4_:* = §§pop();
                              if(!(_loc5_ && §+!b§))
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
                                                loop5:
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
                                                            addr152:
                                                            while(true)
                                                            {
                                                               §§push(10);
                                                               if(!_loc6_)
                                                               {
                                                                  break;
                                                               }
                                                               §§push(§§pop() < §§pop());
                                                               if(!(_loc6_ || param3))
                                                               {
                                                                  continue loop6;
                                                               }
                                                               if(!(_loc6_ || param3))
                                                               {
                                                                  continue loop5;
                                                               }
                                                            }
                                                            continue loop4;
                                                         }
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         if(_loc6_ || §+!b§)
                                                         {
                                                            if(_loc5_)
                                                            {
                                                               continue loop2;
                                                            }
                                                            §§push(§§findproperty(§while§));
                                                            §§push(param1);
                                                            if(!(_loc5_ && §+!b§))
                                                            {
                                                               §§push(param3);
                                                               if(_loc6_ || param3)
                                                               {
                                                                  addr199:
                                                                  §§push(§§pop() * §§pop());
                                                                  §§push(param2 - 1);
                                                               }
                                                               §§push(§§pop().§while§(§§pop(),§§pop(),-1));
                                                               loop8:
                                                               for(; _loc6_ || §+!b§; while(true)
                                                               {
                                                                  if(!(_loc5_ && param2))
                                                                  {
                                                                     continue loop0;
                                                                  }
                                                                  continue loop8;
                                                               },§§goto(addr222))
                                                               {
                                                                  §§push(§§pop() / param3);
                                                                  while(true)
                                                                  {
                                                                     §§push(Number(§§pop()));
                                                                     addr223:
                                                                     while(true)
                                                                     {
                                                                        param1 = §§pop();
                                                                        addr224:
                                                                        while(!(_loc5_ && §+!b§))
                                                                        {
                                                                           §§push(§while§(param1,param2,-1));
                                                                           continue loop8;
                                                                        }
                                                                        §§goto(addr239);
                                                                     }
                                                                     addr132:
                                                                     if(!(_loc6_ || §+!b§))
                                                                     {
                                                                        continue;
                                                                     }
                                                                     if(!_loc6_)
                                                                     {
                                                                        continue loop3;
                                                                     }
                                                                     param1 = §§pop();
                                                                     if(!(_loc5_ && param3))
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           §§push(param1);
                                                                           if(!_loc5_)
                                                                           {
                                                                              if(!_loc6_)
                                                                              {
                                                                                 continue loop8;
                                                                              }
                                                                              if(_loc6_ || param3)
                                                                              {
                                                                                 return §§pop();
                                                                              }
                                                                              §§goto(addr152);
                                                                           }
                                                                           else
                                                                           {
                                                                              while(_loc6_)
                                                                              {
                                                                                 §§goto(addr132);
                                                                              }
                                                                              §§goto(addr223);
                                                                              addr130:
                                                                           }
                                                                           §§goto(addr239);
                                                                        }
                                                                        addr83:
                                                                     }
                                                                     §§goto(addr224);
                                                                  }
                                                               }
                                                               continue loop1;
                                                            }
                                                            §§goto(addr199);
                                                         }
                                                         §§goto(addr224);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr83);
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                       }
                                    }
                                    if(!(_loc6_ || param3))
                                    {
                                       continue;
                                    }
                                    §§goto(addr130);
                                    §§push(Number(§§pop()));
                                 }
                              }
                              §§goto(addr239);
                           }
                           §§goto(addr63);
                        }
                     }
                     §§goto(addr55);
                  }
                  §§goto(addr42);
               }
            }
            §§goto(addr55);
         }
         §§goto(addr63);
      }
   }
}
