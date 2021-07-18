package §`K§
{
   public class §^F§
   {
       
      
      public function §^F§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
         }
      }
      
      public static function §1g§(param1:Number, param2:Boolean = true) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            if(param2)
            {
               if(!(_loc4_ && param1))
               {
                  addr97:
                  §§push(1);
                  while(true)
                  {
                     §§push(param1);
                     addr99:
                     while(true)
                     {
                        param1 = §§pop() - §§pop();
                     }
                  }
                  addr98:
               }
               loop0:
               while(true)
               {
                  §§push(param1);
                  if(!(_loc4_ && _loc3_))
                  {
                     §§push(param1);
                     while(true)
                     {
                        §§push(§§pop() * §§pop());
                     }
                     addr82:
                  }
                  while(true)
                  {
                     param1 = §§pop();
                     if(_loc4_)
                     {
                        continue loop0;
                     }
                     §§push(1);
                     if(!_loc4_)
                     {
                        §§push(param1);
                        if(!(_loc3_ || §^F§))
                        {
                           break;
                        }
                        continue;
                     }
                     §§goto(addr98);
                  }
                  §§goto(addr99);
               }
            }
            else
            {
               §§push(param1);
               §§push(param1);
               if(!_loc4_)
               {
                  return §§pop() * §§pop();
               }
            }
            §§goto(addr82);
         }
         §§goto(addr97);
      }
      
      public static function §&u§(param1:Number, param2:int, param3:Number = -1) : Number
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            §§push(param3);
            if(!_loc5_)
            {
               §§push(0);
               if(!(_loc5_ && param2))
               {
                  §§push(§§pop() > §§pop());
                  if(!(_loc5_ && param3))
                  {
                     if(§§pop())
                     {
                        if(!_loc5_)
                        {
                           addr42:
                           §§pop();
                           if(!(_loc5_ && param1))
                           {
                              addr50:
                              §§push(param3);
                              if(_loc6_)
                              {
                                 addr55:
                                 if(§§pop() < 10)
                                 {
                                    if(_loc6_ || param1)
                                    {
                                       addr63:
                                       param2 = Math.max(0,param2);
                                    }
                                    addr74:
                                    var _loc4_:Number = Math.pow(10,param2);
                                    if(!(_loc5_ && param3))
                                    {
                                       §§push(Math.round(param1 * _loc4_) / _loc4_);
                                       while(true)
                                       {
                                          param1 = Number(§§pop());
                                       }
                                       addr211:
                                    }
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
                                             if(_loc6_ || §^F§)
                                             {
                                                if(§§pop())
                                                {
                                                   loop11:
                                                   while(true)
                                                   {
                                                      §§pop();
                                                      addr196:
                                                      while(!(_loc5_ && param3))
                                                      {
                                                         §§push(param3);
                                                         while(true)
                                                         {
                                                            §§push(10);
                                                            if(_loc5_)
                                                            {
                                                               continue loop3;
                                                            }
                                                            §§push(§§pop() < §§pop());
                                                            if(!(_loc6_ || param1))
                                                            {
                                                               continue loop11;
                                                            }
                                                         }
                                                         continue loop11;
                                                      }
                                                      continue loop1;
                                                   }
                                                   addr195:
                                                }
                                                loop4:
                                                while(true)
                                                {
                                                   if(§§pop())
                                                   {
                                                      if(!_loc5_)
                                                      {
                                                         §§push(§§findproperty(§&u§));
                                                         §§push(param1);
                                                         if(!(_loc5_ && §^F§))
                                                         {
                                                            §§push(param3);
                                                            if(!_loc5_)
                                                            {
                                                               addr159:
                                                               §§push(§§pop() * §§pop());
                                                               §§push(param2 - 1);
                                                            }
                                                            §§push(§§pop().§&u§(§§pop(),§§pop(),-1) / param3);
                                                            loop5:
                                                            while(true)
                                                            {
                                                               §§push(Number(§§pop()));
                                                               if(_loc5_)
                                                               {
                                                                  break;
                                                                  addr169:
                                                               }
                                                               param1 = §§pop();
                                                               loop6:
                                                               while(true)
                                                               {
                                                                  if(!_loc5_)
                                                                  {
                                                                     §§push(§&u§(param1,param2,-1));
                                                                     if(_loc6_)
                                                                     {
                                                                        continue loop2;
                                                                     }
                                                                     addr123:
                                                                     loop7:
                                                                     while(!_loc5_)
                                                                     {
                                                                        param1 = §§pop();
                                                                        if(!_loc6_)
                                                                        {
                                                                           continue loop6;
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§push(param1);
                                                                           if(!_loc6_)
                                                                           {
                                                                              continue loop7;
                                                                           }
                                                                           if(!(_loc5_ && §^F§))
                                                                           {
                                                                              break loop4;
                                                                           }
                                                                        }
                                                                     }
                                                                     continue loop5;
                                                                  }
                                                                  §§goto(addr196);
                                                                  §§goto(addr131);
                                                               }
                                                               continue loop2;
                                                            }
                                                            §§goto(addr211);
                                                         }
                                                         §§goto(addr159);
                                                      }
                                                      §§goto(addr169);
                                                   }
                                                   §§goto(addr83);
                                                   §§goto(addr134);
                                                }
                                                return §§pop();
                                             }
                                             §§goto(addr195);
                                          }
                                       }
                                    }
                                 }
                              }
                              §§goto(addr74);
                           }
                           §§goto(addr63);
                        }
                     }
                     §§goto(addr55);
                  }
                  §§goto(addr42);
               }
               §§goto(addr55);
            }
            §§goto(addr74);
         }
         §§goto(addr50);
      }
   }
}
