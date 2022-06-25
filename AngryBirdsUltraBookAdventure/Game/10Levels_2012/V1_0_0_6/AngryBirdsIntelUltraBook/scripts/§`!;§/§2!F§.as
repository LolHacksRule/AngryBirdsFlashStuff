package §`!;§
{
   public class §2!F§
   {
      
      private static var §`T§:String = "0123456789abcdef";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && §2!F§))
         {
            §`T§ = "0123456789abcdef";
         }
      }
      
      public function §2!F§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
         }
      }
      
      public static function §+!§(param1:int, param2:int) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(param1);
         if(_loc3_)
         {
            §§push(param2);
            if(!_loc4_)
            {
               §§push(§§pop() << §§pop());
               if(!_loc4_)
               {
                  addr26:
                  return §§pop() | param1 >>> 32 - param2;
               }
            }
         }
         §§goto(addr26);
      }
      
      public static function §1!1§(param1:int, param2:int) : uint
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
         if(_loc4_)
         {
            §§push(_loc3_);
            if(_loc4_)
            {
               §§push(§§pop() << §§pop());
               if(!_loc5_)
               {
                  addr48:
                  return §§pop() | param1 >>> 32 - _loc3_;
               }
            }
         }
         §§goto(addr48);
      }
      
      public static function §[W§(param1:int, param2:Boolean = false) : String
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:int = 0;
         var _loc5_:* = 0;
         var _loc3_:* = "";
         if(!(_loc6_ && param2))
         {
            if(param2)
            {
               if(_loc7_ || §2!F§)
               {
                  _loc4_ = 0;
                  addr276:
                  loop22:
                  while(true)
                  {
                     §§push(_loc4_);
                     if(!(_loc6_ && param1))
                     {
                        §§push(4);
                        loop19:
                        while(true)
                        {
                           if(§§pop() >= §§pop())
                           {
                              loop20:
                              while(true)
                              {
                                 loop3:
                                 while(true)
                                 {
                                    §§push(_loc3_);
                                    if(_loc7_)
                                    {
                                       if(!_loc6_)
                                       {
                                          break;
                                       }
                                       loop8:
                                       while(true)
                                       {
                                          if(!(_loc6_ && §2!F§))
                                          {
                                             §§push(§`T§);
                                             if(_loc7_ || §2!F§)
                                             {
                                                §§push(param1);
                                                if(!(_loc6_ && §2!F§))
                                                {
                                                   if(_loc7_ || §2!F§)
                                                   {
                                                      §§push(_loc5_);
                                                      if(!_loc6_)
                                                      {
                                                         if(_loc7_)
                                                         {
                                                            §§push(8);
                                                            if(!_loc6_)
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               if(_loc7_)
                                                               {
                                                                  if(_loc7_ || _loc3_)
                                                                  {
                                                                     §§push(4);
                                                                     if(!_loc6_)
                                                                     {
                                                                        addr113:
                                                                        §§push(§§pop() + §§pop());
                                                                        if(!(_loc6_ && §2!F§))
                                                                        {
                                                                           §§push(§§pop() >> §§pop());
                                                                           if(!_loc6_)
                                                                           {
                                                                              addr134:
                                                                              §§push(§§pop() & 15);
                                                                           }
                                                                           §§push(§§pop() + (§§pop().charAt(§§pop()) + §`T§.charAt(param1 >> _loc5_ * 8 & 15)));
                                                                           while(true)
                                                                           {
                                                                              if(_loc7_ || §2!F§)
                                                                              {
                                                                                 _loc3_ = §§pop();
                                                                                 loop5:
                                                                                 while(!(_loc6_ && _loc3_))
                                                                                 {
                                                                                    if(_loc6_)
                                                                                    {
                                                                                       continue loop20;
                                                                                    }
                                                                                    _loc5_++;
                                                                                    while(_loc6_)
                                                                                    {
                                                                                       continue loop5;
                                                                                    }
                                                                                    addr56:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc5_);
                                                                                       if(!_loc6_)
                                                                                       {
                                                                                          §§push(4);
                                                                                          if(_loc6_)
                                                                                          {
                                                                                             continue loop19;
                                                                                          }
                                                                                          if(§§pop() < §§pop())
                                                                                          {
                                                                                             §§push(_loc3_);
                                                                                             continue loop8;
                                                                                          }
                                                                                          if(!_loc6_)
                                                                                          {
                                                                                             if(!_loc6_)
                                                                                             {
                                                                                                continue loop3;
                                                                                             }
                                                                                             addr191:
                                                                                             while(true)
                                                                                             {
                                                                                                continue loop22;
                                                                                             }
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr54);
                                                                                          }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             _loc5_ = §§pop();
                                                                                             break loop5;
                                                                                          }
                                                                                          addr180:
                                                                                       }
                                                                                       §§goto(addr56);
                                                                                    }
                                                                                    addr54:
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc7_ || param1)
                                                                                    {
                                                                                       §§goto(addr31);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          _loc4_++;
                                                                                       }
                                                                                       addr264:
                                                                                    }
                                                                                    §§goto(addr191);
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 loop4:
                                                                                 while(true)
                                                                                 {
                                                                                    _loc3_ = §§pop();
                                                                                    addr248:
                                                                                    while(true)
                                                                                    {
                                                                                       continue loop4;
                                                                                    }
                                                                                 }
                                                                                 addr263:
                                                                              }
                                                                              §§goto(addr264);
                                                                           }
                                                                           addr148:
                                                                        }
                                                                        else
                                                                        {
                                                                           addr231:
                                                                           while(true)
                                                                           {
                                                                              §§push(4);
                                                                              addr232:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop() + §§pop());
                                                                                 addr233:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop() >> §§pop());
                                                                                    if(!_loc6_)
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(15);
                                                                                          addr237:
                                                                                          while(true)
                                                                                          {
                                                                                             §§goto(addr248);
                                                                                          }
                                                                                       }
                                                                                       addr236:
                                                                                    }
                                                                                    §§goto(addr248);
                                                                                 }
                                                                              }
                                                                           }
                                                                           addr231:
                                                                        }
                                                                        §§goto(addr263);
                                                                     }
                                                                     §§goto(addr232);
                                                                  }
                                                                  §§goto(addr233);
                                                               }
                                                               §§goto(addr113);
                                                            }
                                                            else
                                                            {
                                                               while(true)
                                                               {
                                                                  §§push(§§pop() - §§pop());
                                                                  if(_loc7_ || param2)
                                                                  {
                                                                     §§push(8);
                                                                     if(_loc7_ || param2)
                                                                     {
                                                                        §§goto(addr231);
                                                                        §§push(§§pop() * §§pop());
                                                                     }
                                                                     §§goto(addr232);
                                                                  }
                                                               }
                                                               addr214:
                                                            }
                                                            §§goto(addr231);
                                                         }
                                                         §§goto(addr237);
                                                      }
                                                      §§goto(addr134);
                                                   }
                                                   §§goto(addr248);
                                                }
                                                §§goto(addr134);
                                             }
                                             else
                                             {
                                                while(true)
                                                {
                                                   §§push(param1);
                                                   if(_loc7_ || param1)
                                                   {
                                                      §§push(3);
                                                      if(_loc7_ || param1)
                                                      {
                                                         §§goto(addr214);
                                                         §§push(_loc4_);
                                                      }
                                                      §§goto(addr237);
                                                   }
                                                }
                                                addr197:
                                             }
                                             §§goto(addr236);
                                          }
                                          else
                                          {
                                             while(true)
                                             {
                                             }
                                             addr196:
                                          }
                                          §§goto(addr197);
                                       }
                                    }
                                    §§goto(addr148);
                                 }
                                 return §§pop();
                              }
                           }
                           else
                           {
                              §§push(_loc3_);
                           }
                           §§goto(addr196);
                        }
                     }
                  }
                  addr276:
               }
               §§goto(addr276);
            }
            else
            {
               §§push(0);
            }
            §§goto(addr180);
         }
         §§goto(addr276);
      }
   }
}
