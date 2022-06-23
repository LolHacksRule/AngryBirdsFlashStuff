package §&7§
{
   import flash.utils.ByteArray;
   
   public class §9]§
   {
      
      private static var §!!9§:Array;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §!!9§ = §;Z§();
         }
      }
      
      public function §9]§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            super();
         }
      }
      
      private static function §;Z§() : Array
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:* = uint(0);
         var _loc3_:* = uint(0);
         var _loc4_:* = uint(0);
         var _loc1_:Array = [];
         if(_loc6_ || _loc2_)
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
                  _loc4_ = uint(_loc2_);
                  §§push(0);
                  if(!(_loc5_ && §9]§))
                  {
                     §§push(uint(§§pop()));
                     if(!(_loc5_ && §9]§))
                     {
                        _loc3_ = §§pop();
                        if(_loc6_ || _loc3_)
                        {
                           loop3:
                           while(true)
                           {
                              §§push(_loc3_);
                              §§push(8);
                              if(!_loc6_)
                              {
                                 continue loop2;
                              }
                              loop4:
                              while(true)
                              {
                                 if(§§pop() < §§pop())
                                 {
                                    §§push(_loc4_);
                                    §§push(1);
                                    if(_loc6_ || _loc1_)
                                    {
                                       §§push(§§pop() & §§pop());
                                       if(_loc5_ && §9]§)
                                       {
                                          break;
                                       }
                                       if(§§pop())
                                       {
                                          while(true)
                                          {
                                             §§push(3988292384);
                                             if(_loc6_ || §9]§)
                                             {
                                                §§push(_loc4_);
                                                if(!_loc5_)
                                                {
                                                   §§push(§§pop() >>> 1);
                                                }
                                                §§push(§§pop() ^ §§pop());
                                                break loop4;
                                             }
                                             addr170:
                                          }
                                          addr98:
                                       }
                                       else
                                       {
                                          §§push(_loc4_);
                                          §§push(1);
                                          if(_loc5_)
                                          {
                                             continue;
                                          }
                                          §§push(uint(§§pop() >>> §§pop()));
                                          if(!_loc6_)
                                          {
                                             break loop3;
                                          }
                                          _loc4_ = §§pop();
                                          if(!_loc6_)
                                          {
                                             addr156:
                                             _loc1_.push(_loc4_);
                                             if(_loc6_)
                                             {
                                                §§push(_loc2_);
                                                if(_loc6_ || §9]§)
                                                {
                                                   §§goto(addr170);
                                                   §§push(§§pop() + 1);
                                                }
                                             }
                                             break loop2;
                                          }
                                          while(true)
                                          {
                                             §§push(_loc3_);
                                             if(_loc5_ && _loc1_)
                                             {
                                                continue loop3;
                                             }
                                             §§push(§§pop() + 1);
                                             if(_loc6_)
                                             {
                                                §§push(uint(§§pop()));
                                                if(!_loc6_)
                                                {
                                                   break loop3;
                                                }
                                                continue loop3;
                                             }
                                             §§goto(addr170);
                                          }
                                       }
                                       _loc2_ = §§pop();
                                       if(!_loc6_)
                                       {
                                          break loop2;
                                       }
                                       continue loop0;
                                    }
                                    continue loop2;
                                 }
                                 §§goto(addr156);
                              }
                              while(true)
                              {
                                 §§push(uint(§§pop()));
                                 addr113:
                                 while(true)
                                 {
                                    _loc4_ = §§pop();
                                    §§goto(addr126);
                                 }
                              }
                           }
                           continue loop1;
                        }
                        §§goto(addr98);
                     }
                     §§goto(addr113);
                  }
                  §§goto(addr112);
               }
               return _loc1_;
            }
         }
      }
      
      public static function §>"§(param1:ByteArray, param2:uint = 0, param3:uint = 0) : uint
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:* = uint(0);
         if(param2 >= param1.length)
         {
            if(_loc7_)
            {
               param2 = param1.length;
               if(!_loc6_)
               {
                  addr32:
                  §§push(param3);
                  if(!_loc6_)
                  {
                     if(§§pop() == 0)
                     {
                        if(_loc7_ || param3)
                        {
                           addr44:
                           §§push(param1.length - param2);
                           if(!_loc6_)
                           {
                              §§push(uint(§§pop()));
                              if(_loc7_)
                              {
                                 param3 = §§pop();
                                 if(_loc7_)
                                 {
                                    addr57:
                                    §§push(param3 + param2);
                                    if(!_loc6_)
                                    {
                                       if(§§pop() > param1.length)
                                       {
                                          if(!_loc6_)
                                          {
                                             addr66:
                                             §§push(param1.length - param2);
                                             if(_loc7_ || param2)
                                             {
                                                §§push(uint(§§pop()));
                                                if(_loc7_ || param1)
                                                {
                                                   param3 = §§pop();
                                                   addr97:
                                                   §§push(uint(4294967295));
                                                }
                                                var _loc5_:* = §§pop();
                                                if(_loc7_)
                                                {
                                                   §§push(param2);
                                                   if(!_loc6_)
                                                   {
                                                      §§push(uint(§§pop()));
                                                   }
                                                   _loc4_ = §§pop();
                                                }
                                                while(true)
                                                {
                                                   §§push(_loc4_);
                                                   if(_loc7_)
                                                   {
                                                      if(§§pop() < param3)
                                                      {
                                                         §§push(uint(§!!9§[(_loc5_ ^ param1[_loc4_]) & 255]) ^ _loc5_ >>> 8);
                                                         if(_loc7_ || §9]§)
                                                         {
                                                            §§push(uint(§§pop()));
                                                            if(_loc7_)
                                                            {
                                                               _loc5_ = §§pop();
                                                               if(!_loc6_)
                                                               {
                                                                  §§push(_loc4_);
                                                                  if(!_loc6_)
                                                                  {
                                                                     §§push(uint(§§pop() + 1));
                                                                     if(_loc7_ || param3)
                                                                     {
                                                                     }
                                                                     break;
                                                                  }
                                                                  _loc4_ = §§pop();
                                                                  if(_loc6_)
                                                                  {
                                                                     addr166:
                                                                     §§push(_loc5_);
                                                                  }
                                                                  continue;
                                                                  break;
                                                               }
                                                               §§goto(addr166);
                                                            }
                                                            break;
                                                         }
                                                         §§goto(addr169);
                                                      }
                                                      §§goto(addr166);
                                                   }
                                                   break;
                                                }
                                                addr169:
                                                return §§pop();
                                                §§push(§§pop() ^ 4294967295);
                                             }
                                             §§goto(addr97);
                                          }
                                       }
                                       §§goto(addr97);
                                    }
                                 }
                                 §§goto(addr66);
                              }
                              §§goto(addr57);
                           }
                           §§goto(addr97);
                        }
                        §§goto(addr66);
                     }
                  }
                  §§goto(addr57);
               }
               §§goto(addr44);
            }
         }
         §§goto(addr32);
      }
      
      public static function §4i§(param1:ByteArray, param2:uint = 0, param3:uint = 0) : uint
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(!_loc8_)
         {
            if(param2 >= param1.length)
            {
               param2 = param1.length;
               if(!(_loc8_ && param2))
               {
                  addr33:
                  §§push(param3);
                  if(_loc7_ || param2)
                  {
                     if(§§pop() == 0)
                     {
                        if(_loc7_ || param3)
                        {
                           addr50:
                           §§push(param1.length - param2);
                           if(!_loc8_)
                           {
                              param3 = uint(§§pop());
                              if(!(_loc8_ && param2))
                              {
                                 addr65:
                                 §§push(param3);
                                 if(!(_loc8_ && param3))
                                 {
                                    §§push(§§pop() + param2);
                                    if(!(_loc8_ && §9]§))
                                    {
                                       addr82:
                                       if(§§pop() > param1.length)
                                       {
                                          addr89:
                                          addr85:
                                          §§push(uint(param1.length - param2));
                                          if(_loc7_ || §9]§)
                                          {
                                             addr107:
                                             param3 = §§pop();
                                          }
                                          addr117:
                                          var _loc4_:uint = §§pop();
                                          var _loc5_:* = uint(1);
                                          var _loc6_:uint = 0;
                                          addr116:
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
                                                   §§push(_loc5_);
                                                   if(_loc7_ || param2)
                                                   {
                                                      §§push((§§pop() + param1[_loc4_]) % 65521);
                                                      if(_loc7_)
                                                      {
                                                         §§push(uint(§§pop()));
                                                         if(_loc7_)
                                                         {
                                                            addr145:
                                                            §§push(§§pop());
                                                            if(!_loc8_)
                                                            {
                                                               _loc5_ = §§pop();
                                                               §§push(_loc6_);
                                                               if(_loc7_)
                                                               {
                                                                  §§push(§§pop() + §§pop());
                                                                  if(!(_loc8_ && param3))
                                                                  {
                                                                     §§push(§§pop() % 65521);
                                                                     if(_loc7_ || param1)
                                                                     {
                                                                        addr170:
                                                                        _loc6_ = §§pop();
                                                                        if(_loc8_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        §§push(_loc4_);
                                                                        if(_loc8_ && param3)
                                                                        {
                                                                           continue loop0;
                                                                        }
                                                                        §§push(§§pop() + 1);
                                                                     }
                                                                  }
                                                                  §§push(uint(§§pop()));
                                                                  if(_loc7_ || §9]§)
                                                                  {
                                                                     continue loop0;
                                                                  }
                                                                  continue loop1;
                                                               }
                                                            }
                                                            continue;
                                                         }
                                                      }
                                                      §§goto(addr170);
                                                   }
                                                   §§goto(addr145);
                                                }
                                                addr213:
                                                §§push(_loc6_ << 16);
                                                if(!_loc8_)
                                                {
                                                   §§push(§§pop() | _loc5_);
                                                }
                                                return §§pop();
                                             }
                                          }
                                       }
                                       §§push(param2);
                                       if(_loc7_ || param3)
                                       {
                                          §§goto(addr116);
                                       }
                                       §§goto(addr117);
                                    }
                                 }
                                 §§goto(addr89);
                              }
                              §§goto(addr85);
                           }
                           §§goto(addr82);
                        }
                        §§goto(addr89);
                     }
                     §§goto(addr65);
                  }
                  §§goto(addr107);
               }
               §§goto(addr50);
            }
            §§goto(addr33);
         }
         §§goto(addr65);
      }
   }
}
