package §8f§
{
   import flash.utils.ByteArray;
   
   public class §"!+§
   {
      
      private static var §6^§:Array;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §6^§ = §@y§();
         }
      }
      
      public function §"!+§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
         }
      }
      
      private static function §@y§() : Array
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:* = uint(0);
         var _loc3_:* = uint(0);
         var _loc4_:* = uint(0);
         var _loc1_:Array = [];
         if(_loc5_ || §"!+§)
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
               while(§§pop() < §§pop())
               {
                  §§push(uint(_loc2_));
                  if(_loc5_ || _loc3_)
                  {
                     _loc4_ = §§pop();
                     §§push(0);
                     if(!_loc6_)
                     {
                        _loc3_ = uint(§§pop());
                        loop3:
                        while(true)
                        {
                           §§push(_loc3_);
                           loop4:
                           while(true)
                           {
                              §§push(8);
                              if(!(_loc5_ || _loc3_))
                              {
                                 continue loop2;
                              }
                              if(§§pop() >= §§pop())
                              {
                                 if(!(_loc6_ && _loc1_))
                                 {
                                    _loc1_.push(_loc4_);
                                    if(_loc5_ || _loc1_)
                                    {
                                       addr180:
                                       §§push(_loc2_);
                                       if(_loc5_ || §"!+§)
                                       {
                                          §§push(§§pop() + 1);
                                          break;
                                       }
                                       _loc2_ = §§pop();
                                       if(_loc6_ && _loc2_)
                                       {
                                          break loop2;
                                       }
                                    }
                                 }
                                 continue loop0;
                              }
                              §§push(_loc4_);
                              §§push(1);
                              if(!(_loc5_ || _loc2_))
                              {
                                 continue loop2;
                              }
                              §§push(§§pop() & §§pop());
                              if(!_loc6_)
                              {
                                 if(§§pop())
                                 {
                                    §§push(3988292384);
                                    if(!_loc6_)
                                    {
                                       §§push(_loc4_);
                                       if(_loc5_)
                                       {
                                          §§push(§§pop() >>> 1);
                                       }
                                       §§push(§§pop() ^ §§pop());
                                       while(true)
                                       {
                                          _loc4_ = uint(§§pop());
                                          if(!(_loc5_ || _loc3_))
                                          {
                                             continue loop3;
                                          }
                                          while(true)
                                          {
                                             §§push(_loc3_ + 1);
                                             if(_loc6_ && _loc1_)
                                             {
                                                break loop4;
                                             }
                                             §§push(uint(§§pop()));
                                             if(_loc5_ || _loc3_)
                                             {
                                                _loc3_ = §§pop();
                                                continue loop3;
                                             }
                                             continue loop4;
                                          }
                                       }
                                       addr79:
                                    }
                                    break;
                                 }
                                 §§push(_loc4_);
                                 §§push(1);
                                 if(_loc5_)
                                 {
                                    _loc4_ = uint(§§pop() >>> §§pop());
                                    if(_loc6_)
                                    {
                                    }
                                    break loop2;
                                 }
                                 continue loop2;
                                 §§goto(addr108);
                              }
                           }
                           §§push(uint(§§pop()));
                           if(_loc6_ && §"!+§)
                           {
                              continue loop1;
                           }
                           §§goto(addr180);
                        }
                     }
                     §§goto(addr79);
                  }
                  §§goto(addr180);
               }
               return _loc1_;
            }
         }
      }
      
      public static function §?3§(param1:ByteArray, param2:uint = 0, param3:uint = 0) : uint
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:* = uint(0);
         if(!_loc6_)
         {
            §§push(param2);
            if(!(_loc6_ && §"!+§))
            {
               if(§§pop() >= param1.length)
               {
                  addr36:
                  param2 = param1.length;
                  if(!(_loc6_ && param3))
                  {
                     addr44:
                     if(param3 == 0)
                     {
                        if(_loc7_)
                        {
                           addr49:
                           §§push(param1.length - param2);
                           if(_loc7_)
                           {
                              param3 = uint(§§pop());
                              if(!(_loc6_ && param2))
                              {
                                 addr64:
                                 §§push(param3 + param2);
                                 if(_loc7_ || param2)
                                 {
                                    addr84:
                                    if(§§pop() > param1.length)
                                    {
                                       addr87:
                                       §§push(param1.length - param2);
                                       if(!_loc6_)
                                       {
                                          §§push(uint(§§pop()));
                                          if(!_loc6_)
                                          {
                                             param3 = §§pop();
                                             addr97:
                                             §§push(uint(4294967295));
                                          }
                                          var _loc5_:* = §§pop();
                                          if(!_loc6_)
                                          {
                                             §§push(param2);
                                             if(!_loc6_)
                                             {
                                                §§push(uint(§§pop()));
                                             }
                                             _loc4_ = §§pop();
                                          }
                                          loop0:
                                          while(true)
                                          {
                                             §§push(_loc4_);
                                             if(!_loc6_)
                                             {
                                                while(§§pop() < param3)
                                                {
                                                   §§push(uint(§6^§[(_loc5_ ^ param1[_loc4_]) & 255]) ^ _loc5_ >>> 8);
                                                   if(!_loc7_)
                                                   {
                                                      return §§pop();
                                                   }
                                                   §§push(uint(§§pop()));
                                                   if(!(_loc6_ && §"!+§))
                                                   {
                                                      _loc5_ = §§pop();
                                                      if(_loc6_)
                                                      {
                                                         continue loop0;
                                                      }
                                                      §§push(_loc4_);
                                                      if(_loc6_)
                                                      {
                                                         continue;
                                                      }
                                                   }
                                                   §§push(uint(§§pop() + 1));
                                                   if(_loc7_)
                                                   {
                                                      _loc4_ = §§pop();
                                                      if(!_loc7_)
                                                      {
                                                         break;
                                                      }
                                                      continue loop0;
                                                   }
                                                }
                                                §§push(_loc5_);
                                                break;
                                             }
                                             break;
                                          }
                                          §§goto(addr165);
                                          §§push(§§pop() ^ 4294967295);
                                       }
                                    }
                                 }
                                 §§goto(addr97);
                              }
                              §§goto(addr87);
                           }
                           §§goto(addr84);
                        }
                        §§goto(addr97);
                     }
                     §§goto(addr64);
                  }
                  §§goto(addr49);
               }
               §§goto(addr44);
            }
            §§goto(addr36);
         }
         §§goto(addr97);
      }
      
      public static function §'1§(param1:ByteArray, param2:uint = 0, param3:uint = 0) : uint
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(_loc7_ || §"!+§)
         {
            if(param2 >= param1.length)
            {
               if(_loc7_ || param3)
               {
                  addr34:
                  §§push(uint(param1.length));
                  if(_loc7_ || param1)
                  {
                     param2 = §§pop();
                     if(_loc7_)
                     {
                        §§goto(addr47);
                     }
                     §§goto(addr64);
                  }
                  §§goto(addr71);
               }
               §§goto(addr74);
            }
            addr47:
            §§push(param3);
            if(_loc7_ || §"!+§)
            {
               if(§§pop() == 0)
               {
                  if(!(_loc8_ && param3))
                  {
                     addr64:
                     §§push(param1.length - param2);
                     if(!_loc8_)
                     {
                        addr71:
                        param3 = §§pop();
                        if(!_loc8_)
                        {
                           addr74:
                           §§push(param3 + param2);
                           if(!(_loc8_ && param2))
                           {
                              if(§§pop() > param1.length)
                              {
                              }
                              §§goto(addr103);
                           }
                           §§goto(addr101);
                        }
                        §§push(param1.length - param2);
                     }
                     addr101:
                     param3 = §§pop();
                     §§goto(addr103);
                  }
                  addr103:
                  §§push(param2);
                  if(_loc8_)
                  {
                  }
                  §§goto(addr107);
               }
               §§goto(addr74);
            }
            addr107:
            var _loc4_:uint = §§pop();
            var _loc5_:* = uint(1);
            var _loc6_:* = uint(0);
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
                     if(!_loc8_)
                     {
                        §§push(uint(§§pop()));
                        §§push(uint(§§pop()));
                        if(_loc7_ || §"!+§)
                        {
                           _loc5_ = §§pop();
                           if(!_loc8_)
                           {
                              §§push(_loc6_);
                              if(!_loc7_)
                              {
                                 continue;
                              }
                              §§push(§§pop() + §§pop());
                              if(_loc8_)
                              {
                                 continue loop0;
                              }
                              §§push(§§pop() % 65521);
                              if(_loc8_ && param2)
                              {
                                 continue loop0;
                              }
                              §§push(uint(§§pop()));
                           }
                           _loc6_ = §§pop();
                           if(!(_loc7_ || param1))
                           {
                              break;
                           }
                           §§push(_loc4_);
                           if(_loc7_ || param3)
                           {
                              §§push(§§pop() + 1);
                              continue loop0;
                           }
                           continue loop1;
                        }
                        continue;
                     }
                     continue loop0;
                  }
                  addr191:
                  break loop0;
               }
            }
            §§push(§§pop() << 16);
            if(!(_loc8_ && param2))
            {
               §§push(§§pop() | _loc5_);
            }
            return §§pop();
         }
         §§goto(addr34);
      }
   }
}
