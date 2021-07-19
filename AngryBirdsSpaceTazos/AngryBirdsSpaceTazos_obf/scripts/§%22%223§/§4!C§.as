package §""3§
{
   public class §4!C§
   {
      
      private static var §+!X§:String = "0123456789abcdef";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §+!X§ = "0123456789abcdef";
         }
      }
      
      public function §4!C§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            super();
         }
      }
      
      public static function §8"E§(param1:int, param2:int) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(param1);
         if(_loc4_)
         {
            §§push(param2);
            if(!(_loc3_ && _loc3_))
            {
               §§push(§§pop() << §§pop());
               if(!(_loc3_ && §4!C§))
               {
                  addr57:
                  return §§pop() | param1 >>> 32 - param2;
               }
            }
         }
         §§goto(addr57);
      }
      
      public static function §%!W§(param1:int, param2:int) : uint
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(32);
         if(_loc4_ || _loc3_)
         {
            §§push(int(§§pop() - param2));
         }
         var _loc3_:* = §§pop();
         §§push(param1);
         if(!(_loc5_ && param2))
         {
            §§push(_loc3_);
            if(_loc4_)
            {
               §§push(§§pop() << §§pop());
               if(!_loc5_)
               {
                  addr63:
                  return §§pop() | param1 >>> 32 - _loc3_;
               }
            }
         }
         §§goto(addr63);
      }
      
      public static function §?"-§(param1:int, param2:Boolean = false) : String
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:int = 0;
         var _loc5_:* = 0;
         var _loc3_:* = "";
         if(_loc6_ || §4!C§)
         {
            if(param2)
            {
               if(_loc6_ || param2)
               {
                  addr263:
                  _loc4_ = 0;
               }
               loop0:
               while(true)
               {
                  §§push(_loc4_);
                  if(_loc6_ || param1)
                  {
                     §§push(4);
                     loop1:
                     while(true)
                     {
                        if(§§pop() >= §§pop())
                        {
                           loop2:
                           while(true)
                           {
                              loop3:
                              while(true)
                              {
                                 §§push(_loc3_);
                                 if(!_loc7_)
                                 {
                                    if(!(_loc7_ && _loc3_))
                                    {
                                       return §§pop();
                                    }
                                    break;
                                 }
                                 loop4:
                                 while(true)
                                 {
                                    _loc3_ = §§pop();
                                    loop5:
                                    while(true)
                                    {
                                       _loc5_++;
                                       while(true)
                                       {
                                          if(!_loc7_)
                                          {
                                             if(!_loc7_)
                                             {
                                                if(_loc6_)
                                                {
                                                   loop7:
                                                   while(true)
                                                   {
                                                      §§push(_loc5_);
                                                      if(!_loc7_)
                                                      {
                                                         break;
                                                      }
                                                      addr190:
                                                      while(true)
                                                      {
                                                         _loc5_ = §§pop();
                                                         continue loop7;
                                                      }
                                                   }
                                                   §§push(4);
                                                   if(_loc7_)
                                                   {
                                                      continue loop1;
                                                   }
                                                   if(§§pop() >= §§pop())
                                                   {
                                                      if(_loc6_)
                                                      {
                                                         if(!(_loc7_ && _loc3_))
                                                         {
                                                            continue loop3;
                                                         }
                                                         continue loop5;
                                                      }
                                                      continue;
                                                   }
                                                   §§push(_loc3_);
                                                   if(!(_loc6_ || §4!C§))
                                                   {
                                                      continue loop4;
                                                   }
                                                   §§push(§+!X§);
                                                   if(!_loc7_)
                                                   {
                                                      §§push(param1);
                                                      if(_loc6_ || _loc3_)
                                                      {
                                                         §§push(_loc5_);
                                                         if(_loc6_)
                                                         {
                                                            if(!_loc7_)
                                                            {
                                                               if(!_loc7_)
                                                               {
                                                                  §§push(8);
                                                                  if(!(_loc7_ && _loc3_))
                                                                  {
                                                                     §§push(§§pop() * §§pop());
                                                                     if(!_loc7_)
                                                                     {
                                                                        if(!_loc7_)
                                                                        {
                                                                           §§push(4);
                                                                           if(_loc6_ || §4!C§)
                                                                           {
                                                                              if(_loc6_ || param1)
                                                                              {
                                                                                 addr138:
                                                                                 §§push(§§pop() + §§pop());
                                                                                 if(_loc6_ || §4!C§)
                                                                                 {
                                                                                    if(_loc6_)
                                                                                    {
                                                                                       §§push(§§pop() >> §§pop());
                                                                                       if(_loc6_)
                                                                                       {
                                                                                          addr150:
                                                                                          if(!(_loc7_ && param2))
                                                                                          {
                                                                                             addr159:
                                                                                             §§push(§§pop() & 15);
                                                                                             if(!_loc7_)
                                                                                             {
                                                                                                §§push(§§pop() + (§§pop().charAt(§§pop()) + §+!X§.charAt(param1 >> _loc5_ * 8 & 15)));
                                                                                                continue loop4;
                                                                                             }
                                                                                             addr225:
                                                                                             §§push(§§pop() & 15);
                                                                                          }
                                                                                          §§push(§§pop() + (§§pop().charAt(§§pop()) + §+!X§.charAt(param1 >> (3 - _loc4_) * 8 & 15)));
                                                                                          break loop3;
                                                                                       }
                                                                                       §§goto(addr159);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       addr221:
                                                                                       §§push(§§pop() * 8);
                                                                                    }
                                                                                    §§goto(addr225);
                                                                                 }
                                                                                 addr223:
                                                                                 §§goto(addr225);
                                                                                 §§push(§§pop() >> §§pop() + 4);
                                                                              }
                                                                              §§goto(addr221);
                                                                           }
                                                                        }
                                                                        §§goto(addr223);
                                                                     }
                                                                     §§goto(addr138);
                                                                  }
                                                                  else
                                                                  {
                                                                     addr219:
                                                                     §§push(§§pop() - §§pop());
                                                                  }
                                                                  §§goto(addr221);
                                                               }
                                                               else
                                                               {
                                                                  addr218:
                                                                  §§push(_loc4_);
                                                               }
                                                               §§goto(addr219);
                                                            }
                                                            §§goto(addr225);
                                                         }
                                                         §§goto(addr159);
                                                      }
                                                      §§goto(addr150);
                                                   }
                                                   else
                                                   {
                                                      addr209:
                                                      §§push(param1);
                                                      if(!(_loc7_ && param1))
                                                      {
                                                         §§goto(addr218);
                                                         §§push(3);
                                                      }
                                                   }
                                                   §§goto(addr225);
                                                }
                                                break;
                                             }
                                             continue loop2;
                                          }
                                          §§goto(addr191);
                                       }
                                       addr194:
                                       if(_loc6_ || param2)
                                       {
                                          continue loop0;
                                       }
                                       addr243:
                                       _loc4_++;
                                       §§goto(addr194);
                                    }
                                 }
                              }
                           }
                        }
                        else
                        {
                           §§push(_loc3_);
                           if(_loc6_)
                           {
                              §§goto(addr209);
                              §§push(§+!X§);
                           }
                        }
                        _loc3_ = §§pop();
                        §§goto(addr243);
                     }
                  }
               }
            }
            else
            {
               §§push(0);
            }
            §§goto(addr190);
         }
         §§goto(addr263);
      }
   }
}
