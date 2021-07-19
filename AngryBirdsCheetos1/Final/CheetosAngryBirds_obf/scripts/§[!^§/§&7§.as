package §[!^§
{
   public class §&7§
   {
      
      private static var §6!1§:String = "0123456789abcdef";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §6!1§ = "0123456789abcdef";
         }
      }
      
      public function §&7§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            super();
         }
      }
      
      public static function §4E§(param1:int, param2:int) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(param1);
         if(_loc3_ || param2)
         {
            §§push(param2);
            if(_loc3_ || _loc3_)
            {
               §§goto(addr61);
            }
            §§push(§§pop() | §§pop() >>> 32 - param2);
         }
         addr61:
         §§push(§§pop() << §§pop());
         if(_loc3_)
         {
            return param1;
         }
      }
      
      public static function §#!8§(param1:int, param2:int) : uint
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(32);
         if(_loc4_)
         {
            §§push(int(§§pop() - param2));
         }
         var _loc3_:* = §§pop();
         §§push(param1);
         if(_loc4_)
         {
            §§push(_loc3_);
            if(_loc4_ || param1)
            {
               §§goto(addr63);
            }
            §§push(§§pop() | §§pop() >>> 32 - _loc3_);
         }
         addr63:
         §§push(§§pop() << §§pop());
         if(!_loc5_)
         {
            return param1;
         }
      }
      
      public static function §;C§(param1:int, param2:Boolean = false) : String
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:int = 0;
         var _loc5_:* = 0;
         var _loc3_:* = "";
         if(_loc7_ || param1)
         {
            if(param2)
            {
               if(!(_loc6_ && _loc3_))
               {
                  _loc4_ = 0;
                  addr296:
                  loop19:
                  while(true)
                  {
                     §§push(_loc4_);
                     if(!_loc6_)
                     {
                        §§push(4);
                        loop16:
                        while(true)
                        {
                           if(§§pop() >= §§pop())
                           {
                              if(!(_loc6_ && param2))
                              {
                                 while(true)
                                 {
                                    §§push(_loc3_);
                                    if(!_loc7_)
                                    {
                                       break;
                                    }
                                    if(_loc7_ || param2)
                                    {
                                       return §§pop();
                                    }
                                    addr273:
                                    while(true)
                                    {
                                       _loc3_ = §§pop();
                                       addr274:
                                       while(true)
                                       {
                                          _loc4_++;
                                          addr218:
                                          while(true)
                                          {
                                             continue loop19;
                                          }
                                       }
                                    }
                                 }
                                 addr182:
                                 _loc3_ = §§pop();
                                 loop15:
                                 while(true)
                                 {
                                    _loc5_++;
                                    addr67:
                                    while(_loc6_)
                                    {
                                       continue loop15;
                                    }
                                    if(_loc7_)
                                    {
                                       addr71:
                                       while(true)
                                       {
                                          §§push(_loc5_);
                                          if(!_loc7_)
                                          {
                                             break;
                                          }
                                          §§push(4);
                                          if(!(_loc7_ || param1))
                                          {
                                             continue loop16;
                                          }
                                          if(§§pop() >= §§pop())
                                          {
                                             if(!(_loc6_ && param2))
                                             {
                                                §§goto(addr51);
                                             }
                                             else
                                             {
                                                §§goto(addr67);
                                             }
                                          }
                                          else
                                          {
                                             §§push(_loc3_);
                                             if(_loc7_ || _loc3_)
                                             {
                                                §§push(§6!1§);
                                                if(!(_loc6_ && param1))
                                                {
                                                   §§push(param1);
                                                   if(!_loc6_)
                                                   {
                                                      if(!_loc6_)
                                                      {
                                                         §§push(_loc5_);
                                                         if(_loc7_ || param2)
                                                         {
                                                            if(_loc7_ || §&7§)
                                                            {
                                                               §§push(8);
                                                               if(!_loc6_)
                                                               {
                                                                  §§push(§§pop() * §§pop());
                                                                  if(_loc7_)
                                                                  {
                                                                     §§push(4);
                                                                     if(!_loc6_)
                                                                     {
                                                                        addr121:
                                                                        §§push(§§pop() + §§pop());
                                                                        if(_loc7_ || param1)
                                                                        {
                                                                           if(!(_loc6_ && param2))
                                                                           {
                                                                              §§push(§§pop() >> §§pop());
                                                                              if(!(_loc6_ && _loc3_))
                                                                              {
                                                                                 addr153:
                                                                                 if(!(_loc6_ && _loc3_))
                                                                                 {
                                                                                    addr161:
                                                                                    §§push(15);
                                                                                    if(_loc7_ || param1)
                                                                                    {
                                                                                       addr169:
                                                                                       §§goto(addr182);
                                                                                       §§push(§§pop() + (§§pop().charAt(§§pop() & §§pop()) + §6!1§.charAt(param1 >> _loc5_ * 8 & 15)));
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc4_);
                                                                                          addr236:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop() - §§pop());
                                                                                             if(!(_loc6_ && §&7§))
                                                                                             {
                                                                                                §§push(8);
                                                                                                if(!(_loc6_ && param2))
                                                                                                {
                                                                                                   §§push(§§pop() * §§pop());
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(4);
                                                                                                      addr254:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop() + §§pop());
                                                                                                         addr255:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop() >> §§pop());
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   addr253:
                                                                                                }
                                                                                                §§goto(addr254);
                                                                                             }
                                                                                             §§goto(addr255);
                                                                                          }
                                                                                       }
                                                                                       addr235:
                                                                                    }
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(15);
                                                                                    addr257:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop() & §§pop());
                                                                                       addr258:
                                                                                       while(true)
                                                                                       {
                                                                                          §§goto(addr273);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                              §§goto(addr169);
                                                                           }
                                                                           §§goto(addr253);
                                                                        }
                                                                        §§goto(addr255);
                                                                     }
                                                                     §§goto(addr254);
                                                                  }
                                                                  §§goto(addr121);
                                                               }
                                                               §§goto(addr236);
                                                            }
                                                            §§goto(addr257);
                                                         }
                                                         §§goto(addr161);
                                                      }
                                                      §§goto(addr258);
                                                   }
                                                   §§goto(addr153);
                                                }
                                                else
                                                {
                                                   while(true)
                                                   {
                                                      §§push(param1);
                                                      if(_loc7_)
                                                      {
                                                         §§goto(addr235);
                                                         §§push(3);
                                                      }
                                                   }
                                                   addr231:
                                                }
                                                §§goto(addr258);
                                             }
                                          }
                                          §§goto(addr182);
                                          §§goto(addr71);
                                       }
                                       while(true)
                                       {
                                          _loc5_ = §§pop();
                                       }
                                       addr31:
                                       addr200:
                                    }
                                 }
                                 addr51:
                              }
                              while(true)
                              {
                                 if(!(_loc6_ && param2))
                                 {
                                    if(_loc7_ || §&7§)
                                    {
                                       §§goto(addr31);
                                    }
                                    §§goto(addr274);
                                 }
                                 §§goto(addr218);
                              }
                           }
                           else
                           {
                              §§push(_loc3_);
                              if(_loc7_ || §&7§)
                              {
                                 §§goto(addr231);
                                 §§push(§6!1§);
                              }
                           }
                           §§goto(addr273);
                        }
                     }
                  }
                  addr296:
               }
               §§goto(addr296);
            }
            else
            {
               §§push(0);
            }
            §§goto(addr200);
         }
         §§goto(addr296);
      }
   }
}
