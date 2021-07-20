package §9"A§
{
   public class §`!a§
   {
      
      private static var §'!L§:String = "0123456789abcdef";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §'!L§ = "0123456789abcdef";
         }
      }
      
      public function §`!a§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            super();
         }
      }
      
      public static function §3!0§(param1:int, param2:int) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(param1);
         if(!(_loc3_ && §`!a§))
         {
            §§push(param2);
            if(_loc4_ || param2)
            {
               §§goto(addr52);
            }
            §§push(§§pop() | §§pop() >>> 32 - param2);
         }
         addr52:
         §§push(§§pop() << §§pop());
         if(_loc4_)
         {
            return param1;
         }
      }
      
      public static function §7G§(param1:int, param2:int) : uint
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(32);
         if(!(_loc4_ && param2))
         {
            §§push(int(§§pop() - param2));
         }
         var _loc3_:* = §§pop();
         §§push(param1);
         if(!(_loc4_ && §`!a§))
         {
            §§push(_loc3_);
            if(!_loc4_)
            {
               §§push(§§pop() << §§pop());
               if(_loc5_ || param2)
               {
                  addr69:
                  return §§pop() | param1 >>> 32 - _loc3_;
               }
            }
         }
         §§goto(addr69);
      }
      
      public static function §9J§(param1:int, param2:Boolean = false) : String
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc3_:* = "";
         if(_loc7_)
         {
            if(param2)
            {
               if(!_loc6_)
               {
                  _loc4_ = 0;
                  addr266:
                  loop27:
                  while(true)
                  {
                     §§push(_loc4_);
                     while(true)
                     {
                        §§push(4);
                        while(true)
                        {
                           if(§§pop() >= §§pop())
                           {
                              loop25:
                              while(true)
                              {
                                 while(true)
                                 {
                                    §§push(_loc3_);
                                    if(_loc7_)
                                    {
                                       if(!_loc6_)
                                       {
                                          if(_loc7_)
                                          {
                                             if(_loc7_)
                                             {
                                                break;
                                             }
                                             addr221:
                                             while(true)
                                             {
                                                §§push(§'!L§);
                                                addr222:
                                                addr219:
                                                while(true)
                                                {
                                                   §§push(param1);
                                                   addr223:
                                                   while(true)
                                                   {
                                                      §§push(3);
                                                      addr224:
                                                      while(true)
                                                      {
                                                         §§push(_loc4_);
                                                         addr225:
                                                         while(true)
                                                         {
                                                            §§push(§§pop() - §§pop());
                                                            addr226:
                                                            while(true)
                                                            {
                                                               §§push(8);
                                                               addr227:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop() * §§pop());
                                                                  addr238:
                                                                  while(true)
                                                                  {
                                                                     §§push(4);
                                                                     addr239:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop() + §§pop());
                                                                        addr240:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop() >> §§pop());
                                                                           addr241:
                                                                           while(true)
                                                                           {
                                                                              §§push(15);
                                                                              addr242:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop() & §§pop());
                                                                                 addr243:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop() + (§§pop().charAt(§§pop()) + §'!L§.charAt(param1 >> (3 - _loc4_) * 8 & 15)));
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                          while(true)
                                          {
                                             _loc3_ = §§pop();
                                             addr259:
                                             while(true)
                                             {
                                                _loc4_++;
                                                addr216:
                                                while(true)
                                                {
                                                   continue loop27;
                                                }
                                             }
                                          }
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                             §§push(§'!L§);
                                             if(!_loc6_)
                                             {
                                                §§push(param1);
                                                if(_loc7_)
                                                {
                                                   if(!(_loc6_ && §`!a§))
                                                   {
                                                      §§push(_loc5_);
                                                      if(_loc7_ || param2)
                                                      {
                                                         §§push(8);
                                                         if(!(_loc6_ && §`!a§))
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            if(!(_loc6_ && _loc3_))
                                                            {
                                                               if(_loc7_)
                                                               {
                                                                  if(!_loc6_)
                                                                  {
                                                                     §§push(4);
                                                                     if(!(_loc6_ && _loc3_))
                                                                     {
                                                                        if(_loc7_)
                                                                        {
                                                                           addr158:
                                                                           §§push(§§pop() + §§pop());
                                                                           if(_loc7_ || _loc3_)
                                                                           {
                                                                              §§push(§§pop() >> §§pop());
                                                                              if(!(_loc6_ && param1))
                                                                              {
                                                                                 addr173:
                                                                                 if(!_loc6_)
                                                                                 {
                                                                                    addr176:
                                                                                    §§push(15);
                                                                                    if(_loc7_)
                                                                                    {
                                                                                       if(_loc7_)
                                                                                       {
                                                                                          addr181:
                                                                                          §§push(§§pop() & §§pop());
                                                                                          if(!_loc6_)
                                                                                          {
                                                                                             §§push(§§pop() + (§§pop().charAt(§§pop()) + §'!L§.charAt(param1 >> _loc5_ * 8 & 15)));
                                                                                             while(true)
                                                                                             {
                                                                                                _loc3_ = §§pop();
                                                                                                while(true)
                                                                                                {
                                                                                                   if(_loc7_ || param2)
                                                                                                   {
                                                                                                      _loc5_++;
                                                                                                      continue;
                                                                                                   }
                                                                                                   continue loop25;
                                                                                                }
                                                                                                continue loop25;
                                                                                             }
                                                                                             addr196:
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr243);
                                                                                          }
                                                                                          §§goto(addr259);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr224);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr242);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr223);
                                                                                 }
                                                                              }
                                                                              §§goto(addr181);
                                                                           }
                                                                           §§goto(addr240);
                                                                        }
                                                                        §§goto(addr227);
                                                                     }
                                                                     §§goto(addr239);
                                                                  }
                                                                  §§goto(addr226);
                                                               }
                                                               §§goto(addr238);
                                                            }
                                                            §§goto(addr158);
                                                         }
                                                         §§goto(addr225);
                                                      }
                                                      §§goto(addr176);
                                                   }
                                                   §§goto(addr241);
                                                }
                                                §§goto(addr173);
                                             }
                                             else
                                             {
                                                §§goto(addr222);
                                             }
                                          }
                                       }
                                       §§goto(addr222);
                                    }
                                    §§goto(addr196);
                                    continue loop25;
                                 }
                                 return §§pop();
                              }
                           }
                           else
                           {
                              §§goto(addr219);
                           }
                           §§goto(addr221);
                        }
                     }
                  }
                  addr266:
               }
               §§goto(addr266);
            }
            else
            {
               §§push(0);
            }
            §§goto(addr212);
         }
         §§goto(addr266);
      }
   }
}
