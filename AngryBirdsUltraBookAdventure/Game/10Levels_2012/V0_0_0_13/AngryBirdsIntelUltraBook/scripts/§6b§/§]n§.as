package §6b§
{
   public class §]n§
   {
       
      
      public function §]n§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
         }
      }
      
      public static function §1!R§(param1:Number, param2:Boolean = true) : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param2)
         {
            if(!param2)
            {
               §§push(param1);
               if(_loc4_)
               {
                  §§push(param1);
                  if(_loc4_)
                  {
                     §§goto(addr33);
                  }
                  §§goto(addr79);
               }
               addr33:
               §§push(§§pop() * §§pop());
               if(_loc4_ || §]n§)
               {
                  if(_loc4_)
                  {
                     return §§pop();
                  }
                  loop1:
                  while(true)
                  {
                     if(!_loc3_)
                     {
                        param1 = §§pop();
                        if(_loc3_ && §]n§)
                        {
                           continue;
                        }
                        if(_loc4_ || param1)
                        {
                           §§push(1);
                           if(!(_loc3_ && _loc3_))
                           {
                              §§push(param1);
                              if(!_loc3_)
                              {
                                 break;
                              }
                           }
                           else
                           {
                              while(true)
                              {
                                 §§push(param1);
                              }
                              addr114:
                           }
                           while(true)
                           {
                              §§push(§§pop() - §§pop());
                              addr116:
                              while(true)
                              {
                                 §§push(Number(§§pop()));
                                 addr117:
                                 while(true)
                                 {
                                    param1 = §§pop();
                                    continue loop1;
                                 }
                              }
                           }
                        }
                        else
                        {
                           while(true)
                           {
                           }
                           addr113:
                        }
                        §§goto(addr114);
                     }
                     §§goto(addr116);
                  }
                  return §§pop() - §§pop();
               }
            }
            §§goto(addr113);
         }
         §§goto(addr118);
      }
      
      public static function §?p§(param1:Number, param2:int, param3:Number = -1) : Number
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            §§push(param3);
            if(_loc5_ || param3)
            {
               §§push(0);
               if(!_loc6_)
               {
                  §§push(§§pop() > §§pop());
                  if(!_loc6_)
                  {
                     §§push(Boolean(§§pop()));
                     if(!(_loc6_ && param1))
                     {
                        addr40:
                        §§push(§§pop());
                        if(!(_loc6_ && §]n§))
                        {
                           §§push(Boolean(§§pop()));
                        }
                        if(§§pop())
                        {
                           if(!(_loc6_ && §]n§))
                           {
                              §§pop();
                              if(!(_loc6_ && param1))
                              {
                                 addr99:
                                 §§push(param3);
                                 if(_loc5_)
                                 {
                                    addr69:
                                    §§push(§§pop() < 10);
                                    if(!(_loc6_ && param3))
                                    {
                                       addr77:
                                       §§push(Boolean(§§pop()));
                                    }
                                 }
                                 var _loc4_:* = §§pop();
                                 if(!(_loc6_ && param2))
                                 {
                                    §§push(Math.round(param1 * _loc4_) / _loc4_);
                                    while(true)
                                    {
                                       §§push(Number(§§pop()));
                                       addr294:
                                       while(true)
                                       {
                                          param1 = §§pop();
                                       }
                                       addr172:
                                       if(!(_loc5_ || param3))
                                       {
                                          continue;
                                       }
                                       §§push(10);
                                       if(!(_loc6_ && param3))
                                       {
                                          §§push(§§pop() < §§pop());
                                          if(!(_loc6_ && param2))
                                          {
                                             if(_loc5_)
                                             {
                                                addr198:
                                                §§push(Boolean(§§pop()));
                                                if(_loc5_ || param1)
                                                {
                                                   if(!(_loc6_ && param1))
                                                   {
                                                      loop12:
                                                      while(true)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            loop13:
                                                            while(true)
                                                            {
                                                               §§push(§§findproperty(§?p§));
                                                               §§push(param1);
                                                               if(_loc5_ || param1)
                                                               {
                                                                  §§push(param3);
                                                                  if(!(_loc6_ && param3))
                                                                  {
                                                                     addr232:
                                                                     §§push(§§pop() * §§pop());
                                                                     §§push(param2 - 1);
                                                                  }
                                                                  §§push(§§pop().§?p§(§§pop(),§§pop(),-1));
                                                                  if(!_loc6_)
                                                                  {
                                                                     §§push(§§pop() / param3);
                                                                  }
                                                                  loop14:
                                                                  while(true)
                                                                  {
                                                                     if(_loc5_ || param1)
                                                                     {
                                                                        §§push(Number(§§pop()));
                                                                        loop9:
                                                                        while(true)
                                                                        {
                                                                           param1 = §§pop();
                                                                           loop10:
                                                                           while(!(_loc6_ && param3))
                                                                           {
                                                                              §§push(§?p§(param1,param2,-1));
                                                                              if(_loc5_ || param3)
                                                                              {
                                                                                 §§push(Number(§§pop()));
                                                                              }
                                                                              loop11:
                                                                              while(true)
                                                                              {
                                                                                 if(!(_loc5_ || param2))
                                                                                 {
                                                                                    continue loop9;
                                                                                 }
                                                                                 if(_loc6_ && param3)
                                                                                 {
                                                                                    continue loop14;
                                                                                 }
                                                                                 addr153:
                                                                                 if(_loc5_ || param1)
                                                                                 {
                                                                                    param1 = §§pop();
                                                                                    if(_loc6_)
                                                                                    {
                                                                                       continue loop10;
                                                                                    }
                                                                                    if(_loc6_)
                                                                                    {
                                                                                       continue loop13;
                                                                                    }
                                                                                    if(_loc5_)
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(param1);
                                                                                          if(_loc5_)
                                                                                          {
                                                                                             return §§pop();
                                                                                          }
                                                                                          continue loop11;
                                                                                       }
                                                                                       addr108:
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       addr295:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(param3);
                                                                                       }
                                                                                       addr295:
                                                                                    }
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(0);
                                                                                    addr271:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop() > §§pop());
                                                                                       addr272:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(Boolean(§§pop()));
                                                                                          addr273:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop());
                                                                                             if(!(_loc6_ && §]n§))
                                                                                             {
                                                                                                §§push(Boolean(§§pop()));
                                                                                             }
                                                                                             if(!§§pop())
                                                                                             {
                                                                                                continue loop12;
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                §§pop();
                                                                                                break loop10;
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr153);
                                                                                 }
                                                                              }
                                                                              continue loop14;
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§push(param3);
                                                                              if(_loc6_)
                                                                              {
                                                                                 continue loop9;
                                                                              }
                                                                              §§goto(addr172);
                                                                           }
                                                                           §§goto(addr271);
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr294);
                                                                     }
                                                                     §§goto(addr295);
                                                                  }
                                                               }
                                                               §§goto(addr232);
                                                            }
                                                         }
                                                         §§goto(addr108);
                                                      }
                                                   }
                                                   §§goto(addr272);
                                                }
                                                §§goto(addr273);
                                             }
                                             §§goto(addr283);
                                          }
                                          §§goto(addr198);
                                       }
                                       §§goto(addr271);
                                    }
                                 }
                                 §§goto(addr295);
                              }
                              addr86:
                              param2 = Math.max(0,param2);
                              §§goto(addr99);
                              §§push(Number(Math.pow(10,param2)));
                           }
                        }
                        if(§§pop())
                        {
                           if(_loc5_ || param3)
                           {
                           }
                        }
                        §§goto(addr86);
                     }
                     §§goto(addr77);
                  }
                  §§goto(addr40);
               }
               §§goto(addr69);
            }
            §§goto(addr99);
         }
         §§goto(addr86);
      }
   }
}
