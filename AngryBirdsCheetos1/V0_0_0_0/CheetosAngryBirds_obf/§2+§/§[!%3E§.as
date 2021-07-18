package §2+§
{
   public class §[!>§
   {
      
      private static var §^"§:String = "0123456789abcdef";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §^"§ = "0123456789abcdef";
         }
      }
      
      public function §[!>§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            super();
         }
      }
      
      public static function §,N§(param1:int, param2:int) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(param1);
         if(_loc4_ || §[!>§)
         {
            §§push(param2);
            if(_loc4_)
            {
               §§push(§§pop() << §§pop());
               if(!(_loc3_ && _loc3_))
               {
                  addr57:
                  return §§pop() | param1 >>> 32 - param2;
               }
            }
         }
         §§goto(addr57);
      }
      
      public static function §>j§(param1:int, param2:int) : uint
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
         if(!_loc4_)
         {
            §§push(_loc3_);
            if(_loc5_)
            {
               §§push(§§pop() << §§pop());
               if(_loc5_ || param2)
               {
                  addr59:
                  return §§pop() | param1 >>> 32 - _loc3_;
               }
            }
         }
         §§goto(addr59);
      }
      
      public static function §!@§(param1:int, param2:Boolean = false) : String
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:int = 0;
         var _loc5_:* = 0;
         var _loc3_:* = "";
         if(_loc6_)
         {
            if(param2)
            {
               if(_loc6_)
               {
                  _loc4_ = 0;
                  addr245:
                  loop17:
                  while(true)
                  {
                     §§push(_loc4_);
                     if(!_loc7_)
                     {
                        §§push(4);
                        loop16:
                        while(true)
                        {
                           if(§§pop() >= §§pop())
                           {
                              if(_loc6_)
                              {
                                 addr170:
                                 if(_loc6_ || param2)
                                 {
                                    break;
                                 }
                                 while(true)
                                 {
                                    continue loop17;
                                    §§goto(addr170);
                                 }
                                 addr184:
                              }
                              loop1:
                              while(true)
                              {
                                 while(true)
                                 {
                                    §§push(_loc5_);
                                    if(_loc6_ || §[!>§)
                                    {
                                       §§push(4);
                                       if(_loc7_)
                                       {
                                          continue loop16;
                                       }
                                       if(§§pop() >= §§pop())
                                       {
                                          if(_loc6_)
                                          {
                                             if(!(_loc7_ && §[!>§))
                                             {
                                                if(!_loc6_)
                                                {
                                                   continue loop1;
                                                }
                                                if(!(_loc7_ && _loc3_))
                                                {
                                                   addr56:
                                                   §§push(_loc3_);
                                                   if(!_loc7_)
                                                   {
                                                      break;
                                                   }
                                                   addr160:
                                                   _loc3_ = §§pop();
                                                }
                                                else
                                                {
                                                   while(true)
                                                   {
                                                      _loc4_++;
                                                      §§goto(addr184);
                                                   }
                                                   addr238:
                                                }
                                             }
                                             _loc5_++;
                                          }
                                          continue;
                                       }
                                       §§push(_loc3_);
                                       if(_loc6_)
                                       {
                                          if(!_loc7_)
                                          {
                                             §§push(§^"§);
                                             if(_loc6_)
                                             {
                                                §§push(param1);
                                                if(_loc6_ || _loc3_)
                                                {
                                                   §§push(_loc5_);
                                                   if(!_loc7_)
                                                   {
                                                      if(_loc6_)
                                                      {
                                                         §§push(8);
                                                         if(_loc6_)
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            if(_loc6_ || param1)
                                                            {
                                                               §§push(4);
                                                               if(!_loc7_)
                                                               {
                                                                  if(_loc6_ || param2)
                                                                  {
                                                                     addr112:
                                                                     §§push(§§pop() + §§pop());
                                                                     if(_loc6_)
                                                                     {
                                                                        if(!_loc7_)
                                                                        {
                                                                           §§push(§§pop() >> §§pop());
                                                                           if(!_loc7_)
                                                                           {
                                                                              if(_loc6_ || _loc3_)
                                                                              {
                                                                                 if(_loc6_ || param1)
                                                                                 {
                                                                                    addr144:
                                                                                    §§push(15);
                                                                                    if(_loc6_)
                                                                                    {
                                                                                       addr147:
                                                                                       §§goto(addr160);
                                                                                       §§push(§§pop() + (§§pop().charAt(§§pop() & §§pop()) + §^"§.charAt(param1 >> _loc5_ * 8 & 15)));
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc4_);
                                                                                          addr202:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop() - §§pop());
                                                                                             addr203:
                                                                                             loop8:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(8);
                                                                                                addr204:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop() * §§pop());
                                                                                                   if(_loc6_)
                                                                                                   {
                                                                                                      §§push(4);
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop() + §§pop());
                                                                                                         addr209:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop() >> §§pop());
                                                                                                         }
                                                                                                      }
                                                                                                      addr208:
                                                                                                   }
                                                                                                   §§goto(addr209);
                                                                                                   continue loop8;
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       addr201:
                                                                                    }
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(15);
                                                                                    addr211:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop() & §§pop());
                                                                                       addr212:
                                                                                       loop7:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop() + (§§pop().charAt(§§pop()) + §^"§.charAt(param1 >> (3 - _loc4_) * 8 & 15)));
                                                                                          addr237:
                                                                                          while(true)
                                                                                          {
                                                                                             _loc3_ = §§pop();
                                                                                             §§goto(addr238);
                                                                                             addr187:
                                                                                             §§push(_loc3_);
                                                                                             if(!(_loc6_ || §[!>§))
                                                                                             {
                                                                                                continue;
                                                                                             }
                                                                                             §§push(§^"§);
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(param1);
                                                                                                if(!_loc6_)
                                                                                                {
                                                                                                   continue loop7;
                                                                                                }
                                                                                                §§goto(addr201);
                                                                                                §§push(3);
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                              §§goto(addr212);
                                                                           }
                                                                           §§goto(addr147);
                                                                        }
                                                                        §§goto(addr203);
                                                                     }
                                                                     §§goto(addr209);
                                                                  }
                                                                  §§goto(addr204);
                                                               }
                                                               §§goto(addr208);
                                                            }
                                                            §§goto(addr112);
                                                         }
                                                         §§goto(addr202);
                                                      }
                                                      §§goto(addr211);
                                                   }
                                                   §§goto(addr144);
                                                }
                                                §§goto(addr147);
                                             }
                                             else
                                             {
                                                §§goto(addr197);
                                             }
                                          }
                                          §§goto(addr237);
                                       }
                                       §§goto(addr160);
                                    }
                                    else
                                    {
                                       while(true)
                                       {
                                          _loc5_ = §§pop();
                                          continue loop1;
                                       }
                                       addr180:
                                    }
                                 }
                                 return §§pop();
                              }
                           }
                           else
                           {
                              §§goto(addr187);
                           }
                           §§goto(addr237);
                        }
                        §§goto(addr56);
                     }
                  }
                  addr245:
               }
               §§goto(addr245);
            }
            else
            {
               §§push(0);
            }
            §§goto(addr180);
         }
         §§goto(addr245);
      }
   }
}
