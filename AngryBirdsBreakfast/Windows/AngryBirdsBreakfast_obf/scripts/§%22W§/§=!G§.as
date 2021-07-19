package §"W§
{
   public class §=!G§
   {
      
      private static var §3w§:String = "0123456789abcdef";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §3w§ = "0123456789abcdef";
         }
      }
      
      public function §=!G§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            super();
         }
      }
      
      public static function §@6§(param1:int, param2:int) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(param1);
         if(_loc3_ || param1)
         {
            §§push(param2);
            if(_loc3_)
            {
               §§push(§§pop() << §§pop());
               if(!(_loc4_ && _loc3_))
               {
                  addr56:
                  return §§pop() | param1 >>> 32 - param2;
               }
            }
         }
         §§goto(addr56);
      }
      
      public static function §3!@§(param1:int, param2:int) : uint
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(32);
         if(_loc5_)
         {
            §§push(int(§§pop() - param2));
         }
         var _loc3_:* = §§pop();
         §§push(param1);
         if(_loc5_ || param1)
         {
            §§push(_loc3_);
            if(_loc5_)
            {
               §§push(§§pop() << §§pop());
               if(!(_loc4_ && param2))
               {
                  addr64:
                  return §§pop() | param1 >>> 32 - _loc3_;
               }
            }
         }
         §§goto(addr64);
      }
      
      public static function §@#§(param1:int, param2:Boolean = false) : String
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:int = 0;
         var _loc5_:* = 0;
         var _loc3_:* = "";
         if(_loc7_)
         {
            if(param2)
            {
               if(!(_loc6_ && §=!G§))
               {
                  addr269:
                  _loc4_ = 0;
               }
               loop0:
               while(true)
               {
                  §§push(_loc4_);
                  loop1:
                  while(true)
                  {
                     §§push(4);
                     loop2:
                     while(true)
                     {
                        if(§§pop() < §§pop())
                        {
                           §§push(_loc3_);
                           break;
                        }
                        loop3:
                        while(true)
                        {
                           loop4:
                           while(true)
                           {
                              §§push(_loc3_);
                              if(_loc7_)
                              {
                                 if(!(_loc6_ && _loc3_))
                                 {
                                    if(!(_loc6_ && §=!G§))
                                    {
                                       return §§pop();
                                    }
                                    break loop2;
                                 }
                                 loop5:
                                 while(_loc7_ || param1)
                                 {
                                    §§push(§3w§);
                                    if(!(_loc6_ && param1))
                                    {
                                       §§push(param1);
                                       if(!(_loc6_ && param2))
                                       {
                                          if(!_loc6_)
                                          {
                                             if(_loc7_)
                                             {
                                                §§push(_loc5_);
                                                if(_loc7_)
                                                {
                                                   §§push(8);
                                                   if(!(_loc6_ && §=!G§))
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      if(_loc7_)
                                                      {
                                                         if(_loc7_)
                                                         {
                                                            if(_loc7_ || param2)
                                                            {
                                                               §§push(4);
                                                               if(_loc7_)
                                                               {
                                                                  addr154:
                                                                  §§push(§§pop() >> §§pop() + §§pop());
                                                                  if(!(_loc6_ && _loc3_))
                                                                  {
                                                                     addr163:
                                                                     §§push(15);
                                                                     if(!_loc7_)
                                                                     {
                                                                        addr232:
                                                                        §§push(§§pop() + (§§pop().charAt(§§pop() & §§pop()) + §3w§.charAt(param1 >> (3 - _loc4_) * 8 & 15)));
                                                                        break;
                                                                     }
                                                                     §§push(§§pop() & §§pop());
                                                                  }
                                                                  §§push(§§pop() + (§§pop().charAt(§§pop()) + §3w§.charAt(param1 >> _loc5_ * 8 & 15)));
                                                                  while(true)
                                                                  {
                                                                     _loc3_ = §§pop();
                                                                     loop7:
                                                                     while(true)
                                                                     {
                                                                        if(!_loc6_)
                                                                        {
                                                                           if(_loc7_ || param1)
                                                                           {
                                                                              _loc5_++;
                                                                              loop8:
                                                                              while(true)
                                                                              {
                                                                                 if(_loc6_ && param2)
                                                                                 {
                                                                                    continue loop3;
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc5_);
                                                                                    if(_loc7_ || §=!G§)
                                                                                    {
                                                                                       if(!(_loc7_ || _loc3_))
                                                                                       {
                                                                                          break loop8;
                                                                                       }
                                                                                       §§push(4);
                                                                                       if(_loc7_ || §=!G§)
                                                                                       {
                                                                                          if(§§pop() >= §§pop())
                                                                                          {
                                                                                             if(_loc7_)
                                                                                             {
                                                                                                if(!_loc6_)
                                                                                                {
                                                                                                   continue loop4;
                                                                                                }
                                                                                                continue loop7;
                                                                                             }
                                                                                             continue loop8;
                                                                                          }
                                                                                          continue loop5;
                                                                                       }
                                                                                       continue loop2;
                                                                                    }
                                                                                    addr197:
                                                                                    while(true)
                                                                                    {
                                                                                       _loc5_ = §§pop();
                                                                                    }
                                                                                    addr200:
                                                                                 }
                                                                              }
                                                                              continue loop1;
                                                                           }
                                                                           continue loop0;
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           if(!_loc7_)
                                                                           {
                                                                              _loc4_++;
                                                                              continue loop0;
                                                                              addr249:
                                                                           }
                                                                           §§goto(addr200);
                                                                        }
                                                                     }
                                                                  }
                                                                  addr179:
                                                               }
                                                               else
                                                               {
                                                                  addr230:
                                                                  §§push(§§pop() >> §§pop() + §§pop());
                                                                  §§push(15);
                                                               }
                                                               §§goto(addr232);
                                                            }
                                                            else
                                                            {
                                                               addr217:
                                                               §§push(8);
                                                               if(!(_loc6_ && _loc3_))
                                                               {
                                                                  §§push(§§pop() * §§pop());
                                                                  if(!_loc6_)
                                                                  {
                                                                     §§push(4);
                                                                  }
                                                                  §§goto(addr230);
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr230);
                                                      }
                                                      §§goto(addr154);
                                                   }
                                                   else
                                                   {
                                                      addr216:
                                                      §§push(§§pop() - §§pop());
                                                   }
                                                   §§goto(addr217);
                                                }
                                                §§goto(addr163);
                                             }
                                             §§goto(addr230);
                                          }
                                          §§goto(addr232);
                                       }
                                       §§goto(addr163);
                                    }
                                    else
                                    {
                                       addr209:
                                       §§push(param1);
                                       if(_loc7_)
                                       {
                                          §§push(3);
                                          if(!_loc6_)
                                          {
                                             §§goto(addr216);
                                             §§push(_loc4_);
                                          }
                                          §§goto(addr232);
                                       }
                                    }
                                    §§goto(addr232);
                                 }
                                 _loc3_ = §§pop();
                                 §§goto(addr249);
                              }
                              §§goto(addr179);
                           }
                        }
                     }
                     §§goto(addr209);
                  }
               }
            }
            else
            {
               §§push(0);
            }
            §§goto(addr197);
         }
         §§goto(addr269);
      }
   }
}
