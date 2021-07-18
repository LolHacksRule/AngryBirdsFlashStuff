package §'!"§
{
   public class §?h§
   {
      
      private static var §@!1§:String = "0123456789abcdef";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §@!1§ = "0123456789abcdef";
         }
      }
      
      public function §?h§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
         }
      }
      
      public static function §3!+§(param1:int, param2:int) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(param1);
         if(_loc4_ || param2)
         {
            §§push(param2);
            if(!(_loc3_ && param2))
            {
               §§goto(addr62);
            }
            §§push(§§pop() | §§pop() >>> 32 - param2);
         }
         addr62:
         §§push(§§pop() << §§pop());
         if(!_loc3_)
         {
            return param1;
         }
      }
      
      public static function §05§(param1:int, param2:int) : uint
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(32);
         if(!_loc5_)
         {
            §§push(int(§§pop() - param2));
         }
         var _loc3_:* = §§pop();
         §§push(param1);
         if(_loc4_ || param2)
         {
            §§push(_loc3_);
            if(_loc4_ || param2)
            {
               §§push(§§pop() << §§pop());
               if(_loc4_ || §?h§)
               {
                  addr68:
                  return §§pop() | param1 >>> 32 - _loc3_;
               }
            }
         }
         §§goto(addr68);
      }
      
      public static function §+z§(param1:int, param2:Boolean = false) : String
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:int = 0;
         var _loc5_:* = 0;
         var _loc3_:* = "";
         if(!_loc6_)
         {
            if(param2)
            {
               if(_loc7_ || param2)
               {
                  addr264:
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
                        if(§§pop() >= §§pop())
                        {
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
                                       return §§pop();
                                    }
                                    break;
                                 }
                                 addr208:
                                 loop5:
                                 while(true)
                                 {
                                    if(_loc7_ || param2)
                                    {
                                       _loc3_ = §§pop();
                                       while(true)
                                       {
                                          if(!(_loc6_ && param1))
                                          {
                                             _loc5_++;
                                             while(true)
                                             {
                                                if(!_loc6_)
                                                {
                                                   loop8:
                                                   while(true)
                                                   {
                                                      §§push(_loc5_);
                                                      if(_loc7_)
                                                      {
                                                         break;
                                                      }
                                                      addr198:
                                                      while(true)
                                                      {
                                                         _loc5_ = §§pop();
                                                         continue loop8;
                                                      }
                                                   }
                                                   if(_loc6_)
                                                   {
                                                      continue loop1;
                                                   }
                                                   §§push(4);
                                                   if(_loc6_ && param2)
                                                   {
                                                      continue loop2;
                                                   }
                                                   if(§§pop() >= §§pop())
                                                   {
                                                      continue;
                                                   }
                                                   §§push(_loc3_);
                                                   if(!(_loc7_ || param2))
                                                   {
                                                      continue loop5;
                                                   }
                                                   §§push(§@!1§);
                                                   if(_loc6_ && §?h§)
                                                   {
                                                      break loop5;
                                                   }
                                                   §§push(param1);
                                                   if(!_loc6_)
                                                   {
                                                      §§push(_loc5_);
                                                      if(!_loc6_)
                                                      {
                                                         if(_loc7_ || param2)
                                                         {
                                                            §§push(8);
                                                            if(_loc7_)
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               if(_loc7_)
                                                               {
                                                                  §§push(4);
                                                                  if(!(_loc6_ && param2))
                                                                  {
                                                                     if(!(_loc6_ && param1))
                                                                     {
                                                                        addr142:
                                                                        §§push(§§pop() + §§pop());
                                                                        if(!_loc6_)
                                                                        {
                                                                           if(!_loc6_)
                                                                           {
                                                                              §§push(§§pop() >> §§pop());
                                                                              if(_loc7_)
                                                                              {
                                                                                 addr150:
                                                                                 §§push(15);
                                                                                 if(!(_loc6_ && §?h§))
                                                                                 {
                                                                                    addr158:
                                                                                    §§push(§§pop() & §§pop());
                                                                                    if(!_loc6_)
                                                                                    {
                                                                                       if(_loc7_)
                                                                                       {
                                                                                          §§push(§§pop() + (§§pop().charAt(§§pop()) + §@!1§.charAt(param1 >> _loc5_ * 8 & 15)));
                                                                                          continue loop5;
                                                                                       }
                                                                                       addr226:
                                                                                       §§push(§§pop() & 15);
                                                                                    }
                                                                                    §§push(§§pop() + (§§pop().charAt(§§pop()) + §@!1§.charAt(param1 >> (3 - _loc4_) * 8 & 15)));
                                                                                    break loop4;
                                                                                 }
                                                                                 addr217:
                                                                                 addr218:
                                                                                 §§push(§§pop() - _loc4_);
                                                                                 if(_loc7_)
                                                                                 {
                                                                                    addr225:
                                                                                    §§push(§§pop() >> §§pop() * 8 + 4);
                                                                                 }
                                                                                 §§goto(addr225);
                                                                                 §§goto(addr226);
                                                                              }
                                                                              §§goto(addr158);
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr225);
                                                               }
                                                               §§goto(addr142);
                                                            }
                                                            §§goto(addr218);
                                                         }
                                                         §§goto(addr226);
                                                      }
                                                      §§goto(addr150);
                                                   }
                                                   §§goto(addr158);
                                                   addr26:
                                                }
                                                while(true)
                                                {
                                                   §§goto(addr26);
                                                }
                                             }
                                             _loc4_++;
                                             addr244:
                                             break;
                                             addr244:
                                          }
                                          break;
                                          if(_loc6_ && param1)
                                          {
                                             continue;
                                          }
                                          if(!_loc7_)
                                          {
                                             continue loop3;
                                          }
                                          if(!_loc6_)
                                          {
                                             continue loop4;
                                          }
                                          §§goto(addr244);
                                       }
                                       continue loop0;
                                    }
                                 }
                                 §§push(param1);
                                 if(_loc7_ || _loc3_)
                                 {
                                    §§goto(addr217);
                                    §§push(3);
                                 }
                                 §§goto(addr158);
                              }
                              _loc3_ = §§pop();
                              §§goto(addr244);
                           }
                        }
                        else
                        {
                           §§push(_loc3_);
                        }
                        §§goto(addr208);
                     }
                  }
               }
            }
            else
            {
               §§push(0);
            }
            §§goto(addr198);
         }
         §§goto(addr264);
      }
   }
}
