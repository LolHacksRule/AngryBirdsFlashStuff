package §;8§
{
   public class §4m§
   {
       
      
      public function §4m§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
         }
      }
      
      public static function §5v§(param1:Number, param2:Boolean = true) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param1))
         {
            if(!param2)
            {
               §§push(param1);
               §§push(param1);
               if(!(_loc4_ && param2))
               {
                  §§push(§§pop() * §§pop());
                  if(_loc3_)
                  {
                     return §§pop();
                  }
                  loop0:
                  while(true)
                  {
                     param1 = §§pop();
                     if(_loc3_ || param2)
                     {
                        §§push(1);
                        if(_loc3_ || param1)
                        {
                           §§push(param1);
                           if(_loc3_)
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
                           addr105:
                        }
                        while(true)
                        {
                           param1 = Number(§§pop() - §§pop());
                           addr109:
                           while(true)
                           {
                              §§push(param1);
                              if(_loc3_)
                              {
                                 §§push(param1);
                                 while(true)
                                 {
                                    §§push(§§pop() * §§pop());
                                    if(_loc4_)
                                    {
                                       continue loop0;
                                    }
                                 }
                                 addr89:
                              }
                              while(true)
                              {
                                 continue loop0;
                              }
                           }
                        }
                     }
                     else
                     {
                        while(true)
                        {
                        }
                        addr104:
                     }
                     §§goto(addr105);
                  }
                  return §§pop() - §§pop();
               }
               §§goto(addr89);
            }
            §§goto(addr104);
         }
         §§goto(addr109);
      }
      
      public static function §7R§(param1:Number, param2:int, param3:Number = -1) : Number
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && param2))
         {
            §§push(param3);
            if(_loc5_)
            {
               §§push(0);
               if(!(_loc6_ && param1))
               {
                  §§push(§§pop() > §§pop());
                  if(!(_loc6_ && param1))
                  {
                     if(§§pop())
                     {
                        if(!(_loc6_ && §4m§))
                        {
                           addr51:
                           §§pop();
                           if(_loc5_)
                           {
                              addr54:
                              §§push(param3);
                              if(!(_loc6_ && param1))
                              {
                                 addr64:
                                 if(§§pop() < 10)
                                 {
                                    if(_loc5_ || param2)
                                    {
                                       addr72:
                                       param2 = Math.max(0,param2);
                                    }
                                    §§push(Number(Math.pow(10,param2)));
                                 }
                                 §§goto(addr72);
                              }
                              var _loc4_:* = §§pop();
                              if(!(_loc6_ && param1))
                              {
                                 param1 = Number(Math.round(param1 * _loc4_) / _loc4_);
                                 loop0:
                                 while(true)
                                 {
                                    §§push(param3);
                                    §§push(0);
                                    loop1:
                                    while(true)
                                    {
                                       §§push(§§pop() > §§pop());
                                       if(_loc5_ || param1)
                                       {
                                          if(§§pop())
                                          {
                                             addr207:
                                             while(true)
                                             {
                                                §§pop();
                                                addr208:
                                                loop8:
                                                while(true)
                                                {
                                                   §§push(param3);
                                                   if(_loc5_ || §4m§)
                                                   {
                                                      continue loop1;
                                                   }
                                                   addr173:
                                                   while(true)
                                                   {
                                                      param1 = §§pop();
                                                      addr174:
                                                      while(true)
                                                      {
                                                         if(_loc5_ || param1)
                                                         {
                                                            if(!_loc5_)
                                                            {
                                                               break;
                                                               addr123:
                                                            }
                                                            §§push(Number(§7R§(param1,param2,-1)));
                                                            do
                                                            {
                                                               param1 = §§pop();
                                                            }
                                                            while(!_loc6_);
                                                            
                                                            continue;
                                                         }
                                                         continue loop8;
                                                      }
                                                      continue loop0;
                                                   }
                                                }
                                             }
                                             addr207:
                                          }
                                          else
                                          {
                                             while(true)
                                             {
                                                if(§§pop())
                                                {
                                                   if(!_loc6_)
                                                   {
                                                      §§push(§§findproperty(§7R§));
                                                      §§push(param1);
                                                      if(_loc5_)
                                                      {
                                                         §§push(param3);
                                                         if(_loc5_ || param1)
                                                         {
                                                            addr164:
                                                            §§push(§§pop() * §§pop());
                                                            §§push(param2 - 1);
                                                         }
                                                         §§push(§§pop().§7R§(§§pop(),§§pop(),-1));
                                                         if(!_loc6_)
                                                         {
                                                            §§push(Number(§§pop() / param3));
                                                         }
                                                         §§goto(addr173);
                                                      }
                                                      §§goto(addr164);
                                                   }
                                                   §§goto(addr174);
                                                }
                                             }
                                             addr147:
                                          }
                                          while(true)
                                          {
                                             §§push(param1);
                                             if(!_loc6_)
                                             {
                                                if(_loc5_ || param2)
                                                {
                                                   break;
                                                }
                                                §§goto(addr173);
                                             }
                                             §§goto(addr123);
                                          }
                                          return §§pop();
                                       }
                                       §§goto(addr207);
                                    }
                                 }
                              }
                              §§goto(addr208);
                           }
                           §§goto(addr72);
                        }
                     }
                     §§goto(addr64);
                  }
                  §§goto(addr51);
               }
            }
            §§goto(addr64);
         }
         §§goto(addr54);
      }
   }
}
