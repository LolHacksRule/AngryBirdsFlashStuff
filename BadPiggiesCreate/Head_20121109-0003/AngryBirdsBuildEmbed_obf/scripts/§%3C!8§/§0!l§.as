package §<!8§
{
   import flash.utils.ByteArray;
   
   public class §0!l§
   {
      
      private static var §!!a§:Array;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §!!a§ = § b§();
         }
      }
      
      public function §0!l§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
         }
      }
      
      private static function § b§() : Array
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:* = uint(0);
         var _loc3_:* = uint(0);
         var _loc4_:* = uint(0);
         var _loc1_:Array = [];
         if(_loc6_ || _loc3_)
         {
            _loc2_ = uint(0);
         }
         loop0:
         while(true)
         {
            §§push(_loc2_);
            loop1:
            while(true)
            {
               §§push(256);
               loop2:
               while(true)
               {
                  if(§§pop() < §§pop())
                  {
                     §§push(uint(_loc2_));
                     if(!_loc5_)
                     {
                        _loc4_ = §§pop();
                        §§push(0);
                        if(_loc6_)
                        {
                           §§push(uint(§§pop()));
                           if(_loc6_)
                           {
                              _loc3_ = §§pop();
                              if(!_loc5_)
                              {
                                 loop3:
                                 while(true)
                                 {
                                    §§push(_loc3_);
                                    loop4:
                                    while(true)
                                    {
                                       §§push(8);
                                       if(_loc5_)
                                       {
                                          continue loop2;
                                       }
                                       if(§§pop() >= §§pop())
                                       {
                                          if(_loc5_ && _loc2_)
                                          {
                                             continue loop0;
                                          }
                                          _loc1_.push(_loc4_);
                                       }
                                       else
                                       {
                                          §§push(_loc4_);
                                          §§push(1);
                                          if(_loc5_ && _loc1_)
                                          {
                                             continue loop2;
                                          }
                                          §§push(§§pop() & §§pop());
                                          if(!(_loc5_ && §0!l§))
                                          {
                                             while(true)
                                             {
                                                if(§§pop())
                                                {
                                                   while(true)
                                                   {
                                                      §§push(3988292384);
                                                      if(_loc6_ || _loc1_)
                                                      {
                                                         §§push(_loc4_);
                                                         if(!_loc5_)
                                                         {
                                                            §§push(§§pop() >>> 1);
                                                         }
                                                         §§push(§§pop() ^ §§pop());
                                                         while(true)
                                                         {
                                                            §§push(uint(§§pop()));
                                                            if(_loc6_)
                                                            {
                                                               _loc4_ = §§pop();
                                                               if(_loc5_ && §0!l§)
                                                               {
                                                                  addr170:
                                                                  §§push(_loc2_);
                                                                  break loop4;
                                                               }
                                                               while(true)
                                                               {
                                                                  §§push(_loc3_);
                                                                  if(!(_loc6_ || _loc2_))
                                                                  {
                                                                     continue loop3;
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop() + 1);
                                                                     if(!(_loc5_ && _loc3_))
                                                                     {
                                                                        §§push(uint(§§pop()));
                                                                        continue loop3;
                                                                     }
                                                                     addr172:
                                                                     addr172:
                                                                     §§push(uint(§§pop()));
                                                                     if(!_loc5_)
                                                                     {
                                                                        break loop2;
                                                                     }
                                                                     continue loop1;
                                                                  }
                                                               }
                                                            }
                                                            break loop4;
                                                         }
                                                         addr99:
                                                      }
                                                      §§goto(addr172);
                                                   }
                                                   addr85:
                                                }
                                                else
                                                {
                                                   §§push(_loc4_);
                                                   §§push(1);
                                                   if(_loc5_)
                                                   {
                                                      continue loop2;
                                                   }
                                                   §§push(§§pop() >>> §§pop());
                                                   if(!(_loc6_ || _loc1_))
                                                   {
                                                      continue loop4;
                                                   }
                                                   _loc4_ = uint(§§pop());
                                                }
                                                §§goto(addr125);
                                             }
                                             addr74:
                                          }
                                          §§goto(addr99);
                                       }
                                       §§goto(addr170);
                                    }
                                    §§goto(addr172);
                                 }
                                 §§goto(addr179);
                              }
                              §§goto(addr85);
                           }
                           break;
                        }
                        §§goto(addr74);
                     }
                     §§goto(addr133);
                  }
                  addr179:
                  return _loc1_;
               }
               _loc2_ = §§pop();
               continue loop0;
            }
         }
      }
      
      public static function §7e§(param1:ByteArray, param2:uint = 0, param3:uint = 0) : uint
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:* = uint(0);
         if(!_loc7_)
         {
            §§push(param2);
            if(_loc6_ || §0!l§)
            {
               if(§§pop() >= param1.length)
               {
                  if(!(_loc7_ && param2))
                  {
                     addr39:
                     §§push(uint(param1.length));
                     if(_loc6_)
                     {
                        param2 = §§pop();
                        if(_loc6_)
                        {
                           addr47:
                           if(param3 == 0)
                           {
                              if(_loc6_)
                              {
                                 addr52:
                                 §§push(param1.length - param2);
                                 if(!(_loc7_ && param3))
                                 {
                                    addr64:
                                    param3 = uint(§§pop());
                                    addr65:
                                    §§push(param3 + param2);
                                    if(_loc6_)
                                    {
                                       if(§§pop() > param1.length)
                                       {
                                          §§push(param1.length - param2);
                                          if(!(_loc7_ && param2))
                                          {
                                             §§push(uint(§§pop()));
                                             if(!(_loc7_ && §0!l§))
                                             {
                                                param3 = §§pop();
                                                addr103:
                                                §§push(uint(4294967295));
                                             }
                                             var _loc5_:* = §§pop();
                                             if(!_loc7_)
                                             {
                                                §§push(param2);
                                                if(!_loc7_)
                                                {
                                                   §§push(uint(§§pop()));
                                                }
                                                _loc4_ = §§pop();
                                             }
                                             loop0:
                                             while(true)
                                             {
                                                §§push(_loc4_);
                                                if(_loc6_ || param2)
                                                {
                                                   while(§§pop() < param3)
                                                   {
                                                      §§push(uint(§!!a§[(_loc5_ ^ param1[_loc4_]) & 255]) ^ _loc5_ >>> 8);
                                                      if(!(_loc6_ || param2))
                                                      {
                                                         return §§pop();
                                                      }
                                                      §§push(uint(§§pop()));
                                                      if(_loc6_ || param2)
                                                      {
                                                         _loc5_ = §§pop();
                                                         if(!_loc6_)
                                                         {
                                                            break;
                                                         }
                                                         §§push(_loc4_);
                                                         if(!(_loc6_ || param2))
                                                         {
                                                            continue loop0;
                                                         }
                                                      }
                                                      continue;
                                                      §§push(uint(§§pop() + 1));
                                                      if(!_loc6_)
                                                      {
                                                         continue;
                                                      }
                                                      continue loop0;
                                                   }
                                                   addr188:
                                                   §§push(_loc5_);
                                                   break;
                                                }
                                                break;
                                             }
                                             §§goto(addr191);
                                             §§push(§§pop() ^ 4294967295);
                                          }
                                       }
                                       §§goto(addr103);
                                    }
                                 }
                              }
                              §§goto(addr103);
                           }
                           §§goto(addr65);
                        }
                     }
                     §§goto(addr64);
                  }
                  §§goto(addr52);
               }
               §§goto(addr47);
            }
            §§goto(addr64);
         }
         §§goto(addr39);
      }
      
      public static function §-s§(param1:ByteArray, param2:uint = 0, param3:uint = 0) : uint
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(param2 >= param1.length)
         {
            §§push(uint(param1.length));
            if(!_loc7_)
            {
               param2 = §§pop();
               addr27:
               §§push(param3);
               if(_loc8_)
               {
                  if(§§pop() == 0)
                  {
                     if(_loc8_)
                     {
                        §§push(param1.length - param2);
                        if(_loc8_)
                        {
                           addr41:
                           param3 = §§pop();
                           addr42:
                           §§push(param3);
                           if(_loc8_)
                           {
                              §§push(§§pop() + param2);
                              if(!_loc7_)
                              {
                                 if(§§pop() > param1.length)
                                 {
                                    if(_loc8_ || param2)
                                    {
                                       addr64:
                                       param3 = param1.length - param2;
                                       addr63:
                                    }
                                 }
                                 §§push(uint(param2));
                              }
                              §§goto(addr63);
                           }
                           var _loc4_:* = §§pop();
                           var _loc5_:* = uint(1);
                           var _loc6_:uint = 0;
                           loop0:
                           while(true)
                           {
                              §§push(_loc4_);
                              loop1:
                              while(true)
                              {
                                 §§push(param2);
                                 while(§§pop() < §§pop() + param3)
                                 {
                                    §§push((_loc5_ + param1[_loc4_]) % 65521);
                                    if(_loc8_ || param1)
                                    {
                                       §§push(uint(§§pop()));
                                       §§push(uint(§§pop()));
                                       if(!_loc7_)
                                       {
                                          _loc5_ = §§pop();
                                          if(_loc8_ || param3)
                                          {
                                             §§push(_loc6_);
                                             if(!(_loc8_ || param3))
                                             {
                                                continue;
                                             }
                                             addr120:
                                             §§push(§§pop() + §§pop());
                                             if(_loc8_ || §0!l§)
                                             {
                                                addr128:
                                                §§push(§§pop() % 65521);
                                                if(_loc8_)
                                                {
                                                   _loc6_ = §§pop();
                                                   if(_loc7_)
                                                   {
                                                      continue loop0;
                                                   }
                                                   §§push(_loc4_);
                                                   if(_loc7_ && param1)
                                                   {
                                                      continue loop1;
                                                   }
                                                   §§push(§§pop() + 1);
                                                }
                                             }
                                             §§push(uint(§§pop()));
                                          }
                                          _loc4_ = §§pop();
                                          if(_loc7_)
                                          {
                                             break;
                                          }
                                          continue loop0;
                                       }
                                       §§goto(addr120);
                                    }
                                    §§goto(addr128);
                                 }
                                 §§push(_loc6_ << 16);
                                 if(!_loc7_)
                                 {
                                    §§push(§§pop() | _loc5_);
                                 }
                                 return §§pop();
                              }
                           }
                        }
                     }
                     §§goto(addr63);
                  }
                  §§goto(addr42);
               }
               §§goto(addr41);
            }
            §§goto(addr64);
         }
         §§goto(addr27);
      }
   }
}
